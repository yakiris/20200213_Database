SELECT * FROM messages LIMIT 10;

UPDATE messages SET
	read_at = created_at + INTERVAL (FLOOR(1 + RAND() * 100)) DAY,
	edited_at = read_at + INTERVAL (FLOOR(1 + RAND() * 100)) DAY
;

select * from profiles limit 10;

desc profiles;

CREATE TEMPORARY TABLE status_mes(status_mes VARCHAR(255));

INSERT INTO status_mes VALUES ('Sapiente iure doloremque accusamus qui deserunt recusandae quia. Perferendis qui ut rerum placeat inventore. Dolorem nihil occaecati nesciunt totam assumenda suscipit non blanditiis. Qui ut et rem ea deserunt praesentium iusto.'), 
('Officiis facere est pariatur a. Asperiores eum nostrum molestias molestiae soluta. Reprehenderit incidunt dolores explicabo ea animi aut voluptas qui. Dolorum tempore sed et id quam necessitatibus aspernatur.'),
('Cupiditate pariatur assumenda nam magnam quam voluptates. Animi officiis maxime non ut. Autem accusamus et rerum earum.'),
('Et blanditiis sed neque dolor doloribus. Quasi beatae dignissimos quasi ad quia error. Earum occaecati autem ipsam quis dignissimos nisi reprehenderit. Nihil excepturi et sint quas enim qui vel voluptatum.'),
('Ea illo nam eos quae eos sed. Omnis rem et et minima impedit aut. Nostrum dignissimos quasi debitis inventore. Eos dolor distinctio nulla amet qui.'),
('Et recusandae sit est veritatis aut expedita error. Quidem beatae nobis dolorem velit velit. Optio nam alias est ut. Qui officiis et quas rerum.'),
('Voluptate autem vitae voluptatibus architecto odio placeat accusamus. Officia vitae sed accusantium debitis omnis. Sit unde officiis ea dicta libero similique.'),
('Qui sunt et optio ut sint quidem eius. Dicta ab perspiciatis eum veniam et voluptatum. Explicabo modi ad repellendus placeat cupiditate commodi laborum nesciunt.'),
('Praesentium quidem impedit iure recusandae adipisci minus. Consequatur earum aut nemo animi aut. Minima cupiditate fuga molestiae dolorem beatae repellendus.'),
('Expedita aut aut qui mollitia excepturi omnis. Placeat sed commodi nemo ullam fugit. Est corporis quidem delectus libero dolores quia. Commodi alias sit eveniet.'),
('Aspernatur illo ad omnis rerum culpa assumenda fugit. Culpa rerum eum aperiam fugiat neque minus voluptas. Est sequi sit facilis qui nihil ut dolore. Praesentium quis nobis dicta cupiditate.'),
('Iste sint hic earum. Quasi est qui consectetur voluptas. Non nisi porro esse provident magnam ea in.'),
('Eveniet omnis voluptatum provident sit voluptas et. Facere facere et cupiditate pariatur distinctio asperiores. Ipsam facilis molestias rerum qui. Reiciendis dolorum est eaque qui voluptatibus. Adipisci voluptatem perferendis voluptatem et.'),
('Iusto dignissimos earum beatae in corrupti quia deserunt. Repellat aut qui et consectetur repellendus et.'),
('Optio delectus modi neque quos ad illo. Error laboriosam voluptas ipsam ipsam. Quod eos nemo reprehenderit ratione quasi. Maiores ipsum ut omnis soluta pariatur reiciendis quasi corrupti. Eveniet cum et qui debitis ut sit et.'),
('Dolorum deleniti sunt sunt et. Omnis consequatur deleniti in necessitatibus soluta et. Ipsum quo necessitatibus aut.'),
('Aliquam dolores animi dolores odio temporibus voluptatum. Fugit iure sed nobis. Eos dolores quidem qui quibusdam sed. Exercitationem incidunt nulla voluptatibus.'),
('Et omnis eos velit quo temporibus pariatur. Minima enim quis iusto recusandae. Consequatur error et culpa sit. Animi ut earum nihil quia accusamus.'),
('Sit facere a harum numquam vel qui voluptas. Inventore sunt rerum aut facilis omnis. Officia architecto fugit tenetur et in.'),
('Animi eum esse reprehenderit voluptate consectetur similique alias. Molestiae sit qui nihil eum. Velit et quis veritatis itaque fugiat.'),
('Autem libero iste minima itaque possimus. Quisquam expedita voluptatem omnis laboriosam ad eveniet. Expedita consequatur officia earum explicabo cupiditate.'),
('Beatae est qui saepe et et dolorum dolorem. Voluptatem et blanditiis odit iste. Autem et fugiat vero culpa ut fugit accusamus magnam. Illum ut consectetur quia et dolorem tempore reprehenderit. Excepturi et officia iure qui aliquam nobis.'),
('Ut cum consequuntur molestiae dolorem voluptatem nihil id. Quasi eaque temporibus ut facilis quia inventore suscipit. Cupiditate itaque alias enim unde sunt.'),
('Possimus molestiae voluptatum sunt amet. Est dicta error ut enim harum. Eos aliquam odio alias atque.'),
('Id et suscipit sed harum ullam maiores qui rerum. Enim corporis voluptas architecto qui voluptates sit. Magnam eligendi tempora culpa laboriosam. Laudantium voluptatum voluptatem facilis esse ratione consequatur.'),
('Rerum at iure dolor facere. Et rem eligendi minima rerum et excepturi non. Voluptate porro illum est vitae et sunt fugit. Nisi fugit qui beatae nihil magnam et laboriosam.'),
('Dolore similique exercitationem velit. Quia qui delectus unde sint. Omnis ut placeat dolorum iste iure fugit. Aut quo voluptatibus accusantium voluptatem dignissimos.'),
('Amet consequatur quia et est. Veritatis aut ut et voluptates. Doloremque consequatur ipsum eos ea et magnam. Magnam quasi eum eligendi dolorem est odio.'),
('Dolor est quia aut alias laboriosam voluptates. Laborum sed rerum natus voluptas maiores. Recusandae omnis nostrum iusto. Expedita consequatur non exercitationem aliquid exercitationem velit.'),
('Molestiae dolor quidem possimus consequatur. Commodi tempora fuga porro. Eos ducimus ab aliquid corrupti hic.'),
('Aliquam excepturi explicabo dolore dolor et. Numquam dicta quia officia illo. Ut officia aut quibusdam illum eum.'),
('Explicabo dolorem velit non possimus non voluptatibus minima. Ut ut aut sed sequi facilis quis ut. Consequatur quia distinctio voluptas.'),
('Omnis sunt nemo adipisci aut voluptas ut modi. Ut magni sit omnis debitis in quia numquam est. Consectetur aliquid totam ratione qui rerum. Eligendi neque iusto vitae.'),
('Perferendis inventore harum iste enim quia voluptates dolor. Placeat non quos voluptas. Provident laudantium officiis dolorum dolorum odio.'),
('Perferendis sed vel voluptatem qui consequatur suscipit. Similique numquam at rerum aliquam perspiciatis alias temporibus. Quaerat aliquid quis sit non fugiat soluta. Est consequatur quidem id sunt doloribus voluptatem cupiditate.'),
('Enim ut similique eveniet facilis natus. Voluptas non impedit reiciendis voluptas sapiente.'),
('Nulla iure illum quos aut id consequatur debitis. Consequatur vel saepe natus quisquam magnam deserunt eligendi voluptates. Suscipit enim amet cumque sequi.'),
('Error doloremque ad provident dolore ullam. Iure vero sunt ea eligendi ut nihil ut. Iusto eum assumenda eum voluptates saepe dolorem sed. Velit sunt voluptates provident.'),
('Ut eius hic nihil dicta rem. Ut soluta sunt reiciendis. Quia ad repudiandae cupiditate sed repellendus et molestiae. Optio libero ut sed est minus nisi.'),
('Aut ipsum qui nam omnis sunt. Porro adipisci incidunt eius quidem culpa sunt minus fuga. Cum dolor eaque nostrum. Nihil quo voluptatum enim.'),
('Aliquam adipisci nostrum sed. Omnis possimus perferendis omnis mollitia sed. Voluptatem inventore eveniet est modi dicta ipsam quia quo.'),
('Reprehenderit cum sed est cupiditate aut. Modi ipsum esse voluptatem qui. Distinctio cupiditate rerum qui aut atque.'),
('Laudantium sit occaecati sit reiciendis hic. Consequatur ut enim possimus blanditiis ratione adipisci. Commodi eos nihil omnis omnis.'),
('Explicabo a nisi soluta dolorem. Aspernatur explicabo aut aut aspernatur sapiente incidunt eos sunt. Temporibus assumenda deleniti sapiente architecto ab libero eveniet.'),
('Doloribus magnam qui aspernatur et iure qui et. Omnis qui nobis voluptas. Ullam ab perferendis quasi iste.'),
('Aut atque placeat quod dolorem quod unde magni earum. Labore tempora officiis quia cupiditate magnam.'),
('Deleniti non et commodi autem et architecto eum. Qui ullam aspernatur et tempora dolorem. Ipsa enim id error et dignissimos.'),
('Quisquam velit asperiores veniam facere sit. Adipisci est est sequi explicabo repellat. Facere at quis maxime mollitia. Est sunt dolores provident laudantium iure nisi. Sit et quia quam excepturi ut eos sit vel.'),
('Maxime mollitia necessitatibus aperiam aut. Illo earum aperiam perspiciatis dolorum totam eius impedit. Dolores ipsum repellat sed amet dicta dolorem. Illum cupiditate et dicta voluptates impedit voluptatem iure. Rerum odit nobis exercitationem aut ipsa e'),
('Officia dicta voluptatum et quia qui et voluptas. Et est ut nam est aut et autem. Accusantium qui aspernatur eum voluptatibus et et voluptas.'),
('Hic reiciendis qui neque assumenda quam. Aut inventore nam id id qui nostrum quis neque. Earum pariatur ipsum quia vel facilis consequatur eum.'),
('Sunt et praesentium eum quasi ex dicta. Dolorem et quasi aut accusamus aliquam laboriosam. Magni dolorem fugit dolorem doloribus.'),
('Sint velit ipsum dolor hic. Distinctio sed voluptatem rem cum id et. Praesentium mollitia eum totam.'),
('Rerum quo fugit suscipit fuga labore ut et et. Voluptas est et et molestias tempora. Non laborum et vel.'),
('Cumque pariatur explicabo harum modi suscipit omnis eos minima. Alias qui possimus aut voluptate. Nisi excepturi sint sapiente perferendis exercitationem id quia sit.'),
('Ducimus repellat magnam magnam et autem corrupti quia. Blanditiis et dicta sed. Quae sit ad autem dolor et dignissimos eos omnis. Facere qui accusantium dicta aspernatur perferendis quam est. Numquam voluptatem nulla repudiandae quas nemo enim.'),
('Consequatur omnis neque quae sit consectetur enim. Et illum architecto fuga labore odio quasi quis. Est et praesentium voluptatum perspiciatis commodi ad.'),
('Deleniti quia qui enim velit minus est ex. Ullam qui nihil architecto earum ipsam temporibus. Dignissimos quibusdam repellat nam aut modi in dolorum.'),
('Perspiciatis molestiae in quis debitis. Aut sequi corporis enim provident cum quae nam. Doloremque autem sint et consequuntur sit. Repellat similique nisi eligendi voluptatum cumque et.'),
('Eum ratione sed et unde nostrum. Ab voluptates sit rem praesentium pariatur officiis tenetur. Eum provident quod molestiae accusamus laborum possimus omnis eum.'),
('Quam saepe necessitatibus reprehenderit ad eaque in quo ipsam. Dolor maiores rerum sequi laboriosam quas veniam quas dolores. A quaerat consectetur dolores sunt autem et ipsam nemo. Tempore libero vero magni modi blanditiis fuga sint reprehenderit.'),
('Aliquid ea at magnam neque et. Alias dolorum rerum repellat beatae voluptate ea. Voluptatem aut quia animi. Eos repellendus commodi ipsa nisi inventore aspernatur.'),
('Deserunt libero ut praesentium aut. Libero nostrum ut quia quisquam. Dolore nulla saepe error nihil aspernatur porro et.'),
('Consectetur dolorem ducimus deleniti consequatur repudiandae. Eaque voluptatem repellat ut nihil. Quos qui fugit nulla rerum molestiae voluptatem.'),
('Id doloribus eveniet debitis animi. Voluptatum qui vel quia modi praesentium. In nisi quia aut et assumenda. Sunt ea iusto nulla repudiandae.'),
('Voluptas ratione nisi ipsam est cumque saepe magni. Autem voluptas non id qui culpa error. Et repellendus dolores atque repellendus debitis sit.'),
('Possimus aut eligendi voluptatem esse tempora non. Est quia reiciendis quibusdam occaecati. Nihil dignissimos sunt recusandae. In corporis reiciendis et et.'),
('Est rerum est officiis et eaque. Sunt laboriosam itaque odio possimus voluptatem nostrum nihil. Enim vel nostrum ex voluptatum accusamus dolorum praesentium dolor. Laborum incidunt veritatis autem omnis.'),
('Maxime nobis minus culpa assumenda. Omnis a iure atque aliquam asperiores. Modi eum voluptates sint ut enim sunt dolorum et.'),
('Aliquam illo odit eius sit qui veniam. Sint similique quia et rem. Dolor vero magni et adipisci totam qui. Autem asperiores consequatur ea.'),
('Occaecati quia nisi aliquid aut voluptas. Omnis sed voluptatibus rem repudiandae aut. Aliquid impedit neque molestiae soluta nulla. Non possimus perferendis odio consequatur ut odit pariatur.'),
('Occaecati aut recusandae non laudantium dolores. Consequatur voluptas excepturi qui rerum molestias ut voluptatibus. Modi consequuntur ad sunt labore aut ullam. Officiis perspiciatis neque accusamus.'),
('Assumenda eos vero cupiditate consectetur quia. Aut ipsam maiores a illo officia. Maxime ut nobis ea perspiciatis debitis quas nobis et.'),
('Magni qui hic tenetur ea eligendi autem aut voluptatem. Sunt nobis laboriosam amet sapiente voluptate enim. Aliquid debitis iusto voluptate iusto qui. Et animi blanditiis ullam iusto. Quis perspiciatis laborum eaque rerum molestiae adipisci.'),
('Voluptatem maiores optio nostrum. Alias ratione reprehenderit odit et nihil id. Repellat quam omnis quidem quos.'),
('Est ea voluptates quo. At eveniet perspiciatis quia molestiae et sunt. Sint et enim aut iusto maiores.'),
('Illo est ducimus non nemo. Ipsam iure culpa et. Dignissimos maiores voluptas dolor accusamus voluptatum. Et deserunt ratione repudiandae et eum.'),
('Voluptates ex voluptatem nihil eum non accusamus. Voluptatem vel libero ut quia veniam nobis. Ab nisi sit beatae voluptatibus quis molestias nostrum asperiores. Quaerat similique illo nemo nesciunt dolorem doloremque dolor odio.'),
('Error ut officiis accusamus sed. Est omnis provident dolorem deserunt ea nostrum. Nemo velit eaque nesciunt.'),
('Vel officiis omnis neque neque rerum. Quos et et et. Temporibus voluptatem et facilis necessitatibus.'),
('Nam pariatur itaque ducimus incidunt. Et eos saepe doloribus et recusandae. Voluptatum quidem at facere aut velit.'),
('Dolorem hic esse quis et qui. Voluptatibus asperiores exercitationem vel molestias. Quia quisquam ratione dignissimos quo autem. Sit dolor in nulla saepe est eum consequatur.'),
('Laudantium tempore autem maxime et consequuntur harum. Voluptatum saepe mollitia quia rem sit praesentium. Libero ducimus ipsa rerum quas neque neque.'),
('Dolor dignissimos aspernatur quia ad reiciendis quo nobis. Aliquid cupiditate ex expedita ipsam inventore beatae. Impedit rerum laboriosam sint dolores. Est officiis rerum nemo quod nostrum.'),
('Qui dolore minima magni sapiente. Aut et rem natus enim et. In est qui placeat provident assumenda sed. Possimus deleniti voluptatem corrupti quia labore eaque.'),
('Totam et est asperiores quisquam at. Excepturi voluptatem error excepturi veniam tempora ex.'),
('Quisquam corporis sequi qui at quisquam. Est qui iure eius. Perspiciatis beatae rerum at dolores. Nisi at ut asperiores suscipit eligendi earum eum ut.'),
('Eaque quia molestiae quaerat itaque dolor sint. Tempora et soluta aut eveniet occaecati et. Saepe dolorum vel provident et. Sit illum debitis quo voluptas iusto quos quia.'),
('Nesciunt nisi vero sapiente in minus. Ut assumenda recusandae qui ea. Atque aliquam consequatur laudantium repellat nostrum qui accusamus.'),
('Ipsum quis et consequatur ut numquam. Minus esse nobis rerum. Enim et repellat minima corporis sint.'),
('Est dolorem fugit commodi sint voluptas. Optio eos numquam quidem.'),
('Et exercitationem ut voluptatem velit. Consectetur mollitia quia velit harum animi. Veniam ducimus pariatur ab voluptatem consectetur.'),
('Accusamus et assumenda vel adipisci dolor. Eligendi autem ut dolorem quas voluptas earum est. Et beatae totam quo est.'),
('Neque officiis enim temporibus molestiae cupiditate iusto ullam. Quo odit harum unde sequi assumenda maxime rem. Dolores veritatis dolore unde in est nobis.'),
('Atque tempore consequatur itaque dolore. Et eligendi magni saepe commodi. Illum ex ex eum quas ducimus ipsa. Tenetur aut voluptates architecto itaque et fugiat. Amet culpa doloribus incidunt dolorem.'),
('Veritatis adipisci qui accusantium autem. Enim magnam omnis culpa et doloribus maxime veritatis laudantium. Atque molestiae nulla provident quam architecto voluptatum voluptatem. Est distinctio est itaque nobis aliquam neque consequatur.'),
('Animi vero enim nihil pariatur alias aliquam. Dicta eligendi facere nisi. Rerum aut itaque ipsa dignissimos.'),
('Dolores accusantium amet laudantium eveniet corporis enim placeat earum. Sint consequuntur ea modi dolores placeat nemo aliquid. Non quae ut nihil beatae qui accusantium. Qui facilis voluptas deleniti placeat.'),
('Accusantium magnam tempora suscipit ad. Aut voluptatem quisquam amet et et qui et autem. Deserunt maxime vero et quia. Sit minus ex quaerat dolores est.'),
('Odio molestiae enim vel ut est voluptates. Et accusantium nostrum ut ut est. Voluptate consequatur enim praesentium temporibus. Perspiciatis enim illum accusantium vel. Eius quia quo sed eos alias.');

UPDATE profiles SET status_message = (SELECT status_mes FROM status_mes ORDER BY RAND() LIMIT 1);

SELECT * FROM communities;

UPDATE communities SET
	info = (SELECT status_mes FROM status_mes ORDER BY RAND() LIMIT 1);

UPDATE communities SET
	motto = (SELECT SUBSTRING_INDEX(status_mes, '. ', -1) FROM status_mes ORDER BY RAND() LIMIT 1);
	
UPDATE communities SET media_id = (
	SELECT id FROM media WHERE media.media_type_id = 1 ORDER BY RAND() LIMIT 1);

SELECT * FROM post;

# создан файл с данными на filldb.info

UPDATE post SET update_at = CURRENT_TIMESTAMP WHERE update_at < create_at; 