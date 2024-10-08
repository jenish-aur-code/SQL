
### A View is a virtual table based on the result-set of an sql statement (main table nu aek same virtual table create kare jema query run thai)

### A view always shows up-to-date data.The database engine recraete the view, every time a user queries it.

### syntax ==>  CREATE VIEW view_name AS
			    SELECT column(s) FROM table_name;
                

###    SELECT * FROM view_name;
 





##### Create database


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





                                                                 ########  CREATE VIEW ##############\
                                                                 

### aaya aek teacher name nu view create karyo che jema teacher view ma khali rollno,name & marks print thai


CREATE VIEW teacher AS                                                    ### create view
SELECT rollno , name , marks FROM student;


SELECT * FROM teacher;                                              ### print view table




#### RUN QUERY ON VIEW


SELECT * 
FROM teacher 
WHERE marks >= 90;



DROP VIEW teacher;                                       ### DELETE VIEW table



DROP DATABASE college;