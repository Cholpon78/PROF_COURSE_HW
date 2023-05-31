USE hr;
SELECT * FROM hr.departments
-- Вывести названия департаментов, в которых никто не работает
SELECT * FROM hr.departments
SELECT  department_name
	FROM `departments`
		WHERE manager_id IS NULL;

-- Выведите названия департаментов, в которых менеджеры зарабатывают больше 10000
SELECT DISTINCT `department_name`
	FROM `departments`
    JOIN `employees` ON departments.department_id = employees.department_id
		WHERE `salary` > 10000;
        
  -- Вывести имя, фамилию, название департамента и название должности сотрудника
SELECT DISTINCT `first_name`,`last_name`,`department_name`,`job_title`
	FROM `departments`
    JOIN `employees`ON departments.department_id = employees.department_id
    JOIN `jobs` ON employees.job_id = jobs.job_id;
    
    -- Вывести имя, фамилию и зарплату тех сотрудников, которые работают в городах Oxford и San Francisco
        SELECT * FROM hr.employees
    SELECT DISTINCT `first_name`,`last_name`,`salary`
    FROM `employees`
	JOIN `departments`ON departments.department_id = employees.department_id
	JOIN `locations`ON departments.location_id = locations.location_id
    WHERE city IN ('Oxford','San Francisco')
    
    