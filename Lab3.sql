Activity 01: 

SELECT Last_Name, Hire_Date FROM emps
WHERE year(Hire_Date) = 1994

Activity 02: 

SELECT Last_Name, Salary, Commission_pct
 from emps
 WHERE Commission_pct is not null
 order by Salary, Commission_pct

Activity 03:

SELECT Last_Name
FROM emps
WHERE Last_Name LIKE '%a%'
AND Last_Name LIKE '%e%';

Activity 04: 

SELECT e.Last_Name, e.Department_id, d.Department_Name
FROM emps e, depts d
WHERE e.Department_Id = d.Department_Id;

Activity 05: 

SELECT e.Last_Name, d.Department_Name, d.Location_Id, l.City
FROM emps e, depts d, locs l
WHERE e.Department_Id = d.Department_id
AND
d.Location_id = l.Location_id
AND e.Commission_pct IS NOT NULL;

Activity 06: 

SELECT e.Last_Name, e.Job_Id, e.Department_Id,
d.Department_Name
FROM emps e JOIN depts d
ON (e.Department_Id = d.Department_Id)
JOIN locs l
ON (d.Location_id = l.Location_id)
WHERE LOWER(l.City) = ’Toronto’;

Activity 07: 

SELECT Last_Name, Salary, Commission_pct FROM emps WHERE Commission_pct IS NOT NULL ORDER BY Salary DESC, Commission_pct DESC;

Activity 08: 

SELECT	 w.Last_Name "Employee", w.Employee_Id "EMP#",
	 m.Last_Name "Manager", m.Employee_Id "Mgr#"
	FROM emps w join emps m
	ON (w.Manager_id = m.Employee_Id);

Activity 09: 

SELECT ROUND(MAX(Salary),0) 'Maximum',
ROUND(MIN(Salary),0) 'Minimum',
ROUND(SUM(Salary),0) 'Sum',
ROUND(AVG(Salary),0) 'Average'
FROM emps;

Activity 10: 

SELECT Job_Id, 
ROUND(MAX(salary),0) "Maximum",
ROUND(MIN(salary),0) "Minimum",
ROUND(SUM(salary),0) "Sum",
ROUND(AVG(salary),0) "Average"
FROM emps
GROUP BY Job_Id;

Activity 11: 

SELECT Job_Id, COUNT(*) FROM emps GROUP BY Job_Id;

Activity 12: 

SELECT Manager_id, MIN(salary)
FROM emps
WHERE Manager_id IS NOT NULL
GROUP BY Manager_id
HAVING MIN(salary) > 6000
ORDER BY MIN(salary) DESC;

Homework: 

SELECT d.Department_Name "Name", d.Location_id "Location ",
COUNT(*) "Number of People",
ROUND(AVG(Salary),2) "Salary"
FROM emps e, depts d
WHERE e.Department_Id = d.Department_id
GROUP BY d.Department_Name, d.Location_id;