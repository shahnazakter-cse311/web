Activity 01: 
SELECT Last_Name, Hire_Date
FROM emps
WHERE Department_Id = (SELECT Department_Id
FROM emps
WHERE Last_Name = 'Zlotkey')
AND Last_Name != 'Zlotkey';

Activity 03: Activity 03:
Select Last_Name, Salary 
from emps 
where Manager_id = ( Select Employee_id from emps where Last_Name = 'King');

Activity 02:
SELECT Employee_Id, Last_Name, Salary
FROM emps
WHERE Salary > (SELECT AVG(Salary) FROM emps)
ORDER BY Salary;

Activity 04:
select Employee_Id, Last_Name, Salary from emps 
where Salary > (select avg(Salary) from emps) and Department_Id 
in(select  Department_Id from emps where Last_Name like '%u%');

Activity 05:
CREATE TABLE Employees (
Employee_ID int, First_Name varchar(255),Last_Name varchar(255),Email varchar(225),phone_number int,Hire_date DATE,Job_ID Varchar(255),salary int,Comission_pct int,Manager_id int,Department_Id int
);

INSERT INTO `employees` (`Employee_Id`, `First_Name`, `Last_Name`, `Email`, `Phone_Number`, `Hire_Date`, `Job_Id`, `Salary`, `Comission_pct`, `Manager_id`, `Department_Id`) VALUES
(300, 'Ssteven', 'Kking', 'SKkING', '515.123.4567', '2006-06-17', 'AD_PRESS', 24000.00, NULL, NULL, 90),
(301, 'Nneena', 'Kkochar', 'NKkOCHAR', '515.123.4568', '2001-02-22', 'AD_VP', 17000.00, NULL, 100, 90),
(302, 'Llex', 'Dee Haan', 'DEeHAAN', '515.123.4569', '2000-05-16', 'AD_VP', 17000.00, NULL, 100, 90),
(303, 'Aalexander', 'Huunold', 'AHUuNOLD', '590.423.4567', '2010-09-11', 'IT_PROG', 9000.00, NULL, 102, 60),
(304, 'Bbruce', 'Earnst', 'BEaRNST', '590.423.4568', '2011-11-11', 'IT_PROG', 6000.00, NULL, 103, 60);

INSERT INTO employees (Employee_Id, First_Name, Last_Name, Email, Phone_Number, Hire_Date, Job_Id, Salary, Comission_pct, Manager_id, Department_Id)
SELECT e.Employee_Id, e.First_Name, e.Last_Name, e.Email, e.Phone_Number, e.Hire_Date, e.Job_Id, e.Salary, e.Commission_pct, e.Manager_id, e.Department_Id
FROM emps e
ORDER BY Employee_ID DESC;


Activity 06:
a: ALTER TABLE emps MODIFY (Last_Name VARCHAR (25));

b: CREATE TABLE Employees (
Employee_ID int, First_Name varchar(255),Last_Name varchar(255),Email varchar(225),Hire_date DATE,Job_ID Varchar(255),salary int,Comission_pct int,Manager_id int,Department_Id int
);

c: DROP TABLE emp;

d: RENAME emps2 TO emp1;

e: ALTER TABLE emp
	DROP COLUMN First_Name;
	
	DESCRIBE emp
