-- Transaction in mysql
SET autocommit = 1;

SELECT * FROM user;

COMMIT;

ROLLBACK;

DELETE FROM `user` WHERE id = 6;