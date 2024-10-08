CREATE DATABASE xyz;

USE xyz;

CREATE TABLE employee_info(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT NOT NULL
);

INSERT INTO employee_info
(id, name, salary) 
VALUES 
(111,"Ram",50000),
(222,"Krishna",30000),
(333,"Shiva",60000);

SELECT * FROM employee_info;

DROP DATABASE xyz;