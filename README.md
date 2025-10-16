# Лабораторная работа №5
Выполнил Боткин Артём ИС 23.1
## Проект: Система учета студентов университета

###  Участники проекта:
- [Боткин Артём ] - модуль Students


###  Цель проекта:
Разработка системы учета студентов, преподавателей и оценок с использованием SQLite и Git

###  Структура базы данных:

#### Таблица Students:
- ID (автоинкремент, первичный ключ)
- Name (ФИО студента)
- GroupName (Номер группы) 
- AverageGrade (Средний балл)

#### Таблица Teachers:
- ID (автоинкремент, первичный ключ)
- FullName (ФИО преподавателя)
- Subject (Предмет)

#### Таблица Grades:
- ID (автоинкремент, первичный ключ) 
- StudentID (Внешний ключ к Students)
- Subject (Предмет)
- Grade (Оценка)

###  Примеры SQL запросов:

#### Простой запрос - отличники:
```sql
SELECT Name, GroupName, AverageGrade
FROM Students
WHERE AverageGrade >= 4.5;Связь студентов и преподавателей:
sql
SELECT S.Name AS Student, T.FullName AS Teacher, G.Subject, G.Grade
FROM Students AS S
INNER JOIN Grades AS G ON S.ID = G.StudentID
INNER JOIN Teachers AS T ON G.Subject = T.Subject;
