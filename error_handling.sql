-- Проверка на отрицательные оценки и логирование ошибок
-- Шаг 1: Проверяем наличие отрицательных оценок
SELECT COUNT(*) AS NegativeGradesCount 
FROM Grades 
WHERE Grade < 0;

-- Шаг 2: Если есть отрицательные оценки, логируем ошибку
INSERT INTO ErrorLog (ErrorTime, ModuleName, ErrorDescription)
SELECT datetime('now'), 'GradeValidation', 'Обнаружена отрицательная оценка: ' || Grade
FROM Grades 
WHERE Grade < 0;

-- Шаг 3: Показываем результат проверки
SELECT 
    CASE 
        WHEN EXISTS (SELECT 1 FROM Grades WHERE Grade < 0) THEN 'Обнаружены ошибки в данных'
        ELSE 'Проверка завершена успешно' 
    END AS CheckResult;