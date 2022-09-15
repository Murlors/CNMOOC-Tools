from WebProcess import *
import re


class Post(WebProcess):
    def __init__(self):
        super().__init__()
        self.submitContentList = None
        self.paperStruct = None

    def testPost(self, practiceSend, quizId):
        self.submit(practiceSend)
        self.getNewResult()
        for item in self.submitContentList:
            if quizId == str(item["quizId"]):
                return item["errorFlag"]

    def submit(self, practiceSend):
        courseOpenId = self.drive.execute_script('return courseOpenId')
        examSubmitId = self.drive.execute_script('return examSubmitId')
        examTestPaperId = examSubmitId.split('_')[0]
        examPaperId = self.drive.execute_script('return examPaperId')
        gradeId = self.drive.execute_script("return $('#gradeId').val()")
        reSubmit = self.drive.execute_script("return $('#reSubmit').val()")
        submitUrl = 'http://spoc.wzu.edu.cn/examSubmit/' + str(courseOpenId) + '/saveExam/1/' + str(examPaperId) + '/' \
                    + str(examSubmitId) + '.mooc?testPaperId=' + str(examTestPaperId)
        submitData = {
            'gradeId': gradeId,
            'reSubmit': reSubmit,
            'submitquizs[]': practiceSend,
            'submitFlag': 0,
            'useTime': 30,
            'totalScore': 10000,
            'testPaperId': examTestPaperId,
            'postoken': self.cookies['cpstk']
        }
        response = self.session.post(url=submitUrl, data=submitData, headers=self.headers)
        print('submit', response)

    def getNewResult(self):
        courseOpenId = self.drive.execute_script('return courseOpenId')
        examSubmitId = self.drive.execute_script('return examSubmitId')
        examTestPaperId = examSubmitId.split('_')[0]
        examPaperId = self.drive.execute_script('return examPaperId')
        getnewUrl = 'http://spoc.wzu.edu.cn/examSubmit/' + courseOpenId + '/getExamPaper-' + examSubmitId + '.mooc'
        getData = {
            'testPaperId': examTestPaperId,
            'paperId': examPaperId,
            'limitTime': -60,
            'modelType': 'practice',
            'examQuizNum': 25,
            'curSubmitNum': int(examSubmitId.split('_')[2]) + 1,
            'postoken': self.cookies['cpstk']
        }
        resp = self.session.post(getnewUrl, headers=self.headers, data=getData)
        print('getnew', resp)
        self.paperStruct = resp.json()["paper"]['paperStruct']
        sourceSubmitContent = resp.json()['examSubmit']['submitContent']
        submitContent = sourceSubmitContent.split('{')  # 获取submitContent列表
        submitContent.remove('["')
        self.submitContentList = []
        pattern = re.compile(
            r'.*?userAnswer\\":\\"(?P<userAnswer>.*?)\\",\\"quizId\\":\\"'
            r'(?P<quizId>.*?)\\",\\".*?errorFlag\\":\\"(?P<errorFlag>.*?)\\"',
            re.S)
        for item in submitContent:
            result = pattern.search(item)
            self.submitContentList.append({
                "userAnswer": result.group("userAnswer"),
                "quizId": result.group("quizId"),
                "errorFlag": result.group("errorFlag")
            })
