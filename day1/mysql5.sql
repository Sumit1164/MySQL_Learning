CREATE DATABASE customer;
USE customer;
CREATE TABLE paymen(
cus_id INT PRIMARY KEY,
custo VARCHAR(50),
pay_mod VARCHAR(70),
city VARCHAR(60)
);
INSERT INTO paymen VALUES(101, 'Sumit' , 'Netbanking', 'Noida');
INSERT INTO paymen VALUES(102, 'Kashish' , 'Netbanking', 'Noida');
INSERT INTO paymen VALUES(103, 'Tanishka' , 'Credit Card', 'Delhi');
INSERT INTO paymen VALUES(104, 'Ayushi' , 'Debit Card', 'Delhi');
INSERT INTO paymen VALUES(105, 'Prince' , 'Credit Card', 'Haryana');
INSERT INTO paymen VALUES(106, 'Divya' , 'Debit Card', 'Delhi');
INSERT INTO paymen VALUES(107, 'KAjal' , 'Credit Card', 'Noida');
INSERT INTO paymen VALUES(108, 'Liz' , 'Debit Card', 'Gurugram');
INSERT INTO paymen VALUES(109, 'Kaju' , 'Credit Card', 'Gaziyabaad');
INSERT INTO paymen VALUES(110, 'Shubh' , 'Debit Card', 'Utter Pardesh');
INSERT INTO paymen VALUES(111, 'Goluu' , 'Credit Card', 'Gorakhpur');
SELECT * FROM paymen;
SELECT pay_mod , count(custo) FROM paymen GROUP BY pay_mod;
SELECT city, count(cus_id) FROM paymen GROUP BY city;