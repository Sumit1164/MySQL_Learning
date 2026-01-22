USE question;

CREATE TABLE employees (
    employeeId INT PRIMARY KEY,
    firstName VARCHAR(10),
    lastName VARCHAR(10),
    age INT,
    salary DECIMAL
)

INSERT INTO
    employees (
        employeeId,
        firstName,
        lastName,
        age,
        salary
    )
VALUES (
        1,
        "Sumit",
        "Tripathi",
        21,
        60000.8
    )

SELECT * FROM employees;