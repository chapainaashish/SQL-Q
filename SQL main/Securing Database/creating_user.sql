
-- creating user syntax
-- ip address refer to from where user can connect to the database
CREATE USER user_name@ip_address IDENTIFIED BY 'user_password'

-- Creating user aashish on local host
CREATE USER aashish@127.0.0.1 IDENTIFIED BY 'password123'

-- we can also assign domain name
CREATE USER aashish@syncfield.com IDENTIFIED BY 'password123'

-- viewing user in server
SELECT * FROM mysql.user;

-- dropping user
DROP USER aashish@syncfield.com;

-- changing password
SET PASSWORD FOR aashish='new_password';

-- for changing currently logged user
SET PASSWORD ='new_password';

