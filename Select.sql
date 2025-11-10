SELECT * FROM Employee.employee_demographics;
SELECT * FROM Employee.employee_salary;
SELECT * FROM Employee.employee_departments;

SELECT first_name FROM employee_demographics;

SELECT last_name, first_name FROM employee_demographics;

SELECT DISTINCT gender FROM  employee_demographics;

SELECT first_name, last_name, salary, salary + 1000 FROM employee_salary;