import re
import time

import requests
from bs4 import BeautifulSoup
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.wait import WebDriverWait
from webdriver_manager.chrome import ChromeDriverManager

from Encrypt import *


class WebProcess:
    def __init__(self):
        self.exam_select = None
        self.domain = 'http://spoc.wzu.edu.cn'
        self.headers = {
            'Host': 'spoc.wzu.edu.cn',
            'Referer': '',
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) '
                          'Chrome/105.0.0.0 Safari/537.36',
        }
        self.session = requests.session()
        options = webdriver.ChromeOptions()
        options.headless = True
        self.drive = webdriver.Chrome(ChromeDriverManager().install(), options=options)
        self.wait = WebDriverWait(self.drive, timeout=3, poll_frequency=1)
        self.courseOpenId = None
        self.cookies = {}

    def __del__(self):
        self.drive.quit()

    def loginHall(self, username, password):
        session = requests.session()
        headers = {
            'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,'
                      'image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9',
            'Accept-Encoding': 'gzip, deflate, br',
            'Accept-Language': 'zh-CN,zh;q=0.9',
            'Cache-Control': 'max-age=0',
            'Connection': 'keep-alive',
            'Content-Type': 'application/x-www-form-urlencoded',
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) '
                          'Chrome/105.0.0.0 Safari/537.36',
        }
        # 访问任意网址，返回包含认证页面链接的内容（自动跳转）
        resp = session.get('http://spoc.wzu.edu.cn/oauth/toMoocAuth.mooc', headers=headers)
        # 提取认证链接并访问，经历一次重定向得到认证页面，且会返回一个cookie值：session
        croypto = re.search(r'"login-croypto">(.*?)<', resp.text, re.S).group(1)
        execution = re.search(r'"login-page-flowkey">(.*?)<', resp.text, re.S).group(1)
        # 构建post数据 填入自己的学号 密码
        data = {
            'username': username,  # 学号
            'type': 'UsernamePassword',
            '_eventId': 'submit',
            'geolocation': '',
            'execution': execution,
            'captcha_code': '',
            'croypto': croypto,  # 密钥 base64格式
            'password': encrypt(password, croypto)  # 密码 经过des加密 base64格式
        }

        # 提交cookie，进行登录(重定向)
        session.cookies.update({'isPortal': 'false'})
        resp = session.post('https://source.wzu.edu.cn/login', data=data)
        self.drive.get('http://spoc.wzu.edu.cn/oauth/toMoocAuth.mooc')
        for key, value in session.cookies.get_dict().items():
            self.drive.add_cookie({"name": key, "value": value})
        self.drive.get('http://spoc.wzu.edu.cn/home/login.mooc')
        self.wait.until(EC.title_contains("SPOC"))
        self.drive.find_element(By.CLASS_NAME, 'oauthLogin').click()
        self.getCookies()
        print('login success', resp.status_code)

    def getCookies(self):
        dictCookies = self.drive.get_cookies()
        cookiejar = requests.cookies.RequestsCookieJar()
        for cookie in dictCookies:
            cookiejar.set(cookie['name'], cookie['value'])
            self.cookies[cookie['name']] = cookie['value']
        self.session.cookies = cookiejar
        print(self.cookies)

    def selectCourses(self):
        self.drive.get('http://spoc.wzu.edu.cn/portal/myCourseIndex/1.mooc?checkEmail=false')
        self.wait.until(EC.title_contains("SPOC"))
        if self.drive.find_elements(By.CLASS_NAME, 'introjs-skipbutton'):
            self.drive.find_element(By.CLASS_NAME, 'introjs-skipbutton').click()
        self.wait.until(EC.presence_of_all_elements_located((By.CLASS_NAME, 'view-title')))
        soup = BeautifulSoup(self.drive.page_source, 'lxml')
        courses = [{'title': h3.text.replace('\n', '').replace(' ', ''), 'href': self.domain + a.attrs['href']}
                   for h3, a in zip(soup.find_all('h3', class_='view-title'), soup.find_all('a', class_='view-shadow'))]
        hrefs = []
        for i, course in zip(range(1, len(courses) + 1), courses):
            print(i, '、课程名称:', course['title'])
            hrefs.append(course['href'])
        select = int(input())
        self.courseOpenId = re.search('index/(?P<courseOpenId>.*?).mooc', hrefs[select - 1]).group('courseOpenId')
        self.headers['Referer'] = self.domain + '/examTest/stuExamList/' + self.courseOpenId + '.mooc'
        print(self.headers['Referer'])

    def getExamSelect(self):
        self.drive.get(self.headers['Referer'])
        time.sleep(1)
        soup = BeautifulSoup(self.drive.page_source, 'lxml')
        exams = [h3.text.replace('\n', '').replace(' ', '') for h3 in soup.find_all('td', class_='td1')]
        for i, exam in zip(range(1, len(exams) + 1), exams):
            print(i, '、试卷名称:', exam)
        print("多选试卷用`,`分割")
        self.exam_select = list(map(int, input().split(',')))

    def gotoExamTest(self, exam_select):
        self.drive.get(self.headers['Referer'])
        time.sleep(1)
        self.drive.find_elements(By.CLASS_NAME, 'link-action')[exam_select - 1].click()
        time.sleep(1)
        if self.drive.find_elements(By.CLASS_NAME, 'doObjExam'):
            self.drive.find_element(By.CLASS_NAME, 'doObjExam').click()
        else:
            self.drive.find_elements(By.CLASS_NAME, 'enter_exam')[-1].click()
        time.sleep(1)
