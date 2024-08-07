--1. Add two more columns City VARCHAR (20) and Pincode INT.

ALTER TABLE DEPOSIT
ADD CITY VARCHAR(20), PINCODE INT

--2. Change the size of CNAME column from VARCHAR (50) to VARCHAR (35).

ALTER TABLE DEPOSIT
ALTER COLUMN CNAME VARCHAR(35)

--3. Change the data type DECIMAL to INT in amount Column.

ALTER TABLE DEPOSIT
ALTER COLUMN AMOUNT INT

--4. Rename Column ActNo to ANO.

EXEC SP_RENAME 'DEPOSIT.ACTNO','ANO'

--5. Delete Column City from the DEPOSIT table.

ALTER TABLE DEPOSIT
DROP COLUMN CITY

--6. Change name of table DEPOSIT to DEPOSIT_DETAIL.

EXEC  SP_RENAME 'DEPOSIT','DEPOSIT_DETAIL'

SELECT * FROM DEPOSIT_DETAIL

--1. Rename Column ADATE to AOPENDATE OF DEPOSIT_DETAIL table.

EXEC SP_RENAME 'DEPOSIT_DETAIL.ADATE','AOPENDATE'

--2. Delete Column AOPENDATE from the DEPOSIT_DETAIL table.

ALTER TABLE DEPOSIT_DETAIL
DROP COLUMN AOPENDATE

--3. Rename Column CNAME to CustomerName

EXEC SP_RENAME 'DEPOSIT_DETAIL.CNAME','CUSTOMERNAME'

--1. Delete all the records of DEPOSIT_DETAIL table having amount greater than and equals to 4000.

DELETE FROM DEPOSIT_DETAIL
WHERE AMOUNT>=4000

--2. Delete all the accounts CHANDI BRANCH.

DELETE FROM DEPOSIT_DETAIL
WHERE BNAME='CHANDI'

--3. Delete all the accounts having account number (ANO) is greater than 105.

DELETE FROM DEPOSIT_DETAIL
WHERE ANO>105

--4. Delete all the records of Deposit_Detail table. (Use Truncate)

TRUNCATE TABLE DEPOSIT_DETAIL

--5. Remove Deposit_Detail table. (Use Drop)

DROP TABLE DEPOSIT_DETAIL

CREATE TABLE EMPLOYEE_MASTER(
EmpNo INT,
EmpName VARCHAR(25),
JoiningDate DATETIME,
Salary DECIMAL (8,2),
City VARCHAR(20)
)

INSERT INTO EMPLOYEE_MASTER VALUES
(101,'Keyur','2002-1-5',12000.00,'Rajkot'),
(102,'Hardik','2004-2-15',14000.00,'Ahmedabad'),
(103,'Kajal ','2006-3-14',15000.00,'Baroda'),
(104,'Bhoomi','2005-6-23',12500.00,'Ahmedabad'),
(105,'Harmit','2004-02-15',14000.00,'Rajkot'),
(106,'Mitesh','2001-9-25',5000.00,'Jamnagar'),
(107,'Meera',NULL,7000.00,'Morbi'),
(108,'Kishan','2003-2-6',10000.00,NULL)

SELECT * FROM EMPLOYEE_MASTER

--1. Delete all the records of Employee_MASTER table having salary greater than and equals to 14000.

DELETE FROM EMPLOYEE_MASTER
WHERE SALARY>=14000

--2. Delete all the Employees who belongs to �RAJKOT� city.

DELETE FROM EMPLOYEE_MASTER
WHERE CITY='RAJKOT'

--3. Delete all the Employees who joined after 1-1-2007.

DELETE FROM EMPLOYEE_MASTER
WHERE JoiningDate>'2007-1-1'

--4. Delete the records of Employees whose joining date is null and Name is not null.

DELETE FROM EMPLOYEE_MASTER
WHERE JoiningDate IS NULL

--5. Delete the records of Employees whose salary is 50% of 20000.

DELETE FROM EMPLOYEE_MASTER
WHERE SALARY=.5*20000

--6. Delete the records of Employees whose City Name is not empty.

DELETE FROM EMPLOYEE_MASTER
WHERE CITY IS NOT NULL

--7. Delete all the records of Employee_MASTER table. (Use Truncate)

TRUNCATE TABLE EMPLOYEE_MASTER

--8. Remove Employee_MASTER table. (Use Drop)

DROP TABLE EMPLOYEE_MASTER