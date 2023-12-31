# CNMOOC Tools

English | [简体中文](README.MD)

MOOC Auto Answer Script

## Description

This project is an automated script for answering questions on MOOC platforms such as CNMOOC and some SPOCs(like WZU-SPOC).

It aims to help students save time and improve learning efficiency by automatically finding and filling in the correct answers to quizzes and exams on online education platforms.

## Attention

If you want to use this script on the CNMOOC platform, you just need to add `--cnmooc` into the COMMANDLINE_ARGS.

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

- [x] Add support for CNMOOC login.
- [ ] Add support for other platforms.

## Supported Platforms

- [x] [CNMOOC](https://180.76.151.202:7010/)
- [x] [WZU-SPOC](http://spoc.wzu.edu.cn/)

## Contributing

1. Fork it.
2. Create your feature branch.
3. Commit your changes (e.g. QuestionBank).
4. Push to the branch.
5. Submit a pull request.

## License

[MIT license](LICENSE)
