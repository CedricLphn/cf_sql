DROP TABLE IF EXISTS messages;

CREATE TABLE messages (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    id_sender INT UNSIGNED NOT NULL,
    id_receiver INT UNSIGNED NOT NULL,
    content TEXT NOT NULL ,
    send_hour_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(id),
    CONSTRAINT fk_id_sender FOREIGN KEY (id_sender) REFERENCES users(id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_id_receiver FOREIGN KEY (id_receiver) REFERENCES users(id) ON DELETE RESTRICT
)
ENGINE = INNODB;

ALTER TABLE messages
ADD FULLTEXT index_content (content);

/* Peuplage de la table message (story 2) */

INSERT INTO messages(id_sender, id_receiver, content, send_hour_date) VALUES 
('19','22','Aut repudiandae molestiae maxime. Dolorem aut nihil ut incidunt. Temporibus ullam exercitationem illum.','1986-07-15 06:58:07'),
('10','12','Facere consectetur in assumenda saepe vel eos consequatur. Culpa asperiores explicabo qui non quia. Fugit tempora molestias nihil.','2014-03-16 15:08:32'),
('4','24','Animi adipisci officiis alias ducimus. Doloremque vel dolores nam.','1978-06-17 06:41:23'),
('2','3','Iste aut libero quod sit necessitatibus dicta fugit qui. A vero esse nulla sunt beatae. Recusandae perspiciatis laboriosam aut ut. Voluptate laborum dolore doloremque atque.','1994-01-12 21:47:20'),
('9','4','Molestiae est qui voluptas dolores in earum. Sit error ipsa odio veniam sequi quia eveniet consequatur. Officia tenetur quia culpa temporibus. Adipisci mollitia provident odit asperiores quibusdam.','1990-12-19 12:59:12'),
('1','1','Possimus necessitatibus ut aliquid reiciendis ad. Qui in fuga id.\nEst laboriosam deserunt et in quas. Eum aut non quidem. Illo corporis placeat enim voluptatibus nisi omnis in consequatur.','2002-08-30 15:35:50'),
('1','5','Magni aut quaerat qui velit sunt ex ipsam. Ea et voluptatibus odit. Laudantium occaecati et doloremque repellendus ut adipisci minus. Quas aperiam eum natus qui velit at.','1974-01-05 20:43:00'),
('15','3','Cum eos et reprehenderit aspernatur rerum earum. Officiis perspiciatis a nam assumenda. Ex dolore occaecati odio delectus ad dolore. Dolorem omnis qui eius consequuntur.','1971-09-11 22:51:48'),
('20','12','Quia et autem non quo tempora. Beatae id ducimus nulla ad debitis nam eum. In voluptas pariatur hic qui vero.','1999-07-06 14:08:52'),
('14','18','Neque non dolor eos suscipit velit maxime voluptatibus. Molestiae distinctio beatae placeat est ipsam. Ex sed necessitatibus rerum aperiam omnis nesciunt.','2018-04-13 05:58:46'),
('12','18','Sint dolores rerum doloribus voluptate non illo rem. Accusamus velit odit ut architecto quis. Voluptatem reiciendis unde placeat quasi ut quidem sapiente. Voluptatem quis dolores eos.','1970-06-10 16:21:30'),
('6','3','Molestiae autem quia illo aliquam repudiandae aperiam quis. Aliquid qui aut et iusto rerum facilis. Voluptatem aut voluptates iusto quis expedita impedit.','1993-01-18 05:29:09'),
('25','23','Cupiditate neque sequi ipsum enim. Enim sint ducimus unde magni ut deserunt vero.\nMaxime quas molestias et et. Veritatis eius et eaque voluptatem omnis consequatur. Aliquam magni ut qui.','1998-01-06 21:20:50'),
('19','9','Facilis laboriosam eum aliquam non maxime vero. Nihil laudantium ex consequatur asperiores nisi eum. Ut non et doloribus dignissimos et itaque et. Nihil placeat quae nemo ipsam non.','1971-08-19 19:05:11'),
('3','23','Vitae facilis nihil libero quidem in ea sed. Officia provident modi dolores maiores beatae et est. Unde architecto ipsa sint veniam qui. Quis excepturi sed modi iure.','2009-01-16 22:05:10'),
('5','14','Ut quod hic dolor fuga est est. Rerum velit eum voluptatem harum harum quia voluptas ab. Facilis et deleniti quibusdam nemo modi quia.','1982-10-08 01:54:11'),
('17','24','Aperiam aperiam nostrum dignissimos fugit inventore hic quia quia. Eum voluptate qui sed et accusantium fuga et laborum. Occaecati sapiente ab dicta quia qui quia. Quasi quia non quidem et.','1981-07-04 22:51:24'),
('22','17','Iure non eaque dolorem sint officiis. Quos aspernatur incidunt enim nam nulla recusandae qui. Et et fugit suscipit dolorum.','2009-08-14 00:22:44'),
('7','8','Qui eligendi ut dolores laboriosam voluptatem. Esse consequatur nisi molestias quo tenetur veritatis. At a blanditiis esse.','1987-10-04 11:16:45'),
('6','17','Laudantium nemo id occaecati quaerat ullam provident ex ipsum. Quia maiores repudiandae voluptatem voluptatem impedit. Totam maiores quae modi aliquid.','1979-02-19 00:42:34'),
('16','15','Ad dicta eligendi ut quo et a officiis. Recusandae optio nihil dolores dolorem deleniti aliquam. Ut consequuntur corrupti optio dolores delectus distinctio sed est. Error facere laboriosam modi.','1998-01-03 12:55:05'),
('5','10','Qui eveniet eos dolore excepturi possimus. Et enim placeat velit voluptates quidem earum consequuntur. Non est officiis omnis. Voluptatem itaque tenetur cupiditate optio ipsum et fugiat eaque.','1984-10-05 11:15:25'),
('8','11','Vel quis fugiat occaecati illo sed. Nulla delectus quos recusandae a ea excepturi enim. Numquam dolore delectus est eveniet doloremque est.','2008-03-03 18:18:58'),
('22','13','Et nesciunt neque ut laudantium assumenda dolor dolores. Magni nobis explicabo cum molestiae aut nisi. Iste quasi voluptas quisquam aliquam impedit. Et et quae accusantium optio enim.','2010-05-31 13:56:32'),
('7','12','Libero ullam laboriosam aut blanditiis. Eligendi dolores aspernatur mollitia vel. Et eum distinctio iusto perferendis nobis. Maiores explicabo distinctio quia rem libero dolor odit.','2009-01-28 02:00:37'),
('19','14','Id ipsa saepe qui unde corrupti magni. Ut harum quis quo accusamus ducimus quaerat.','1986-01-05 20:12:25'),
('16','8','Vitae magnam similique veritatis. Quas autem ipsum pariatur dolorem voluptates nam sint. Sequi ad aut odio ea ab vel provident saepe.','1987-07-05 15:09:38'),
('19','8','Perspiciatis a voluptate in voluptatem optio omnis. Perspiciatis voluptatibus illum amet id. Id enim eaque quis a voluptatem iure. Facere pariatur rem distinctio sed perspiciatis voluptas.','1971-07-04 08:46:58'),
('24','25','Laborum veniam eos velit voluptatem assumenda dolorum numquam. Ea et occaecati id. Laboriosam quae quo vel nihil ut aut iusto.','1981-08-13 23:00:36'),
('18','5','Aliquam fuga ad aut. Et dolor explicabo deserunt unde aliquam quidem debitis magnam. Voluptate aut nisi distinctio aspernatur. Sit corporis sit molestias iure ex.','1990-12-02 00:12:05'); 

/* Story 7 */

INSERT INTO messages(id_sender, id_receiver, content) VALUES
(1, 22, "Comme dirais Lorie: C'est le weekend");

/* Story 8 */

SELECT * FROM messages WHERE id_sender = 19;

/* Story 9 */

SELECT * FROM messages WHERE id_sender = 19 AND id_receiver = 22;

