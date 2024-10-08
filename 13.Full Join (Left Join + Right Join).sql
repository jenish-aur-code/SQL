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







                                 #################################### FULL JOIN #####################################
                                 
                                 
### Returns all records when there is a match in either left or right join ==> left & right banne table print thai + banne table ma same (comman) hoi te pan print thai

### syntax ==>  SELECT column(s)
				FROM tableA                                                                   LEFT JOIN
                LEFT JOIN tableB                                                              UNION
                ON tableA.col_name = tableB.col_name;                                         RIGHT JOIN
                UNION
                SELECT column(s)
                FROM tableA
                RIGHT JOIN tableB
                ON tableA.col_name = tableB.col_name;
                
                

SELECT * 
FROM student
LEFT JOIN course
ON student.student_id = course.student_id
UNION
SELECT * 
FROM student
RIGHT JOIN course
ON student.student_id = course.student_id;








DROP DATABASE joins;

