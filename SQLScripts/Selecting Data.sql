-- READ
SELECT * FROM person;
-- This says "select all columns from person and return all rows." 
-- The format for SELECT is SELECT what FROM tables(s) WHERE (tests) and the WHERE clause is optional. 
-- The '*' (asterisk) character is what says you want all columns.

SELECT name, age FROM pet;
-- In this one I'm only asking for two columns name and age from the pet table. It will return all rows.

SELECT name, age FROM pet WHERE dead = 0;
-- Now I'm looking for the same columns from the pet table but I'm asking for only the rows where dead = 0. This gives me all the pets that are alive.

SELECT * FROM person WHERE first_name != 'Dave';
-- Finally I'm selecting all columns from person just like in the first line, but now I'm saying only if they do not equal "Zed". 
-- That WHERE clause is what determines which rows to return or not.

-- *********************************************************************************
-- 1) Write a query that finds all pets older than 10 years.
select * from pet where age > 10;

-- 2) Write a query to find all people younger than you. 
select * from person where age < 39;

-- 3) Do one that's older. 
select * from person where age > 39;

-- 4) Write a query that uses more than one test in the WHERE clause using the AND to write it. 
-- For example, WHERE first_name = "Dave" AND age > 30. 
select * from person WHERE first_name = "Dave" AND age > 30;

-- 5) Do another query that searches for rows using 3 columns and uses both AND and OR operators.
select first_name, last_name, age from person 
WHERE (first_name = "Dave" or last_name ="simpson") AND age >= 10;
