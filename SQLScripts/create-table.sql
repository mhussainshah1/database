CREATE database People;
use People;

CREATE TABLE person (
	-- The start of the "CREATE TABLE" which gives the name of the table as person. 
    -- You then put the fields you want inside parenthesis after this setup.
    id INTEGER PRIMARY KEY,
    -- An id column which will be used to exactly identify each row. 
    -- The format of a column is NAME TYPE, and in this case I'm saying I want an INTEGER that is also a PRIMARY KEY. 
    -- Doing this tells SQLite3 to treat this column special.
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    -- A first_name and a last_name column which are both of type VARCHAR. They both can hold up to 50 characters.
    age INTEGER
    -- An age column that is just a plain INTEGER.
);
-- Ending of the list of columns with a closing parenthesis and then a semi-colon ';' character.


select * from person;

--  Rewrite this so that it's all lowercase and see if it still works. You'll need to delete person. 
-- Add other INTEGER and VARCHAR fields for other things a person might have.

drop table person;

create table person (
    id integer primary key,
    first_name varchar(50),
    last_name varchar(50),
    address varchar(50),
    age integer,
    height integer,
    ssn integer
);

