# fuck-WZU-SPOC

MOOC Auto Answer Script

[中文说明](./README-CN.MD)

## Description

This project is an automated script for answering questions on MOOC platforms such as CNMOOC and some SPOCs.\
It aims to help students save time and improve learning efficiency by automatically finding and filling in the correct answers to quizzes and exams on online education platforms.

## Attention

If you want to use this script on the CNMOOC platform, you need to modify the login script and change the way cookies are obtained.

## Usage

1. Change the arguments in `run-user.bat`.
2. Double click `run-user.bat`.

> Or you can run it manually as follows:
>
> 1. Run `pip install -r requirements.txt` in the terminal to install the required packages.
> 2. For first time, you have two choice to run the script:
>    1. Run `python run.py -u <username> -p <password> --webdriver_manager --headless` in the terminal.
>    2. Change `username` and `password` in `config.json` and run `python run.py --webdriver_manager --headless` in the terminal.
> 3. After the first time, you can run `python run.py --webdriver_manager --headless` in the terminal to start the script.

## TODO

- [ ] Add support for CNMOOC login.
- [ ] Add support for other platforms.

## Supported Platforms

- [ ] [CNMOOC](https://www.cnmooc.org/)
- [x] [WZU-SPOC](http://spoc.wzu.edu.cn/)

## Contributing

1. Fork it.
2. Create your feature branch.
3. Commit your changes (e.g. QuestionBank).
4. Push to the branch.
5. Submit a pull request.

## License

[GPL-3.0](https://choosealicense.com/licenses/gpl-3.0/)
