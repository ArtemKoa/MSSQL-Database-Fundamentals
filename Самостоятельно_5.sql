/*Коряковский А.Р. 18.10.2024
Самостоятельно запрос 5
Подсчитать количество факультетов. Если их в таблице от 2 до 4, то ничего не
сообщать, в противном случае вывести сообщение вида "В таблице ... факультетов" (вместо
многоточия поставить точное количество факультетов).
*/

use University_Коряковский

DECLARE @CountFacultets smallint, @Message VARCHAR(40);
SET @CountFacultets = (SELECT COUNT(*) FROM Facultet);
IF @CountFacultets < 2 OR @CountFacultets > 4 BEGIN
	SET @Message = 'В таблице' + str(@CountFacultets) + ' факультет(а)ов.';
	SELECT @Message AS 'Сообщение';
END;
