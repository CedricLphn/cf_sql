DROP TABLE IF EXISTS users

CREATE TABLE users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    mail VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(80) NOT NULL,
    pseudo VARCHAR(20) NOT NULL UNIQUE,
    address VARCHAR(255) NULL,
    cp INT(6) UNSIGNED NULL,
    city VARCHAR(60) NULL,
    country VARCHAR(50) NULL,
    phone_numbers VARCHAR(15) NULL,
    house_numbers VARCHAR(15) NULL,
    signin_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
) CHARACTER SET 'utf8'
ENGINE = INNODB;

INSERT INTO users (mail, password, pseudo) VALUES
('bobleponge@ananas.com', 'azertyuiop', 'Bob'),
('fbdsjhf@jfhds.com', 'azertyiopoo', 'Patrick'),
('jfhjsd@hfdjfs.fr', 'azertyuiop', 'Michel'),
('fdsjf@fndj.com', 'azertyuiop', 'Jean'),
('fdsfjsk@jriezf.fr', 'azertyuiop', 'azerty'),
('lsjrse@jfhdj.ca', 'azertyuiop', 'Albert'),
('jrhs@knfjksf.com', 'azertyuiop', 'Alex'),
('thjfns@oudfis.com', 'azertyuiop', 'Alexandre'),
('bfjkef@oed.fr', 'zertyuiop', 'Zire'),
('isejriz@iezd.com', 'azertyuiop', 'Paul'),
('cnjk@kjfhsk.com', 'azertyuiop', 'Haha'),
('ldskd@ndjsknf.com', 'azertyuiop', 'Hihi'),
('kjfdskfj@oksdo.com', 'azertyuiop', 'Hoho'),
('jdsf@oidkd.fr', 'azertyuiop', 'Hehe'),
('jdqk@lposd.com', 'aertyuiop', 'Huhu'),
('lskd&@dnf.fr', 'azertyuiop', 'Hyhy'),
('kejrz@ksdo.fr', 'azertyuiop', 'Poppy'),
('dkjnds@kljdf.fr', 'azertyuiop', 'Riven'),
('kfnskf@dksdnjd.com', 'azertyuiop', 'Trynda'),
('nfkfe@ldkfs.com', 'azertyuiop', 'Yasuo'),
('kdjfsk@dddd.com', 'azyuiop', 'Wukong'),
('kdjfks@lkdsl.com', 'azertyuiop', 'Janna'),
('jhfzk@lldsp.com', 'aertyuiop', 'Bloup'),
('NDFJSK@lkdsk.fr', 'azertyuiop', 'Yi'),
('kfsjfk@dddd.fr','azertyuiop', 'Urgot');
  
/* création d'un premier utilisateur */
INSERT INTO users(mail, password, pseudo) VALUES ('boblepikkonge@ananas.com', 'azertyuiop', 'Boblegris'); 

UPDATE users
SET address='4 rue NULE', cp= '75010', city= 'PARIS', country= 'FRANCE', phone_numbers='06 32 45 67 90', house_numbers='01 12 13 14 15'
WHERE id= 26;
