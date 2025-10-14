-- Комплексная проверка данных
-- 1. Проверка корректности оценок (должны быть от 2 до 5)
INSERT INTO ErrorLog (ErrorTime, ModuleName, ErrorDescription)
SELECT datetime('now'), 'DataValidation', 'Некорректная оценка: ' || Grade || ' для студента ID: ' || StudentID
FROM Grades 
WHERE Grade < 2 OR Grade > 5;

-- 2. Проверка существования студентов для всех оценок
INSERT INTO ErrorLog (ErrorTime, ModuleName, ErrorDescription)
SELECT datetime('now'), 'ReferentialIntegrity', 'Оценка ссылается на несуществующего студента ID: ' || StudentID
FROM Grades 
WHERE StudentID NOT IN (SELECT ID FROM Students);

-- 3. Отчет об ошибках
SELECT 'Проверка завершена. Найдено ошибок: ' || COUNT(*) AS Report
FROM ErrorLog 
WHERE ErrorTime > datetime('now', '-1 hour');