import sqlite3


class QuestionBank:
    DATABASE_NAME = 'QuestionBank.sqlite'
    VALID_QUIZ_TYPES = ['itt001', 'itt002', 'itt003', 'itt004']

    def __init__(self, database_name=DATABASE_NAME):
        self.db = sqlite3.connect(database_name)

    def __del__(self):
        self.db.close()

    def insert_answer(self, quiz_id: int, quiz_content: str, answer_id: str, answer_content: str, quiz_type: str):
        if quiz_type not in QuestionBank.VALID_QUIZ_TYPES:
            raise ValueError('Invalid quiz_type')
        if not (self.search_answer(quiz_id)):
            try:
                self.db.cursor().execute('INSERT INTO QuestionBank VALUES (?,?,?,?,?)',
                                         (quiz_id, quiz_content, answer_id, answer_content, quiz_type))
                self.db.commit()
            except sqlite3.Error as e:
                print(e)

    def search_answer(self, quiz_id: int) -> list[str]:
        answers = []
        if quiz_id is None:
            raise KeyError('Invalid quiz_id')
        try:
            res = self.db.cursor().execute(
                'SELECT quiz_id,quiz_content,answer_id,answer_content,quiz_type FROM QuestionBank WHERE quiz_id=?',
                (quiz_id,))
            for answer in res:
                print(f'找到题目：{answer[1]}\n答案：{answer[3]}\n')
                answers.append(answer[2])
        except sqlite3.Error as e:
            print(e)
        return answers

    def database_init(self):
        self.db.cursor().execute('''CREATE TABLE QuestionBank
                    (   quiz_id  INT PRIMARY KEY  NOT NULL ,
                        quiz_content  TEXT  NOT NULL ,
                        answer_id  TEXT  NOT NULL ,
                        answer_content  TEXT ,
                        quiz_type  TEXT  NOT NULL
                    );''')
        print("数据表创建成功")
