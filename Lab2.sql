Activity 01:
SELECT lname "last Name", salary*07 "weekly Salary", dno "department number" FROM employee

Activity 02:
a:SELECT fname "First Name", lname "Last Name" FROM employee WHERE superssn=333445555;
b:SELECT fname 'first Name', lname 'Last Name' FROM employee WHERE sex=F AND ssn=superssn;
c:SELECT fname 'first Name', lname 'Last Name', dname FROM employee, department WHERE ssn=mgrssn;
d:SELECT DISTINCT e.fname 'First name', e.lname 'last name', d.dname, p.pname, w.hours FROM works_on w, department d,  employee e, project p WHERE e.dno=d.dnumber AND e.dno=p.dnum AND p.pnumber=w.pno;

Activity 03:
SELECT Last_Name, Job_Id, Hire_Date "start date"
FROM emps
WHERE Hire_Date BETWEEN '1998-02-20' AND '1998-05-01'
ORDER BY Hire_Date;

Activity 04:
SELECT Last_Name, Department_Id
FROM emps
WHERE Department_Id IN (20, 50)
ORDER BY Last_Name;