START TRANSACTION;

USE meson;

-- The following SQL will run for this change
CREATE TABLE `dolar_price` (
	`id` int NOT NULL AUTO_INCREMENT,
	`Date` date,
	`Blue_Sell` decimal(10,2),
	`Oficial_Sell` decimal(10,2),
	`Blue_Buy` decimal(10,2),
	`Oficial_Buy` decimal(10,2),
	PRIMARY KEY (`id`)
) ENGINE InnoDB,
CHARSET utf8mb4,
COLLATE utf8mb4_0900_ai_ci;


-- Confirma la transacción
COMMIT;