create table STUDENT_INFO(
 
 RNO INT,
 NAME VARCHAR(20),
 BRANCH VARCHAR(2),
 SPI FLOAT,
 BKLOG INT
)

INSERT INTO STUDENT_INFO VALUES
(101, 'Raju', 'CE', 8.80, 0),
(102, 'Amit', 'CE', 2.20, 3),
(103, 'Sanjay', 'ME', 1.50, 6),
(104, 'Neha', 'EC', 7.65, 1),
(105, 'Meera', 'EE', 5.52, 2),
(106, 'Mahesh', 'EC', 4.50, 3)

drop table STUDENT_INFO
--part A

select * from personal
select *from student_info

--1. Create a view Personal with all columns.
create view personal as
select *
from STUDENT_INFO
--2. Create a view Student_Details having columns Name, Branch & SPI. 
create view STUDENT_DETAILS as select Name, Branch, spi from student_info
select *from STUDENT_DETAILS
--3. Create a view AcademicData having columns RNo, Name, Branch.
create view VW_ADATA as select RNO, NAME, BRANCH from student_info
select * from VW_ADATA
--4. Create a view Student_ bklog having all columns but students whose bklog more than 2.
create view VW_BCK as select name,
--5. Create a view Student_Pattern having RNo, Name & Branch columns in which Name consists of four 
--letters.
--6. Insert a new record to AcademicData view. (107, Meet, ME)
--7. Update the branch of Amit from CE to ME in Student_Details view.
--8. Delete a student whose roll number is 104 from AcademicData view.