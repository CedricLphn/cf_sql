--création de tables services--
CREATE DATABASE cf_sql CHARACTER SET ‘utf8’;

USE cf_sql;

CREATE TABLE services(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    id_user INT UNSIGNED NOT NULL,
    name VARCHAR(50) NOT NULL,
    description TEXT NOT NULL,
    address VARCHAR(255) NOT NULL,
    cp INT(6) UNSIGNED NOT NULL,
    city VARCHAR(50) NOT NULL,
    country VARCHAR(60) NOT NULL,
    date_hour DATETIME DEFAULT CURRENT_TIMESTAMP,
    more_info TEXT,
    PRIMARY KEY(id)
)
CHARACTER SET 'utf8'
ENGINE=INNODB;

--Ajout de données en spécifiant les colonnes--
INSERT INTO services (id_user,name,description,address,cp,city,country,date_hour,more_info)
VALUES ('services1','vente1','vente de motos','72 T RUE BLABLA','75018','paris','france','DATETIME',NULL),
('services2','vente2','vente de motos','72 T RUE BLABLA','75018','paris','france','DATETIME',NULL),
('services3','vente3','vente de motos','72 T RUE BLABLA','75018','paris','france','DATETIME',NULL),
('services4','vente4','vente de motos','72 T RUE BLABLA','75018','paris','france','DATETIME',NULL),
('services5','vente5','vente de motos','72 T RUE BLABLA','75018','paris','france','DATETIME',NULL),
('services6','vente6','vente de motos','72 T RUE BLABLA','75018','paris','france','DATETIME',NULL),
('services7','vente7','vente de motos','72 T RUE BLABLA','75018','paris','france','DATETIME',NULL),
('services8','vente8','vente de motos','72 T RUE BLABLA','75018','paris','france','DATETIME',NULL),
('services9','vente9','vente de motos','72 T RUE BLABLA','75018','paris','france','DATETIME',NULL),
('services10','vente10','vente de motos','72 T RUE BLABLA','75018','paris','france','DATETIME',NULL),
('services11','vente11','vente de motos','72 T RUE BLABLA','75018','paris','france','DATETIME',NULL),
('services12','vente12','vente de motos','72 T RUE BLABLA','75018','paris','france','DATETIME',NULL),
('services13','vente13','vente de motos','72 T RUE BLABLA','75018','paris','france','DATETIME',NULL),
('services14','vente14','vente de motos','72 T RUE BLABLA','75018','paris','france','DATETIME',NULL),
('services15','vente15','vente de motos','72 T RUE BLABLA','75018','paris','france','DATETIME',NULL),
('services16','vente16','vente de motos','72 T RUE BLABLA','75018','paris','france','DATETIME',NULL),
('services17','vente17','vente de motos','72 T RUE BLABLA','75018','paris','france','DATETIME',NULL),
('services18','vente18','vente de motos','72 T RUE BLABLA','75018','paris','france','DATETIME',NULL),
('services19','vente19','vente de motos','72 T RUE BLABLA','75018','paris','france','DATETIME',NULL),
('services20','vente20','vente de motos','72 T RUE BLABLA','75018','paris','france','DATETIME',NULL);