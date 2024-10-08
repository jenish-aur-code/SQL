

### A Sunquery or inner query or a Nested query within another SQL qurey.(aek query ni ander biji query lakhvama aave).It involves 2 select statements

###syntax ==>  SELECT column(s)
               FROM table_name
               WHERE col_name operator
               (Sub Query);

               
###### Create Database


CREATE DATABASE college;

USE college; 

CREATE TABLE student(
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(10)
);


INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(101, "jenish", 95, "A", "ahmedabad"),
(102, "ravil", 73, "C", "ahmedabad"),
(103, "vivek", 85, "B", "mumbai"),
(104, "rudra", 92, "A", "delhi"),
(105, "hardik", 82, "B", "delhi"),
(106, "nikunj", 27, "F", "mumbai"),
(107, "dhruvil", 62, "D", "chennai");

SELECT * FROM student;




                                      ##################################### Sub Query in WHERE ###########################
                                      
#### Q1 ==> Get names of all student who scored more than class average


SELECT rollno, name , marks 
FROM student
WHERE marks >
	(SELECT AVG(marks)
	 FROM student
	);	
      

                                      
                                      
### Q2 ==> Find the names of all student with even roll number


SELECT rollno , name 
FROM student
WHERE rollno IN(
	SELECT rollno 
    FROM student
    WHERE rollno % 2 = 0
    );
                         
                         
                         
                         
                         
                         
                         
                         
                         
                                       ##################################### Sub Query in FROM ###########################

### in FROM SUBQUERY us 'AS alias'  ==>  Example ==> FROM student AS s


### Q1 ==> Find max marks from the student of delhi


### simple query


SELECT MAX(marks)
FROM student
WHERE city = "delhi";



#### SUBQUERY 

SELECT MAX(marks) 
FROM(SELECT * FROM student WHERE city = "delhi") AS temp;





DROP DATABASE college;
                                      