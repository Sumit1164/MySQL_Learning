-- CREATE TABLE `user`(
--     id INT PRIMARY KEY AUTO_INCREMENT
-- );
-- ALTER TABLE `user`AUTO_INCREMENT = 10;


-- FUNCTIONS IN MySQL

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

-- SQL FUNCTIONS (MySQL)
SELECT COUNT(*) FROM user;
SELECT COUNT (*) FROM `user` WHERE gender='Male';
SELECT MIN(salary) AS min_salary, MAX(salary) AS max_salary FROM user WHERE gender = 'Male';
SELECT SUM(salary) AS total FROM `user`;
SELECT AVG(salary) AS average FROM `user`;
SELECT gender, AVG(salary) AS average FROM user GROUP BY gender;
SELECT name, LENGTH(name) AS name_length FROM `user`;
SELECT name, UPPER(name) AS upper_name FROM `user`;
SELECT LOWER(name) AS lower_name FROM `user`;
SELECT CONCAT(LOWER(name), "587X") AS username FROM `user`;
SELECT NOW() AS time FROM `user`;
SELECT YEAR(NOW()) AS year FROM `user`;
SELECT YEAR(date_of_birth) AS ydob FROM `user`;
SELECT DAY(date_of_birth) AS day FROM `user`;
SELECT MONTH(date_of_birth) AS month FROM `user`;
SELECT name, DATEDIFF(CURDATE(), date_of_birth) AS day_live FROM `user`;