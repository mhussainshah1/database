create database testdb;
use testdb;

create table TableA(
id int not null auto_increment,
name varchar(255),
primary key(id)
);

create table TableB(
id int not null auto_increment,
name varchar(255),
primary key(id)
);

insert into TableB (name) values('Pirate');
insert into TableA (name) values('Monkey');
insert into TableA (name) values('Ninja');
insert into TableA (name) values('Spaghetti');
insert into TableA (name) values('Frujen');

insert into TableB (name) values('Rutabaga');
insert into TableB (name) values('Pirate');
insert into TableB (name) values('Darth Vader');
insert into TableB (name) values('Ninja');
insert into TableB (name) values('Han');

select * from tablea;
select * from tableb;

-- INNER JOIN
SELECT * FROM TableA
INNER JOIN TableB
ON TableA.name = TableB.name;

-- OUTER JOIN
SELECT * FROM TableA
FULL OUTER JOIN TableB
ON TableA.name = TableB.name;

-- LEFT OUTER JOIN
SELECT * FROM TableA
LEFT OUTER JOIN TableB
ON TableA.name = TableB.name;

SELECT * FROM TableA
LEFT OUTER JOIN TableB
ON TableA.name = TableB.name
WHERE TableB.id IS null;

SELECT * FROM TableA
FULL OUTER JOIN TableB
ON TableA.name = TableB.name
WHERE TableA.id IS null
OR TableB.id IS null;