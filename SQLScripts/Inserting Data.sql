INSERT INTO person (id, first_name, last_name, age)
    VALUES (0, 'Dave', 'Wolfe', 25);

INSERT INTO pet (id, name, breed, age, dead)
    VALUES (0, "Fluffy", "Unicorn", 1000, 0);

INSERT INTO pet VALUES (1, "Gigantor", "Robot", 1, 1);

-- 1) Insert yourself and your pets (or imaginary pets like I have). 
-- Insert the proper entries in the Person_Pet table to show ownership.
INSERT INTO person (id, first_name, last_name, age)
VALUES (4, 'Muhammad', 'Shah', 39);
    
INSERT INTO pet (id, name, breed, age, dead)
VALUES (17, "Nika", "Russian Blue", 5, 0);
    
insert into person_pet (person_id, pet_id) 
values (4,17);

-- 2) Say I give you my dead unicorn. How do we execute that exchange?
UPDATE person_pet
SET person_id = 4
WHERE pet_id = 0;

-- 3) What changes can we make to the tables to show that fluffy used to belong to me?
UPDATE person_pet
SET person_id = 0
WHERE pet_id = 0;

-- To Check data
select * from person;
select * from pet;
select * from person_pet;

select first_name , name as 'Pet Name' from person 
inner join person_pet on person.id = person_pet.person_id
inner join pet on person_pet.pet_id = pet.id
where person_id = 0;
