CREATE database class;
use class;
					-- 1) Создать таблицу Students
					-- с полями:
					-- id целое число первичный ключ автоинкремент
					-- name строка 128 не null
					-- age целое число

create TABLE Students (
id Integer primary key,
name Varchar (128) not  null,
age integer);
select * from Students

					-- 2) Создать таблицу Teachers
					-- с полями:
					-- id целое число первичный ключ автоинкремент
					-- name строка 128 не null
					-- age целое число

create TABLE Teachers (
id Integer primary key,
name Varchar (128) not  null,
age integer);
select * from Teachers

					-- 3) Создать таблицу Competencies
					-- с полями:
					-- id целое число первичный ключ автоинкремент
					-- title строка 128 не null

create TABLE Competencies (
id Integer primary key,
title Varchar (128) not  null);
select * from Competencies


					-- 4) Создать таблицу Teachers2Competencies
					-- с полями:
					-- id целое число первичный ключ автоинкремент
					-- teacher_id целое число
					-- competencies_id целое число
create TABLE Teachers2Competencies (
id Integer primary key,
teacher_id  Integer,
competencies_id Integer);
select * from Teachers2Competencies

					-- 5) Создать таблицу Courses
					-- id целое число первичный ключ автоинкремент
					-- teacher_id целое число
					-- title строка 128 не null
					-- headman_id целое число

create TABLE Courses(
id Integer primary key,
teacher_id  Integer,
title Varchar (128) not  null,
headman_id Integer);
select * from Courses


					-- 6) Создать таблицу Students2Courses
					-- id целое число первичный ключ автоинкремент
					-- student_id целое число
					-- course_id целое число

create TABLE Students2Courses(
id Integer primary key,
student_id  Integer,
course_id Integer);
select * from Students2Courses

					-- Добавить 6 записей в таблицу Students
					-- Анатолий 29
					-- Олег 25
					-- Семен 27
					-- Олеся 28
					-- Ольга 31
					-- Иван 22
                    
insert into students (id, name, age) values 
(1, 'Анатолий', 29),
(2, 'Олег', 25),
(3, 'Семен', 27),
(4, 'Олеся', 28),
(6, 'Олеся', 28),
(7, 'Иван', 22);
select * from  students

					-- Добавить 6 записей в таблицу Teachers
					-- Петр 39
					-- Максим 35
					-- Антон 37
					-- Всеволод 38
					-- Егор 41
					-- Светлана 32

insert into Teachers (id, name, age) values 
(1, 'Петр', 39),
(2, 'Максим', 35),
(3, 'Антон', 37),
(4, 'Всеволод', 38),
(6, 'Егор', 41),
(7, 'Светлана', 32);
select * from  Teachers

					-- Добавить 4 записей в таблицу Competencies
					-- Математика 
					-- Информатика
					-- Программирование
					-- Графика
insert into Competencies (id, title) values 
(1, 'Математика'),
(2, 'Информатика'),
(3, 'Программирование'),
(4, 'Графика');
select * from  Competencies

					-- Добавьте 6 записей в таблицу Teachers2Competencies
					-- 1 1
					-- 2 1
					-- 2 3
					-- 3 2
					-- 4 1
					-- 5 3
insert into Teachers2Competencies (id, teacher_id, competencies_id) values 
(1, 1, 1),
(2, 2, 1),
(3, 2, 3),
(4, 3, 2),
(5, 4, 1),
(6, 5, 3);
select * from Teachers2Competencies
          
					-- Добавьте 5 записей в таблицу Courses
					-- 1 Алгебра логики 2
					-- 2 Математическая статистика 3
					-- 4 Высшая математика 5
					-- 5 Javascript 1
					-- 5 Базовый Python 1

insert into Courses (id, teacher_id, title, headman_id) values 
(1, 1, 'Алгебра логики', 2),
(2, 2, 'Математическая статистика', 3),
(3, 4, 'Высшая математика', 5),
(4, 5, 'Javascript', 1),
(5, 5, 'Базовый Python', 1);
select * from Courses
          
					-- Добавьте 5 записей в таблицу Students2Courses
					-- 1 1
					-- 2 1
					-- 3 2
					-- 3 3
					-- 4 5
				
insert into Students2Courses (id, student_id, course_id) values 
(1, 1, 1),
(2, 2, 1),
(3, 3, 2),
(4, 3, 3),
(5, 4, 5);
select * from Students2Courses        



-- Задачи


-- 1) Вывести имена студентов и курсы, которые они проходят
select  
t1.name,
t3.title
from
students t1
inner join  Students2Courses t2 
on t1.id = t2.student_id
inner join courses t3 
on t2.course_id = t3.id

-- 2) Вывести имена всех преподавателей с их компетенциями
select  
t1.name,
t3.title
from
teachers t1
inner join  Teachers2Competencies t2 
on t1.id = t2.teacher_id
inner join Competencies t3 
on t2.competencies_id = t3.id

-- 3) Найти преподавателя, у которого нет компетенций
select  
t1.name,
t3.title
from
teachers t1
left join  Teachers2Competencies t2 
on t1.id = t2.teacher_id
left join Competencies t3 
on t2.competencies_id = t3.id
where t3.title is null

-- 4) Найти имена студентов, которые не проходят ни один курс
select  
t1.name,
t3.title
from
students t1
left join  Students2Courses t2 
on t1.id = t2.student_id
left join courses t3 
on t2.course_id = t3.id
where t3.title is null

-- 5) Найти курсы, которые не посещает ни один студент
select  
t1.title,
t3.name
from
courses t1
left join  Students2Courses t2 
on t1.id = t2.course_id
left join students t3 
on t2.student_id = t3.id
where t3.name is null

-- 6) Найти компетенции, которых нет ни у одного преподавателя
select
t1.title,
t2.competencies_id
from 
Competencies t1
left join Teachers2Competencies t2 
on t1.id = t2.competencies_id
where t2.competencies_id is null

-- 7) Вывести название курса и имя старосты
select 
t1.title,
t2.name
from
courses t1
inner join students t2 
on t1.headman_id = t2.id

-- 8) Вывести имя студента и имена старост, которые есть на курсах, которые он проходит
-- не понятна поставленная задача?
