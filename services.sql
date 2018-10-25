/* Drop table if exist */ 
DROP TABLE IF EXISTS services; 

/* création de la table services */


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
    PRIMARY KEY(id),
    CONSTRAINT fk_user_id FOREIGN KEY (id_user) REFERENCES users(id) ON DELETE CASCADE
)
CHARACTER SET 'utf8'
ENGINE=INNODB;

/* Ajout de données en spécifiant les colonnes */
INSERT INTO services (id_user,name,description,address,cp,city,country,date_hour)
VALUES ('1','vente1','vente de motos','72 T RUE BLABLA','75018','paris','france','2016-01-08'),
('2','vente2','vente de motos','72 T RUE BLABLA','75018','paris','france','2018-01-08'),
('3','vente3','vente de motos','72 T RUE BLABLA','75018','paris','france','2015-01-08'),
('4','vente4','vente de motos','72 T RUE BLABLA','75018','paris','france','2018-07-08'),
('5','vente5','vente de motos','72 T RUE BLABLA','75018','paris','france','2010-01-08'),
('6','vente6','vente de motos','72 T RUE BLABLA','75018','paris','france','2010-01-08'),
('7','vente7','vente de motos','72 T RUE BLABLA','75018','paris','france','2018-01-08'),
('8','vente8','vente de motos','72 T RUE BLABLA','75018','paris','france','2014-01-08'),
('9','vente9','vente de motos','72 T RUE BLABLA','75018','paris','france','2011-01-08'),
('10','vente10','vente de motos','72 T RUE BLABLA','75018','paris','france','2010-01-08'),
('11','vente11','vente de motos','72 T RUE BLABLA','75018','paris','france','2018-08-08'),
('12','vente12','vente de motos','72 T RUE BLABLA','75018','paris','france','2018-01-08'),
('13','vente13','vente de motos','72 T RUE BLABLA','75018','paris','france','2010-01-08'),
('14','vente14','vente de motos','72 T RUE BLABLA','75018','paris','france','1729-01-06'),
('15','vente15','vente de motos','72 T RUE BLABLA','75018','paris','france','2018-01-08'),
('16','vente16','vente de motos','72 T RUE BLABLA','75018','paris','france','2011-01-08'),
('17','vente17','vente de motos','72 T RUE BLABLA','75018','paris','france','2018-01-08'),
('18','vente18','vente de motos','72 T RUE BLABLA','75018','paris','france','2011-01-08'),
('19','vente19','vente de motos','72 T RUE BLABLA','75018','paris','france','2018-01-08'),
('20','vente10','vente de motos','72 T RUE BLABLA','75018','paris','france',CURRENT_TIMESTAMP),
('21','vente21','vente de motos','72 T RUE BLABLA','75018','paris','france',CURRENT_TIMESTAMP),
('22','vente22','vente de motos','72 T RUE BLABLA','75018','paris','france',CURRENT_TIMESTAMP),
('23','vente23','vente de motos','72 T RUE BLABLA','75018','paris','france','2018-01-08'),
('24','vente24','vente de motos','72 T RUE BLABLA','75018','paris','france','2011-01-08'),
('25','vente25','vente de motos','72 T RUE BLABLA','75018','paris','france','2018-02-08');

/* JE VEUX créer la requête pour créer un service et le proposer à la communauté */

INSERT INTO services(id_user, name, description, address, cp, city, country, more_info) VALUES(
    '3', 'Vente de beuh', 'je vends de la beuh 10E/le gramme', 'Police national', '75010', 'Paris', 'France', 'Voir avec mon dealer'
);

/* The hardest story 10: add index  sur les colonnes name/date_hour*/

ALTER TABLE services
ADD INDEX index_name(name);

SELECT S.*
FROM services AS S
WHERE S.id NOT IN (SELECT id_service FROM services_users)
ORDER BY date_hour, city DESC, name ASC

/* story 11 TU PEUX DETAILLER LES STORYS STEUPLAIT */

SELECT S.*, U.pseudo, U.mail,  U.phone_numbers
FROM services AS S
INNER JOIN users as U ON S.id_user = U.id
WHERE S.id IN (SELECT id_service FROM services_users) AND S.id = 26
ORDER BY date_hour, city DESC, name ASC

/* Story 12 */

DELETE from services
WHERE id = 19;

/* Story 16 */

SELECT SU.*, users.pseudo, S.name, S.description, S.address, S.city, S.cp, S.date_hour, S.more_info,
    (SELECT COUNT(SU.id)
    FROM services_users AS SU
    INNER JOIN users
    ON SU.id_user = users.id WHERE users.id=10)
AS TOTAL
FROM services_users AS SU
INNER JOIN users 
ON users.id = SU.id_user
LEFT JOIN services AS S
ON SU.id_service = S.id
WHERE SU.id_user = 10
ORDER BY S.date_hour, S.city DESC, S.name ASC

/* Story 17 */

SELECT S.*, 
    (SELECT COUNT(SU.id)
    FROM services_users AS SU
    INNER JOIN users
    ON SU.id_user = users.id WHERE users.id=10)
AS TOTAL
FROM services_users AS SU
INNER JOIN users 
ON users.id = SU.id_user
LEFT JOIN services AS S
ON S.id_user = users.id
WHERE users.id = 10 AND
(SELECT date_hour
FROM services
WHERE id_user = 10
ORDER BY date_hour ASC)
ORDER BY S.date_hour, S.city DESC, S.name ASC
LIMIT 1

/* Story 18 : The Hell of SQL */


--- IDEE 1

(SELECT *, MONTH(SU.sign_date_hour) AS mois,  u.pseudo, COUNT(SU.id) AS participation
FROM services_users AS SU 
LEFT JOIN users as U
ON SU.id_user = U.id
WHERE SU.id_user=10
GROUP BY MONTH(sign_date_hour))
UNION
(SELECT m.month AS mois, 
(SELECT pseudo FROM users WHERE id=10),
(SELECT COUNT(case when SU.id is null then 1 end) AS participation
FROM services_users AS SU   
WHERE SU.id_user=10
GROUP BY MONTH(SU.sign_date_hour)
LIMIT 1
) AS participation
FROM (
SELECT 01 AS
MONTH
UNION SELECT 02 AS
MONTH
UNION SELECT 03 AS
MONTH
UNION SELECT 04 AS
MONTH
UNION SELECT 05 AS
MONTH
UNION SELECT 06 AS
MONTH
UNION SELECT 07 AS
MONTH
UNION SELECT 08 AS
MONTH
UNION SELECT 09 AS
MONTH
UNION SELECT 10 AS
MONTH
UNION SELECT 11 AS
MONTH
UNION SELECT 12 AS
MONTH
) as m
GROUP BY m.month
HAVING SUM(mois) > 1 )
ORDER BY mois

--HAVING (((SUM(1)))> 2))

--- IDEE 2

(SELECT m.month, 
(SELECT pseudo FROM users WHERE id=10),
(SELECT COUNT(SU.id) AS participation
FROM services_users AS SU   
WHERE SU.id_user=10
GROUP BY MONTH(sign_date_hour)
LIMIT 1) AS participation
FROM (
SELECT 01 AS
MONTH
UNION SELECT 02 AS
MONTH
UNION SELECT 03 AS
MONTH
UNION SELECT 04 AS
MONTH
UNION SELECT 05 AS
MONTH
UNION SELECT 06 AS
MONTH
UNION SELECT 07 AS
MONTH
UNION SELECT 08 AS
MONTH
UNION SELECT 09 AS
MONTH
UNION SELECT 10 AS
MONTH
UNION SELECT 11 AS
MONTH
UNION SELECT 12 AS
MONTH
) AS m
GROUP BY m.month)

--- IDEE 3

SELECT m.month,
(SELECT pseudo FROM users WHERE id=10) pseudo,
(SELECT COUNT(SU.id)
FROM services_users AS SU   
WHERE SU.id_user=10
GROUP BY MONTH(sign_date_hour)) participation
FROM (
SELECT 01 AS
MONTH
UNION SELECT 02 AS
MONTH
UNION SELECT 03 AS
MONTH
UNION SELECT 04 AS
MONTH
UNION SELECT 05 AS
MONTH
UNION SELECT 06 AS
MONTH
UNION SELECT 07 AS
MONTH
UNION SELECT 08 AS
MONTH
UNION SELECT 09 AS
MONTH
UNION SELECT 10 AS
MONTH
UNION SELECT 11 AS
MONTH
UNION SELECT 12 AS
MONTH
) AS m
GROUP BY m.month
--GROUP BY MONTH(sign_date_hour)