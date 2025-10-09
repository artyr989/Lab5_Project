
SELECT COUNT(*) AS TotalStudents FROM Students;


SELECT DISTINCT Subject FROM Teachers;


SELECT MIN(Grade) AS MinGrade, MAX(Grade) AS MaxGrade FROM Grades;


SELECT S.Name, T.FullName, G.Subject, G.Grade
FROM Students AS S
INNER JOIN Grades AS G ON S.ID = G.StudentID
INNER JOIN Teachers AS T ON G.Subject = T.Subject;



SELECT Name, COUNT(*) as DuplicateCount 
FROM Students 
GROUP BY Name 
HAVING COUNT(*) > 1;


SELECT * FROM Grades WHERE Grade < 2 OR Grade > 5;