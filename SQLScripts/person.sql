-- DDL to create the datbase
create database testdb;
use testdb;

-- DDL: Data Defination Language to create a table
CREATE TABLE person (
    id INTEGER PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INTEGER
);
-- READ
select id, first_name, last_name, age from person;

-- CREATE
insert into person values (1, 'Muhammad', 'Shah', 10);

-- READ
select id, first_name, last_name, age from person;

-- UPDATE
update person set age = 11 where id = 1;

select id, first_name, last_name, age from person;

select last_name, first_name age from person where id = 1;

-- DELETE
delete from person where id = 1;

select id, first_name, last_name, age from person;