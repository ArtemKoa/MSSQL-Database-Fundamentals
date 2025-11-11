/*Коряковский А.Р. 18.10.2024
Самостоятельно запрос 3
Подсчитать количество кафедр, результат поместить в переменную, вывести
значение переменной на экран.
*/

DECLARE @CountKafedr int;
SET @CountKafedr = (SELECT COUNT(*) FROM Kafedra);
SELECT @CountKafedr AS 'Кол-во кафедр';