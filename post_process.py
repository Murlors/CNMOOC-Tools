import json
import re
from random import randint

from web_process import WebProcess


class PostProcess(WebProcess):
    SUBMIT_DATA = {
        "gradeId": "",
        "reSubmit": "",
        "submitquizs[]": [],
        "submitFlag": 0,
        "useTime": 30,
        "totalScore": 10000,
        "testPaperId": "",
        "postoken": "",
    }
    GET_NEW_RESULT_DATA = {
        "testPaperId": "",
        "paperId": "",
        "limitTime": -60,
        "modelType": "practice",
        "examQuizNum": 25,
        "curSubmitNum": 0,
        "postoken": "",
    }

    ANSWER_PATTERN = re.compile(
        r'.*?userAnswer\\":\\"(?P<userAnswer>.*?)\\",\\"quizId\\":\\"'
        r'(?P<quizId>.*?)\\",\\".*?errorFlag\\":\\"(?P<errorFlag>.*?)\\"',
        re.S,
    )

    def __init__(self, driver):
        super().__init__(driver=driver)
        self._submit_data = PostProcess.SUBMIT_DATA
        self._get_new_result_data = PostProcess.GET_NEW_RESULT_DATA
        self._submit_url = None
        self._get_result_url = None
        self._exam_submit_id = None
        self._exam_test_paper_id = None
        self._exam_paper_id = None
        self._grade_id = None
        self._re_submit = None
        self.submit_content_list = None
        self.paper_struct = None

    def set_submit_url(self):
        self._submit_url = (
            f"{self.BASE_URL}/examSubmit/{self._course_open_id}/saveExam/1/{self._exam_paper_id}"
            f"/{self._exam_submit_id}{self.SUFFIX}?testPaperId={self._exam_test_paper_id}"
        )

    def set_get_result_url(self):
        self._get_result_url = (
            f"{self.BASE_URL}/examSubmit/{self._course_open_id}"
            f"/getExamPaper-{self._exam_submit_id}{self.SUFFIX}"
        )

    def set_url(self, url_type: str):
        self._course_open_id = self.driver.execute_script("return courseOpenId")
        self._exam_submit_id = self.driver.execute_script("return examSubmitId")
        self._exam_test_paper_id = self._exam_submit_id.partition("_")[0]
        self._exam_paper_id = self.driver.execute_script("return examPaperId")
        if url_type == "submit":
            self.set_submit_url()
        elif url_type == "get_result":
            self.set_get_result_url()
        else:
            raise ValueError("Invalid url_type")

    def set_submit_data(self, quiz_submissions_list: list[str]):
        self._submit_data = PostProcess.SUBMIT_DATA
        self._submit_data["gradeId"] = self.driver.execute_script(
            "return $('#gradeId').val()"
        )
        self._submit_data["reSubmit"] = self.driver.execute_script(
            "return $('#reSubmit').val()"
        )
        self._submit_data["submitquizs[]"] = quiz_submissions_list
        self._submit_data["useTime"] = randint(
            25 * len(quiz_submissions_list), 35 * len(quiz_submissions_list)
        )
        self._submit_data["testPaperId"] = self._exam_test_paper_id
        self._submit_data["postoken"] = self.cookies["cpstk"]

    def set_get_new_result_data(self):
        self._get_new_result_data = PostProcess.GET_NEW_RESULT_DATA
        self._get_new_result_data["testPaperId"] = self._exam_test_paper_id
        self._get_new_result_data["paperId"] = self._exam_paper_id
        self._get_new_result_data["curSubmitNum"] = (
            int(self._exam_submit_id.split("_")[2]) + 1
        )
        self._get_new_result_data["postoken"] = self.cookies["cpstk"]

    def check_answer(self, quiz_submissions_list: list[str], quiz_id: str) -> str:
        self.submit(quiz_submissions_list)
        self.get_new_result()
        return next(
            (
                item["errorFlag"]
                for item in self.submit_content_list
                if quiz_id == str(item["quizId"])
            ),
            None,
        )

    def submit(self, quiz_submissions_list: list[str]):
        """
        提交答案。
        :param quiz_submissions_list: 答案的列表
        :return: 加密后字符串，16进制
        """
        self.set_url(url_type="submit")  # 构造提交答案的 URL
        self.set_submit_data(quiz_submissions_list)  # 构造提交答案的POST请求的数据
        response = self.session.post(
            url=self._submit_url, data=self._submit_data, headers=self.headers
        )
        if response.status_code != 200:
            raise RuntimeError("提交失败，请检查网络连接")

    def get_new_result(self):
        """
        获取最新提交结果。
        """
        self.set_url(url_type="get_result")  # 构造获取提交结果的 URL
        self.set_get_new_result_data()  # 构造获取提交结果的POST请求的数据
        response = self.session.post(
            url=self._get_result_url,
            data=self._get_new_result_data,
            headers=self.headers,
        )
        if response.status_code != 200:
            raise RuntimeError("获取最新提交结果失败，请检查网络连接")
        result = json.loads(response.text)
        self.paper_struct = result["paper"]["paperStruct"]
        # 将答案列表中的字符串转换为字典
        self.submit_content_list = [
            match.groupdict()
            for match in (
                PostProcess.ANSWER_PATTERN.search(item)
                for item in result["examSubmit"]["submitContent"].split("{")
            )
            if match is not None
        ]
