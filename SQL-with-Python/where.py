# Using where statement
# NOTE: fetchall() function is used to fetches all rows from the last executed statement

import os
from mysql.connector import connect
from mysql.connector.errors import Error


# Connecting to database
try:
    with connect(
            host=os.environ.get("HOST"), user=os.environ.get("USER"), password=os.environ.get("PASS"), database="sql_store") as connection:

        # Creating cursor to execute command
        with connection.cursor() as cursor:

            # NOTE: Not recommended cause it increase sql injection threat
            # command = "SELECT * FROM customers WHERE birth_date > '1990-01-01';"
            # NOTE: To prevent SQL injection we escape the value

            command = "SELECT * FROM customers WHERE birth_date > %s"
            date = ("1990-01-01",)
            cursor.execute(command, date)

            # Selecting all results
            result = cursor.fetchall()

            # Printing result
            for customer in result:
                print(customer)


# Handling Error
except Error as e:
    print(e)
