SELECT gender, avg(age) 
FROM employee_demographics
where avg(age) > 40
group by gender; 

SELECT gender, avg(age) 
FROM employee_demographics
group by gender
having avg(age) > 30;

SELECT gender, avg(age) as AVG_AGE
FROM employee_demographics
group by gender
having avg(age) > 30;

SELECT occupation, avg(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'
group by occupation
having avg(salary) > 80000;
