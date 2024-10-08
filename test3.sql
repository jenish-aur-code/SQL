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





### Q-1 ==> change the name of column 'name ' to 'full_name'

ALTER TABLE student
CHANGE name full_name VARCHAR(50);



### Q-2 ==> Delete all the student who scored marks less than 80.

DELETE FROM student
WHERE marks < 80;



### Q-3 ==> Delete the column for grande

ALTER TABLE student
DROP COLUMN grade;


SELECT * FROM student;


DROP DATABASE college;