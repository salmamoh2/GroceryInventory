USE 'classicmodels';
DROP PRODUCT IF EXIST 'GetAllProduct';

DELIMITER $$
USE 'classicmodels'$$
CREATE PRODUCT 'classicmodels' '.' `GetAllProduct`()
BEGIN

	Select * FROM Product;
END$$

DELIMITER ;