import itertools
import json

from DataBaseProcess import *
from Post import *
from PracticeSendProcess import *


class AutoAnswer(Post):
    def __init__(self):
        super().__init__()
        self.enumerate_flag = False
        self.practice_send_list = None
        self.enumeration_count = 0

    def enumerate(self, validate: bool):
        # itt001 填空题
        # itt002 判断题
        # itt003 单选题
        # itt004 多选题
        locate = 0
        submit_status = None
        now_quiz_id = None
        while locate < len(self.submit_content_list):
            while locate < len(self.submit_content_list):
                submit_status = self.submit_content_list[locate]
                if submit_status['errorFlag'] == 'error':
                    now_quiz_id = str(submit_status['quizId'])
                    break
                else:
                    locate += 1
            # 存在error题目,尝试枚举
            if submit_status and locate < len(self.submit_content_list):
                quiz = [item['quiz'] for item in self.paper_struct if str(item['quiz']['quizId']) == now_quiz_id][0]
                quiz_id = str(quiz['quizId'])
                db_search_answer = search_answer(int(quiz_id))
                # db_search_answer = False
                practice_send_dict = practice_send_from_list2dict(self.practice_send_list)
                if db_search_answer and not self.enumerate_flag:
                    for practice_send in practice_send_dict:
                        if str(practice_send['quizId']) == quiz_id:
                            practice_send['userAnswer'] = db_search_answer[0]
                            self.practice_send_list = practice_send_from_dict2list(practice_send_dict)
                            break
                    if validate:
                        if self.test_post(self.practice_send_list, quiz_id) == 'right':
                            print(f'right: {quiz_id}')
                        else:
                            self.enumerate_flag = True
                            break
                    locate += 1
                else:
                    self.enumerate_flag = False
                    self.enumeration_count += 1
                    quiz_type: str = quiz['quizTypeId']
                    pre_answer = str(submit_status['userAnswer'])
                    answer_id_list = [str(quiz_option['optionId']) for quiz_option in quiz['quizOptionses']]
                    # if quizType == "itt002" or quizType == "itt003" or quizType == "itt004":
                    #     _qAnswer = practiceSendDict[i]['userAnswer'].split(",")
                    # elif quiz.baseType == "itt001":
                    #     _qAnswer = practiceSendDict[i]['userAnswer'].split(QUIZ_ITT001_USER_ANSWER_SPLIT)
                    if quiz_type == "itt003" or quiz_type == "itt002":  # 单选 And 判断
                        for test_answer in answer_id_list:
                            if test_answer != pre_answer:
                                for practice_send in practice_send_dict:
                                    if str(practice_send['quizId']) == quiz_id:
                                        practice_send['userAnswer'] = test_answer
                                        break
                                self.practice_send_list = practice_send_from_dict2list(practice_send_dict)
                                if self.test_post(self.practice_send_list, quiz_id) == 'right':
                                    print(f"right: {quiz_id} {test_answer}")
                                    break
                                else:
                                    print(f"error: {quiz_id} {test_answer}")
                    elif quiz_type == "itt004":  # 多选
                        error_flag = 'error'
                        for i in range(1, len(answer_id_list) + 1):
                            if error_flag == 'right':
                                break
                            for answer_id_tuple in itertools.combinations(answer_id_list, i):
                                user_answer = ','.join(answer_id_tuple)
                                for practice_send in practice_send_dict:
                                    if str(practice_send['quizId']) == quiz_id:
                                        practice_send['userAnswer'] = user_answer
                                self.practice_send_list = practice_send_from_dict2list(practice_send_dict)
                                error_flag = self.test_post(self.practice_send_list, quiz_id)
                                if error_flag == 'right':
                                    print(f"right: {quiz_id} {user_answer}")
                                    break
                                else:
                                    print(f"error: {quiz_id} {user_answer}")
                    elif quiz_type == "itt001":  # 填空
                        locate += 1
                        print("I can't find this fill-in-the-blank question in QuestionBank, so go for it yourself!")

    def auto_answer(self):
        self.practice_send_list = self.drive.execute_script('return $("#exam_paper").quiz().getPractice()')
        self.submit(self.practice_send_list)
        self.get_new_result()

        print(f'submit_content_list: {self.submit_content_list}')
        print(f'practice_send_list: {self.practice_send_list}')

        self.enumerate(validate=False)

        # 校验是否全为right
        self.submit(self.practice_send_list)
        self.get_new_result()
        print(f'submit_content_list: {self.submit_content_list}')
        if sum([1 if i['errorFlag'] == 'right' else 0 for i in self.submit_content_list]) \
                != len(self.submit_content_list):
            # 若枚举之后仍存在error题目,则开始验证题库答案
            self.enumerate(validate=True)
        print('all right!')

    def insert_data(self, exam_select: int):
        """
        判断是否对题库进行插入:
        有经历过枚举则插入新的题目

        :param exam_select:当前所选择的试卷
        :return:
        """
        if self.enumeration_count != 0:
            self.goto_exam_test(exam_select)
            get_data_judge = self.drive.execute_script('return $("#exam_paper").quiz().getData()')
            print('Insert:')
            print(f'practiceSendList: {self.practice_send_list}')
            for quiz_item in get_data_judge:
                insert_database(quiz_item)


if __name__ == '__main__':
    with open("config.json", "r") as f:
        # 加载学号和密码
        config = json.load(f)
    my = AutoAnswer()
    if my.login_hall(config['username'], config['password']):
        while True:
            my.select_courses()  # 课程选择
            my.get_exam_select()  # 试卷选择
            for exam in my.exam_select:
                if my.goto_exam_test(exam):
                    my.auto_answer()
                    my.insert_data(exam)
            print('input continue to continue.')
            if input() != 'continue':
                break
    del my
