/*Коряковский А.Р. 18.10.2024
Самостоятельно запрос 6
Подсчитать средний год рождения студентов. Если полученный год в диапазоне от
1980 до 1999, то ничего не сообщать, в противном случае вывести сообщение вида "Средний
год рождения = ." (вместо многоточия поставить точный средний год).
*/

use University_Коряковский

DECLARE @AvgYears int, @Message varchar(35);
SET @AvgYears = (SELECT AVG(YEAR(BIRTHDAY)) FROM STUDENT);
IF @AvgYears < 1980 OR @AvgYears > 1999 BEGIN
	SET @Message = 'Средний год рождения =' + str(@AvgYears) + '.';
	PRINT @Message;
END;
