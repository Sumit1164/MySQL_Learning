# Creating a database into mysql for the first

# CREATE DATABASE snippet; 
#CREATE DATABASE snippets; 

# Droping a database into mysql (DROP, DELETE, TRUNCATE)

# DROP DATABASE snippets;

use snippet; 

CREATE TABLE courses(
course_id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(30),
duration INT,
descripations VARCHAR(40)
)