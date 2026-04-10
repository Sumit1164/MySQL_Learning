USE snippet;

SELECT * FROM snippet;

-- Update data into table
UPDATE employees
SET
    salary = 10000000,
    name = 'Sumit Tripathi'
WHERE
    id = 1;

UPDATE employees SET salary = 70000 WHERE id = 5;

UPDATE employees SET name = 'Robert Frenk' WHERE name = 'Robert King';

UPDATE employees
SET
    name = 'Robert King'
WHERE
    email = 'robert.king@gmail.com';

UPDATE employees SET salary = salary + 10000 WHERE salary < 60000;

UPDATE employees SET salary = salary - 60000 WHERE salary > 60000;

UPDATE employees SET salary = salary + 80000 WHERE salary < 10000;

UPDATE employees SET gender = 'Other' WHERE name = 'Michael Lee';

SELECT * FROM employees;

-- Insert Data into table
INSERT INTO
    employees
VALUES (
        11,
        'Alice Liz',
        'alice.liz@gmail.com',
        'Female',
        90000,
        '2005-01-24',
        '2026-01-25 19:00:17'
    );

-- Delete Data from the table
DELETE FROM employees WHERE salary < 60000;

DELETE FROM employees WHERE id = 11;