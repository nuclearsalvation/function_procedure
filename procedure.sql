DELIMITER $$ -- //
CREATE PROCEDURE loop_proc(x INT)
BEGIN
	DECLARE res VARCHAR(200) DEFAULT('');
	DECLARE  y INT DEFAULT(1);
	SET res='2';
    REPEAT
		    SET y = y + 1;
        SET res = CONCAT(res, ', ', y * 2);
		UNTIL y * 2 >= x - 1
	END REPEAT;
    
    SELECT res;
END $$ -- //
DELIMITER ;

CALL loop_proc(10);