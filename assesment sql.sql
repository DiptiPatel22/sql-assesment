create database workernew;

use workernew;

create table worker1(
workerID int not null,
FIRST_NAME varchar(255),
LAST_NAME varchar(255),
SALARY int not null,
JOINING_DATE date not null,
DEPARTMENT varchar(255));

insert into worker1
values 
('1', 'MONIKA', 'ARORA', '100000', '2014-02-10', 'HR'),
('2', 'NIHARIKA', 'VERMA', '80000', '2014-11-06', 'ADMIN'),
('3', 'VISHAL', 'SINGHAL', '300000', '2014-11-06', 'ADMIN'),
('4', 'AMITABH', 'SINGH', '500000', '2014-11-06', 'ADMIN'),
('5', 'VIVEK', 'BHATI', '500000', '2014-11-06', 'ADMIN'),
('6', 'VIPUL', 'DIWAN', '200000', '2014-11-06', 'ADMIN'),
('7', 'SATISH', 'KUMAR', '75000', '2014-11-06', 'ADMIN'),
('8', 'GEETIKA', 'CHAUHAN', '90000', '2014-11-06', 'ADMIN');

# 1.Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending.
SELECT * FROM Worker1
ORDER BY FIRST_NAME ASC, DEPARTMENT DESC;

#2.Write an SQL query to print details for Workers with the first names “Vipul” and “Satish” from the Worker table.
SELECT * FROM Worker1
WHERE FIRST_NAME IN ('Vipul', 'Satish');

#  3. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.

SELECT * FROM Worker1
WHERE LENGTH(FIRST_NAME) = 6 AND RIGHT(FIRST_NAME, 1) = 'h';

#4. Write an SQL query to print details of the Workers whose SALARY lies between 1.

SELECT * FROM Worker1
WHERE SALARY BETWEEN 1 AND 5;

#5. Write an SQL query to fetch duplicate records having matching data in some fields of a table.

SELECT * FROM Worker1
WHERE (FIRST_NAME, LAST_NAME, DEPARTMENT) IN (
    SELECT FIRST_NAME, LAST_NAME, DEPARTMENT
    FROM Worker1
    GROUP BY FIRST_NAME, LAST_NAME, DEPARTMENT
    HAVING COUNT(*) > 1);

#6. Write an SQL query to show the top 6 records of a table.
SELECT * FROM Worker1
LIMIT 6;

#7. Write an SQL query to fetch the departments that have less than five people in them.

SELECT DEPARTMENT, COUNT(*) AS NumberOfPeople
FROM Worker1
GROUP BY DEPARTMENT
HAVING COUNT(*) < 5;

#8. Write an SQL query to show all departments along with the number of people in there.

SELECT DEPARTMENT, COUNT(*) AS NumberOfPeople
FROM Worker1
GROUP BY DEPARTMENT;

#9. Write an SQL query to print the name of employees having the highest salary in each department.

select max(salary), DEPARTMENT from worker1
group by DEPARTMENT;

