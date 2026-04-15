-- CREATE TABLE `user`(
--     id INT PRIMARY KEY AUTO_INCREMENT
-- );
-- ALTER TABLE `user`AUTO_INCREMENT = 10;



-- 1 constraint -> UNIQUE 
-- 2 constraint -> NOT NULL
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

SELECT * FROM user;

INSERT INTO user ( name, email, gender, date_of_birth, salary ) VALUES('Riya Nair', 'riya.nair@example.com', 'Other', '1996-06-27', 46000.60);


-- Add new column into table
ALTER TABLE user ADD COLUMN number INT UNIQUE AFTER email;

-- 3 constraint -> CHECK
ALTER TABLE user ADD CONSTRAINT chk_dob CHECK(date_of_birth > '1900-01-01');
INSERT INTO user ( name, email, gender, date_of_birth, salary ) VALUES('Riya Nair', 'riya.nair@example.com', 'Other', '1896-06-27', 46000.60); -- It Show an error voilate the chk_dob 
-- 4 constraint -> DEFAULT
ALTER TABLE user ADD COLUMN created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- 5 constraint -> PRIMARY KEY
-- 6 constraint -> AUTO_INCREMENT