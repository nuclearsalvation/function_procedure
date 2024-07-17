DELIMITER $$ -- //
CREATE FUNCTION time_function(num INT)
RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
    DECLARE y INT DEFAULT 0;
    DECLARE x INT DEFAULT 0;
    DECLARE res VARCHAR(100) DEFAULT '';
    SET x = num;
    SET y = num MOD 60;
    SET res = CONCAT(y,' seconds ', res);
    SET x = x DIV 60;
    SET y = x MOD 60;
    SET res = CONCAT(y,' minutes ', res);
    SET x = x DIV 60;
    SET y = x MOD 24;
    SET res = CONCAT(y,' hours ', res);
    SET x = x DIV 24;
    SET res = CONCAT(x, ' days ', res);
	RETURN res;
END $$ -- //
DELIMITER ;

SELECT time_function(123456);