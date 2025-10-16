-- Быстрая проверка состояния базы данных
SELECT 
    (SELECT COUNT(*) FROM Students) AS Всего_студентов,
    (SELECT COUNT(*) FROM Teachers) AS Всего_преподавателей,
    (SELECT COUNT(*) FROM Grades) AS Всего_оценок,
    (SELECT COUNT(*) FROM ErrorLog) AS Записей_в_журнале_ошибок,
    ' БАЗА ДАННЫХ РАБОТАЕТ' AS Статус;