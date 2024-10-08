CREATE DATABASE constraints; 

use constraints;

                                                ####################  NOT NULL ########################

CREATE TABLE tem1(
	age INT NOT NULL
);
INSERT INTO tem1 VALUES ();                                     ### ERROR  , kem ke aaya NOT NULL apelu chhe to INSERT ma VALUE(data) ADD karvo pade baki ERROR aave
INSERT INTO tem1 VALUES (30);

CREATE TABLE tem2(
	age INT
);
INSERT INTO tem2 VALUES();                                     ### NOT ERROR , kem ke aama NOT NULL use nathi thau , aama INSERT ma VAlUE ADD na karo to pan chale ERROR na aave
INSERT INTO tem2 VALUES(20);

SELECT * FROM tem1;
DROP TABLE tem1;
SELECT * FROM tem2;
DROP TABLE tem2;


                                                  ############### UNIQUE ################################


CREATE TABLE tem3(
	id INT UNIQUE
);

INSERT INTO tem3 VALUES(101);
INSERT INTO tem3 VALUES(101);                                ### ERROR ,, kem ke aapde pelethi '101' value add kareli chee to biji vaar same value add na kari sakiye kem ke aaya 'UNIQUE' use thau chhe

SELECT * FROM tem3;
DROP TABLE tem3;




                                                  ################### PRIMARY KEY ###########################

CREATE TABLE tem4(                       
	id INT,                                                      ### id INT PRIMARY KEY  ,,,,   PRIMARY KEY(coll1 , coll2....)                   
    name VARCHAR(50),
    city VARCHAR(20),
    age INT NOT NULL,
    PRIMARY KEY(id , name)                                         ### PRIMARY KEY ===> NOT NULL & UNIQUE  hoi chee  
);






                                                      ##################### FOREIGN KEY  ##############################


CREATE TABLE temp(
	cust_id INT ,
    FOREIGN KEY (cust_id) references tem4(id)                      ### FOREIGN KEY (je coll. ne foreign key banavi hoi te)  references old_table_name(primary key coll_name)            
);






                                                           #################### DEFAULT ##################

CREATE TABLE tem5(
	id INT PRIMARY KEY,
    salary INT DEFAULT 25000                             ### set DEFAULT salary
);


INSERT INTO tem5 VALUES (1,20000);
INSERT INTO tem5 (id) VALUES (2);                       ### add DEFAULT salary 25000 in new row

SELECT * FROM tem5;       





                                                      ######################## CHECK ######################

######  111 #########

CREATE TABLE check1(
	age INT CHECK (age >= 18)                              ### jo age >= 18 aetle ke jo age 18 up hase to data add thase baki error show thase
);   


INSERT INTO check1 VALUES(10);                              #### ERROR ,, kem ke aaya age >= 18 nathi   
INSERT INTO check1 VALUES(20);     

SELECT * FROM check1;



#### 2222 #######


CREATE TABLE check2(
	id INT PRIMARY KEY,
	age INT,
    city VARCHAR(20),
    CONSTRAINT checker CHECK (age >= 18 AND city = "ahmedabad")                         ### aaya be condition check thase jo banne condition true hase to data add thase
);

INSERT INTO check2 VALUES (101,10,"ahmedabad");                      ### ERROR ,, kem ke aaya city vali condition true chhe but age vali condition false chhe
INSERT INTO check2 VALUES (101,20,"delhi");                          ### ERROR ,, kem ke aaya age vali condition true chhe but city vali condition false chhe
INSERT INTO check2 VALUES (101,10,"delhi");                          ### ERROR ,, kem ke aaya banne condition false chhe
INSERT INTO check2 VALUES (101,20,"ahmedabad");                      ### add row in table ,, kem ke aaya banne condition true chhe

SELECT * FROM check2;



DROP DATABASE constraints;