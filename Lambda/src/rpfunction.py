import json, boto3, psycopg2
from psycopg2 import pool

client = boto3.client('s3')
def lambda_handler(event, context):
    print(event)
    conn_string = "dbname='pgdb' port='5432' user='root' password='root1234' host='tp5zttxhk4jc3w.cfp7liq9mixq.us-west-2.rds.amazonaws.com'"
    postgreSQL_pool = psycopg2.pool.SimpleConnectionPool(1, 20, conn_string)
    conn = postgreSQL_pool.getconn()
    if (conn):
        print("yes")