DROP TABLE IF EXISTS services_users

CREATE TABLE services_users(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
id_service INT UNSIGNED NOT NULL,
id_user INT UNSIGNED NOT NULL,
sign_date_hour DATETIME DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY(id)
)
ENGINE = INNODB;

INSERT INTO services_users (id_user, id_service, sign_date_hour)
VALUES
	(2 , 5 , 2018-01-08),
	(13 , 12 , 2018-02-15),
	(24 , 19 , 2018-03-06),
	(15 , 11 , 2018-04-01),
	(1 , 15 , 2018-05-22),
	(4 , 13 , 2018-06-04),
	(6 , 2 , 2018-07-12),
	(9 , 9 , 2018-08-19),
	(19 , 6 , 2018-09-13),
	(16 , 1 , 2018-10-27),
