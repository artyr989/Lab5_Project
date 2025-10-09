```sql
-- ИНТЕГРИРОВАННЫЕ SQL ЗАПРОСЫ
-- Лабораторная работа №5

-- 1. Все студенты с их оценками
SELECT S.Name AS Студент, G.Subject AS Предмет, G.Grade AS Оценка
FROM Students AS S
INNER JOIN Grades AS G ON S.ID = G.StudentID;

-- 2. Связь студентов, преподавателей и оценок
SELECT S.Name AS Студент, T.FullName AS Преподаватель, G.Subject AS Предмет, G.Grade AS Оценка
FROM Students AS S
INNER JOIN Grades AS G ON S.ID = G.StudentID
INNER JOIN Teachers AS T ON G.Subject = T.Subject;

-- 3. Средний балл по каждому предмету
SELECT G.Subject AS Предмет, AVG(G.Grade) AS СредняяОценка
FROM Grades AS G
GROUP BY G.Subject;

-- 4. Количество студентов у каждого преподавателя
SELECT T.FullName AS Преподаватель, COUNT(DISTINCT G.StudentID) AS КоличествоСтудентов
FROM Teachers AS T
INNER JOIN Grades AS G ON T.Subject = G.Subject
GROUP BY T.FullName;