CREATE database People;
use People;

CREATE TABLE person (
    id INTEGER PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INTEGER
);

-- ex1.sql:1
-- The start of the "CREATE TABLE" which gives the name of the table as person. You then put the fields you want 
-- inside parenthesis after this setup.

-- ex1.sql:2
-- An id column which will be used to exactly identify each row. The format of a column is NAME TYPE, and in this 
-- case I'm saying I want an INTEGER that is also a PRIMARY KEY. Doing this tells SQLite3 to treat this column special.

-- ex1.sql:3-4
-- A first_name and a last_name column which are both of type VARCHAR. They both can hold up to 50 characters.

-- ex1.sql:5
-- An age column that is just a plain INTEGER.

-- ex1.sql:6
-- Ending of the list of columns with a closing parenthesis and then a semi-colon ';' character.

select * from person;

create table person2 (
    id integer primary key,
    first_name varchar(50),
    last_name varchar(50),
    age integer,
    height integer
);

drop table person2;