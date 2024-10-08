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


CREATE TABLE course(
	student_id INT PRIMARY KEY,
    course VARCHAR(10)
);


INSERT INTO course
(student_id , course)
VALUES
(102,"java"),
(105,"python"),
(103,"web-dev"),
(107,"js");

SELECT * FROM course;







                                 #################################### LEFT  EXCLUSIVE JOIN #####################################
                                 
                                 
### jema khali left table(first table) print thai,,, aetle ke banne table ma same hoi te value & right table(second table) vali value print na thai

### syntax ==>  SELECT column(s)
				FROM tableA
                LEFT JOIN tableB
                ON tableA.col_name = tableB.col_name
                WHERE tableB.col_name IS NULL;
                
                

SELECT * 
FROM student AS s
LEFT JOIN course AS c
ON s.student_id = c.student_id
WHERE c.student_id IS NULL;







                                  #################################### RIGHT  EXCLUSIVE JOIN #####################################
                                 
                                 
### jema khali RIGHT table(second table) print thai,,, aetle ke banne table ma same hoi te value & left table(first table) vali value print na thai

### syntax ==>  SELECT column(s)
				FROM tableA
                RIGHT JOIN tableB
                ON tableA.col_name = tableB.col_name
                WHERE tableA.col_name IS NULL;
                
                

SELECT * 
FROM student AS s
RIGHT JOIN course AS c
ON s.student_id = c.student_id
WHERE s.student_id IS NULL;




DROP DATABASE joins;