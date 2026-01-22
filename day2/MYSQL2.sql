USE college;

#create table

CREATE TABLE student(
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(30),
    number INT
)

#insert data

INSERT INTO student(rollno, name, email, number) VALUES (164,"Sumit Tripathi", "sumit7t@gmail.com", 873), (085, "Kasu", "kasu5t@gmail.com", 78);

#view data

SELECT * FROM student;

CREATE TABLE rolex ( id INT PRIMARY KEY, name VARCHAR(20) )

INSERT INTO
    rolex (id, name)
VALUES (1, "Kya hai be"),
    (2, "Thik hai be");

SELECT * FROM rolex;

CREATE TABLE nunnu ( size INT PRIMARY KEY, color VARCHAR(10) )

INSERT INTO nunnu (size, color) VALUES (8, "Black"), (9, "Black");

SELECT * FROM nunnu;

DROP TABLE nunnu;

DROP TABLE rolex;

DROP TABLE IF EXISTS rolex;