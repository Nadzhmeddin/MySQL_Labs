-- Выводите только четные числа от 1 до 10. 
-- Пример: 2, 4, 6, 8, 10.


DROP PROCEDURE IF EXISTS evenNums;
DELIMITER $$
CREATE PROCEDURE evenNums(N INT)
BEGIN
	DECLARE i VARCHAR(20) DEFAULT '';
    DECLARE K INT DEFAULT 2;
    DECLARE N INT DEFAULT 10;
	WHILE(K <= N) DO
        SET i = CONCAT(i, " ", K);
        SET K = K+2;
	END WHILE;
	SELECT i;
END$$
DELIMITER ;
CALL evenNums(10);