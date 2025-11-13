use employee;
DELIMITER $$
  create trigger employee_insert2
  after insert on employee_salary
  for each row
  begin
  insert into employee_demographics(employee_id, first_name, last_name) values(NEW.employee_id,NEW.first_name,NEW.last_name);
  end $$
DELIMITER ;

INSERT INTO employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)
VALUES(13, 'Jean-Ralphio', 'Saperstein', 'Entertainment 720 CEO', 1000000, NULL);

select * from employee_demographics;
select * from employee_salary;

show events;

drop event if exists delete_retirees;
DELIMITER $$
create event delete_retirees
on schedule every 30 second
do begin
  delete from employee_demographics
  where age >= 60;
  end $$
  