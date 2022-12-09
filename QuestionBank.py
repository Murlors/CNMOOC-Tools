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


def insert_answer(quiz_id: int, quiz_content: str, answer_id: str, answer_content: str, quiz_type: str):
    if not (search_answer(quiz_id)):
        db = sqlite3.connect(dataBaseName)
        db.cursor().execute('INSERT INTO QuestionBank VALUES (?,?,?,?,?)',
                            (quiz_id, quiz_content, answer_id, answer_content, quiz_type))
        db.commit()
        db.close()


def search_answer(quiz_id: int):
    answers = []
    if quiz_id:
        db = sqlite3.connect(dataBaseName)
        res = db.cursor().execute(
            'SELECT quizId,quizContent,answerId,answerContent,quizType FROM QuestionBank WHERE quizId=?', (quiz_id,))
        for answer in res:
            print(f'找到题目：{answer[1]}\n答案：{answer[3]}\n')
            answers.append(answer[2])
        db.close()
    return answers


if __name__ == '__main__':
    database_init()
