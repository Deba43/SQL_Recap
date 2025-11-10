SELECT * FROM employee_demographics
JOIN employee_salary
ON employee_demographics.employee_id = employee_salary.employee_id;

SELECT * FROM employee_demographics dem
inner join employee_salary sal
on dem.employee_id = sal.employee_id;

SELECT * FROM employee_salary sal
left join employee_demographics dem
on dem.employee_id = sal.employee_id;

SELECT * FROM employee_salary sal
right join employee_demographics dem
on dem.employee_id = sal.employee_id;
--- self join -----
SELECT * FROM employee_salary emp1
join employee_salary emp2
on emp1.employee_id = emp2.employee_id;

SELECT * FROM employee_salary emp1
join employee_salary emp2
on emp1.employee_id + 1 = emp2.employee_id;

--- joining multiple table------

SELECT * FROM employee_demographics dem
inner join employee_salary sal 
on dem.employee_id = sal.employee_id
join employee_departments dep
on dep.department_id = sal.dept_id;

SELECT * FROM employee_demographics dem
inner join employee_salary sal 
on dem.employee_id = sal.employee_id
left join employee_departments dep
on dep.department_id = sal.dept_id;