from QuestionBank import *

QUIZ_ITT001_USER_ANSWER_SPLIT = '%$$%'


def insert_database(quiz_item):
    error_flag = quiz_item['submit']['errorFlag']
    if error_flag == 'right':
        quiz_id = quiz_item['quizId']
        quiz_content = quiz_item['quiz']['quizContent']
        quiz_optionses = quiz_item['quiz']['quizOptionses']
        answer_id = quiz_item['submit']['userAnswer']
        answer_content_list = []
        quiz_type = quiz_item['quiz']['baseType']
        if quiz_type == 'itt003' or quiz_type == 'itt004':
            user_answer_id_list = list(map(int, answer_id.split(',')))
            for option in quiz_optionses:
                if option['optionId'] in user_answer_id_list:
                    answer_content_list.append(
                        chr(ord('A') + option['displayOrder']) + '、' + option['optionContent'] + '\n')
        else:
            answer_content_list = answer_id + '\n'
        answer_content = ''.join(answer_content_list)
        print(f'quizId: {quiz_id} answerId: {answer_id} quizType:{quiz_type}\n'
              f'quizContent:\n{quiz_content}\n'
              f'answerContent:\n{answer_content}')
        insert_answer(quiz_id, quiz_content, answer_id, answer_content, quiz_type)
