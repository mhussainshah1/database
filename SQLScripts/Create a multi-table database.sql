create database pet;
use pet;

CREATE TABLE person (
    id INTEGER PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INTEGER
);

CREATE TABLE pet (
    id INTEGER PRIMARY KEY,
    name VARCHAR(50),
    breed VARCHAR(50),
    age INTEGER,
    dead INTEGER
);

CREATE TABLE person_pet (
    person_id INTEGER,
    pet_id INTEGER
);

-- Create another table for the cars people might own, and create its corresponding relation table.
CREATE TABLE car (
    id INTEGER PRIMARY KEY,
    name VARCHAR(50),
    make VARCHAR(50),
    model varchar(50),
    year INTEGER
);

CREATE TABLE person_car (
    person_id INTEGER,
    car_id INTEGER
);