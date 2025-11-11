/*Корякоский А.Р. 18.10.2024
Запрос 3 по своей бд - вывести номера читательских билетов пока не встретиться номер 335064
*/

DECLARE @Count int = 1; --Счетчик итераций и переменная для сравнения с ID

--Номер читательского билета
DECLARE @Number int = (SELECT NOMER FROM Chitatelskiy_bilet WHERE ID_Chitatelskiy_bilet = @Count);

WHILE @Number != 335064 BEGIN
	PRINT @Number;
	SET @Count = @Count + 1;	--Увеличение счетчика
	SET @Number = (SELECT NOMER FROM Chitatelskiy_bilet WHERE ID_Chitatelskiy_bilet = @Count);
END;