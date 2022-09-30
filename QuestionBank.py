import sqlite3

dataBaseName = 'QuestionBank.sqlite'


def database_init():
    db = sqlite3.connect(dataBaseName)
    db.cursor().execute('''CREATE TABLE QuestionBank
                (   quizId  INT PRIMARY KEY  NOT NULL ,
                    quizContent  TEXT  NOT NULL ,
                    answerId  TEXT  NOT NULL ,
                    answerContent  TEXT ,
                    quizType  TEXT  NOT NULL
                );''')
    db.close()
    print("数据表创建成功")


def insert_answer(quizId: int, quizContent, answerId, answerContent, quizType):
    if not (search_answer(quizId)):
        db = sqlite3.connect(dataBaseName)
        db.cursor().execute(
            'INSERT INTO QuestionBank VALUES (?,?,?,?,?)', (quizId, quizContent, answerId, answerContent, quizType))
        db.commit()
        db.close()


def search_answer(quizId: int):
    answers = []
    if quizId:
        db = sqlite3.connect(dataBaseName)
        res = db.cursor().execute(
            'SELECT quizId,quizContent,answerId,answerContent,quizType FROM QuestionBank WHERE quizId=?', (quizId,))
        for answer in res:
            print("找到题目：{}\n答案：{}\n".format(answer[1], answer[3]))
            answers.append(answer[2])
        db.close()
    return answers


if __name__ == '__main__':
    database_init()
