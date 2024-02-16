import pymysql

db = pymysql.connect(
    host="localhost",
    port=3306,
    user='root',
    password="123123",
    db="mysql",
    charset="utf8"
)

# 操控数据库
cursor=db.cursor()
cursor.execute('select version()')

data=cursor.fetchone()

print(data)

db.close()
