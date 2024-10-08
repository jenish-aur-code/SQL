CREATE DATABASE college;

USE college;

CREATE TABLE student(                                           ### table create karva mate , CREATE TABLE table_name(coll_name  datatype  constraints )
	id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT NOT NULL
);

INSERT INTO student VALUES (1,"jenish",20);                    ###btable ma data insert(data add) karva mate
INSERT INTO student VALUES (2,"ravil",23);
INSERT INTO student VALUES (3,"vivek",20);

SELECT * FROM student;                                         ### table print karva mate ,,  * aetle All

DROP TABLE student;                                            ### table delete karva mate

DROP DATABASE college;