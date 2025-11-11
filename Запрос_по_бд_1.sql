/*Корякоский А.Р. 18.10.2024
Запрос 1 по своей бд - записать в новую таблицу первые 5 записей из таблицы КНИГА
*/

use BIBLIOTEKA;

DECLARE @Temp TABLE(Familia varchar(30), NameBook varchar(30));	 --Создание таблицы
DECLARE @CountZapisey int, @ID int = 1;
WHILE @ID < 6 BEGIN
	INSERT INTO @Temp(Familia, NameBook)
	VALUES((SELECT Familia_avtora FROM Kniga WHERE ID_Kniga = @ID), 
		   (SELECT Nazvanie FROM Kniga WHERE ID_Kniga = @ID));
	SET @ID = @ID + 1;	--Инкремент ID для перехода к след. записи
END;
SELECT Familia AS 'Фамилия автора', NameBook AS 'Название книги' FROM @Temp;