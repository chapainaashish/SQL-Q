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
            cursor.execute("SHOW DATABASES")
            # Printing result
            for database in cursor:
                print(database)


# Handling Error
except Error as e:
    print(e)

# NOT recommended way
# # Executing mysql command
# mycursor = mydb.cursor()
# mycursor.execute("SHOW DATABASES;")
# # Printing all database in localhost
# for database in mycursor:
#     print(database)


# NOTE: we should escape values in sql command whenever we use "WHERE" clause
# Best Way to write command
# It prevent sql injection by escaping  values
# command = "SELECT * FROM some_table WHERE name = %s"
# value = ("Some value", "ANother value")
# mycursor.execute(command, value)

# # To modify data we should
# mycursor.commit()

# # To read data we should
# mycursor.fetchall()
