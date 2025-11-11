/*Коряковский А.Р. 18.10.2024
Самостоятельно запрос 2
Подсчитать суммарное значение всех стипендий у студентов, результат поместить
в переменную, вывести значение переменной на экран.
*/

use University_Коряковский

DECLARE @ResultSum int;
SET @ResultSum = (SELECT SUM(STIPEND) FROM STUDENT);
SELECT @ResultSum AS 'Сумма стипендий';