CREATE DATABASE IF EXISTS college;

USE college;

CREATE TABLE snippet(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL,
    gender ENUM('Male', 'Female', 'Others='),
    date_of_birth DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

SELECT * FROM snippet;

RENAME TABLE snippet TO programmrt;

RENAME TABLE programmrt TO snippet;


-- Altering (add new column in table)
ALTER TABLE snippet ADD COLUMN is_active BOOLEAN DEFAULT TRUE;

SELECT * FROM snippet;

-- Altering (remove previous new column added in table)

ALTER TABLE snippet DROP COLUMN is_active;

-- modify a column type
ALTER TABLE snippet MODIFY COLUMN name VARCHAR(30);


-- I WANT AFTER EMAIL DOB COMES IN TABLE 
ALTER TABLE snippet MODIFY COLUMN date_of_birth DATE AFTER email;

INSERT INTO snippet VALUES (1, 'Sumit', 'sumit7@gmail.com', '2005-06-26', 'Male', DEFAULT);
INSERT INTO snippet VALUES (2,'Kasu', 'kasu5@gmail.com', '2006-01-24', 'Female', DEFAULT); 

INSERT INTO snippet (name, email, gender, date_of_birth) VALUES
('John Doe', 'john.doe@gmail.com', 'Male', '1995-06-15'),
('Jane Smith', 'jane.smith@gmail.com', 'Female', '1998-02-10'),
('Alex Brown', 'alex.brown@gmail.com', 'Others=', '2000-11-25'),
('Michael Lee', 'michael.lee@gmail.com', 'Male', '1992-09-03'),
('Emily Davis', 'emily.davis@gmail.com', 'Female', '1997-04-18'),
('Daniel Wilson', 'daniel.wilson@gmail.com', 'Male', '1994-12-01'),
('Sophia Taylor', 'sophia.taylor@gmail.com', 'Female', '1999-07-22'),
('Chris Martin', 'chris.martin@gmail.com', 'Others=', '1996-03-30'),
('Robert King', 'robert.king@gmail.com', 'Male', '1991-01-14'),
('Olivia Moore', 'olivia.moore@gmail.com', 'Female', '2001-08-09');

SELECT * FROM snippet WHERE gender='Female';

SELECT * FROM snippet WHERE date_of_birth < '1995-07-22';

SELECT * FROM snippet WHERE date_of_birth BETWEEN '2002-01-27' AND '2006-01-27';

SELECT * FROM snippet WHERE gender='Male' AND id =1;

SELECT * FROM snippet WHERE gender='Female' OR date_of_birth >'2006-01-20' ORDER BY date_of_birth ASC;
SELECT * FROM snippet WHERE gender='Female' OR date_of_birth >'2000-01-20' LIMIT 2;