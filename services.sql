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
INSERT INTO services (id_user,name,description,address,cp,city,country,more_info)
VALUES ('1','vente1','vente de motos','72 T RUE BLABLA','75018','paris','france',NULL),
('2','vente2','vente de motos','72 T RUE BLABLA','75018','paris','france',NULL),
('3','vente3','vente de motos','72 T RUE BLABLA','75018','paris','france',NULL),
('4','vente4','vente de motos','72 T RUE BLABLA','75018','paris','france',NULL),
('5','vente5','vente de motos','72 T RUE BLABLA','75018','paris','france',NULL),
('6','vente6','vente de motos','72 T RUE BLABLA','75018','paris','france',NULL),
('7','vente7','vente de motos','72 T RUE BLABLA','75018','paris','france',NULL),
('8','vente8','vente de motos','72 T RUE BLABLA','75018','paris','france',NULL),
('9','vente9','vente de motos','72 T RUE BLABLA','75018','paris','france',NULL),
('10','vente10','vente de motos','72 T RUE BLABLA','75018','paris','france',NULL),
('11','vente11','vente de motos','72 T RUE BLABLA','75018','paris','france',NULL),
('12','vente12','vente de motos','72 T RUE BLABLA','75018','paris','france',NULL),
('13','vente13','vente de motos','72 T RUE BLABLA','75018','paris','france',NULL),
('14','vente14','vente de motos','72 T RUE BLABLA','75018','paris','france',NULL),
('15','vente15','vente de motos','72 T RUE BLABLA','75018','paris','france',NULL),
('16','vente16','vente de motos','72 T RUE BLABLA','75018','paris','france',NULL),
('17','vente17','vente de motos','72 T RUE BLABLA','75018','paris','france',NULL),
('18','vente18','vente de motos','72 T RUE BLABLA','75018','paris','france',NULL),
('19','vente19','vente de motos','72 T RUE BLABLA','75018','paris','france',NULL),
('20','vente10','vente de motos','72 T RUE BLABLA','75018','paris','france',NULL),
('21','vente21','vente de motos','72 T RUE BLABLA','75018','paris','france',NULL),
('22','vente22','vente de motos','72 T RUE BLABLA','75018','paris','france',NULL),
('23','vente23','vente de motos','72 T RUE BLABLA','75018','paris','france',NULL),
('24','vente24','vente de motos','72 T RUE BLABLA','75018','paris','france',NULL),
('25','vente25','vente de motos','72 T RUE BLABLA','75018','paris','france',NULL);

