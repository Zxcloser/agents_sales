import MySQLdb as mdb
import pandas as pd

conn = mdb.connect(host="localhost", user="root", passwd="root", db="Sales")
curs = conn.cursor()

with open("agents_b_import.csv", "r") as file:
    data = 0
    for line in file:
        line = line.split(";")
        line[-1] = line[-1].strip()
        if data != 0:
            type_id = curs.execute(f"select id from agenttype where title = '{line[0]}'")
            if type_id == 0:
                curs.execute(f"insert into agenttype(title) values('{line[0]}')")
                conn.commit()
            curs.execute(f"select id from agenttype where title = '{line[0]}'")
            type_id = int(curs.fetchone()[0])
            curs.execute(f"insert into agents(type_id, title, email, phone, logo, address, priority, directorname, INN, KPP) values({type_id}, '{line[1]}', '{line[2]}', '{line[3]}', '{line[4]}', '{line[5]}', {int(line[6])}, '{line[7]}', '{line[8]}', {line[9]})")
            #conn.commit()
            print(f"({type_id}, '{line[1]}', '{line[2]}', '{line[3]}', '{line[4]}', '{line[5]}', {int(line[6])}, '{line[7]}', '{line[8]}', {line[9]})")
        elif data == 0:
            print(line)
            data = 1
#df = pd.read_csv("agents_b_import.csv" , encoding="UTF-8")

#print(df)