import hashlib
import os.path
import sqlite3


class QuestionBank:
    DATABASE_NAME = 'QuestionBank.sqlite3'
    SQL_NAME = 'QuestionBank.sql'
    HASH_FILE = '.sql_hash'
    VALID_QUIZ_TYPES = ['itt001', 'itt002', 'itt003', 'itt004']

    def __init__(self, database_name=DATABASE_NAME):
        if not os.path.exists(database_name):
            self.conn = sqlite3.connect(database_name)
            self.sql_to_sqlite3()
        else:
            self.conn = sqlite3.connect(database_name)
            self.check_sql_hash()  # 检查hash值

    def __del__(self):
        self.conn.close()

    def insert_answer(self, quiz_id: int, quiz_content: str, answer_id: str, answer_content: str, quiz_type: str):
        if quiz_type not in QuestionBank.VALID_QUIZ_TYPES:
            raise ValueError('Invalid quiz_type')

        quiz_type = int(quiz_type[-1])
        try:
            if not (self.search_answer(quiz_id)):
                self.conn.cursor().execute('INSERT INTO QuestionBank VALUES (?,?,?,?,?)',
                                           (quiz_id, quiz_content, answer_id, answer_content, quiz_type))
            else:
                self.conn.cursor().execute('UPDATE QuestionBank SET quiz_content=?, answer_id=?, answer_content=?, '
                                           'quiz_type=? WHERE quiz_id=?',
                                           (quiz_content, answer_id, answer_content, quiz_type, quiz_id))
            self.conn.commit()
        except sqlite3.Error as e:
            print(e)

    def search_answer(self, quiz_id: int) -> list[str]:
        answers = []
        if quiz_id is None:
            raise KeyError('Invalid quiz_id')

        try:
            res = self.conn.cursor().execute(
                'SELECT quiz_id,quiz_content,answer_id,answer_content,quiz_type '
                'FROM QuestionBank WHERE quiz_id=?', (quiz_id,))
            for answer in res:
                print(f'找到题目：{answer[1]}\n答案：{answer[3]}\n')
                answers.append(answer[2])
        except sqlite3.Error as e:
            print(e)
        return answers

    def export_sqlite3_to_sql(self):
        with open(self.SQL_NAME, 'w', encoding='utf-8') as f:
            for line in self.conn.iterdump():
                f.write('%s\n' % line)
            print('export sqlite3 to sql success')

    def delete_database(self):
        self.conn.execute('DROP TABLE IF EXISTS QuestionBank')

    def sql_to_sqlite3(self):
        self.delete_database()
        with open(self.SQL_NAME, 'r', encoding='utf-8') as f:
            sql = f.read()
        self.conn.executescript(sql)
        self.conn.commit()
        print('update sqlite3 success')

    def get_sql_hash(self):
        with open(self.SQL_NAME, 'rb') as f:
            hash_value = hashlib.sha256(f.read()).hexdigest()
        return hash_value

    def sql_hash_file(self):
        if not os.path.exists(self.HASH_FILE):
            with open(self.HASH_FILE, 'w', encoding='utf-8') as f:
                f.write('')
        with open(self.HASH_FILE, 'r', encoding='utf-8') as f:
            hash_value = f.read()
        return hash_value

    def update_sql_hash_file(self):
        with open(self.HASH_FILE, 'w', encoding='utf-8') as f:
            f.write(self.get_sql_hash())

    def check_sql_hash(self):
        if self.get_sql_hash() != self.sql_hash_file():
            self.update_sql_hash_file()
            self.sql_to_sqlite3()
