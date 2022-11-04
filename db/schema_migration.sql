-- Write your sql commands to create your db schema here.
-- It should create a table in a new table in the db/ directory.

--Drop pokemon table if it already exists
DROP TABLE IF EXISTS pokemon;


-- create pokemon table
-- Define two columns: name and type
CREATE TABLE IF NOT EXISTS pokemon (
  id INTEGER PRIMARY KEY, 
  name TEXT, 
  type TEXT
  );