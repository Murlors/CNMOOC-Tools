from Post import *
from PracticeSendProcess import *
from DataBaseProcess import *

QUIZ_ITT001_USER_ANSWER_SPLIT = '%$$%'


class AutoAnswer(Post):
    def __init__(self):
        super().__init__()
        self.practiceSendList = None

    def Enumerate(self):
        locate = 0
        # print('ttttttt:', self.submitContentList)
        submitStatus = None
        nowQuizId = None
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
            # print('kkkkkkkkk', quiz, quizId, nowQuizId)
            if dbSearchAnswer:
                for i in range(len(practiceSendDict)):
                    if str(practiceSendDict[i]['quizId']) == quizId:
                        practiceSendDict[i]['userAnswer'] = dbSearchAnswer[0]
                self.practiceSendList = PracticeSendFromDict2List(practiceSendDict)
                if self.testPost(self.practiceSendList, quizId) == 'right':
                    print('right:', quizId)
                    self.Enumerate()
            else:
                quizType = quiz['quizTypeId']
                preAnswer = submitStatus['userAnswer']
                answerIdList = [quizOption['optionId'] for quizOption in quiz['quizOptionses']]
                # print(preAnswer,'ssssssss',answerIdList)
                # if quizType == "itt002" or quizType == "itt003" or quizType == "itt004":
                #     _qAnswer = practiceSendDict[i]['userAnswer'].split(",")
                # elif quiz.baseType == "itt001":
                #     _qAnswer = practiceSendDict[i]['userAnswer'].split(QUIZ_ITT001_USER_ANSWER_SPLIT)
                if quizType == "itt003":  # 单选
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
                    self.Enumerate()
                elif quizType == "itt004":  # 多选
                    usingAnswerId = []
                    self.multiAnswerCombine(practiceSendDict, quizId, answerIdList, usingAnswerId)
                    self.Enumerate()

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
        self.getNewResult()
        self.practiceSendList = self.drive.execute_script('return $("#exam_paper").quiz().getPractice()')

        print(self.submitContentList)
        print(self.practiceSendList)

        self.Enumerate()

    def insertDataJudge(self):
        self.gotoExamTest()
        getDataJudge = self.drive.execute_script('return $("#exam_paper").quiz().getData()')
        print('khgkhf', getDataJudge)
        for quizItem in getDataJudge:
            insertDataBaseJudge(quizItem)

if __name__ == '__main__':
    my = AutoAnswer()
    my.getCookies()
    my.gotoExamTest()
    my.Get()
    my.insertDataJudge()
    del my