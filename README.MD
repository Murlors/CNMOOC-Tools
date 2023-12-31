# CNMOOC Tools

[English](README.EN.MD) | 简体中文

MOOC 自动答题脚本

## Description

这个仓库是一个自动化脚本，用于在CNMOOC和一些SPOC(如WZU-SPOC)等平台上答题。

它旨在通过自动查找并填写在线教育平台上测验和考试的正确答案，帮助学生节省时间并提高学习效率。

## Attention

如果您想在CNMOOC平台上使用此脚本，您只需要在COMMANDLINE_ARGS中添加`--cnmooc`。

## Usage

1. 更改`run-user.bat`中的参数。
2. 双击打开`run-user.bat`.

> 或者您可以手动运行它，如下所示：
>
> 1. 在终端中运行`pip install -r requirements.txt`以安装所需的软件包。
> 2. 首次运行脚本有两种选择：
>    1. 在终端中运行`python run.py -u <username> -p <password> --webdriver_manager --headless`。
>    2. 更改config.json中的用户名和密码，然后在终端中运行`python run.py --webdriver_manager --headless`。
> 3. 首次运行后，您可以在终端中运行`python run.py --webdriver_manager --headless`以启动脚本。

## TODO

- [x] 增加对CNMOOC登录的支持。
- [ ] 添加对其他平台的支持。

## Supported Platforms

- [x] [CNMOOC](https://180.76.151.202:7010/)
- [x] [WZU-SPOC](http://spoc.wzu.edu.cn/)

## Contributing

1. `Fork`该仓库.
2. 创建分支。
3. 提交更改(如题库)。
4. 推送到分支。
5. 提交一个`pull request`.

## License

[MIT license](LICENSE)
