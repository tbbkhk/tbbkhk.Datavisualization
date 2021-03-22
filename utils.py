import time
import pymysql
from decimal import Decimal
import json

def get_time():
    time_str = time.strftime("%Y{}%m{}%d{} %X")
    return time_str.format("年", "月", "日")



def get_conn():
    """
    :return: 连接，游标
    """
    # 创建连接
    conn = pymysql.connect(host="localhost",
                           user="root",
                           password="123456",
                           db="cov",
                           charset="utf8")
    # 创建游标
    cursor = conn.cursor()  # 执行完毕返回的结果集默认以元组显示
    return conn, cursor


def close_conn(conn, cursor):
    cursor.close()
    conn.close()


def query(sql, *args):
   
    conn, cursor = get_conn()
    cursor.execute(sql, args)
    res = cursor.fetchall()
    close_conn(conn, cursor)
    return res


def get_c1_data():

    sql= "select confirm, suspect, heal,dead from chinahistory1 where day = (select day from chinahistory1 order by day desc limit 1)"
    res = query(sql)
    return res[0]


def get_c2_data():

    sql= "select province,confirm from chinadetails1"
    res = query(sql)
    return res

def get_l1_data():
    sql = "select day,confirm,suspect,heal,dead from chinahistory1"
    res = query(sql)
    return res


def get_l2_data():
    sql = "select day,confirm_add,suspect_add,heal_add ,dead_add from chinahistory1" 
    res = query(sql)
    return res

def get_r1_data():
   sql= "select province,confirm from  chinadetails1 ORDER BY confirm  desc LIMIT 5"
   res = query(sql)
   return res

def get_r2_data():
   sql = "select searchname,searchvalue from  search"
   res = query(sql)
   return res


if __name__ == "__main__":
    print(len(get_r2_data()))

