CREATE DEFINER=`root`@`localhost` PROCEDURE `Datos_Aleatorios`(in num_registros int)
BEGIN
DECLARE i INT DEFAULT 0;
DECLARE nombre_aleatorio VARCHAR (50);
DECLARE correo_aleatorio VARCHAR(50);
DECLARE telefono_aleatorio VARCHAR (40);
WHILE i<num_registros DO
SET nombre_aleatorio=concat('nombre',FLOOR(500 + RAND()*500));
SET correo_aleatorio=concat('usuario',FLOOR(500 + RAND()*500),'@utxicotepec.edu.mx');
SET telefono_aleatorio=concat('764',FLOOR(100 + RAND()*500),'-',FLOOR(500 + RAND()*500));
INSERT INTO clientes (nombre,correo,telefono) VALUES (nombre_aleatorio,correo_aleatorio,telefono_aleatorio);
SET i=i+1;
END WHILE;
END