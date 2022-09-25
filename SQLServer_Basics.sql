---- *****TABLE CREATION*****

--CREATE TABLE EmployeeDemographics
--(Employee_ID int,
--First_Name varchar(50),
--Last_Name varchar(50),
--Age int,
--Gender varchar(50))

--CREATE TABLE EmployeeSalery
--(Employee_ID int,
--Job_Title varchar(50),
--Salary int)


---- *****INSERT DATA IN TABLE*****

--INSERT INTO EmployeeDemographics VALUES
--(1001, 'Ömer', 'Akal', 20, 'Male'),
--(1001, 'Ayşe', 'ASDFASD', 20, 'Female'),
--(1002, 'Naz', 'ASDFA', 20, 'Female'),
--(1003, 'Ahmet', 'ASDFA', 21, 'Male'),
--(1004, 'Nurgül', 'ASDFADSF', 22, 'Female'),
--(1005, 'Salih', 'ASDFASD', 20, 'Male'),
--(1006, 'Mehmet', 'ASDFA', 23, 'Male'),
--(1007, 'Elif', 'ASDFASDF', 20, 'Female'),
--(1008, 'Mahmut', 'WEFASD', 27, 'Male'),
--(1009, 'Kaya', 'AEWFDSS', 21, 'Male')

--INSERT INTO EmployeeSalery VALUES
--(1001, 'Data Analyst', 153000),
--(1002, 'Back-End Dev', 120000),
--(1003, 'Front-End Dev', 90000),
--(1004, 'Data Engineer', 129000),
--(1005, 'Mobile Dev', 123900),
--(1006, 'Human Resources', 80000),
--(1007, 'Front-End Dev', 89000),
--(1008, 'UI/UX', 95000),
--(1009, 'Back-End Dev', 132000)


---- *****DELETE DATA IN TABLE*****

--DELETE FROM EmployeeDemographics WHERE First_Name = 'Ömer'; --Delete Row


---- *****SELECT AND FROM STATEMENTS*****

--SELECT *	-- '*' Select all
--FROM EmployeeDemographics

--SELECT TOP 5 *	-- First 5 Row
--FROM EmployeeDemographics

--SELECT DISTINCT(Employee_ID)	-- Unique values in specific column
--FROM EmployeeDemographics

--SELECT COUNT(Last_Name) AS Last_Name_Count	-- NUN-NULL Values count in specific column. You can give a name with 'AS'
--FROM EmployeeDemographics

--SELECT MAX(Salary)	--Max value in specific column
--FROM EmployeeSalery

--SELECT MIN(Salary)	--Min value in specific column
--FROM EmployeeSalery

--SELECT AVG(Salary)	--Avg value in specific column
--FROM EmployeeSalery

--SELECT *
--FROM SQL_Basics.dbo.EmployeeDemographics	-- Access from master database


---- *****WHERE STATEMENT*****

--SELECT *
--FROM EmployeeDemographics
--WHERE First_Name = 'Ayşe'; 
--WHERE First_Name <> 'Ayşe'; --Not equal
--WHERE Age < 22;
--WHERE Age < 23 AND Gender = 'Male';
--WHERE Age = 21 OR Age = 27;
--WHERE Last_Name LIKE 'A%'	-- Last name start with 'A'
--WHERE Last_Name LIKE 'A%A'	-- Last name start and end with 'A'
--WHERE Last_Name LIKE '%A';	-- End with 'A'
--WHERE Last_Name LIKE '%A%';	-- 'A' anywhere in Last name
--WHERE Last_Name LIKE 'A%W%';	-- Start with 'A' and 'W' anywhere
--WHERE Last_Name is NULL
--WHERE Last_Name is NOT NULL
--WHERE First_Name IN ('Elif','Mahmut')
--WHERE Age%2=0 -- age is even


---- *****GROUP BY AND ORDER BY STATEMENTS*****

--SELECT Gender, COUNT(Gender) AS Gender_Count, Age
--FROM EmployeeDemographics
--GROUP BY Gender, Age
--ORDER BY Gender_Count ASC	-- sort by min to max
--ORDER BY Gender_Count DESC	-- sort by max to min

--SELECT *
--FROM EmployeeDemographics
----ORDER BY Age ASC
--ORDER BY 4 DESC	-- 4th column = Age


---- *****INNER OUTER JOINS*****

--SELECT *
--FROM EmployeeDemographics
--INNER JOIN EmployeeSalery -- Intersection of Demographics and Salery tables
--	ON EmployeeDemographics.Employee_ID = EmployeeSalery.Employee_ID

SELECT EmployeeDemographics.Employee_ID, First_Name, Last_Name, Job_Title, Salary
FROM EmployeeDemographics
INNER JOIN  EmployeeSalery
	ON EmployeeDemographics.Employee_ID = EmployeeSalery.Employee_ID

--SELECT *
--FROM EmployeeDemographics
--FULL OUTER JOIN EmployeeSalery -- Join of Demographics and Salery tables
--	ON EmployeeDemographics.Employee_ID = EmployeeSalery.Employee_ID

--SELECT *
--FROM EmployeeDemographics
--LEFT OUTER JOIN EmployeeSalery -- Join All of Demographics table and intersection of Salary tables
--	ON EmployeeDemographics.Employee_ID = EmployeeSalery.Employee_ID


--SELECT *
--FROM EmployeeDemographics
--RIGHT OUTER JOIN EmployeeSalery 
--	ON EmployeeDemographics.Employee_ID = EmployeeSalery.Employee_ID