use company7;

select EmployeeID, Firstname, Lastname, DepartmentID, 
row_number() over (partition by DepartmentID order by Lastname) as row_num
from employees;


-- First, find the details of employee 2
SELECT * FROM employees WHERE EmployeeID = 2;

-- Next, update employee 11 to have the same details as employee 2
UPDATE employees
SET 
     = (SELECT first_name FROM employees WHERE id = 2),
    last_name = (SELECT last_name FROM employees WHERE id = 2),
    other_columns = (SELECT other_columns FROM employees WHERE id = 2)
WHERE id = 11;

update employees set DepartmentID =102 where EmployeeID=11;

select*from employees;


insert into employees(EmployeeID, Firstname, Lastname, Hiredate, DepartmentID, salary, phonenumbers) values 
(13,'Angel','Michael','2024-12-30', 102, 45000, '0741502428'),
(14,'Anne','Wachira','2024-09-30', 102, 55000, '0710502428');


select*from employees;

set SQL_SAFE_UPDATES =0;

update employees set salary =50000 where EmployeeID= 13 or 14;

select*from employees;

select EmployeeID, Firstname, Lastname, DepartmentID, 
rank() over (partition by DepartmentID order by salary) as ranks
from employees;




update employees
set salary = round(rand() * (60000 - 40000) + 60000, 2);

select*from employees;

update employees
set salary = round(rand() * (60000 - 40000) + 60000, 2);

set SQL_safe_updates= 0;


update employees
set salary = round(rand() * (1000000), 2);


update employees set salary =50000 where EmployeeID= 13 ;

select*from employees;



select EmployeeID, Firstname, Lastname, DepartmentID, salary 
sum(salary) over (partition by DepartmentID) as total_salary
from employees;


update employees set salary =50000 where EmployeeID= 13 ;

update employees set salary =50000 where EmployeeID= 14 ;


select*from employees;
SELECT 
    EmployeeID, 
    Firstname, 
    Lastname, 
    DepartmentID, 
    Salary, 
    SUM(Salary) OVER (PARTITION BY DepartmentID) AS total_salary
FROM employees;



SELECT 
    EmployeeID, 
    Firstname, 
    Lastname, 
    DepartmentID, 
    Salary, 
    SUM(Salary) OVER (ORDER BY EmployeeID ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS moving_avg
FROM employees;


-- CTE stores results temporarily
WITH employeesalaries as(
select
EmployeeID,Firstname,Lastname, salary, DepartmentID from employees
where salary > 50000)
select
DepartmentID,
Avg(salary) as avg_salary
from employeesalaries
group by DepartmentID;