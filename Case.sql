select first_name, last_name, age,
case
 when age <= 30 then 'Young'
end
from employee_demographics;

select first_name, last_name, salary,
case
 when salary > 45000 then salary + (salary * 0.5)
 when salary < 45000 then salary + (salary * 0.7)
end as New_Salary,
case
  when dept_id = 6 then salary * .10
end as Bonus
from employee_salary;