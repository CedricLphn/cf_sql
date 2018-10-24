DROP TABLE IF EXISTS services_users;

CREATE TABLE services_users(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
id_service INT UNSIGNED NOT NULL,
id_user INT UNSIGNED NOT NULL,
sign_date_hour DATETIME DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY(id),
CONSTRAINT fk_id_service FOREIGN KEY (id_service) REFERENCES services(id) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT fk_id_user FOREIGN KEY (id_user) REFERENCES users(id) ON DELETE CASCADE ON UPDATE CASCADE
)
ENGINE = INNODB;

INSERT INTO services_users (id_user, id_service, sign_date_hour)
VALUES
	(2 , 5 , '2018-01-08'),
	(13 , 12 , '2018-02-15'),
	(10 , 19 , '2018-03-06'),
	(10 , 11 , '2018-04-01'),
	(10 , 15 , '2018-05-22'),
	(4 , 13 , '2018-06-04'),
	(6 , 2 , '2018-07-12'),
	(9 , 9 , '2018-08-19'),
	(19 , 7 , '2018-09-13'),
	(16 , 1 , '2018-10-27');

/* Story 6 */

INSERT INTO services_users(id_user, id_service) VALUES(3, 8);

/* Story 13 */

DELETE FROM services_users 
WHERE id = 2, id_user= 13, id_service = 12;  

