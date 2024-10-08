CREATE DATABASE college;

USE college; 

CREATE TABLE student(
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(2),
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

SET SQL_SAFE_UPDATES = 0;



                                          ###################### UPDATE TABLE ROWS ############################
                                          
### to update existing rows

### UPDATE  table_name  SET col1 = val1 , col2 = val2  WHERE condition;                           ==> syntax

UPDATE student SET grade = "FC" WHERE grade = "A";                           ### jya grade 'A' chhe tya grade 'FC' thai jase

UPDATE student SET marks = "40" WHERE name = "nikunj";                       ### jenu name 'nikunj' chhe tena marks 40 thai jase

UPDATE student 
SET marks = marks + 1;

SELECT * FROM student;






                                   ########################### DELETE TABLE ROWS ################################
                                   
### to delete existing rows

###    DELETE FROM table_name  WHERE condition;


DELETE FROM student WHERE marks <= 50;                           ### jena marks <= 50 chhe ae rows delete thai jase

DELETE FROM student;                                             ### aakhu table delete thai jai ,, table ni badhi rows delete thai jai

SELECT * FROM student;




DROP TABLE student;

DROP DATABASE college;