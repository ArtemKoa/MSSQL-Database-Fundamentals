/*Коряковский А.Р. 18.10.2024
Самостоятельно запрос 1
Подсчитать среднюю зарплату преподавателей (с помощью запроса SELECT) и
умножить ее на значение 123,34, которое необходимо сохранить в отдельной переменной,
вывести значение переменной на экран.
*/

use University_Коряковский

DECLARE @SrZarplata int, @mnogitel decimal(5, 2);
SET @mnogitel = 123.34;
SET @SrZarplata = (SELECT AVG(SALARY) FROM TEACHER) * @mnogitel;
SELECT @SrZarplata AS 'Результат', @mnogitel AS 'Множитель';