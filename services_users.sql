CREATE TABLE services_users(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
<<<<<<< Updated upstream
=======
id_service INT UNSIGNED NOT NULL,
>>>>>>> Stashed changes
id_user INT UNSIGNED NOT NULL,
sign_date_hour DATETIME DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY(id)
)
<<<<<<< Updated upstream
ENGINE = INNODB;
=======
ENGINE = INNODB;
>>>>>>> Stashed changes
