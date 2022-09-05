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


if __name__ == '__main__':
    List = ['{"quizId":"112413","userAnswer":"350086"}', '{"quizId":"112414","userAnswer":"350090"}',
            '{"quizId":"112420","userAnswer":"350114"}', '{"quizId":"112425","userAnswer":"350134"}',
            '{"quizId":"113211","userAnswer":"352943,352944,352945,352946,352947"}',
            '{"quizId":"112422","userAnswer":"350122"}',
            '{"quizId":"113205","userAnswer":"352917,352918,352919,352920"}',
            '{"quizId":"113212","userAnswer":"352948,352949,352950,352951,352952"}',
            '{"quizId":"112419","userAnswer":"350110"}', '{"quizId":"112423","userAnswer":"350126"}',
            '{"quizId":"113215","userAnswer":"352961,352962,352963,352964"}',
            '{"quizId":"112403","userAnswer":"350046"}', '{"quizId":"113206","userAnswer":"352924"}',
            '{"quizId":"113204","userAnswer":"352913,352914,352915,352916"}',
            '{"quizId":"112406","userAnswer":"350058"}', '{"quizId":"112411","userAnswer":"350078"}',
            '{"quizId":"112416","userAnswer":"350098"}', '{"quizId":"113213","userAnswer":"352956"}',
            '{"quizId":"112426","userAnswer":"350138"}', '{"quizId":"112407","userAnswer":"350062"}',
            '{"quizId":"112412","userAnswer":"350081"}',
            '{"quizId":"113210","userAnswer":"352938,352939,352940,352941,352942"}',
            '{"quizId":"112421","userAnswer":"350116"}', '{"quizId":"113214","userAnswer":"352960"}',
            '{"quizId":"112424","userAnswer":"350130"}']
    Dict = PracticeSendFromList2Dict(List)
    print(Dict)
    ll = PracticeSendFromDict2List(Dict)
    print(ll)
