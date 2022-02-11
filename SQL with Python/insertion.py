# Inserting data into tables
# ececute() is used to insert one piece of data
# NOTE:executemany() function is used to insert multiple rows at one go or one commit
import os
from mysql.connector import connect
from mysql.connector.errors import Error


# Connecting to database
try:
    with connect(
            host=os.environ.get("HOST"), user=os.environ.get("USER"), password=os.environ.get("PASS"), database="sql_store") as connection:

        # Creating cursor to execute command
        with connection.cursor() as cursor:
            # NOTE: we use %s even for integer variables and "" is not used for either strings or anything
            # NOTE: the values should alway be in tuples format
            command = """
                        INSERT INTO customers(first_name, last_name, address, city, state, points)
                        VALUES(%s, %s, %s, %s, %s, %s)
                      """
            values = ("Santosh", "Baniya", "Parsyang", "Pokhara", "GP", 100)
            # Executing command and Commiting written data
            cursor.execute(command, values)
            connection.commit()
            print(cursor.rowcount, "record was inserted")

            # Inserting multiple data at one go
            command = """INSERT INTO customers(first_name, last_name, address, city, state, points)
                        VALUES(%s, %s, %s, %s, %s, %s)
                        """
            values = [("Santosh", "Baniya", "Parsyang", "Pokhara", "GP", 100),
                      ("Aashish", "Sharma", "Malepatan", "Pokhara", "GP", 30000),
                      ("Sudip", "Poudel", "Patan", "Kathmandu", "BP", 10)]
            cursor.executemany(command, values)
            connection.commit()
            print(cursor.rowcount, "records was inserted")

# Handling Error
except Error as e:
    print(e)


#
