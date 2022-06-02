# It's not reccommended to hardcode your username and password so that we have import it through os module from environmental variable
# which is saved in ".bash_profile" file in home directory

import os
import mysql.connector
from mysql.connector.errors import Error


# Connecting to database

# NOT RECOMMENDED
# REASONS: Hardcoded username and password, don't used file context manager
# mydb = mysql.connector.connect(
#     host="localhost", user="root", password="9779840221385", database="sql_store")

# RECOMMENDED WAY
# RESONS: exception handled, used context manager, doesn't hardcoded username and password
try:
    with mysql.connector.connect(
            host=os.environ.get("HOST"), user=os.environ.get("USER"), password=os.environ.get("PASS"), database="sql_store") as connection:
        pass

except Error as e:
    print(e)
