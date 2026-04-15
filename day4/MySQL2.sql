-- Mathematical function in MySQL

CREATE TABLE user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(70) UNIQUE NOT NULL,
    gender ENUM('Male', 'Female', 'Other'),
    date_of_birth DATE,
    salary DECIMAL(10, 2)
)

INSERT INTO user(name, email, gender, date_of_birth, salary) VALUES 
('Amit Sharma', 'amit.sharma@example.com', 'Male', '1990-05-14', 55000.00),
('Priya Verma', 'priya.verma@example.com', 'Female', '1995-08-22', 62000.50),
('Rahul Singh', 'rahul.singh@example.com', 'Male', '1988-12-03', 72000.00),
('Neha Gupta', 'neha.gupta@example.com', 'Female', '1992-03-19', 48000.75),
('Arjun Mehta', 'arjun.mehta@example.com', 'Male', '1985-07-11', 85000.00),
('Sneha Kapoor', 'sneha.kapoor@example.com', 'Female', '1998-01-25', 39000.00),
('Karan Malhotra', 'karan.malhotra@example.com', 'Male', '1993-09-30', 67000.20),
('Anjali Desai', 'anjali.desai@example.com', 'Female', '1991-11-15', 54000.00),
('Vikram Patel', 'vikram.patel@example.com', 'Male', '1987-04-09', 91000.00),
('Riya Nair', 'riya.nair@example.com', 'Other', '1996-06-27', 46000.60);

SELECT COUNT(*) FROM user;


-- Mathematical function in MySQL
SELECT salary,
    ROUND(salary) AS rounded,
    FLOOR(salary) AS floored,
    CEIL(salary) AS ceiled
FROM `user`;

SELECT id, MOD(id, 3) AS remainder FROM `user`;

-- Conditional function in MySQL
SELECT name, gender, IF(gender = 'Female', 'Yes', 'No') AS is_Female
FROM `user`;