-- ��� ����������� ����: �஢�ઠ ��㤥�⮢ ��� �業�� 
 
SELECT 
    '�஢�ઠ ��㤥�⮢ ��� �業��' AS ����, 
    COUNT(*) AS ��㤥�⮢_���_�業�� 
FROM Students S 
LEFT JOIN Grades G ON S.ID = G.StudentID 
WHERE G.ID IS NULL; 
