import argparse
import json
import os.path

from auto_answer import AutoAnswer


def get_hparams():
    parser = argparse.ArgumentParser()
    parser.add_argument('-u', '--username', type=str, help='学号')
    parser.add_argument('-p', '--password', type=str, help='密码')

    parser.add_argument('-wm', '--webdriver_manager', action='store_true', default=False,
                        help='是否使用webdriver_manager')
    parser.add_argument('--headless', action='store_true', default=False, help='是否使用无头模式')

    return parser


def parse_args(parser):
    args = parser.parse_args()
    if args.username and args.password:
        with open('config.json', 'w') as f:
            json.dump({'username': args.username, 'password': args.password}, f, indent=4)
    else:
        if os.path.exists('config.json'):
            with open('config.json', 'r') as f:
                config = json.load(f)
                args.username = config['username']
                args.password = config['password']

    from selenium import webdriver
    options = webdriver.EdgeOptions()
    if args.headless:
        options.headless = True

    if args.webdriver_manager:
        from selenium.webdriver.edge.service import Service as EdgeService
        from webdriver_manager.microsoft import EdgeChromiumDriverManager
        args.driver = webdriver.Edge(
            service=EdgeService(EdgeChromiumDriverManager(cache_valid_range=7).install()), options=options)
    else:
        args.driver = webdriver.Edge(options=options)

    return args


def main():
    parser = get_hparams()
    hparams = parse_args(parser)

    username, password = hparams.username, hparams.password
    print(f'username: {username}, password: {password}')

    auto_answer = AutoAnswer(hparams.driver)  # 实例化

    # run auto_answer.py
    if auto_answer.login(username, password):  # 登录
        while True:
            auto_answer.select_courses()  # 课程选择
            auto_answer.get_exam_select()  # 试卷选择
            for exam in auto_answer.exam_select:
                if auto_answer.goto_exam_test(exam):  # 进入对应试卷
                    auto_answer.auto_answer()
                    auto_answer.insert_data(exam)
            print('input continue to continue.')
            if input() != 'continue':
                break
    del auto_answer


if __name__ == '__main__':
    main()
