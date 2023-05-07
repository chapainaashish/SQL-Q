-- JSON is a lightweight format for storing and transferring data over the internet

-- Inserting JSON object in database
UPDATE products
SET properties = '
{
	"model no": [1,2,3],
    "weight": 45,
    "manufacturer": {"name": "sony"}
}
'
WHERE product_id = 1;

-- Inserting JSON object in database [Another way]
UPDATE products
SET properties = JSON_OBJECT(
	'weight', 10,
	'dimensions', JSON_ARRAY(1,2,3), 
	'manufacturer', JSON_OBJECT('name', 'sony'))
WHERE product_id = 2;

-- Retreiving JSON objects
SELECT 
	product_id, 
    JSON_EXTRACT(properties, '$.weight') AS weight
FROM products
WHERE product_id = 2;

-- Retreiving JSON objects [Another way]
SELECT 
	product_id, 
    properties -> '$.weight' AS weight
FROM products
WHERE product_id = 2;


-- Retreiving JSON array
-- we should pass index of element right after that object
SELECT 
	product_id, 
    JSON_EXTRACT(properties, '$.dimensions[0]') AS weight
FROM products
WHERE product_id = 2;

-- Retreiving nested JSON object
-- We should add period at the end of the objects to acces inside it
SELECT 
	product_id, 
    JSON_EXTRACT(properties, '$.manufacturer.name') AS weight
FROM products
WHERE product_id = 2;


-- Using json object as filter while retreiving data
-- double >> is used eliminate "" in result from string
SELECT 
	product_id, 
    JSON_EXTRACT(properties, '$.manufacturer.name') AS weight
FROM products
WHERE properties ->> '$manufacturer.name' = 'sony';

-- Updating JSON objects
-- JSON_SET() function is used update or add new properties of json object
-- updating weight adding age
UPDATE products
SET properties = JSON_OBJECT(
    properties, 
    '$weight', 20,
    '$.age', 14
)
WHERE product_id = 2;

-- Removing JSON objects
-- JSON_REMOVE() function is used to remove json properties from json object
UPDATE products
SET properties = JSON_REMOVE(
    properties, 
    '$.age'
)
WHERE product_id = 2;
