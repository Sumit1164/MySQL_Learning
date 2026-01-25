CREATE DATABASE MIET;

USE MIET;

CREATE TABLE student (
    rollno INT PRIMARY KEY,
    name VARCHAR(20),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(15)
);

INSERT INTO student(rollno, name, marks, grade, city) VALUES 
(1, "Sumit", 87, "A", "Noida"),
(2, "Kashish", 97,"A", "Noida"), 
(3, "Shubh", 90, "B", "Gorakhpur"), 
(4, "Kajal", 98, "B", "Gaziyabaad");

SELECT * FROM student;

SELECT name, city FROM student;

SELECT DISTINCT grade FROM student;

SELECT * FROM student WHERE marks >=87;

SELECT * FROM student WHERE grade = "A";