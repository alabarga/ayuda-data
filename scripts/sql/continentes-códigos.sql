CREATE TEMPORARY TABLE `continentes_códigos` (
	`nombre` varchar(255) NOT NULL,
	`código` varchar(255) NOT NULL,
	PRIMARY KEY (`nombre`)
) DEFAULT CHARSET=utf8;

LOAD DATA LOCAL INFILE 'scripts/data/continentes-códigos.csv' INTO TABLE `continentes_códigos`
	FIELDS TERMINATED BY ',' ENCLOSED BY '"'
	LINES TERMINATED BY '\n'
	IGNORE 1 LINES;
