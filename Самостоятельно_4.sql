/*Коряковский А.Р. 18.10.2024
Самостоятельно запрос 4
Создать локальную таблицу с названием TEMP и полями типа дата/время,
длинное целое, строка. Добавить в нее две записи с данными и вывести результат на экран.
*/

use University_Коряковский

DECLARE @Temp TABLE(Budjet BIGINT, Familia char(20), Date_of DATETIME);
INSERT INTO @Temp(Budjet, Familia, Date_of)
VALUES (540500, 'Кузнецов', '2022-11-22T13:25:00'),
	   (705000, 'Иванов', '2018-09-03T09:30:00');
SELECT Budjet AS 'Бюджет', Familia AS 'Фамилия', Date_of AS 'Дата'
FROM @Temp;