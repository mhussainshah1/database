SET @DATABASE_NAME = 'books';

SELECT  CONCAT('ALTER TABLE ',@DATABASE_NAME,'.', table_name, ' ENGINE=InnoDB;') AS sql_statements
FROM    information_schema.tables AS tb
WHERE   table_schema = @DATABASE_NAME
AND     `ENGINE` = 'MyISAM'
AND     `TABLE_TYPE` = 'BASE TABLE'
ORDER BY table_name DESC;

-- drop database movies;
create database movies;

use movies;
drop table director;
drop table hibernate_sequence;
drop table movie;