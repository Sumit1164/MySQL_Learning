CREATE DATABASE college;
DROP DATABASE college;
USE college;
CREATE TABLE student(
roll_no INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(30)
);
INSERT INTO student 
(roll_no, name,marks,grade,city)
VALUES
(164, 'SUMIT', 680, 'A', 'GREATER NOIDA'),
(085, 'KASHISH', 670, 'A', 'NOIDA'),
(170, 'TANISHKA', 660, 'A', 'DELHI'),
(116, 'PRINCE', 650, 'A', 'HARYANA');
SELECT name, roll_no FROM student;
SELECT * FROM student WHERE marks>660;
SELECT * FROM student WHERE marks>660 AND city = "Noida";
SELECT * FROM student WHERE marks >=900 OR city = "Greater Noida";
SELECT * FROM student WHERE marks>660 LIMIT 3;
SELECT MAX(marks) FROM student;
SELECT city, name, count(roll_no) FROM student GROUP BY city, name;
SELECT city, avg(marks) FROM student GROUP BY city ORDER BY avg(marks) ASC;
SELECT city,name, avg(marks) FROM student GROUP BY city,name ORDER BY avg(marks) DESC;
SELECT city, count(roll_no) FROM student GROUP BY city HAVING MAX(marks) > 90;