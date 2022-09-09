import re


def PracticeSendFromList2Dict(practiceList):
    practiceDict = []
    for item in practiceList:
        pattern = re.compile('.*?quizId\\":\\"(?P<quizId>.*?)\\",\\"userAnswer\\":\\"(?P<userAnswer>.*?)\\"', re.S)
        result = pattern.search(item)
        practiceDict.append({
            "quizId": int(result.group("quizId")),
            "userAnswer": str(result.group("userAnswer"))
        })
    return practiceDict


def PracticeSendFromDict2List(practiceDict):
    practiceList = []
    for item in practiceDict:
        practiceList.append('{"quizId":"' + str(item["quizId"]) + '","userAnswer":"' + str(item["userAnswer"]) + '"}')
    print(practiceList)
    return practiceList
