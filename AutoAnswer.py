import json

from DataBaseProcess import *
from Post import *
from PracticeSendProcess import *


class AutoAnswer(Post):
    def __init__(self):
        super().__init__()
        self.practiceSendList = None

    def Enumerate(self):
        # itt001 填空题
        # itt002 判断题
        # itt003 单选题
        # itt004 多选题
        locate = 0
        submitStatus = None
        nowQuizId = None
        while locate < len(self.submitContentList):
            while locate < len(self.submitContentList):
                submitStatus = self.submitContentList[locate]
                if submitStatus['errorFlag'] == 'error':
                    nowQuizId = str(submitStatus['quizId'])
                    break
                else:
                    locate += 1
            if submitStatus and locate != len(self.submitContentList):
                quiz = [item['quiz'] for item in self.paperStruct if str(item['quiz']['quizId']) == nowQuizId][0]
                quizId = str(quiz['quizId'])
                dbSearchAnswer = search_answer(int(quizId))
                practiceSendDict = PracticeSendFromList2Dict(self.practiceSendList)
                if dbSearchAnswer:
                    for i in range(len(practiceSendDict)):
                        if str(practiceSendDict[i]['quizId']) == quizId:
                            practiceSendDict[i]['userAnswer'] = dbSearchAnswer[0]
                    self.practiceSendList = PracticeSendFromDict2List(practiceSendDict)
                    if self.testPost(self.practiceSendList, quizId) == 'right':
                        print('right:', quizId)
                else:
                    quizType = quiz['quizTypeId']
                    preAnswer = submitStatus['userAnswer']
                    answerIdList = [quizOption['optionId'] for quizOption in quiz['quizOptionses']]
                    # if quizType == "itt002" or quizType == "itt003" or quizType == "itt004":
                    #     _qAnswer = practiceSendDict[i]['userAnswer'].split(",")
                    # elif quiz.baseType == "itt001":
                    #     _qAnswer = practiceSendDict[i]['userAnswer'].split(QUIZ_ITT001_USER_ANSWER_SPLIT)
                    if quizType == "itt003" or quizType == "itt002":  # 单选 And 判断
                        for testAnswer in answerIdList:
                            if testAnswer != preAnswer:
                                for i in range(len(practiceSendDict)):
                                    if str(practiceSendDict[i]['quizId']) == quizId:
                                        practiceSendDict[i]['userAnswer'] = testAnswer
                                        break
                                self.practiceSendList = PracticeSendFromDict2List(practiceSendDict)
                                if self.testPost(self.practiceSendList, quizId) == 'right':
                                    print('right:', str(quizId), str(testAnswer))
                                    break
                                else:
                                    print('error:', str(quizId), str(testAnswer))
                    elif quizType == "itt004":  # 多选
                        usingAnswerId = []
                        self.multiAnswerCombine(practiceSendDict, quizId, answerIdList, usingAnswerId)
                    elif quizType == "itt001":  # 填空
                        locate += 1
                        print('题库中找不到这个填空题呢，自己加油罢')

    def multiAnswerCombine(self, practiceSendDict, quizId, answerIdList, usingAnswerId):
        for i in answerIdList:
            if str(i) not in usingAnswerId:
                if len(usingAnswerId) == 0 or i > int(usingAnswerId[-1]):
                    usingAnswerId.append(str(i))
                    for item in range(len(practiceSendDict)):
                        if str(practiceSendDict[item]['quizId']) == quizId:
                            practiceSendDict[item]['userAnswer'] = ','.join(usingAnswerId)
                    self.practiceSendList = PracticeSendFromDict2List(practiceSendDict)
                    errorFlag = self.testPost(self.practiceSendList, quizId)
                    if errorFlag == 'right':
                        print('right:', str(quizId), str(','.join(usingAnswerId)))
                        return 'right'
                    else:
                        print('error:', str(quizId), str(','.join(usingAnswerId)))
                        if self.multiAnswerCombine(practiceSendDict, quizId, answerIdList, usingAnswerId) == 'right':
                            return 'right'
                    usingAnswerId.pop()

    def Get(self):
        self.practiceSendList = self.drive.execute_script('return $("#exam_paper").quiz().getPractice()')
        self.submit(self.practiceSendList)
        self.getNewResult()

        print('submitContentList:', self.submitContentList)
        print('practiceSendList', self.practiceSendList)

        self.Enumerate()

    def InsertDataJudge(self,exam_select):
        self.gotoExamTest(exam_select)
        getDataJudge = self.drive.execute_script('return $("#exam_paper").quiz().getData()')
        print('Insert:')
        print('practiceSendList', self.practiceSendList)
        for quizItem in getDataJudge:
            insertDataBaseJudge(quizItem)


if __name__ == '__main__':
    with open("config.json", "r") as f:
        config = json.load(f)
    my = AutoAnswer()
    my.loginHall(config['username'], config['password'])
    while True:
        my.selectCourses()
        my.getExamSelect()
        for i in my.exam_select:
            my.gotoExamTest(i)
            my.Get()
            my.InsertDataJudge(i)
        print('扣1继续：')
        if int(input()) != 1:
            break
    del my
