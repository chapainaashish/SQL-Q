-- Strings Category Data types

-- For storing fixed length string
-- state, zipcode, countrycode
CHAR(x)

-- For storing variable length string
-- email, name, address
VARCHAR(x)

-- For short sting like; name
VARCHAR(50)

-- For medium-length string like; email, address
VARCHAR(255)

CHAR(x)             -- fixed length
VARCHAR(x)          -- max: 65,535 characters (~64KB)

TINYTEXT            -- max: 255 bytes
Text                -- max: 64KB
MEDIUMTEXT          -- max: 16MB
LONGTEXT            -- max: 4GB