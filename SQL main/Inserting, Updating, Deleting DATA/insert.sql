-- Inserting value in  table
-- NOTE: we don't have to insert primary key or any autoincrement type coloumn  while inserting data into table

-- Adding values in all coloumns without specifying coloumns
INSERT INTO customers
VALUES(DEFAULT, 'Aashish','Sharma','2002-11-21',NULL,'Pokhara','Nepal','GP',5000 );

-- Specifying  coloumn name to enter data
INSERT INTO customers(f_name, l_name, birth_date, address, city, state, points)
VALUES('Aashish', 'Sharma','2002-11-21','ratnachowk','Nepal','GP',  5000  );

-- Inserting multiple rows in one go
INSERT INTO shippers (name, age , gender)
VALUES('shipper1', 23, "m"), ('shipper2', 45, "w"), ('shipper3', 33, "m");


-- Inserting hirearchical rows/Inserting data into multiple tables
-- Adding data into first table
-- Adding data into second correspond table
-- here, LAST_INSERT_ID() is a function which return last primary key that is inserted in previous table
INSERT INTO orders (customer_id, order_date, status)
VALUES (1, '2020-01-01', 1);
INSERT INTO order_items
VALUES (LAST_INSERT_ID(), 1, 1, 2.95),(LAST_INSERT_ID(), 2, 1, 3.95);
