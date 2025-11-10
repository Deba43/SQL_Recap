SELECT gender FROM employee_demographics group by gender;
SELECT occupation FROM employee_salary group by occupation;

SELECT occupation, salary FROM employee_salary group by occupation, salary;

SELECT gender, min(age), max(age), count(age), avg(age) FROM employee_demographics group by gender;

SELECT * FROM employee_demographics order by first_name;
SELECT * FROM employee_demographics order by first_name desc;
SELECT * FROM employee_demographics order by gender desc, age desc;
SELECT * FROM employee_demographics order by 5 DESC, 4 DESC;