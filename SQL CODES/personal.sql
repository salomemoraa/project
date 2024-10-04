use company7;

-- how? to better understand this?

SELECT e1.EmployeeID AS EmployeeID,
       e1.Firstname AS EmployeeFirstname,
       e1.Lastname AS EmployeeLastname,
       e2.EmployeeID AS ColleagueID,
       e2.Firstname AS ColleagueFirstname,
       e2.Lastname AS ColleagueLastname
FROM employees e1
INNER JOIN employees e2
ON e1.DepartmentID = e2.DepartmentID
AND e1.EmployeeID <> e2.EmployeeID;


SELECT e1.EmployeeID AS EmployeeID,
       e1.Firstname AS EmployeeFirstname,
       e1.Lastname AS EmployeeLastname,
       e2.EmployeeID AS ColleagueID,
       e2.Firstname AS ColleagueFirstname,
       e2.Lastname AS ColleagueLastname
FROM employees e1
INNER JOIN employees e2
ON e1.DepartmentID = e2.DepartmentID;


SELECT EmployeeID
FROM employees
WHERE EmployeeID = 2;



SELECT DepartmentID
FROM employees, Firstname
WHERE departmentID = 102;


SELECT e1.EmployeeID AS EmployeeID1,
       e2.EmployeeID AS EmployeeID2
FROM employees e1, employees e2
WHERE e1.EmployeeID = 2
  AND e1.DepartmentID = e2.DepartmentID
  AND e1.EmployeeID <> e2.EmployeeID;
  
  select*from employees;
  
  SELECT e.EmployeeID, e.Firstname, e.Lastname
FROM employees e;

-- choosing from our table departments, giving it an alias d then filtering through departmentId and department name
SELECT d.DepartmentID, d.Departmentname
FROM departments d;

SELECT p.projectID, p.projecttname
FROM projects p;


-- choosing from our table projects, giving it an alias p then filtering through projectId and projecttname

SELECT p.projectID, p.projecttname
FROM projects p;

SELECT e1.EmployeeID, e1.Firstname, e1.Lastname, e2.EmployeeID, e2.Firstname, e2.Lastname
FROM employees e;


use company7;

SELECT e1.EmployeeID AS EmployeeID1,
       e1.Firstname AS EmployeeFirstname,
       e1.Lastname AS EmployeeLastname,
       e2.EmployeeID AS ColleagueID,
       e2.Firstname AS ColleagueFirstname,
       e2.Lastname AS ColleagueLastname
FROM employees e1
INNER JOIN employees e2
ON e1.DepartmentID = e2.DepartmentID
AND e1.EmployeeID <> e2.EmployeeID;


SELECT d1.DepartmentID AS DepartmentID1,
       d2.Departmentname AS DepartmentID2,
      FROM departments d1
INNER JOIN departments d2
ON d1.DepartmentID = d2.Departmentname;

SELECT d1.Departmentname AS DepartmentID1,
       d2.DepartmentID AS DepartmentID2
FROM departments d1
INNER JOIN departments d2
ON d1.Departmentname = d2.DepartmentID;
