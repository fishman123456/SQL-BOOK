--create trigger NotAlterDropTable
--on DATABASE
--for DROP_TABLE
--as
--begin
--print '����������� � �������� ������ ���������.
--���������� � ��������������.'
--rollback
--end

--if(datename(dw, GetDate())) = 'Monday'
--begin
--PRINT '������� �����������'
--end

select 'Number of books with not zero quantity' =
count(NULLIF(Grants,0))
from Students;
-- ���������� - ��� ������ ���������������� ��������,
-- ������� ��������� ����������� ��� ���� �����.