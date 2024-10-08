CREATE DATABASE joins;

USE joins;


############# TABLE 1

CREATE TABLE student(
	student_id INT PRIMARY KEY,
    name VARCHAR(20),
    manager_id INT
);


INSERT INTO student
(student_id,name,manager_id)
VALUES
(101,"jenish",103),
(102,"vivek",104),
(103,"ram",null),
(104,"krish",103);

SELECT * FROM student;








                                 #################################### SELF JOIN (INNER JOIN) #####################################
                                 
                                 
### It is a regular join but the table is joind with itself

### syntax ==>  SELECT column(s)
				FROM tableA
                JOIN tableA
                ON tableA.col_name = tableA.col_name;
                
                

SELECT * 
FROM student AS a                                          ### show table left to right
JOIN student AS b
ON a.student_id = b.manager_id;


SELECT a.name as manager_name , b.name
FROM student as a
JOIN student as b
ON a.student_id = b.manager_id;




DROP DATABASE joins;

