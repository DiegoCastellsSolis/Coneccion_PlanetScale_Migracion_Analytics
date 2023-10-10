 USE STAGING;
-- Verificar si la tabla temporal #meli_cars ya existe
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = '#meli_cars')
BEGIN
    -- Crear la tabla temporal #meli_cars
    CREATE TABLE #meli_cars (
        id NVARCHAR(50),
        title NVARCHAR(255),
        price DECIMAL(10, 2),
        currency_id NVARCHAR(3),
        permalink NVARCHAR(500),
        stop_time DATETIME,
        date_created DATETIME,
        motor DECIMAL(5, 2),
        marca NVARCHAR(50),
        modelo NVARCHAR(50),
        puertas INT,
        transmission NVARCHAR(50),
        kilometros NVARCHAR(50),
        tipo_combustible NVARCHAR(50),
        date_post DATETIME
	);
END;


START TRANSACTION;

USE meson;

CREATE TABLE `meli_cars` (
	`id` int NOT NULL,
	`title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
	`price` decimal(10,2),
	`currency_id` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
	`permalink` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
	`stop_time` datetime,
	`date_created` datetime,
	`motor` decimal(5,2),
	`marca` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
	`modelo` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
	`puertas` int,
	`transmission` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
	`kilometros` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
	`tipo_combustible` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
	`date_post` datetime,
	PRIMARY KEY (`id`)
) ENGINE InnoDB,
  CHARSET utf8mb4,
  COLLATE utf8mb4_0900_ai_ci

-- Confirma la transacción
COMMIT;
