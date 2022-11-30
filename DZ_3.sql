create database dz_3;

CREATE TABLE workers
(
	`id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(45),
    `surename` VARCHAR(45),
    `speciality` VARCHAR(45),
    `seniority` INT,
    `salary` INT,
    `age` INT
);

INSERT INTO workers(name, surename, speciality, seniority, salary, age)
VALUES
	("Вася", "Васькин", "начальник", 40, 100000, 60),
    ("Петя", "Петькин", "начальник", 8, 70000, 30),
    ("Катя", "Петькина", "инженер", 2, 70000, 25),
    ("Саша", "Сашкинн", "инженер", 12, 50000, 35),
    ("Иван", "Иванов", "рабочий", 20, 30000, 40),
    ("Петр", "Петров", "рабочий", 40, 30000, 59),
    ("Сидор", "Сидоров", "рабочий", 10, 20000, 35),
    ("Антон", "Антонов", "рабочий", 8, 19000, 28),
    ("Юра", "Юркин", "рабочий", 5, 15000, 25),
    ("Максим", "Воронин", "рабочий", 2, 11000, 22),
    ("Юра", "Галкин", "рабочий", 3, 12000, 24),
    ("Люся", "Люськинав", "уборщик", 10, 10000, 49);
    
-- 1. Отсортируйте поле “зарплата” (salary) в порядке убывания и возрастания
SELECT `salary`
FROM `workers`
ORDER BY `salary` DESC;

-- 2. Выведите 5 максимальных зарплат (salary)
-- Или так, если одинаковые зарплаты считать за одну позицию.
SELECT `salary`
FROM `workers`
GROUP BY `salary`
ORDER BY `salary` DESC
LIMIT 5;

-- 3. Подсчитать суммарную зарплату(salary) по каждой специальности (speciality)
SELECT `speciality`, SUM(salary) AS sum_salary
FROM workers
GROUP BY `speciality`;

-- 4. Найти количество сотрудников по специальности “Рабочий” (speciality) в
--    возрасте от 24 до 42 лет.
SELECT COUNT(speciality) AS result
FROM workers
WHERE speciality = "Рабочий" AND age BETWEEN 24 AND 42;

-- 5. Найти количество специальностей
SELECT COUNT(DISTINCT speciality) AS total_speciality
FROM workers;

-- 6. Вывести специальности, у которых средний возраст сотрудника меньше 44 лет
SELECT speciality
FROM workers
GROUP BY speciality
HAVING AVG(age) < 44;











