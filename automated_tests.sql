-- �������������� ����� ��� ���� ������ 
 
-- ���� 1: �஢�ઠ ������ �業�� 
 
-- ���� 2: �஢�ઠ 楫��⭮�� ������ 
SELECT COUNT(*) AS ����ﭭ�_�裡 FROM Grades G LEFT JOIN Students S ON G.StudentID = S.ID WHERE S.ID IS NULL; 
 
-- ���� 3: �஢�ઠ ��������� �業�� 
