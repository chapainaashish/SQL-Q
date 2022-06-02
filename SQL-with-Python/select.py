# Select data from database
# NOTE: fetchall() function is used to fetches all rows from the last executed statement
# NOTE: fetchone() function is used to fetches return first row of the result

import os
from mysql.connector import connect
from mysql.connector.errors import Error


# Connecting to database
try:
    with connect(
            host=os.environ.get("HOST"), user=os.environ.get("USER"), password=os.environ.get("PASS"), database="sql_store") as connection:

        # Creating cursor to execute command
        with connection.cursor() as cursor:
            # Executing command
            # Printing 5 customers first_name from customers table
            # Return list of tuples
            command = "SELECT first_name FROM customers LIMIT 5"
            cursor.execute(command)

            # Selecting all results
            result = cursor.fetchall()

            # Printing result
            for customer in result:
                print(customer[0])


# Handling Error
except Error as e:
    print(e)
