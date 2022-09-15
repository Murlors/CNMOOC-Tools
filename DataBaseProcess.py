from QuestionBank import *


def insertDataBaseJudge(quizItem):
    errorFlag = quizItem['submit']['errorFlag']
    if errorFlag == 'right':
        quizId = quizItem['quizId']
        quizContent = quizItem['quiz']['quizContent']
        quizOptionses = quizItem['quiz']['quizOptionses']
        answerId = quizItem['submit']['userAnswer']
        answerContentList = []
        quizType = quizItem['quiz']['baseType']
        userAnswerIdList = list(map(int, answerId.split(',')))
        for option in quizOptionses:
            if option['optionId'] in userAnswerIdList:
                answerContentList.append(chr(ord('A') + option['displayOrder']) + '、' + option['optionContent'] + '\n')
        answerContent = ''.join(answerContentList)
        print('quizid:', quizId, 'answerId:', answerId, 'quizType:', quizType,
              '\nquizContent:\n', quizContent, '\nanswerContent:\n', answerContent)
        insert_answer(int(quizId), quizContent, answerId, answerContent, quizType)
