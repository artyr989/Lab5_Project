-- МОЙ СОБСТВЕННЫЙ ТЕСТ: Проверка студентов без оценок 
 
SELECT 
    'Проверка студентов без оценок' AS Тест, 
    COUNT(*) AS Студентов_без_оценок 
FROM Students S 
LEFT JOIN Grades G ON S.ID = G.StudentID 
WHERE G.ID IS NULL; 
