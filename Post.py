from WebProcess import *


class Post(WebProcess):
    def __init__(self):
        super().__init__()
        self.submit_content_list = None
        self.paper_struct = None

    def test_post(self, practice_send: list, quiz_id: str):
        self.submit(practice_send)
        self.get_new_result()
        for item in self.submit_content_list:
            if quiz_id == str(item["quizId"]):
                return item["errorFlag"]

    def submit(self, practice_send: list):
        course_open_id = self.drive.execute_script('return courseOpenId')
        exam_submit_id = self.drive.execute_script('return examSubmitId')
        exam_test_paper_id = exam_submit_id.split('_')[0]
        exam_paper_id = self.drive.execute_script('return examPaperId')
        grade_id = self.drive.execute_script("return $('#gradeId').val()")
        re_submit = self.drive.execute_script("return $('#reSubmit').val()")
        submit_url = 'http://spoc.wzu.edu.cn/examSubmit/' + str(course_open_id) + '/saveExam/1/' + \
                     str(exam_paper_id) + '/' + str(exam_submit_id) + '.mooc?testPaperId=' + str(exam_test_paper_id)
        submit_data = {
            'gradeId': grade_id,
            'reSubmit': re_submit,
            'submitquizs[]': practice_send,
            'submitFlag': 0,
            'useTime': 30,
            'totalScore': 10000,
            'testPaperId': exam_test_paper_id,
            'postoken': self.cookies['cpstk']
        }
        response = self.session.post(url=submit_url, data=submit_data, headers=self.headers)
        print(f'submit status_code: {response.status_code}')

    def get_new_result(self):
        course_open_id = self.drive.execute_script('return courseOpenId')
        exam_submit_id = self.drive.execute_script('return examSubmitId')
        exam_test_paper_id = exam_submit_id.split('_')[0]
        exam_paper_id = self.drive.execute_script('return examPaperId')
        getnew_url = 'http://spoc.wzu.edu.cn/examSubmit/' + course_open_id + '/getExamPaper-' + exam_submit_id + '.mooc'
        get_data = {
            'testPaperId': exam_test_paper_id,
            'paperId': exam_paper_id,
            'limitTime': -60,
            'modelType': 'practice',
            'examQuizNum': 25,
            'curSubmitNum': int(exam_submit_id.split('_')[2]) + 1,
            'postoken': self.cookies['cpstk']
        }
        response = self.session.post(getnew_url, headers=self.headers, data=get_data)
        print(f'getnew status_code: {response.status_code}')
        self.paper_struct = response.json()["paper"]['paperStruct']
        source_submit_content = response.json()['examSubmit']['submitContent']
        submit_content = source_submit_content.split('{')  # 获取submitContent列表
        submit_content.remove('["')
        self.submit_content_list = []
        pattern = re.compile(
            r'.*?userAnswer\\":\\"(?P<userAnswer>.*?)\\",\\"quizId\\":\\"'
            r'(?P<quizId>.*?)\\",\\".*?errorFlag\\":\\"(?P<errorFlag>.*?)\\"',
            re.S)
        for item in submit_content:
            result = pattern.search(item)
            self.submit_content_list.append({
                "userAnswer": result.group("userAnswer"),
                "quizId": result.group("quizId"),
                "errorFlag": result.group("errorFlag")
            })
