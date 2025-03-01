
-- Q-1. Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias name as <WORKER_NAME>.
SELECT FIRST_NAME AS WORKER_NAME FROM WORKER;

-- Q-2. Write an SQL query to fetch “FIRST_NAME” from Worker table in upper case.
SELECT UPPER(FIRST_NAME) FROM WORKER; 

-- Q-3. Write an SQL query to fetch unique values of DEPARTMENT from Worker table.
SELECT DISTINCT DEPARTMENT FROM WORKER;

-- Q-4. Write an SQL query to print the first three characters of  FIRST_NAME from Worker table.
SELECT SUBSTR(1,3,FIRST_NAME) FROM WORKER;

-- Q-5. Write an SQL query to find the position of the alphabet (‘b’) in the first name column ‘Amitabh’ from Worker table.


-- Q-6. Write an SQL query to print the FIRST_NAME from Worker table after removing white spaces from the right side.
select RTRIM(first_name) from worker;

-- Q-7. Write an SQL query to print the DEPARTMENT from Worker table after removing white spaces from the left side.
SELECT LTRIM(DEPARTMENT) FROM WORKER;

-- Q-8. Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length.
SELECT DISTINCT DEPARTMENT, LENGTH(DEPARTMENT) FROM WORKER;

-- Q-9. Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’ with ‘A’.
SELECT REPLACE(FIRST_NAME , 'a','A') FROM worker;

-- Q-10. Write an SQL query to print the FIRST_NAME and LAST_NAME from Worker table into a single column COMPLETE_NAME.
-- A space char should separate them.
SELECT CONCAT(FIRST_NAME , " " , LAST_NAME) AS COMPLETE_NAME FROM WORKER;

-- Q-11. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending.
SELECT * FROM WORKER ORDER BY FIRST_NAME;

-- Q-12. Write an SQL query to print all Worker details from the Worker table order by 
-- FIRST_NAME Ascending and DEPARTMENT Descending.
select * from worker order by first_name, department DESC;

-- Q-13. Write an SQL query to print details for Workers with the first name as “Vipul” and “Satish” from Worker table.
select * from worker where first_name = "Vipul" OR first_name = "Satish";

-- Q-14. Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from Worker table.
SELECT * FROM WORKER WHERE FIRST_NAME NOT IN ("Vipul","Satish");

-- Q-15. Write an SQL query to print details of Workers with DEPARTMENT name as “Admin*”.
SELECT * FROM WORKER WHERE DEPARTMENT = "Admin";

-- Q-16. Write an SQL query to print details of the Workers whose FIRST_NAME contains ‘a’.
SELECT * FROM WORKER WHERE FIRST_NAME LIKE "%a%";

-- Q-17. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘a’.
SELECT * FROM WORKER WHERE FIRST_NAME LIKE "%a";

-- Q-18. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.
SELECT * FROM WORKER WHERE FIRST_NAME LIKE "_____h";

-- Q-19. Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000.

SELECT * FROM WORKER WHERE SALARY BETWEEN 100000 AND 500000

-- Q-20. Write an SQL query to print details of the Workers who have joined in Feb’2014.


-- Q-21. Write an SQL query to fetch the count of employees working in the department ‘Admin’.
SELECT COUNT(FIRST_NAME) FROM WORKER WHERE DEPARTMENT = 'Admin';

-- Q-22. Write an SQL query to fetch worker full names with salaries >= 50000 and <= 100000.
SELECT CONCAT(FIRST_NAME , " ", LAST_NAME) AS FULLNAME FROM WORKER WHERE SALARY BETWEEN 5000 AND 100000;

-- Q-23. Write an SQL query to fetch the no. of workers for each department in the descending order.
select department, count(worker_id) as id  from worker group by department
ORDER BY id desc;

-- Q-24. Write an SQL query to print details of the Workers who are also Managers.
select w.* from worker as w inner join title as t on w.worker_id = t.worker_ref_id where t.worker_title = 'Manager';

-- Q-25. Write an SQL query to fetch number (more than 1) of same titles in the ORG of different types.


-- Q-26. Write an SQL query to show only odd rows from a table.
-- select * from worker where MOD (WORKER_ID, 2) != 0; 


-- Q-27. Write an SQL query to show only even rows from a table. 


-- Q-28. Write an SQL query to clone a new table from another table.


-- Q-29. Write an SQL query to fetch intersecting records of two tables.
SELECT * FROM WORKER INNER JOIN BONUS ON WORKER.WORKER_ID = BONUS.WORKER_REF_ID;

-- Q-30. Write an SQL query to show records from one table that another table does not have.
-- MINUS
SELECT * FROM WORKER LEFT JOIN BONUS ON WORKER.WORKER_ID = BONUS.WORKER_REF_ID WHERE BONUS.WORKER_REF_ID IS NULL;

-- Q-31. Write an SQL query to show the current date and time.
-- DUAL
SELECT NOW();

-- Q-32. Write an SQL query to show the top n (say 5) records of a table order by descending salary.
SELECT * FROM WORKER ORDER BY  SALARY DESC LIMIT 5;

-- Q-33. Write an SQL query to determine the nth (say n=5) highest salary from a table.
SELECT * FROM WORKER ORDER BY SALARY DESC LIMIT 4,1;

-- Q-34. Write an SQL query to determine the 5th highest salary without using LIMIT keyword.

 
-- Q-35. Write an SQL query to fetch the list of employees with the same salary.
SELECT w1.* FROM WORKER AS w1 ,WORKER AS W2 where w1.salary = w2.salary AND w1.worker_id != w2.worker_id;

-- Q-36. Write an SQL query to show the second highest salary from a table using sub-query.


-- Q-37. Write an SQL query to show one row twice in results from a table.
SELECT * FROM WORKER UNION ALL SELECT * FROM WORKER;

-- Q-38. Write an SQL query to list worker_id who does not get bonus.


-- Q-39. Write an SQL query to fetch the first 50% records from a table.


-- Q-40. Write an SQL query to fetch the departments that have less than 4 people in it.


-- Q-41. Write an SQL query to show all departments along with the number of people in there.


-- Q-42. Write an SQL query to show the last record from a table.


-- Q-43. Write an SQL query to fetch the first row of a table.


-- Q-44. Write an SQL query to fetch the last five records from a table.


-- Q-45. Write an SQL query to print the name of employees having the highest salary in each department.


-- Q-46. Write an SQL query to fetch three max salaries from a table using co-related subquery


-- Q-47. Write an SQL query to fetch three min salaries from a table using co-related subquery


-- Q-48. Write an SQL query to fetch nth max salaries from a table.

-- Q-49. Write an SQL query to fetch departments along with the total salaries paid for each of them.


-- Q-50. Write an SQL query to fetch the names of workers who earn the highest salary.


