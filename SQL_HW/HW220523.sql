-- Найти департаменты в которых есть работники, зарабатывающие больше 10 000. В результате выборки формируются два поля 
-- (department_id и поле со значениями 1 или 0) (использовать оператор max)

use hr
select * from hr;

SELECT
department_id,
max(
		CASE
			WHEN salary > 10000 THEN 1
			ELSE 0
		END 
    ) AS example
FROM employees
GROUP BY department_id;

-- Найти департаменты в которых все работники зарабатывают больше 10 000. 
-- В результате выборки формируются два поля (department_id и поле со значениями 1 или 0) (использовать оператор min)

SELECT 
department_id,
min( 
CASE 
WHEN salary > 10000 THEN 1
ELSE 0
END ) AS example  
FROM employees
GROUP BY department_id


-- оператор max - максимум отвечает за то чтобы сделать выборку максимальных значений из всех данныхю То есть он делает выборку и возвращает max значение. 

-- оператор min - наоборот возвращает минимальное значение
