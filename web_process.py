import json
import re

import requests
import selenium.common.exceptions
from bs4 import BeautifulSoup
from requests.cookies import RequestsCookieJar
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as ec
from selenium.webdriver.support.wait import WebDriverWait

from encrypt import encrypt


class WebProcess:
    BASE_URL = 'http://spoc.wzu.edu.cn'
    SUFFIX = '.mooc'

    def __init__(self, driver):
        self.headers = {
            'Host': 'spoc.wzu.edu.cn',
            'Referer': '',
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) '
                          'Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.26',
        }
        self.session = requests.session()
        self.driver = driver
        self.wait = WebDriverWait(self.driver, timeout=3, poll_frequency=1)
        self.cookies = {}
        self.exam_select = None
        self._course_open_id = None

    def __del__(self):
        self.driver.quit()

    def login(self, username: str, password: str) -> bool:
        """
        登录SPOC平台
        :param username: 学号
        :param password: 密码
        :return: 是否登录成功
        """
        hall_cookies = self.login_hall(username, password)
        if not hall_cookies:
            return False

        with open('config.json', 'w') as f:
            json.dump({'username': username, 'password': password}, f, indent=4)
        self.login_mooc(hall_cookies)
        self.get_mooc_cookies()
        return True

    @staticmethod
    def login_hall(username: str, password: str):
        """
        登录门户网站
        :param username: 学号
        :param password: 密码
        :return 门户网站登录成功的cookies字典
        """
        session = requests.session()
        headers = {
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) '
                          'Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.26',
        }
        # 访问任意网址，返回包含认证页面链接的内容（自动跳转）
        response = session.get(f'{WebProcess.BASE_URL}/oauth/toMoocAuth.mooc', headers=headers)
        # 提取认证链接并访问，经历一次重定向得到认证页面
        croypto = re.search(r'"login-croypto">(.*?)<', response.text, re.S).group(1)
        execution = re.search(r'"login-page-flowkey">(.*?)<', response.text, re.S).group(1)
        # 构建post数据 填入自己的学号 密码
        data = {
            'username': username,  # 学号
            'type': 'UsernamePassword',
            '_eventId': 'submit',
            'geolocation': '',
            'execution': execution,
            'captcha_code': '',
            'croypto': croypto,  # 密钥 base64格式
            'password': encrypt(password, croypto),  # 密码 经过des加密 base64格式
        }
        # 提交cookie，进行登录(重定向)
        session.cookies.update({'isPortal': 'false'})
        response = session.post('https://source.wzu.edu.cn/login', data=data)
        # 门户网站登录成功，登录mooc平台
        if response.status_code == 200:
            print(f'login success. status_code: {response.status_code}')
            return session.cookies.get_dict()
        else:
            print('login failed, please check username and password.')
            return None

    def login_mooc(self, hall_cookies):
        """
        访问认证页面
        :param hall_cookies: 门户网站的cookies
        """
        self.driver.get(f'{self.BASE_URL}/oauth/toMoocAuth.mooc')
        for key, value in hall_cookies.items():
            self.driver.add_cookie({"name": key, "value": value})
        self.driver.get(f'{self.BASE_URL}/home/login.mooc')
        self.wait.until(ec.title_contains("SPOC"))
        self.driver.find_element(By.CLASS_NAME, 'oauthLogin').click()

    def get_mooc_cookies(self):
        """
        获取mooc的cookies
        """
        dict_cookies = self.driver.get_cookies()
        cookiejar = requests.cookies.RequestsCookieJar()
        for cookie in dict_cookies:
            cookiejar.set(cookie['name'], cookie['value'])
            self.cookies[cookie['name']] = cookie['value']
        self.session.cookies = cookiejar
        print(self.cookies)

    def select_courses(self):
        """
        选择课程
        """
        # 访问课程列表页面
        self.driver.get(f'{self.BASE_URL}/portal/myCourseIndex/1.mooc?checkEmail=false')
        self.wait.until(ec.title_contains("SPOC"))
        # 如果存在引导按钮，则点击
        skip_button = self.driver.find_elements(By.CLASS_NAME, 'introjs-skipbutton')
        if skip_button:
            skip_button[0].click()
        # 等待课程列表页面加载完成
        self.wait.until(ec.presence_of_all_elements_located((By.CLASS_NAME, 'view-title')))
        soup = BeautifulSoup(self.driver.page_source, 'lxml')
        # 获取课程信息
        courses = [{'title': h3.text.replace('\n', '').replace(' ', ''), 'href': self.BASE_URL + a.attrs['href']}
                   for h3, a in zip(soup.find_all('h3', class_='view-title'), soup.find_all('a', class_='view-shadow'))]

        for i, course in enumerate(courses, start=1):
            print(f"{i}、课程名称: {course['title']}")

        course_hrefs = [course['href'] for course in courses]  # 课程所对应的链接

        while True:
            select = input()
            if select.isdigit() and 0 < int(select) <= len(course_hrefs):
                break
            print("输入错误，请重新输入！")

        self._course_open_id = re.search('index/(?P<course_open_id>.*?).mooc',
                                         course_hrefs[int(select) - 1]).group('course_open_id')
        self.headers['Referer'] = f'{self.BASE_URL}/examTest/stuExamList/{self._course_open_id}{self.SUFFIX}'
        print(f"Referer: {self.headers['Referer']}")

    def get_exam_select(self):
        """
        选择试卷
        """
        # 访问试卷列表页面
        self.driver.get(self.headers['Referer'])
        self.wait.until(ec.presence_of_element_located((By.CLASS_NAME, 'homework-table')))
        soup = BeautifulSoup(self.driver.page_source, 'lxml')
        # 获取试卷信息
        exams = [h3.text.replace('\n', '').replace(' ', '') for h3 in soup.find_all('td', class_='td1')]

        for i, exam in enumerate(exams, start=1):
            print(f'{i}、试卷名称: {exam}')

        while True:
            # 提示、读取输入
            exam_select = input("多选试卷用`,`分割\n").split(',')
            # 检查输入的编号是否合法
            if all(map(lambda x: x.isdigit() and 0 < int(x) <= len(exams), exam_select)):
                break
            print("输入错误，请重新输入！")
        self.exam_select = list(map(int, exam_select))

    def goto_exam_test(self, exam_select: int) -> bool:
        """
        进入对应试卷
        :param exam_select: 要进入的试卷编号
        :return: 是否成功进入试卷
        """
        # 访问试卷列表页面
        self.driver.get(self.headers['Referer'])
        self.wait.until(ec.presence_of_element_located((By.CLASS_NAME, 'link-action')))
        elements = self.driver.find_elements(By.CLASS_NAME, 'link-action')
        try:
            elements[exam_select - 1].click()
            # 等待页面加载完成
            self.wait.until(ec.presence_of_element_located((By.CLASS_NAME, 'main-body')))
        except (IndexError, selenium.common.exceptions.TimeoutException):
            print(f'所选测试: {exam_select} 无效\n')
            return False
        # 如果存在再测一次按钮，点击再测一次进入试卷
        do_obj_exam = self.driver.find_elements(By.CLASS_NAME, 'doObjExam')
        if do_obj_exam:
            do_obj_exam[0].click()
        else:
            # 如果存在继续按钮，点击继续进入试卷
            enter_exam = self.driver.find_elements(By.CLASS_NAME, 'enter_exam')
            if not enter_exam:
                print(f'所选测试: {exam_select} 无效或不在开放状态\n')
                return False
            enter_exam[-1].click()

        try:  # 等待试卷页面加载完成
            self.wait.until(ec.presence_of_element_located((By.CLASS_NAME, 'practice-list')))
        except selenium.common.exceptions.TimeoutException:
            print('访问超时，请检查网络连接')
            return False

        return True
