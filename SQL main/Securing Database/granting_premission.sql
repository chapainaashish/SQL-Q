
-- 1. web/desktop application (for read and write data only)
-- 2. admin (full permission)

-- let's we have a webapp called geekdocs 
-- now we are providing it only reading and writing permission to our database

-- first, create geekdocs user
CREATE USER geekdocs@geekdocs.com IDENTIFIED BY 'password';

-- granting permission
GRANT SELECT, INSERT, UPDATE, DELETE, EXECUTE
ON  sql_store.* --database.table_name
TO geekdocs@geekdocs.com;  -- username

-- giving permission or admin privileges to user john 
GRANT ALL
ON *.* -- all_databases.all_table
TO john;

-- viewing privileges of user 
SHOW GRANTS FOR john

-- viewing permission of current user
SHOW GRANTS

-- Revoking or Dropping Privileges
REVOKE SELECT, INSERT
ON *.*
FROM john; 