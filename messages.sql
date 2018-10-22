CREATE TABLE messages (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    id_sender INT UNSIGNED NOT NULL,
    id_receiver INT UNSIGNED NOT NULL,
    content TEXT NOT NULL ,
    send_hour_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(id)
)
ENGINE = INNODB;

