/*Коряковский А.Р. 18.10.2024
Самостоятельно запрос 7
Определить количество записей в таблице кафедра. Пока записей меньше 10,
делать в цикле добавление записи в временную таблицу с автоматическим наращиванием
значения ключевого поля, а вместо названия кафедры ставить значение 'Имя не известно'.
*/
use University_Коряковский

DECLARE @Temp TABLE(id int identity(1,1), NameKafedra varchar(20) DEFAULT 'Имя неизвестно');
DECLARE @KolZapisey int;
SET @KolZapisey = (SELECT COUNT(*) FROM Kafedra);
SELECT @KolZapisey AS 'Кол-во записей в КАФЕДРА';
WHILE @KolZapisey < 10 BEGIN
	INSERT INTO @Temp(NameKafedra) VALUES(default);
	SET @KolZapisey = @KolZapisey + 1;
END;
SELECT id AS 'ID', NameKafedra FROM @Temp;