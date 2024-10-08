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



                                                         ######################### SELECT ########################

SELECT rollno,name FROM student;                                     ### aaya je coll_name aapo te coll. print thai

SELECT * FROM student;                                               ### aaya * aetle ALL ,,akhu table print thase

SELECT DISTINCT city FROM student;                                   ### DISTINCT ,, aama repeted values na show thai ,, jem ke table ma city 'mumbai' 3times aave to 1 var print thai 3var na thai







														################## WHERE Clause(condition) ####################

SELECT * FROM student WHERE marks >= 90;                             ### table ma jena marks >= 90 hase te print thase

SELECT * FROM student WHERE city = "ahmedabad";                      ### table ma jenu city 'ahmedabad' hase te print thase







														##################### OPERATORS IN WHERE ######################

### list of operators ==>  +, -, *, /, %,        =, !=, >, >=, <, <=,         AND, OR, NOT, IN, BETWEEN, ALL, LIKE, ANY,        &, |



######## 1111 ########

SELECT * FROM student WHERE marks+10 > 100;                        ### je marks ma 10 add karta marks > 100 thai te print thai



###### 2222  #######

SELECT * FROM student WHERE grade = "A";                          ### jena grade A hase te print thase

SELECT * FROM student WHERE marks <= 90;                          ### jena marks 90 karta ochha hase te print thase



########### AND ##########

SELECT * FROM student WHERE marks >= 80 AND city = "mumbai";               ### aama jo banne condition true thai te print thai



########### OR ###########

SELECT * FROM student WHERE marks >= 90 OR city = "delhi";                ### aama banne condition mathi aek pan condition true thai te print thai jai



########### BETWEEN #######

SELECT * FROM student WHERE marks BETWEEN 80 AND 100;                    ### aama jena marks 80 thi 100 ni vachhe hoi te print thai jai



########## IN ##########

SELECT * FROM student WHERE city IN ("ahmedabad" , "mumbai");               ### aama jenu city 'ahmedabad, mumbai ' hase te print thase



######### NOT ##########

SELECT * FROM student WHERE city NOT IN ("mumbai");                        ### aama jenu city 'mumbai' hase te print nai thai , tena sivaina city vala print thase







											######################## LIMIT Clause #####################

#### Sets an upper limit on number of rows to be return ==> limit 3 ,,, aama table ma uper thi(upper) 3 rows print thase


SELECT * FROM student LIMIT 4;                              ### LIMIT 4,, aama table ma upper 4 rows print thase

SELECT * FROM student WHERE marks > 80 LIMIT 3;               ### aama jena marks > 80 hase tevi (LIMIT 3) 3 rows print thase 







                                               ################### ORDER BY Clause ########################

#### TO sort in ascending(ASC) (Chadto kram) or Descending order(DESC)


SELECT * FROM  student ORDER BY marks ASC;                  ### aama marks Ascending order ma print thase 


SELECT * FROM  student ORDER BY marks DESC;                  ### aama marks Descending  order ma print thase




#######  table ma top 3 marks vala student na data print karva mate  ####

SELECT * FROM student ORDER BY marks DESC LIMIT 3;








											##################### Aggregate FUNCTION ########################
                                            
### Aggregate Function perform a calculation on a set of values , and return a single values

###   COUNT(), MAX(), MIN(), SUM(), AVG()


######## COUNT() ######

SELECT COUNT(rollno) FROM student;


####### MAX() ########

SELECT MAX(marks) FROM student;


###### MIN() ########

SELECT MIN(marks) FROM student;


###### SUM() ########

SELECT SUM(marks) FROM student;


###### AVG() #######

SELECT AVG(marks) FROM student;








											  ####################### GROUP BY Clause #########################
                                              
### Group rows that the same values into summary rows.It collects data from multiple records and groups the result by one or more column

### Generally we use group by with some Aggregation Function


SELECT city, COUNT(name) FROM student GROUP BY city;

SELECT city,grade, COUNT(name) FROM student GROUP BY city,grade;                  ### je column select kariye tene group by ma lakhvi pade baki ERROR aave

SELECT city, AVG(marks) FROM student GROUP BY city;

SELECT grade , COUNT(name) FROM student GROUP BY grade ORDER BY grade ASC;








                                        ########################### HAVING Clause ##############################
                                        
### Similar to WHERE Condition i.e. applies some condition on rowes. USED when we want to apply any CONDITION AFTER GROUPING .alter


### Count number of student in each city where max marks cross 90.

SELECT city ,COUNT(name)
FROM student 
GROUP BY city
HAVING MAX(marks) > 90;







										##########################  General Order ################################
                                        
###     SELECT column(s)
		FROM table_name
        WHERE codition(on rows)
        GROUP BY column(s)
        HAVING condion(on group)
        ORDER BY column(s) ASC;
        
        

SELECT city
FROM student
WHERE grade ="A" OR grade = "B"
GROUP BY city
HAVING MAX(marks) > 90 
ORDER BY city DESC;
;


 

DROP TABLE student;

DROP DATABASE  college;