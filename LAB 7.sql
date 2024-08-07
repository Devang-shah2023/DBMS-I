--lab-7

--PART-A

CREATE TABLE EMP(
EID INT,
ENAME VARCHAR(50),
DEPARTMENT VARCHAR(40),
SALARY DECIMAL(8,2),
JOININGDATE DATETIME,
CITY VARCHAR(50)
);

SELECT *FROM EMP

INSERT INTO EMP VALUES(101, 'RAHUL', 'ADMIN', 56000, '1990-JAN-1', 'RAJKOT')
INSERT INTO EMP VALUES(102, 'HARDIK', 'IT', 18000, '1990-SEP-25', 'AHMEDABAD')
INSERT INTO EMP VALUES(103, 'BHAVIN', 'HR', 25000, '1991-MAY-14', 'BARODA')
INSERT INTO EMP VALUES(104, 'BHOOMI', 'ADMIN', 39000, '1991-FEB-8', 'RAJKOT')
INSERT INTO EMP VALUES(105, 'ROHIT', 'IT', 17000, '1990-JUL-23', 'JAMNAGAR')
INSERT INTO EMP VALUES(106, 'PRIYA', 'IT', 9000, '1990-OCT-18', 'AHMEDABAD')
INSERT INTO EMP VALUES(107, 'BHOOMI', 'HR', 34000, '1991-DEC-25', 'RAJKOT')

--1. Display the Highest, Lowest, Label the columns Maximum, Minimum respectively.
SELECT MAX(SALARY) AS HIGHEST_SALARY FROM EMP WHERE CITY='RAJKOT'
--2. Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal, 
--respectively.
SELECT SUM(SALARY) AS TOTAL_SAL, AVG(SALARY) AS AVERAGE_SAL FROM EMP
--3. Find total number of employees of EMPLOYEE table.
SELECT COUNT(*) AS TOTAL_EMPLOYEES FROM EMP
--4. Find highest salary from Rajkot city.
SELECT MAX(SALARY) AS HIGHEST_SALARY FROM EMP WHERE CITY='RAJKOT'
--5. Give maximum salary from IT department.
SELECT MAX(SALARY) AS HIGHEST_SALARY FROM EMP WHERE DEPARTMENT='IT'
--6. Count employee whose joining date is after 8-feb-91.
SELECT COUNT(*) FROM EMP WHERE JOININGDATE>'1991-FEB-8'
--7. Display average salary of Admin department.
SELECT AVG(SALARY) AS AVG_SALARY FROM EMP WHERE DEPARTMENT='ADMIN'
--8. Display total salary of HR department.
SELECT SUM(SALARY) AS TOTAL_SALARY FROM EMP WHERE DEPARTMENT='HR'
--9. Count total number of cities of employee without duplication.
SELECT COUNT(DISTINCT CITY) FROM EMP
--10. Count unique departments.
SELECT COUNT(DISTINCT DEPARTMENT) FROM EMP
--11. Give minimum salary of employee who belongs to Ahmedabad.
SELECT MIN(SALARY) AS MINIMUM_SALARY FROM EMP WHERE CITY='AHMEDABAD'
--12. Find city wise highest salary.
SELECT MAX(SALARY) AS HIGHEST_SALARY FROM EMP GROUP BY CITY
--13. Find department wise lowest salary.
SELECT MIN(SALARY) AS LOWEST_SALARY FROM EMP GROUP BY DEPARTMENT
--14. Display city with the total number of employees belonging to each city.
SELECT COUNT(*) AS EMPLOYEES FROM EMP GROUP BY CITY
--15. Give total salary of each department of EMP table.
SELECT SUM(SALARY) AS TOTAL_SALARY FROM EMP GROUP BY DEPARTMENT
--16. Give average salary of each department of EMP table without displaying the respective department 
--name
SELECT AVG(SALARY) AS AVERAGE_SALARY FROM EMP GROUP BY DEPARTMENT

--PART-B

--01. Count the number of employees living in Rajkot.

SELECT COUNT(EID) AS EMPS_IN_RAJKOT FROM EMP WHERE City='RAJKOT'

--02. Display the difference between the highest and lowest salaries. Label the column DIFFERENCE. 

SELECT (MAX(Salary)-MIN(Salary)) AS DIFFERENCE FROM EMP

--03. Display the total number of employees hired before 1st January, 1991.

SELECT COUNT(EID) AS HIRED_BEFORE_1st_January_1991 FROM EMP WHERE JoiningDate<'1991-01-01'

--PART C

--01. Count the number of employees living in Rajkot or Baroda. 

SELECT COUNT(EID) AS EMPS_IN_RAJKOT_OR_BARODA FROM EMP WHERE City IN ('RAJKOT','BARODA')

--02. Display the total number of employees hired before 1st January, 1991 in IT department. 

SELECT COUNT(EID) AS EMPS_IN_RAJKOT_OR_BARODA FROM EMP WHERE JoiningDate<'1991-01-01' AND Department='IT'

--03. Find the Joining Date wise Total Salaries. 

SELECT JoiningDate, SUM(SALARY) AS Joining_Date_Wise_Total_Salaries FROM EMP GROUP BY JoiningDate

--04. Find the Maximum salary department & city wise in which city name starts with ‘R’.

SELECT Department, CITY, MAX(SALARY) AS MAX_Salary_Department_With_City_Starts_With_R FROM EMP WHERE CITY LIKE 'R%' GROUP BY  DEPARTMENT,CITY

-- EXTRA
--1 CALCULATE THE AVERAGE SALARY FOR EACH CITY
SELECT AVG(SALARY) AS AVG_SALARY, CITY FROM EMP GROUP BY CITY

--2 FIND THE SECOND HIGHEST SALARY IN TH ENTIRE TABLE
SELECT MAX(SALARY) AS SECOND_HIGHEST_SALARY FROM EMP WHERE SALARY<(SELECT MAX(SALARY) FROM EMP)

--3 FIND COUNT OF EMPLOYEE WHO JOIN IN THE FIRST HAL OF ANY MONTH
--4 DISPLAY THE NAME OF EMPLOYEE WHO JOINS LAST

SELECT TOP 1 ENAME, SALARY FROM EMP ORDER BY JOININGDATE DESC

--5 FIND DEPARTMENT WISE HIGHEST SALARY
SELECT ENAME, DEPARTMENT, MAX(SALARY) FROM EMP