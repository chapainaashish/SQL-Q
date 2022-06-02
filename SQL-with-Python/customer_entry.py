# Inserting customer details

import mysql.connector
import os
from mysql.connector import connect
from mysql.connector.errors import Error

print("\n\t\tCUSTOMER DETAIL")
first_name = str(input("Enter first name: "))
last_name = str(input("Enter last name: "))
address = str(input("Enter address: "))
city = str(input("Enter city: "))
state = str(input("Enter state: "))
points = int(input("Enter points: "))


# Connecting to database
try:
    with connect(
            host=os.environ.get("HOST"), user=os.environ.get("USER"), password=os.environ.get("PASS"), database="sql_store") as connection:

        # Creating cursor to execute command
        with connection.cursor() as cursor:
            command = """INSERT INTO customers(first_name, last_name, address, city, state, points)
                    VALUES(%s, %s, %s, %s, %s, %s)"""
            values = (first_name, last_name, address, city, state, points)

            cursor.execute(command, values)
            connection.commit()

            print(cursor.rowcount, "record was inserted")


# Handling Error
except Error as e:
    print(e)
