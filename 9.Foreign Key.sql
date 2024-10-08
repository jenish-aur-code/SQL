CREATE DATABASE college;

USE college;

CREATE TABLE dept(
	id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO dept
VALUES
(101,"science"),
(102,"python"),
(103,"sql");


UPDATE dept
SET id = 104
WHERE id = 102;

DELETE FROM dept 
WHERE id = "101";

SELECT * FROM dept;

CREATE TABLE teacher(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES dept(id)                         ### FOREIGN KEY
    ON UPDATE CASCADE                                                 ### jo parant table(REFERENCE TABLE) ma data UPDATE thai to automatic child table(FK) ma pan data UPDATE thai
    ON DELETE CASCADE                                                 ### jo parant table(REFERENCE TABLE) ma data DELETE thai to automatic child table(Fk) ma pan data DELETE thai
);


INSERT INTO teacher
VALUES
(1,"reshma",101),
(2,"ramesh",103),
(3,"ganesh",102),
(4,"piyush",102);

SELECT * FROM teacher;

DROP TABLE teacher;



DROP DATABASE college;



