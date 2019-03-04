## Database is a repository for data

Data is stored in sets which we see as tables.<br/>
Each **record (row)** contains **columns** called **fields**.

Remember that a class contains data called fields and you access your fields with getters and setters.

In order to be most efficient, databases should be designed with several rules in mind.

What does a database do?
- Create
- Read
- Update
- Delete

It can also execute DDL (Data definition Language) to create databases, table, queries (or views), roles and users and otherwise administer the system.

Database software that performs CRUD and DDL is called a DBMS (database management system).
Example: oracle, MySQL, SQL Server, PostgreSQL, Microsoft Access, H2.

Things that are just a database but not DBMS: Excel, NoSQL, 

Rules for databases:
- A = atomic (think of atoms). Each record should be stored in fields which represent the most atomic or smallest component of the data 
So, an address should be: house number, street, city, state, zip.
A name would be: title, first, middle, last, suffix
-----------------------------------------------------------
- C = consistent = refers to the validity of your data in terms of the rules you set for it. Data is valid and not junk.

- I = Isolation - all transaction will occur in isolation and won't interfere with other transactions.

- D = Durability - Once data is committed to the system, it must remain saved and stored permanently.
-----------------------------------------------------------

### What is a relational database?
Relationships are: one to one, One to Many, Many to Many
Data is stored in sets (tables) which are joined (connected) to each other by key fields.

### Key fields: 
**Primary key** - key field identifier that uniquely identifies a record. (eg. SSN) in spring boot it is mandatory. We user 
```
@Generated
@Id
long id;
```
**Foreign key** - a non-primary field in one table that refers to a primary key

Generally we use sequence to uniquely identify each record
- One to one	-	(not a common relationship for databases). Usually express in one table.<br/>
Employee table and (SSN  table) reason is to apply security on SSN.<br/>
Each record in Table A has one corresponding record in Table B eg- husband and wife

- One to many	-	(most common and most ideal)
Each record in Table A has many corresponding record in Table B<br/>
BUT each record in Table B has one corresponding records in Table A<br/>
Example: One movie has many actors

- Many to Many	-	(common but easier to express as two one to many relationships)<br/>
Each record in Table A has many corresponding record in Table B<br/>
AND each record in Table B has one corresponding records in Table A<br/>
Example: Many movies have many actors. Easier to create a join or bridge table to create two one-to-many relationships.
