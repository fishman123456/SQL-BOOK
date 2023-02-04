--create trigger NotAlterDropTable
--on DATABASE
--for DROP_TABLE
--as
--begin
--print 'Модификация и удаление таблиц запрещены.
--Обратитесь к администратору.'
--rollback
--end

--if(datename(dw, GetDate())) = 'Monday'
--begin
--PRINT 'Сегодня понедельник'
--end

select 'Number of books with not zero quantity' =
count(NULLIF(Grants,0))
from Students;
-- Транзакция - это группа последовательных операций,
-- которые логически выполняются как одно целое.