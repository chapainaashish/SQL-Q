-- Full text index
-- full text index is used to make search engine
-- Reasons: present by relevence ;;; so f***ing powerful :)

-- It used when prefix indexing become irrelvent to use

-- Example;

-- Database naem:       ourblog
-- Table name:          posts
-- column    :          title, body



-- First, let create index in our table
-- Here, we indexing two column blog title and body
CREATE FULLTEXT INDEX idx_title_body 
ON posts (title, body);


-- Let's write our query
-- the select statement match function return a float value of relevance from 0 to 1 for each result
SELECT *, MATCH (title, body) AGAINST ('search_phrase')
FROM posts
WHERE MATCH (title, body) AGAINST ('search_phrase');


-- The fulltext search index has two mode: natural language mode and boolean mode
-- Let's talk about boolean mode
-- "" ---> must include this exact search phrase ('"aashish" sharma')
-- - --> must exclude this search phrase ('-aashish sharma')

SELECT *, MATCH (title, body) AGAINST ('search_phrase')
FROM posts
WHERE MATCH (title, body) AGAINST ('-search_phrase');

