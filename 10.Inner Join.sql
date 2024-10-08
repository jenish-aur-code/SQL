

##### JOIN IN SQL ==> Join is used to combine rows from two or more tables,based on a related column between them



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





                                #################################### INNER JOIN #####################################
                                
### Returns records that have matching values in both table

### syntax ==>  SELECT column(s)
				FROM tableA
                INNER JOIN tableB
                ON tableA.col_name = tableB.col_name;
                
                


SELECT * 
FROM student
INNER JOIN course
ON student.student_id = course.student_id;


SELECT name,course
FROM student
INNER JOIN course
ON student.student_id = course.student_id;


SELECT * 
FROM student as a
INNER JOIN course as c                                          ##### alias ==>  'course as c' have jya course hoi tya c use kari sakiye
ON a.student_id = c.student_id;


SELECT * 
FROM student
INNER JOIN course
ON student.name = course.course;




DROP DATABASE joins;
                


                