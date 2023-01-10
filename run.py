import argparse
import json

from auto_answer import AutoAnswer


def get_hparams():
    parser = argparse.ArgumentParser()
    parser.add_argument('-u', '--username', type=str, help='学号')
    parser.add_argument('-p', '--password', type=str, help='密码')
    args = parser.parse_args()
    if args.username and args.password:
        with open('config.json', 'w') as f:
            json.dump({'username': args.username, 'password': args.password}, f, indent=4)
    else:
        with open('config.json', 'r') as f:
            config = json.load(f)
            args.username = config['username']
            args.password = config['password']
    return args


def main():
    username, password = get_hparams().username, get_hparams().password
    print(f'username: {username}, password: {password}')
    auto_answer = AutoAnswer()  # 实例化
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
