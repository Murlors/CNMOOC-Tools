from QuestionBank import *

QUIZ_ITT001_USER_ANSWER_SPLIT = '%$$%'


def insertDataBaseJudge(quizItem):
    errorFlag = quizItem['submit']['errorFlag']
    if errorFlag == 'right':
        quizId = quizItem['quizId']
        quizContent = quizItem['quiz']['quizContent']
        quizOptionses = quizItem['quiz']['quizOptionses']
        answerId = quizItem['submit']['userAnswer']
        answerContentList = []
        quizType = quizItem['quiz']['baseType']
        if quizType == 'itt003' or quizType == 'itt004':
            userAnswerIdList = list(map(int, answerId.split(',')))
            for option in quizOptionses:
                if option['optionId'] in userAnswerIdList:
                    answerContentList.append(
                        chr(ord('A') + option['displayOrder']) + '、' + option['optionContent'] + '\n')
        else:
            answerContentList = answerId + '\n'
        answerContent = ''.join(answerContentList)
        print('quizid:%d answerId:%s quizType:%s\n'
              'quizContent:\n%s\n'
              'answerContent:\n%s'
              % (quizId, answerId, quizType, quizContent, answerContent,))
        insert_answer(quizId, quizContent, answerId, answerContent, quizType)
