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



                                             ################################  ALTER QUERIES ###########################
                                             
### to add,modify,change,drop the column name or etc....



##### ADD COLUMN ##### (add new column)         ==>  ALTER TABLE table_name ADD COLUMN column_name  datatype  constraint;

ALTER TABLE student 
ADD COLUMN age INT NOT NULL DEFAULT 20;



###### MODIFY COLUMN #### , (modify datatype & constraint)       ==>  ALTER TABLE table_name MODIFY COLUMN column_name  new_datatype  new_constraint;

ALTER TABLE student 
MODIFY age VARCHAR(2);                              ### INT ==> VARCHAR()

INSERT INTO student 
VALUES
(108, "kalu", 50 , "D" ,"Dubai" , 100);                             ### aaya 'age' ni value ni length 2 karta vadhare chhe aetle data insert nai thai , kem ke VARCHAR(2)



##### CHANGE COLUMN ### , (rename column_name , datatype & constraint)           ### ALTER TABLE table_name CHANGE COLUMN  old_column_name  new_column_name  new_datatype  new_constraint;

ALTER TABLE student 
CHANGE age stu_age INT NOT NULL;



##### DROP COLUMN ######        ==> ALTER TABLE table_name DROP COLUMN column_name  ;

ALTER TABLE student 
DROP COLUMN stu_age;



##### RENAME TABLE ####                   ===>  ALTER TABLE table_name RENAME TO new_table_name 

ALTER TABLE student
RENAME TO stu;

SELECT * FROM stu;


ALTER TABLE stu
RENAME TO student;

SELECT * FROM student;






                                          
                                          
                                          
                                          ############################### TRUNCATE TABLE QUERIES #####################

### To delete table data ,, not table only table data

TRUNCATE TABLE student;                            ### print empty table

SELECT * FROM student;




DROP DATABASE college;