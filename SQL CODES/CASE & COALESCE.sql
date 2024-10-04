Use company7;

SELECT
employeeid
firstname,
lastname, 
CASE DepartmentID
when 101 then 'HR'
when 102 then 'IT'
when 103 then 'Finance'
Else 'Other'
End as departmentName
from employees;


SELECT
employeeid
firstname,
lastname, 
salary,
CASE 
when salary < 50000 then'Low'
when salary between 50000 and 70000 then'medium'
Else 'high'
End as salary_level 
from employees;


select*from employees;

SELECT
DepartmentID,
sum(case
when DepartmentID=101 then salary
else 0
end) as spent_101
FROM employees
group by DepartmentID;

SELECT
DepartmentID,
sum(case
when DepartmentID=101 then salary
else 0
end) as spent_101,
sum(case
when DepartmentID=102 then salary
else 0
end) as spent_102
from employees
group by DepartmentID;

SELECT
  DepartmentID,
  SUM(CASE
    WHEN DepartmentID = 101 THEN salary
    ELSE 0
  END) AS spent_101,
  SUM(CASE
    WHEN DepartmentID = 102 THEN salary
    ELSE 0
  END) AS spent_102
FROM employees
GROUP BY DepartmentID;

SELECT
  DepartmentID,
  SUM(CASE
    WHEN DepartmentID = 101 THEN salary
    ELSE 0
  END) AS spent_101,
  SUM(CASE
    WHEN DepartmentID = 102 THEN salary
    ELSE 0
  END) AS spent_102,
   SUM(CASE
    WHEN DepartmentID = 103 THEN salary
    ELSE 0
  END) AS spent_103
FROM employees
GROUP BY DepartmentID;

alter table employees
add column phonenumbers varchar(100);


select 
employeeID
firstname,
lastname,
coalesce(phonenumbers, "no phone number") as contact_number
from employees
limit 5;

select ]
employeeID
firstname,
lastname,
coalesce(phonenumbers, "no phone number") as contact_number
from employees
limit 10;


SELECT
  employeeID,
  firstname,
  lastname,
  COALESCE(phonenumbers, 'no phone number') AS contact_number
FROM employees
ORDER BY Hiredate asc
LIMIT 10;

select
Departmentname,
case
when DepartmentID= 101 then COALESCE(phonenumber,'no phone')
when DepartmentID= 102 then coalesce(email,'no email')
else 'contact admin'
end as contact_info
from departments;

use company7;

SELECT
Departmentname,
case
    WHEN DepartmentID = 101 THEN COALESCE (phonenumbers, 'no phone')
    WHEN DepartmentID = 102 THEN COALESCE (email, 'no email')
    ELSE 'contact admin'
  END AS contact_info
FROM departments;

SELECT
  Departmentname,
  CASE
    WHEN DepartmentID = 101 THEN COALESCE(phonenumber, 'no phone')
    WHEN DepartmentID = 102 THEN COALESCE(email, 'no email')
    ELSE 'contact admin'
  END AS contact_info
FROM departments

SELECT
  Departmentname, DepartmentID,
  CASE
    WHEN DepartmentID = 101 THEN COALESCE(phonenumbers, 'no phone')
    WHEN DepartmentID = 102 THEN COALESCE(email, 'no email')
    ELSE 'contact admin'
  END AS contact_info
FROM departments;

-- redo this particular code