CREATE DATABASE joins;

USE joins;


############# TABLE 1

CREATE TABLE student(
	student_id INT PRIMARY KEY,
    name VARCHAR(20)
);


INSERT INTO student
(student_id,name)
VALUES
(101,"jenish"),
(102,"vivek"),
(103,"ram");

SELECT * FROM student;



############## TABLE 2 


CREATE TABLE teacher(
	teacher_id INT PRIMARY KEY,
    name VARCHAR(20)
);


INSERT INTO teacher
(teacher_id,name)
VALUES
(101,"ridhhi"),
(102,"ram"),
(103,"ganesh"),
(104,"jenish"),
(105,"ramesh");

SELECT * FROM teacher;

DROP TABLE teacher;



                                              ############################### UNION ################################
                                              
#### It is used to combine the result-set of two or more SELECT statements.Given UNIQUE records.  ==> banne table mathi combine unique(repete na thai tevi values) values aape.

### condition.    ==>  every SELECT should have same noof columns.     ==>  columns must have similar data types.    ==>  columns in every SELECT should be in same order.
              
              
### syntax ==>   SELECT column(s) FROM tableA   UNION  SELECT column(s) FROM tableB
                 
                 
                 
SELECT name FROM student
UNION 
SELECT name FROM teacher;


SELECT name FROm student
UNION ALL                                           ### UNION ALL ==>  jema banne table ni badhi rows print thase, repeted values pan aavse
SELECT name FROM teacher;





DROP DATABASE joins;