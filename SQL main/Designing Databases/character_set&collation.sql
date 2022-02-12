-- showing all character set in MySQL
SHOW CHARSET;

-- MySQL use utf8 charset which supports all international languages

-- Setting character set while creating database
CREATE TABLE example
(
	example_id INT PRIMARY KEY NOT NULL
)
CHARACTER SET latin1