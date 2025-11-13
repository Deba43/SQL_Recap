select * from employee_salary
where salary >= 50000;

create procedure large_salaries()
select * from employee_salary
where salary >= 50000;

call large_salaries();

create procedure large_salaries2()
select * from employee_salary
where salary >= 50000;
select * from employee_salary
where salary >= 50000;

call large_salaries2();

DELIMITER $$
create procedure large_salaries4()
begin
select * from employee_salary
where salary >= 50000;
select * from employee_salary
where salary >= 600000;
end $$

call large_salaries4();