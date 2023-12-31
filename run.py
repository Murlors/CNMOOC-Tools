import argparse
import json
import os.path

from auto_answer import AutoAnswer


def get_hparams():
    parser = argparse.ArgumentParser()
    parser.add_argument("-u", "--username", type=str, help="学号")
    parser.add_argument("-p", "--password", type=str, help="密码")

    parser.add_argument(
        "-wm", "--webdriver_manager", action="store_true", help="是否使用webdriver_manager"
    )
    parser.add_argument("--headless", action="store_true", help="是否使用无头模式")

    parser.add_argument("--update_anyway", action="store_true", help="是否强制更新题库")

    parser.add_argument("--cnmooc", action="store_true", help="是否使用cnmooc登录")
    return parser


def get_config():
    if os.path.exists("config.json"):
        with open("config.json", "r") as f:
            config = json.load(f)
            if (
                config["username"] != "yourusername"
                and config["password"] != "yourpassword"
            ):
                return config
    return None


def parse_args(parser):
    args = parser.parse_args()
    if not args.username or not args.password:
        config = get_config()
        if config:
            args.username = config["username"]
            args.password = config["password"]
        else:
            args.username = input("username: ")
            args.password = input("password: ")

    from selenium import webdriver

    options = webdriver.EdgeOptions()
    options.add_argument("--no-proxy-server")  # 绕过代理
    if args.headless:
        options.add_argument("--headless=new")

    if args.webdriver_manager:
        from selenium.webdriver.edge.service import Service as EdgeService
        from webdriver_manager.microsoft import EdgeChromiumDriverManager, DriverCacheManager

        os.environ['WDM_LOCAL']= "true"

        args.driver = webdriver.Edge(
            service=EdgeService(
                EdgeChromiumDriverManager(
                    cache_manager=DriverCacheManager(valid_range=7)
                ).install()
            ),
            options=options,
        )
    else:
        args.driver = webdriver.Edge(options=options)

    return args


def main():
    parser = get_hparams()
    hparams = parse_args(parser)

    username, password = hparams.username, hparams.password
    print(f"username: {username}, password: {password}")

    auto_answer = AutoAnswer(hparams.driver, hparams.update_anyway)  # 实例化
    # run auto_answer.py
    if hparams.cnmooc:
        auto_answer.BASE_URL = "http://180.76.151.202:7010"
        auto_answer.headers["Host"] = "180.76.151.202:7010"
        is_login = auto_answer.login_by_cnmooc(username, password)
    else:
        auto_answer.BASE_URL = "http://spoc.wzu.edu.cn"
        auto_answer.headers["Host"] = "spoc.wzu.edu.cn"
        is_login = auto_answer.login_by_wzu_hall(username, password)
    if not is_login:
        print("登录失败")
        return
    while True:
        auto_answer.select_courses()
        auto_answer.get_exam_select()
        for exam in auto_answer.exam_select:
            if auto_answer.goto_exam_test(exam):
                auto_answer.auto_answer()
                auto_answer.insert_data(exam)
        print("input continue to continue.")
        if input() != "continue":
            break


if __name__ == "__main__":
    main()
