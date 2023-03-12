import itertools
import json

from database_process import insert_database
from post_process import PostProcess
from question_bank import QuestionBank
from util import quiz_submissions_list2dict, quiz_submissions_dict2list, insert_database


class AutoAnswer(PostProcess, QuestionBank):
    def __init__(self):
        super().__init__()
        self.process_locate = 0
        self.quiz_submissions_list = None
        self.quiz_submissions_dict = None
        self.enumeration_count = 0

    def auto_answer(self):
        self.quiz_submissions_list = self.drive.execute_script('return $("#exam_paper").quiz().getPractice()')
        self.submit(self.quiz_submissions_list)
        self.get_new_result()

        print(f'submit_content_list: {self.submit_content_list}')
        print(f'quiz_submissions_list: {self.quiz_submissions_list}')

        self.enumerate(validate=False)

        # 校验是否全为right
        self.submit(self.quiz_submissions_list)
        self.get_new_result()
        print(f'submit_content_list: {self.submit_content_list}')
        if sum(1 for i in self.submit_content_list if i['errorFlag'] == 'right') != len(self.submit_content_list):
            # 若枚举之后仍存在error题目,则开始验证题库答案
            self.enumerate(validate=True)
        print('all right!')

    def db_search(self, quiz_id: str, validate: bool) -> bool:
        db_search_answer = self.search_answer(int(quiz_id))
        # 搜索到答案
        if db_search_answer:
            for quiz_submission in self.quiz_submissions_dict:
                if str(quiz_submission['quizId']) == quiz_id:
                    quiz_submission['userAnswer'] = db_search_answer[0]
                    self.quiz_submissions_list = quiz_submissions_dict2list(self.quiz_submissions_dict)
                    break

            if validate:
                if self.check_answer(self.quiz_submissions_list, quiz_id) == 'right':
                    print(f'right: {quiz_id}')
                else:
                    return False
            self.process_locate += 1
        return True if db_search_answer else False

    def enumerate(self, validate: bool):
        """
        枚举答案并测试
        itt001 填空题, itt002 判断题, itt003 单选题, itt004 多选题
        :param validate: 是否需要进行数据库验证
        """
        while self.process_locate < len(self.submit_content_list):
            next_error_submit_status = self.find_next_error()
            if next_error_submit_status:  # 存在error题目
                now_quiz_id = str(next_error_submit_status['quizId'])
                quiz = [item['quiz'] for item in self.paper_struct if str(item['quiz']['quizId']) == now_quiz_id][0]
                quiz_id = str(quiz['quizId'])
                self.quiz_submissions_dict = quiz_submissions_list2dict(self.quiz_submissions_list)
                # 在数据库中寻找答案
                found_in_db = self.db_search(quiz_id, validate)
                if not found_in_db:  # 找不到答案则进行枚举
                    self.enumeration_count += 1
                    quiz_type: str = quiz['quizTypeId']
                    pre_answer: str = next_error_submit_status['userAnswer']
                    answer_id_list = [str(quiz_option['optionId']) for quiz_option in quiz['quizOptionses']]
                    if quiz_type == "itt003" or quiz_type == "itt002":  # 单选 And 判断
                        self.process_single_choice_or_judgment_quiz(quiz_id, answer_id_list, pre_answer)
                    elif quiz_type == "itt004":  # 多选
                        self.process_multiple_choice_quiz(quiz_id, answer_id_list)
                    elif quiz_type == "itt001":  # 填空
                        print(f"在QuestionBank中找不到这个填空题，自己尝试做做吧!\n")

    def find_next_error(self) -> dict:
        for submit_status in self.submit_content_list[self.process_locate:]:
            if submit_status['errorFlag'] == 'error':
                return submit_status
            else:
                self.process_locate += 1

    def process_single_choice_or_judgment_quiz(self, quiz_id: str, answer_id_list: list, pre_answer: str):
        for user_answer in answer_id_list:
            if user_answer != pre_answer:
                if self.test_answer(quiz_id, user_answer):
                    return

    def process_multiple_choice_quiz(self, quiz_id: str, answer_id_list: list):
        for i in range(1, len(answer_id_list) + 1):
            for answer_id_tuple in itertools.combinations(answer_id_list, i):
                user_answer = ','.join(answer_id_tuple)
                if self.test_answer(quiz_id, user_answer):
                    return

    def test_answer(self, quiz_id, user_answer) -> bool:
        """
        更新答案并检查答案的正确性
        :param quiz_id: 题目ID
        :param user_answer: 用户提交的答案
        :return: 答案是否正确
        """
        for quiz_submission in self.quiz_submissions_dict:
            if str(quiz_submission['quizId']) == quiz_id:
                quiz_submission['userAnswer'] = user_answer
                break
        self.quiz_submissions_list = quiz_submissions_dict2list(self.quiz_submissions_dict)
        error_flag = self.check_answer(self.quiz_submissions_list, quiz_id)
        print(f"{error_flag}: {quiz_id} {user_answer}")
        return True if error_flag == 'right' else False

    def insert_data(self, exam_select: int):
        """
        判断是否对题库进行插入；有经历过枚举则插入新的题目。
        :param exam_select: 当前所选择的试卷
        """
        if self.enumeration_count != 0:
            self.goto_exam_test(exam_select)
            get_data_judge = self.drive.execute_script('return $("#exam_paper").quiz().getData()')
            print('Insert:')
            print(f'quiz_submissions_list: {self.quiz_submissions_list}')
            for quiz_item in get_data_judge:
                insert_database(self.insert_answer, quiz_item)
