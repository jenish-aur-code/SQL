CREATE DATABASE college2;

USE college2;

CREATE TABLE student2(                                    ### table create karva mate ,,  CREATE TABLE table_name( coll_name  datatype  constraints )
	rollno INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO student2                                    ### table ma data insert(ADD karva) karva mate  ,, INSERT INTO table_name(coll_name) VALUES (add values)
(rollno,name) 
VALUES
(101,"jenish"),
(102,"ravil"),
(103,"vivek"),
(104,"rudra");


INSERT INTO student2 VALUES(105,"dhruvil");
INSERT INTO student2 VALUES(106,"hardik");


SELECT * FROM student2;                                     ### table view karva mate,, * aetle ALL


DROP TABLE student2;                                      ### table delete karva mate


DROP DATABASE college2; 

