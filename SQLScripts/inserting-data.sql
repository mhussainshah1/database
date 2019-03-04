INSERT INTO person (id, first_name, last_name, age)
    VALUES (0, 'Dave', 'Wolfe', 25);

INSERT INTO pet (id, name, breed, age, dead)
    VALUES (0, "Fluffy", "Unicorn", 1000, 0);

-- doesn't specify the columns and instead relies on the implicit order in the table. 
-- This form is dangerous since you don't know what column your statement is actually 
-- accessing, and some databases don't have reliable ordering for the columns. It's best 
-- to only use this form when you're really lazy.
INSERT INTO pet VALUES (1, "Gigantor", "Robot", 1, 1);

INSERT INTO person_pet (person_id, pet_id) VALUES (0, 0);
INSERT INTO person_pet VALUES (0, 1);