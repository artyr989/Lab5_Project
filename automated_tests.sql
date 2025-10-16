-- АВТОМАТИЧЕСКИЕ ТЕСТЫ ДЛЯ БАЗЫ ДАННЫХ 
 
-- ТЕСТ 1: Проверка низких оценок 
 
-- ТЕСТ 2: Проверка целостности данных 
SELECT COUNT(*) AS Потерянные_связи FROM Grades G LEFT JOIN Students S ON G.StudentID = S.ID WHERE S.ID IS NULL; 
 
-- ТЕСТ 3: Проверка диапазона оценок 
