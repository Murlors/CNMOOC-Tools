import re


def practice_send_from_list2dict(practice_list: list):
    practice_dict = []
    for item in practice_list:
        pattern = re.compile('.*?quizId\\":\\"(?P<quizId>.*?)\\",\\"userAnswer\\":\\"(?P<userAnswer>.*?)\\"', re.S)
        result = pattern.search(item)
        practice_dict.append({
            "quizId": int(result.group("quizId")),
            "userAnswer": str(result.group("userAnswer"))
        })
    return practice_dict


def practice_send_from_dict2list(practice_dict: dict):
    practice_list = []
    for item in practice_dict:
        practice_list.append('{"quizId":"' + str(item["quizId"]) + '","userAnswer":"' + str(item["userAnswer"]) + '"}')
    return practice_list
