-- Создайте функцию, которая принимает кол-во секунд и форматирует в количество дней часов.
-- Пример: 123456 ->'1 days 10 hours 17 minutes 36 seconds'

DELIMITER //
DROP FUNCTION IF EXISTS timer;
CREATE FUNCTION timer(time_sec INT)
RETURNS VARCHAR(255) READS SQL DATA
BEGIN
	DECLARE time_days INT DEFAULT 0;
    DECLARE time_hours INT DEFAULT 0;
    DECLARE time_minutes INT DEFAULT 0;
    DECLARE split_time VARCHAR(255);
    
    SET time_days = time_sec DIV(86400);
    SET time_sec = time_sec MOD(86400);
    
    SET time_hours = time_sec DIV(3600);
    SET time_sec = time_sec MOD(3600);
    
    SET time_minutes = time_sec DIV(60);
    SET time_sec = time_sec MOD(60);
    
    
    SET split_time = CONCAT(time_days, ' ', 'дней', ' ', time_hours,' ', 'часов', ' ', time_minutes,' ', 'минут', time_sec,' ', 'секунд');
    
    RETURN split_time;
    
END//

DELIMITER ;

SELECT timer(123456);
    
    