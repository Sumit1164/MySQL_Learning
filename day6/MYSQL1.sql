USE snippet;
DROP TABLE IF EXISTS addresses;

CREATE TABLE addresses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    street VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(25),
    pincode VARCHAR(13),
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES user (id) ON DELETE CASCADE
);

INSERT INTO addresses (user_id, street, city, state, pincode) VALUES (1,'12 MG Road','Delhi','Delhi','110001'),
(2,  '221B Baker Street', 'London',     'London',        'NW1 6XE'),
(3,  '45 Park Avenue',    'New York',   'New York',      '10016'),
(4,  '78 Brigade Road',    'Bengaluru',  'Karnataka',     '560001'),
(5,  '10 Marine Drive',    'Mumbai',     'Maharashtra',   '400002'),
(6,  '56 Sector 18',      'Noida',      'Uttar Pradesh', '201301'),
(7,  '99 Park Street',    'Kolkata',    'West Bengal',   '700016'),
(8,  '33 Anna Salai',     'Chennai',    'Tamil Nadu',    '600002'),
(9,  '88 Banjara Hills',  'Hyderabad',  'Telangana',     '500034'),
(10, '15 Law Garden',     'Ahmedabad',  'Gujarat',       '380009');

SELECT * FROM addresses;
SELECT * FROM user;


DELETE FROM addresses WHERE id = 9;     -- IT CAN BE DELETE DATA FROM THE ADDRESSES TABLE
DELETE FROM `user` WHERE id = 2;        -- IT CAN BE DELETE BOTH TABLE DATA BECAUSE MAIN TABLE DATA IS DELETE