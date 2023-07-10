--ASSIGNMENT 3

--1. Display the incremented id value (identity primary key)
SELECT IDENT_CURRENT('Author');

--2. Display date in DD-MM-YYYY format
SELECT FORMAT (getdate(), 'dd/MM/yyyy ') as date

--Declare an attribute of datatype datetime and display only the date
SELECT CAST(CreatedOn AS DATE) FROM CustOrder

/*For Book table: 
i) Display the no. of books arrived during the last year and 
ii) Display the no. of books arrived on every Monday during the last year
*/
SELECT COUNT(*) FROM Book WHERE DATEPART(YEAR,AddedOn) = '2022'  

SELECT COUNT(*) FROM Book WHERE DATEPART(YEAR,AddedOn) = '2022' AND DATENAME(DAY,AddedOn) = 'MONDAY'

// Create an employee table with field “joiningdate” and display the joining date in two time zones - India and New York
CREATE DATABASE CONTROLQORE

USE CONTROLQORE

CREATE TABLE Employee
(
	EID INT IDENTITY(1,1) PRIMARY KEY,
	EName VARCHAR(20),
	JoiningDate DATETIME,
	EPhone BIGINT
)

INSERT INTO Employee(EName,JoiningDate,EPhone) VALUES ('AISHA','2023-07-04',88888888),
('RUBY','2023-07-03',55555555),('JUBIYA','2023-07-05',66666666),('NARAYAN','2023-07-03',77777777),
('CHRISTA','2023-07-02',99999999)

INSERT INTO Employee(EName,JoiningDate,EPhone) VALUES ('John Doe','2023-07-04',88888888),
('Alex John','2023-07-03',55555555),('Anna John S','2023-07-05',66666666),('Arun','2023-07-03',77777777),
('Alex deo','2023-07-02',99999999),('Deo Alex','2023-05-02',99999999)

SELECT * FROM Employee
TRUNCATE TABLE Employee

--display the joining date in two time zones - India and New York
SELECT SWITCHOFFSET (JoiningDate, '-08:00') as JoiningDate FROM Employee

--Display the total no. of days each intern has joined
SELECT DATEDIFF(DAY, JoiningDate, CURRENT_TIMESTAMP) AS DAYS_COMPLETED FROM Employee