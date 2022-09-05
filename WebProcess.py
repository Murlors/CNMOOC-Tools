import json

import requests
import time
import os
from bs4 import BeautifulSoup
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.wait import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

class WebProcess:
    def __init__(self):
        self.headers = {
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36',
            "Referer": "http://spoc.wzu.edu.cn/examTest/stuExamList/22686.mooc",
            "Host": "spoc.wzu.edu.cn"
        }
        self.session = requests.session()
        self.drive = webdriver.Chrome()
        self.soup = BeautifulSoup()
        self.cookies = {}

    def __del__(self):
        self.drive.quit()

    def getCookies(self):
        # if os.path.exists('cookies1.json') and os.path.getsize('cookies.json') != 0:
        #     with open(file='cookies.json', mode='r') as f:
        #         self.drive.get(url='http://spoc.wzu.edu.cn/')
        #         WebDriverWait(self.drive, timeout=3, poll_frequency=1).until(EC.title_contains("SPOC"))
        #         dictCookies = json.load(f)
        #         for cookie in dictCookies:
        #             self.drive.add_cookie(cookie)
        #         time.sleep(2)
        #         self.drive.get(url='http://spoc.wzu.edu.cn/portal/myCourseIndex/1.mooc?checkEmail=false')
        #         print(self.drive.get_cookies())
        # else:
        #     with open(file='cookies.json', mode='w') as f:
        #         self.drive.get(url='http://spoc.wzu.edu.cn/oauth/toMoocAuth.mooc')
        #         WebDriverWait(self.drive, timeout=30, poll_frequency=1).until(EC.title_contains("SPOC"))
        #         dictCookies = self.drive.get_cookies()
        #         json.dump(dictCookies, f)
        self.drive.get(url='http://spoc.wzu.edu.cn/oauth/toMoocAuth.mooc')
        WebDriverWait(self.drive, timeout=30, poll_frequency=1).until(EC.title_contains("SPOC"))
        dictCookies = self.drive.get_cookies()
        cookiejar = requests.cookies.RequestsCookieJar()
        for cookie in dictCookies:
            cookiejar.set(cookie['name'], cookie['value'])
            self.cookies[cookie['name']] = cookie['value']
        self.session.cookies = cookiejar
        print(self.cookies)

    def gotoExamTest(self):
        self.drive.get("http://spoc.wzu.edu.cn/examTest/stuExamList/22686.mooc")
        time.sleep(1)
        self.drive.find_element(By.CLASS_NAME, 'link-action').click()
        time.sleep(1)
        self.drive.find_element(By.CLASS_NAME, 'enter_exam').click()
        time.sleep(1)
