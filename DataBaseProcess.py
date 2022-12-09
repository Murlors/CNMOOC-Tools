QUIZ_ITT001_USER_ANSWER_SPLIT = '%$$%'


def insert_database(question_bank, quiz_item: dict):
    """
    向数据库中插入问题和答案。
    :param question_bank: 数据库对象
    :param quiz_item: 包含问题和答案信息的字典
    """
    error_flag = quiz_item['submit']['errorFlag']
    if error_flag == 'right':
        quiz_id = quiz_item['quizId']
        quiz_content = quiz_item['quiz']['quizContent']
        quiz_type = quiz_item['quiz']['baseType']
        answer_id = quiz_item['submit']['userAnswer']

        answer_content_list = get_answer_content_list(quiz_type, quiz_item['quiz']['quizOptionses'], answer_id)
        answer_content = '\n'.join(answer_content_list)  # 题目选项的内容

        print(f'quizId: {quiz_id} answerId: {answer_id} quizType:{quiz_type}\n'
              f'quizContent:\n{quiz_content}\n'
              f'answerContent:\n{answer_content}')
        question_bank.insert_answer(quiz_id, quiz_content, answer_id, answer_content, quiz_type)


def get_answer_content_list(quiz_type: str, quiz_optionses: list, answer_id: str):
    """
    根据问题类型和答案获取答案选项的内容。
    :param quiz_type: 问题类型
    :param quiz_optionses: 问题选项的列表
    :param answer_id: 问题题号
    """
    if quiz_type == 'itt003' or quiz_type == 'itt004' or quiz_type == 'itt002':
        user_answer_id_list = list(map(int, answer_id.split(',')))
        return [
            f"{chr(ord('A') + option['displayOrder'])}、{option['optionContent']}\n"
            for option in quiz_optionses if option['optionId'] in user_answer_id_list
        ]
    elif quiz_type == 'itt001':
        return [answer_id]
    else:
        raise ValueError('Invalid quiz_type')
