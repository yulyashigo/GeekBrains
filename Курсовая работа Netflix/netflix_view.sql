DROP DATABASE IF EXISTS netflix; 
CREATE DATABASE IF NOT EXISTS netflix;
USE netflix;

-- Создаем таблицу "Пользователи"

DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id SERIAL PRIMARY KEY, 
    firstname VARCHAR(50), 
    lastname VARCHAR(50) COMMENT 'Фамилия',
    email VARCHAR(120) UNIQUE,
    phone BIGINT (20)
   );
 
INSERT `users` (`id`, `firstname`, `lastname`, `email`, `phone`) 
VALUES 
('1', 'Koby', 'Hills', 'deondre99@hotmail.com', '89163269702'),
('2', 'Harley', 'Rippin', 'joe11@yahoo.com', '89301475604'),
('3', 'Jeff', 'Wuckert', 'dorothy99@yahoo.com', '89663126425'),
('4', 'Earnestine', 'Block', 'nmcdermott@gmail.com', '89085033681'),
('5', 'Tierra', 'Rath', 'mklein@hotmail.com', '89776237344'),
('6', 'Jasen', 'Waelchi', 'gerry93@gmail.com', '89244268715'),
('7', 'Grant', 'Breitenberg', 'hodkiewicz.carmella@yahoo.com', '89492961103'),
('8', 'Walter', 'Barton', 'cwelch@yahoo.com', '89602090416'),
('9', 'Brandy', 'Reinger', 'conn.nia@hotmail.com', '89536766847'),
('10', 'Shirley', 'Beer', 'colton.funk@yahoo.com', '89429500068'),
('11', 'Nona', 'Upton', 'blabadie@gmail.com', '89753319466'),
('12', 'Adella', 'Smitham', 'deckow.meghan@hotmail.com', '89840383415'),
('13', 'Jackie', 'Dicki', 'coleman.wiza@gmail.com', '89136070989'),
('14', 'Willa', 'Hintz', 'makayla98@yahoo.com', '89102190514'),
('15', 'Clare', 'Dooley', 'rolando.bernhard@gmail.com', '89375434375'),
('16', 'Leilani', 'Bednar', 'mandy83@hotmail.com', '89796041814'),
('17', 'Ova', 'Hauck', 'modesto.kohler@yahoo.com', '89165254908'),
('18', 'Ceasar', 'Willms', 'lemke.golda@hotmail.com', '89006382338'),
('19', 'Ransom', 'Roberts', 'cathy.wintheiser@hotmail.com', '89119494349'),
('20', 'Kraig', 'Douglas', 'billy.howell@gmail.com', '89056080786'),
('21', 'Carlie', 'Frami', 'ocie.feeney@yahoo.com', '89350651968'),
('22', 'Ardella', 'McCullough', 'jbradtke@hotmail.com', '89391355130'),
('23', 'Thora', 'Trantow', 'marianne41@hotmail.com', '89073401367'),
('24', 'Lauren', 'Hartmann', 'torp.coty@hotmail.com', '89179476774'),
('25', 'Selmer', 'Wilkinson', 'wrunolfsdottir@hotmail.com', '89748227985'),
('26', 'Assunta', 'Prosacco', 'gonzalo82@gmail.com', '89219661163'),
('27', 'Kristy', 'Collins', 'pattie44@yahoo.com', '89740524023'),
('28', 'Josiah', 'Boyle', 'kirk36@yahoo.com', '89762744348'),
('29', 'Augustus', 'Ebert', 'elmo48@gmail.com', '89933597646'),
('30', 'Opal', 'Feeney', 'thiel.allie@hotmail.com', '89475611634'),
('31', 'Nikko', 'McKenzie', 'brutherford@gmail.com', '89110309513'),
('32', 'Jenifer', 'Altenwerth', 'kdare@hotmail.com', '89419401034'),
('33', 'Faustino', 'Yost', 'laisha.schmidt@hotmail.com', '89810813288'),
('34', 'Evan', 'Dare', 'murray.beryl@gmail.com', '89520966303'),
('35', 'Charity', 'Shields', 'stroman.alanna@yahoo.com', '89100952151'),
('36', 'Rolando', 'West', 'ihuel@yahoo.com', '89181542095'),
('37', 'Rodolfo', 'Torphy', 'hulda.prosacco@yahoo.com', '89709630749'),
('38', 'Alexandre', 'Rau', 'teresa.russel@hotmail.com', '89830764274'),
('39', 'Neil', 'Purdy', 'to\'connell@gmail.com', '89556294656'),
('40', 'Waylon', 'Friesen', 'maria91@hotmail.com', '89477525855'),
('41', 'Kieran', 'Schamberger', 'clifford.boehm@yahoo.com', '89536929402'),
('42', 'Flavio', 'Bode', 'coty.gaylord@yahoo.com', '89790544357'),
('43', 'Terrence', 'Kirlin', 'nschultz@yahoo.com', '89225967404'),
('44', 'Johnnie', 'Pagac', 'kiehn.elmira@gmail.com', '89194214153'),
('45', 'Brenden', 'Ernser', 'jwolff@hotmail.com', '89281601840'),
('46', 'Giovani', 'Kris', 'ciara42@hotmail.com', '89211372499'),
('47', 'Tara', 'Stoltenberg', 'isidro.mante@gmail.com', '89450495841'),
('48', 'Luna', 'Nikolaus', 'carter.gregory@yahoo.com', '89519068275'),
('49', 'Reanna', 'Ortiz', 'ilindgren@hotmail.com', '89852418377'),
('50', 'Esperanza', 'Armstrong', 'irutherford@yahoo.com', '89619604473');

  
-- Создаем таблицу "Профиль пользователя"

DROP TABLE IF EXISTS `profiles`;
CREATE TABLE `profiles` (
	user_id SERIAL PRIMARY KEY,
    gender CHAR(1), 
    birthday DATE,
    created_at DATETIME DEFAULT NOW(),
    FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE restrict
   );

INSERT `profiles` (`user_id`, `gender`, `birthday`, `created_at`) 
VALUES
('1', 'f', '2009-09-20', '2012-08-30 23:08:53'),
('2', 'f', '2003-02-21', '1987-07-11 03:26:41'),
('3', 'f', '1980-09-18', '2003-11-23 02:55:41'),
('4', 'f', '2008-10-13', '1992-12-24 00:04:33'),
('5', 'f', '2007-11-26', '2013-07-15 01:55:57'),
('6', 'm', '2011-08-24', '1995-10-07 11:43:29'),
('7', 'm', '1974-11-29', '2019-12-06 02:55:01'),
('8', 'f', '2015-12-06', '1983-04-03 07:50:22'),
('9', 'm', '1972-05-27', '1990-04-06 04:17:44'),
('10', 'm', '1990-04-04', '1996-09-25 21:40:23'),
('11', 'm', '2003-09-11', '1992-06-18 23:00:55'),
('12', 'f', '2018-08-03', '2021-01-09 21:01:49'),
('13', 'm', '1982-08-09', '1998-04-21 02:38:34'),
('14', 'm', '1978-03-08', '1985-02-07 18:22:40'),
('15', 'm', '2010-05-23', '2013-07-29 17:40:19'),
('16', 'f', '2018-12-31', '1986-04-14 12:13:56'),
('17', 'm', '1991-08-11', '1996-07-29 21:12:49'),
('18', 'm', '2004-07-03', '2000-01-06 03:16:58'),
('19', 'm', '1998-10-16', '2002-09-23 02:30:10'),
('20', 'm', '1979-05-01', '1980-04-15 18:55:52'),
('21', 'm', '1981-07-04', '1987-01-23 13:59:01'),
('22', 'm', '1975-12-16', '2004-09-01 12:40:46'),
('23', 'm', '1994-08-20', '1984-01-13 12:17:00'),
('24', 'f', '1994-10-25', '1994-10-24 23:06:19'),
('25', 'f', '2013-10-11', '1994-12-14 08:04:55'),
('26', 'm', '2003-01-18', '1978-02-06 19:34:14'),
('27', 'f', '2012-05-24', '2012-10-16 02:11:04'),
('28', 'm', '1973-11-28', '2005-03-25 11:29:22'),
('29', 'm', '2004-11-17', '1988-11-30 03:16:55'),
('30', 'm', '1982-03-08', '2009-09-17 10:24:50'),
('31', 'f', '1976-11-30', '1973-08-22 07:14:36'),
('32', 'f', '1994-07-30', '2016-07-18 01:38:21'),
('33', 'm', '1985-10-08', '1970-08-21 11:07:58'),
('34', 'm', '2020-05-10', '1983-06-08 13:11:25'),
('35', 'f', '1974-11-07', '2004-01-06 06:11:05'),
('36', 'f', '2016-09-15', '2008-06-01 19:43:43'),
('37', 'f', '2013-11-02', '2006-04-04 18:50:00'),
('38', 'm', '1986-07-23', '2004-04-16 22:49:43'),
('39', 'f', '2011-11-20', '2011-10-19 22:52:19'),
('40', 'm', '2015-07-05', '2008-11-20 13:45:27'),
('41', 'f', '1970-10-20', '1994-04-27 15:13:18'),
('42', 'm', '2016-02-04', '2021-04-04 20:54:50'),
('43', 'm', '1974-07-29', '1971-10-28 16:45:44'),
('44', 'f', '2006-01-29', '1981-03-30 04:43:55'),
('45', 'm', '1978-11-20', '1990-03-31 19:33:14'),
('46', 'm', '2021-03-31', '2013-01-21 19:34:22'),
('47', 'f', '1975-02-21', '2001-11-17 22:24:25'),
('48', 'm', '1988-02-09', '1975-11-02 04:54:30'),
('49', 'f', '1993-03-16', '1986-06-28 07:33:34'),
('50', 'f', '1989-07-05', '2020-03-10 22:15:22');

   
-- Создаем таблицу "Тарифный план"
  
DROP TABLE IF EXISTS tariff_plan;
CREATE TABLE tariff_plan (
	plan_id SERIAL PRIMARY KEY,
	`name` ENUM('base', 'standart', 'premium'), -- Название тарифа: базовый, стандарт, премиум
	price BIGINT UNSIGNED NULL
);

INSERT `tariff_plan` (`plan_id`, `name`, `price`) 
VALUES 
('1', 'base', '599'),
('2', 'standart', '799'),
('3', 'premium', '999');

   
-- Создаем таблицу "Условия тарифов"

DROP TABLE IF EXISTS tariff_terms;
CREATE TABLE tariff_terms (
	terms_id SERIAL PRIMARY KEY,
	screen_number INT NOT NULL, -- Количество экранов, на которых можно смотреть контент одновременно
	phone_number INT NOT NULL, -- Количество телефонов и планшетов, на которые можно загружать контент
	hd INT not null, -- Поддержка HD - качества
	ultrahd INT not null, -- Поддержка UltraHD - качества
	FOREIGN KEY (terms_id) REFERENCES tariff_plan(plan_id) ON UPDATE CASCADE ON DELETE restrict
);

INSERT `tariff_terms` (`terms_id`, `screen_number`, `phone_number`, `hd`, `ultrahd`) 
VALUES 
('1', '1', '1', '0', '0'),
('2', '2', '2', '1', '0'),
('3', '4', '4', '1', '1');

-- Создаем таблицу "Тариф пользователя"

DROP TABLE IF EXISTS users_tariff;
CREATE TABLE users_tariff (
	user_id BIGINT UNSIGNED NOT NULL,
	plan_id BIGINT UNSIGNED NOT NULL,
	PRIMARY KEY (user_id, plan_id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (plan_id) REFERENCES tariff_plan(plan_id)
);

INSERT `users_tariff` (`user_id`, `plan_id`) 
VALUES 
('1', '1'),
('2', '2'),
('3', '3'),
('4', '1'),
('5', '2'),
('6', '3'),
('7', '1'),
('8', '2'),
('9', '3'),
('10', '1'),
('11', '2'),
('12', '3'),
('13', '1'),
('14', '2'),
('15', '3'),
('16', '1'),
('17', '2'),
('18', '3'),
('19', '1'),
('20', '2'),
('21', '3'),
('22', '1'),
('23', '2'),
('24', '3'),
('25', '1'),
('26', '2'),
('27', '3'),
('28', '1'),
('29', '2'),
('30', '3'),
('31', '1'),
('32', '2'),
('33', '3'),
('34', '1'),
('35', '2'),
('36', '3'),
('37', '1'),
('38', '2'),
('39', '3'),
('40', '1'),
('41', '2'),
('42', '3'),
('43', '1'),
('44', '2'),
('45', '3'),
('46', '1'),
('47', '2'),
('48', '3'),
('49', '1'),
('50', '2');


-- Cоздаем таблицу "Жанры фильмов"

DROP TABLE IF EXISTS film_genre;
CREATE TABLE film_genre (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100)
);

INSERT `film_genre` (`id`, `name`) 
VALUES 
('1', 'children and families'), -- Детские и семейные
('2', 'hollywood'), 			-- Голливуд
('3', 'stand-up comedy'), 		-- Стэндап-комедия
('4', 'russian'), 				-- Российские
('5', 'independent cinema'), 	-- Независимое кино
('6', 'musical'), 				-- Мьюзикл
('7', 'science fiction'),		-- Научная фантастика
('8', 'romance'), 				-- Романтика
('9', 'drama'), 				-- Драма
('10', 'comedy'), 				-- Комедия
('11', 'horror'), 				-- Ужастики / Хоррор
('12', 'anime'), 				-- Аниме
('13', 'classic'), 				-- Классическое кино
('14', 'fantasy'), 				-- Фэнтези
('15', 'about crimes'), 		-- О преступлениях
('16', 'award-winning'), 		-- Удостовенные наград
('17', 'thrillers'), 			-- Триллеры
('18', 'sport'), 				-- Спорт
('19', 'action'), 				-- Экшен
('20', 'documentaries'); 		-- Документальные фильмы


-- Создаем таблицу "Библиотека фильмов"

DROP TABLE IF EXISTS movie_library;
CREATE TABLE movie_library (
	id SERIAL PRIMARY KEY,
	name VARCHAR (150), 				-- Название фильма
	id_genre BIGINT UNSIGNED NOT NULL, 	-- Жанр
	 `type` ENUM('film', 'series'), 	-- Тип: сериал / фильм
	description VARCHAR (200), 			-- Краткое описание
	year_issue INT(4), 					-- Год выпуска фильма
	created_at DATETIME DEFAULT NOW(),	-- Дата добавления фильма в библиотеку
	FOREIGN KEY (id_genre) REFERENCES film_genre(id) ON UPDATE CASCADE ON DELETE restrict
);

INSERT INTO `movie_library` (`id`, `name`, `id_genre`, `type`, `description`, `year_issue`, `created_at`) 
VALUES 
('1', 'quidem', '1', 'film', 'Mouse was speaking, so that by the prisoner to--to somebody.\' \'It must have been was not a regular rule: you invented it just at present--at least I know is, something comes at me like that!\' said.', 1980, '2006-08-16 12:48:49'),
('2', 'asperiores', '2', 'series', 'Bill! I wouldn\'t say anything about it, so she bore it as well as pigs, and was surprised to find her in an undertone to the game, the Queen put on his knee, and the party sat silent and looked at.', 2002, '2002-06-14 08:58:24'),
('3', 'ratione', '3', 'series', 'She said this last word with such a curious dream, dear, certainly: but now run in to your tea; it\'s getting late.\' So Alice got up and down in an offended tone, \'so I should have liked teaching it.', 1992, '1976-03-06 14:28:49'),
('4', 'cumque', '4', 'series', 'English!\' said the Queen, but she knew that it seemed quite dull and stupid for life to go with Edgar Atheling to meet William and offer him the crown. William\'s conduct at first she would get up.', 1997, '2002-12-11 00:30:51'),
('5', 'aut', '5', 'film', 'I could not help bursting out laughing: and when she went on again: \'Twenty-four hours, I THINK; or is it directed to?\' said the King: \'however, it may kiss my hand if it had VERY long claws and a.', 1976, '2019-08-08 07:06:44'),
('6', 'commodi', '6', 'film', 'I think?\' \'I had NOT!\' cried the Mock Turtle, \'Drive on, old fellow! Don\'t be all day to such stuff? Be off, or I\'ll have you executed on the second time round, she found it very nice, (it had, in.', 1998, '1977-07-23 09:17:04'),
('7', 'quam', '7', 'film', 'Alice was so much surprised, that for two Pennyworth only of beautiful Soup? Pennyworth only of beautiful Soup? Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Soo--oop of the Lobster; I heard him.', 1995, '2005-10-11 21:47:31'),
('8', 'sunt', '8', 'film', 'I sleep\" is the same tone, exactly as if he wasn\'t one?\' Alice asked. \'We called him Tortoise because he taught us,\' said the Mouse. \'--I proceed. \"Edwin and Morcar, the earls of Mercia and.', 2003, '2003-02-26 15:20:23'),
('9', 'est', '9', 'film', 'Queen furiously, throwing an inkstand at the other side. The further off from England the nearer is to give the hedgehog a blow with its mouth again, and made a dreadfully ugly child: but it makes.', 1990, '2003-12-09 02:15:28'),
('10', 'sed', '10', 'series', 'And in she went. Once more she found she could remember about ravens and writing-desks, which wasn\'t much. The Hatter opened his eyes very wide on hearing this; but all he SAID was, \'Why is a raven.', 2021, '2019-02-15 20:58:16'),
('11', 'aperiam', '11', 'series', 'As soon as there was a child,\' said the Caterpillar. \'Is that the cause of this was his first speech. \'You should learn not to make the arches. The chief difficulty Alice found at first she thought.', 1993, '2012-09-12 06:01:30'),
('12', 'soluta', '12', 'series', 'Alice said; \'there\'s a large ring, with the Dormouse. \'Don\'t talk nonsense,\' said Alice to herself, (not in a low, timid voice, \'If you can\'t think! And oh, I wish you wouldn\'t keep appearing and.', 1991, '2007-02-15 14:48:22'),
('13', 'molestiae', '13', 'film', 'Said his father; \'don\'t give yourself airs! Do you think you\'re changed, do you?\' \'I\'m afraid I can\'t quite follow it as a cushion, resting their elbows on it, (\'which certainly was not easy to take.', 1992, '2010-10-17 11:22:22'),
('14', 'quo', '14', 'series', 'It did so indeed, and much sooner than she had felt quite relieved to see how the Dodo had paused as if he wasn\'t going to give the hedgehog had unrolled itself, and was a dead silence. \'It\'s a.', 1988, '1975-05-04 15:33:58'),
('15', 'quisquam', '15', 'film', 'Dodo managed it.) First it marked out a race-course, in a court of justice before, but she gained courage as she had forgotten the Duchess sang the second verse of the legs of the trees upon her.', 1984, '1983-06-07 12:59:36'),
('16', 'enim', '16', 'series', 'She waited for a great deal too far off to trouble myself about you: you must manage the best of educations--in fact, we went to school in the last time she found she could have been changed in the.', 1990, '1993-02-14 11:56:16'),
('17', 'suscipit', '17', 'film', 'Mock Turtle. Alice was not an encouraging opening for a rabbit! I suppose I ought to be sure! However, everything is to-day! And yesterday things went on growing, and, as there was enough of me left.', 2003, '1983-12-24 13:31:19'),
('18', 'voluptatem', '18', 'film', 'She pitied him deeply. \'What is his sorrow?\' she asked the Gryphon, \'that they WOULD go with Edgar Atheling to meet William and offer him the crown. William\'s conduct at first she thought there was.', 1997, '1977-09-12 03:36:24'),
('19', 'ut', '19', 'series', 'I shan\'t! YOU do it!--That I won\'t, then!--Bill\'s to go near the door, she ran off as hard as he spoke, and the blades of grass, but she was as much as she spoke; \'either you or your head must be.', 1986, '1970-03-23 22:05:31'),
('20', 'nihil', '20', 'series', 'How she longed to change them--\' when she was terribly frightened all the arches are gone from this side of the window, and on it in large letters. It was high time to hear her try and repeat \"\'TIS.', 1971, '2012-12-26 15:48:22'),
('21', 'dicta', '1', 'series', 'Dormouse. \'Don\'t talk nonsense,\' said Alice very politely; but she knew she had not noticed before, and he checked himself suddenly: the others all joined in chorus, \'Yes, please do!\' but the Dodo.', 1995, '1993-09-10 21:05:29'),
('22', 'deserunt', '2', 'film', 'French lesson-book. The Mouse did not see anything that had made out the Fish-Footman was gone, and, by the time he was going to be, from one minute to another! However, I\'ve got to do,\' said Alice.', 2013, '2012-12-17 05:09:03'),
('23', 'officiis', '3', 'film', 'The Duchess took no notice of her little sister\'s dream. The long grass rustled at her side. She was moving them about as curious as it was sneezing and howling alternately without a porpoise.\'.', 1996, '2016-10-11 22:32:25'),
('24', 'tempora', '4', 'film', 'Alice. \'Stand up and to her daughter \'Ah, my dear! Let this be a LITTLE larger, sir, if you could keep it to half-past one as long as there was no label this time she went back to the door, she.', 2010, '2020-12-12 12:45:30'),
('25', 'porro', '5', 'film', 'ME.\' \'You!\' said the Queen. \'I haven\'t the least notice of them even when they liked, and left foot, so as to bring tears into her face, and large eyes full of soup. \'There\'s certainly too much of.', 1994, '1972-02-18 10:30:40'),
('26', 'veniam', '6', 'series', 'Gryphon said, in a very melancholy voice. \'Repeat, \"YOU ARE OLD, FATHER WILLIAM,\"\' said the Caterpillar. \'Not QUITE right, I\'m afraid,\' said Alice, timidly; \'some of the legs of the room again, no.', 1996, '1971-09-02 20:51:11'),
('27', 'quia', '7', 'series', 'In another moment it was quite surprised to find her in such a long hookah, and taking not the smallest notice of them attempted to explain the paper. \'If there\'s no meaning in it.\' The jury all.', 1998, '1997-03-17 00:16:51'),
('28', 'debitis', '8', 'film', 'March Hare moved into the earth. At last the Dodo in an undertone, \'important--unimportant--unimportant--important--\' as if she was near enough to drive one crazy!\' The Footman seemed to be no doubt.', 1971, '2014-06-25 17:26:36'),
('29', 'quis', '9', 'series', 'Dormouse,\' the Queen jumped up in spite of all this time, and was going off into a large plate came skimming out, straight at the beginning,\' the King said, for about the twentieth time that day..', 2006, '1982-01-18 04:05:22'),
('30', 'ullam', '10', 'film', 'Conqueror, whose cause was favoured by the time they were gardeners, or soldiers, or courtiers, or three times over to the Dormouse, not choosing to notice this last word two or three pairs of tiny.', 1999, '1972-11-06 15:20:46'),
('31', 'dolor', '11', 'film', 'Trims his belt and his buttons, and turns out his toes.\' [later editions continued as follows The Panther took pie-crust, and gravy, and meat, While the Panther were sharing a pie--\' [later editions.', 1975, '1978-06-30 06:54:37'),
('32', 'qui', '12', 'film', 'Alice was a dead silence. Alice was a dispute going on within--a constant howling and sneezing, and every now and then; such as, that a moment\'s delay would cost them their lives. All the time it.', 1991, '1992-03-08 01:33:25'),
('33', 'similique', '13', 'series', 'And yet I wish I could shut up like a frog; and both creatures hid their faces in their paws. \'And how did you do either!\' And the executioner ran wildly up and went on to himself in an offended.', 1996, '1970-01-08 06:56:57'),
('34', 'fuga', '14', 'film', 'WOULD put their heads down! I am in the after-time, be herself a grown woman; and how she would get up and repeat something now. Tell her to wink with one foot. \'Get up!\' said the King. \'I can\'t go.', 2012, '1978-11-14 01:37:01'),
('35', 'culpa', '15', 'series', 'I shall ever see such a neck as that! No, no! You\'re a serpent; and there\'s no use now,\' thought poor Alice, \'when one wasn\'t always growing larger and smaller, and being ordered about by mice and.', 2021, '1979-10-23 09:38:44'),
('36', 'rerum', '16', 'film', 'Gryphon: \'I went to school in the window, I only knew how to set about it; and the soldiers shouted in reply. \'Please come back again, and Alice looked at Alice. \'I\'M not a regular rule: you.', 2017, '1980-02-08 01:50:02'),
('37', 'consequatur', '17', 'series', 'King, the Queen, \'and take this young lady tells us a story!\' said the Dormouse, without considering at all a pity. I said \"What for?\"\' \'She boxed the Queen\'s voice in the shade: however, the moment.', 2016, '1973-11-03 09:44:06'),
('38', 'pariatur', '18', 'film', 'WILLIAM,\"\' said the Dodo, pointing to the shore. CHAPTER III. A Caucus-Race and a long way back, and barking hoarsely all the rats and--oh dear!\' cried Alice again, in a moment that it signifies.', 1998, '1970-03-10 12:51:36'),
('39', 'veritatis', '19', 'film', 'ONE.\' \'One, indeed!\' said Alice, rather doubtfully, as she went out, but it was a dead silence. Alice was beginning to grow larger again, and made another snatch in the world! Oh, my dear Dinah! I.', 2021, '1973-07-13 15:58:03'),
('40', 'dolores', '20', 'series', 'I should like it put the Lizard as she had read about them in books, and she went on at last, and managed to swallow a morsel of the evening, beautiful Soup! \'Beautiful Soup! Who cares for you?\'.', 2017, '1992-06-30 04:23:11'),
('41', 'sint', '1', 'series', 'Alice\'s shoulder, and it said nothing. \'This here young lady,\' said the Caterpillar. Alice thought to herself. \'Of the mushroom,\' said the Hatter, and here the conversation dropped, and the White.', 2021, '1982-02-04 23:46:26'),
('42', 'minus', '2', 'series', 'Mock Turtle. \'Very much indeed,\' said Alice. \'You must be,\' said the Mock Turtle Soup is made from,\' said the King: \'leave out that part.\' \'Well, at any rate he might answer questions.--How am I to.', 2001, '1982-07-31 04:19:14'),
('43', 'et', '3', 'series', 'King, rubbing his hands; \'so now let the Dormouse indignantly. However, he consented to go near the door that led into the way I ought to have the experiment tried. \'Very true,\' said the Queen, who.', 1983, '2009-01-06 12:50:40'),
('44', 'mollitia', '4', 'series', 'ALL RETURNED FROM HIM TO YOU,\"\' said Alice. \'Off with her arms folded, frowning like a sky-rocket!\' \'So you did, old fellow!\' said the Mouse, who seemed to quiver all over crumbs.\' \'You\'re wrong.', 2016, '1981-01-05 21:34:50'),
('45', 'necessitatibus', '5', 'series', 'Alice. \'Come, let\'s try the first figure,\' said the Dodo, \'the best way to change the subject. \'Go on with the words came very queer indeed:-- \'\'Tis the voice of the cupboards as she passed; it was.', 2007, '1989-04-28 12:36:41'),
('46', 'ad', '6', 'series', 'Alice; \'all I know who I am! But I\'d better take him his fan and gloves, and, as they used to it as to go on. \'And so these three weeks!\' \'I\'m very sorry you\'ve been annoyed,\' said Alice, and she.', 1974, '1978-12-02 19:25:26'),
('47', 'facilis', '7', 'series', 'I\'d hardly finished the first verse,\' said the King said to herself, for this curious child was very glad to find her way into a tidy little room with a T!\' said the Duck. \'Found IT,\' the Mouse with.', 2021, '1984-11-21 03:22:22'),
('48', 'omnis', '8', 'film', 'Will you, won\'t you, won\'t you join the dance. \'\"What matters it how far we go?\" his scaly friend replied. \"There is another shore, you know, as we were. My notion was that it would like the largest.', 2003, '2008-07-26 03:21:19'),
('49', 'saepe', '9', 'series', 'Off with his head!\' she said, by way of expecting nothing but the Gryphon never learnt it.\' \'Hadn\'t time,\' said the Queen. \'Sentence first--verdict afterwards.\' \'Stuff and nonsense!\' said Alice in a.', 1982, '1972-04-10 02:20:10'),
('50', 'vitae', '10', 'series', 'Duchess: \'and the moral of that is--\"Birds of a bottle. They all sat down with one foot. \'Get up!\' said the Cat, \'or you wouldn\'t mind,\' said Alice: \'she\'s so extremely--\' Just then her head.', 1988, '2008-03-27 18:57:08'),
('51', 'excepturi', '11', 'series', 'I can say.\' This was quite pleased to have changed since her swim in the trial one way of escape, and wondering whether she could see, as well be at school at once.\' However, she got to the part.', 1985, '1997-07-06 06:34:47'),
('52', 'illo', '12', 'film', 'I have ordered\'; and she crossed her hands up to the beginning again?\' Alice ventured to say. \'What is his sorrow?\' she asked the Mock Turtle interrupted, \'if you don\'t know where Dinn may be,\' said.', 2009, '1978-08-26 20:20:49'),
('53', 'neque', '13', 'series', 'The question is, Who in the sky. Twinkle, twinkle--\"\' Here the Queen said--\' \'Get to your little boy, And beat him when he sneezes: He only does it to the jury, in a low trembling voice, \'--and I.', 2017, '2016-12-22 23:44:22'),
('54', 'molestias', '14', 'film', 'ONE respectable person!\' Soon her eye fell on a three-legged stool in the middle. Alice kept her waiting!\' Alice felt a very interesting dance to watch,\' said Alice, \'and those twelve creatures,\'.', 1991, '2021-06-10 22:39:04'),
('55', 'non', '15', 'film', 'Then it got down off the subjects on his spectacles. \'Where shall I begin, please your Majesty!\' the Duchess was sitting on the ground as she went on. \'We had the best plan.\' It sounded an excellent.', 2015, '1980-12-16 02:13:26'),
('56', 'accusantium', '16', 'series', 'Gryphon only answered \'Come on!\' cried the Gryphon, with a cart-horse, and expecting every moment to be nothing but the wise little Alice and all the first verse,\' said the King replied. Here the.', 1972, '2021-09-19 07:09:33'),
('57', 'ipsum', '17', 'film', 'Majesty,\' said the Hatter. He had been to the jury, and the second thing is to do it.\' (And, as you can--\' \'Swim after them!\' screamed the Gryphon. \'It\'s all about it!\' Last came a little way off,.', 1996, '1985-04-23 13:08:52'),
('58', 'blanditiis', '18', 'series', 'I THINK,\' said Alice. \'And ever since that,\' the Hatter instead!\' CHAPTER VII. A Mad Tea-Party There was exactly three inches high). \'But I\'m not Ada,\' she said, \'and see whether it\'s marked.', 2014, '2005-04-18 23:30:00'),
('59', 'sit', '19', 'series', 'King, and he called the Queen, but she felt a little faster?\" said a whiting to a lobster--\' (Alice began to feel which way you go,\' said the Mock Turtle went on in these words: \'Yes, we went to.', 1992, '2002-03-07 10:34:49'),
('60', 'dolorum', '20', 'film', 'King; and the other side. The further off from England the nearer is to give the prizes?\' quite a large pool all round her, about four feet high. \'I wish the creatures argue. It\'s enough to drive.', 1983, '2021-06-24 06:26:13'),
('61', 'assumenda', '1', 'film', 'I want to go! Let me see: that would be like, \'--for they haven\'t got much evidence YET,\' she said to herself, \'whenever I eat one of them even when they arrived, with a sigh: \'he taught Laughing.', 1999, '1976-10-19 15:08:06'),
('62', 'libero', '2', 'series', 'Alice caught the baby joined):-- \'Wow! wow! wow!\' \'Here! you may nurse it a little shriek, and went by without noticing her. Then followed the Knave of Hearts, he stole those tarts, And took them.', 2001, '1979-09-22 11:57:01'),
('63', 'quod', '3', 'series', 'So she tucked it away under her arm, that it made no mark; but he now hastily began again, using the ink, that was lying under the sea--\' (\'I haven\'t,\' said Alice)--\'and perhaps you were never even.', 1984, '2013-08-27 19:50:22'),
('64', 'esse', '4', 'series', 'Bill\'s got the other--Bill! fetch it back!\' \'And who are THESE?\' said the Footman. \'That\'s the first figure!\' said the Gryphon. \'Turn a somersault in the window, and one foot up the little glass box.', 1991, '1972-05-04 19:16:01'),
('65', 'quasi', '5', 'series', 'I to do?\' said Alice. \'Then it wasn\'t very civil of you to leave it behind?\' She said this she looked down into a tidy little room with a kind of serpent, that\'s all the things get used up.\' \'But.', 1981, '2018-11-04 06:06:54'),
('66', 'tempore', '6', 'series', 'But the snail replied \"Too far, too far!\" and gave a sudden leap out of court! Suppress him! Pinch him! Off with his head!\"\' \'How dreadfully savage!\' exclaimed Alice. \'That\'s very curious.\' \'It\'s.', 1972, '1979-04-19 00:42:03'),
('67', 'velit', '7', 'film', 'I\'m I, and--oh dear, how puzzling it all came different!\' the Mock Turtle to sing you a couple?\' \'You are old,\' said the Cat, and vanished again. Alice waited patiently until it chose to speak good.', 1983, '1986-01-12 05:45:07'),
('68', 'ab', '8', 'series', 'Only I don\'t like them!\' When the procession came opposite to Alice, and her face brightened up at the stick, and tumbled head over heels in its sleep \'Twinkle, twinkle, twinkle, twinkle--\' and went.', 1971, '1978-12-02 06:15:45'),
('69', 'a', '9', 'film', 'Alice waited patiently until it chose to speak first, \'why your cat grins like that?\' \'It\'s a pun!\' the King triumphantly, pointing to the jury. They were just beginning to get through the.', 2006, '2004-05-07 10:24:56'),
('70', 'quas', '10', 'film', 'Mock Turtle said: \'I\'m too stiff. And the moral of that is--\"Birds of a muchness\"--did you ever saw. How she longed to change the subject of conversation. \'Are you--are you fond--of--of dogs?\' The.', 2006, '1986-01-08 06:05:15'),
('71', 'natus', '11', 'series', 'I\'d been the whiting,\' said the King, going up to the Knave. The Knave did so, very carefully, nibbling first at one corner of it: for she was out of THIS!\' (Sounds of more energetic remedies--\'.', 2020, '1993-02-05 06:16:30'),
('72', 'unde', '12', 'film', 'Now you know.\' \'Who is it I can\'t be Mabel, for I know all the children she knew the right house, because the Duchess said to Alice, that she ought not to lie down upon their faces. There was a most.', 2003, '2014-02-19 21:12:36'),
('73', 'vel', '13', 'series', 'Dormouse into the garden at once; but, alas for poor Alice! when she looked back once or twice, and shook itself. Then it got down off the top of her age knew the meaning of it had VERY long claws.', 1991, '2009-08-19 03:03:39'),
('74', 'autem', '14', 'series', 'There was a very small cake, on which the cook was busily stirring the soup, and seemed to be sure, this generally happens when you come to an end! \'I wonder if I might venture to say it out to be.', 1980, '1987-04-11 20:28:22'),
('75', 'voluptate', '15', 'series', 'They all made a rush at the Queen, pointing to the other, saying, in a tone of great relief. \'Call the next verse.\' \'But about his toes?\' the Mock Turtle; \'but it doesn\'t matter much,\' thought.', 1989, '1979-09-10 04:57:48'),
('76', 'adipisci', '16', 'series', 'I have dropped them, I wonder?\' Alice guessed in a coaxing tone, and added \'It isn\'t a letter, written by the end of the moment she appeared; but she remembered the number of changes she had to.', 1991, '2006-11-02 04:08:01'),
('77', 'eos', '17', 'series', 'Dinn may be,\' said the March Hare and the other arm curled round her head. \'If I eat one of the mushroom, and raised herself to about two feet high: even then she had brought herself down to nine.', 2008, '1984-05-05 15:53:04'),
('78', 'sequi', '18', 'series', 'Gryphon, lying fast asleep in the face. \'I\'ll put a stop to this,\' she said to the Duchess: you\'d better ask HER about it.\' \'She\'s in prison,\' the Queen never left off staring at the Caterpillar\'s.', 1990, '2007-04-05 04:23:42'),
('79', 'repellendus', '19', 'film', 'Improve his shining tail, And pour the waters of the leaves: \'I should have croqueted the Queen\'s absence, and were quite dry again, the Dodo managed it.) First it marked out a history of the door.', 1997, '1999-05-02 10:19:10'),
('80', 'quaerat', '20', 'film', 'Suppress him! Pinch him! Off with his knuckles. It was as long as I do,\' said the Dormouse, without considering at all this time, sat down in a low voice. \'Not at all,\' said Alice: \'allow me to sell.', 1982, '1979-02-19 16:41:20'),
('81', 'iure', '1', 'film', 'I don\'t know what they\'re about!\' \'Read them,\' said the Mock Turtle replied in an offended tone, \'Hm! No accounting for tastes! Sing her \"Turtle Soup,\" will you, won\'t you join the dance? Will you,.', 1971, '2006-10-12 14:06:55'),
('82', 'laudantium', '2', 'series', 'I begin, please your Majesty,\' said Alice indignantly. \'Ah! then yours wasn\'t a really good school,\' said the one who had spoken first. \'That\'s none of my life.\' \'You are old,\' said the Hatter: \'I\'m.', 1974, '2008-10-20 23:27:21'),
('83', 'delectus', '3', 'film', 'That he met in the pool of tears which she found her way out. \'I shall sit here,\' he said, \'on and off, for days and days.\' \'But what am I to get in?\' she repeated, aloud. \'I must go by the Queen in.', 1970, '2006-09-16 15:50:52'),
('84', 'nesciunt', '4', 'series', 'I, and--oh dear, how puzzling it all seemed quite natural to Alice an excellent opportunity for repeating his remark, with variations. \'I shall be punished for it now, I suppose, by being drowned in.', 1971, '2009-08-10 12:05:30'),
('85', 'vero', '5', 'series', 'Alice began in a long, low hall, which was full of soup. \'There\'s certainly too much pepper in that poky little house, and the baby--the fire-irons came first; then followed a shower of little Alice.', 2012, '1973-12-15 16:00:06'),
('86', 'aspernatur', '6', 'series', 'The players all played at once and put back into the garden with one eye; but to get into her eyes; and once again the tiny hands were clasped upon her arm, that it felt quite unhappy at the Mouse\'s.', 2010, '1975-03-07 03:15:32'),
('87', 'architecto', '7', 'film', 'Alice, \'and why it is almost certain to disagree with you, sooner or later. However, this bottle was a very small cake, on which the wretched Hatter trembled so, that he shook his head off outside,\'.', 2016, '2019-04-12 06:13:08'),
('88', 'iusto', '8', 'film', 'Crab, a little girl or a serpent?\' \'It matters a good way off, and Alice called out in a mournful tone, \'he won\'t do a thing I know. Silence all round, if you like,\' said the Mock Turtle, who looked.', 1984, '1975-11-03 05:58:07'),
('89', 'earum', '9', 'series', 'At last the Gryphon only answered \'Come on!\' cried the Mouse, getting up and repeat \"\'TIS THE VOICE OF THE SLUGGARD,\"\' said the Gryphon, and the beak-- Pray how did you begin?\' The Hatter was out of.', 1971, '1972-12-12 19:00:00'),
('90', 'hic', '10', 'film', 'Duchess! The Duchess! Oh my dear paws! Oh my dear Dinah! I wonder who will put on your shoes and stockings for you now, dears? I\'m sure she\'s the best plan.\' It sounded an excellent opportunity for.', 1974, '1980-11-29 04:42:02'),
('91', 'repudiandae', '11', 'series', 'Queen\'s ears--\' the Rabbit just under the sea,\' the Gryphon whispered in reply, \'for fear they should forget them before the trial\'s begun.\' \'They\'re putting down their names,\' the Gryphon.', 2006, '1970-10-06 20:53:07'),
('92', 'id', '12', 'series', 'Alice, \'how am I to do it! Oh dear! I shall have some fun now!\' thought Alice. \'I\'m glad they don\'t give birthday presents like that!\' \'I couldn\'t afford to learn it.\' said the Mock Turtle went on,.', 1977, '2017-11-15 12:45:00'),
('93', 'animi', '13', 'series', 'Duck and a Dodo, a Lory and an old woman--but then--always to have any pepper in my time, but never ONE with such sudden violence that Alice had learnt several things of this pool? I am so VERY.', 1992, '1984-04-28 04:46:57'),
('94', 'magni', '14', 'film', 'So she sat on, with closed eyes, and feebly stretching out one paw, trying to make SOME change in my own tears! That WILL be a queer thing, to be lost: away went Alice after it, \'Mouse dear! Do come.', 2016, '1977-11-04 10:58:27'),
('95', 'atque', '15', 'series', 'Dinah, if I know who I WAS when I was thinking I should have liked teaching it tricks very much, if--if I\'d only been the whiting,\' said the Duchess; \'and the moral of that is--\"Birds of a candle is.', 1993, '1998-09-17 08:43:31'),
('96', 'ex', '16', 'film', 'Latin Grammar, \'A mouse--of a mouse--to a mouse--a mouse--O mouse!\') The Mouse only growled in reply. \'Idiot!\' said the Queen, and Alice, were in custody and under sentence of execution. Then the.', 1990, '2018-10-27 06:40:38'),
('97', 'reprehenderit', '17', 'film', 'By this time she heard a little startled when she found her way through the glass, and she went to the jury, of course--\"I GAVE HER ONE, THEY GAVE HIM TWO--\" why, that must be kind to them,\' thought.', 2000, '1996-05-17 21:12:39'),
('98', 'nisi', '18', 'series', 'For really this morning I\'ve nothing to what I like\"!\' \'You might just as well. The twelve jurors were writing down \'stupid things!\' on their hands and feet at the Caterpillar\'s making such a rule.', 1987, '1991-11-09 23:11:54'),
('99', 'amet', '19', 'film', 'I never heard of such a thing I know. Silence all round, if you were me?\' \'Well, perhaps your feelings may be different,\' said Alice; \'it\'s laid for a few minutes to see if she was shrinking.', 1989, '1970-01-02 02:16:36'),
('100', 'rem', '20', 'series', 'Bill,\' she gave her answer. \'They\'re done with blacking, I believe.\' \'Boots and shoes under the table: she opened it, and then a voice sometimes choked with sobs, to sing you a couple?\' \'You are.', 2013, '2001-11-07 08:55:25');



-- Создаем таблицу "Список пользователя"

DROP TABLE IF EXISTS users_list;
CREATE TABLE users_list (
	user_id BIGINT UNSIGNED NOT NULL,
	id_movie BIGINT UNSIGNED NOT NULL,
	PRIMARY KEY (user_id, id_movie),
	FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (id_movie) REFERENCES movie_library(id)
);

INSERT INTO `users_list` (`user_id`, `id_movie`) 
VALUES 
('1', '1'),
('1', '51'),
('2', '2'),
('2', '52'),
('3', '3'),
('3', '53'),
('4', '4'),
('4', '54'),
('5', '5'),
('5', '55'),
('6', '6'),
('6', '56'),
('7', '7'),
('7', '57'),
('8', '8'),
('8', '58'),
('9', '9'),
('9', '59'),
('10', '10'),
('10', '60'),
('11', '11'),
('11', '61'),
('12', '12'),
('12', '62'),
('13', '13'),
('13', '63'),
('14', '14'),
('14', '64'),
('15', '15'),
('15', '65'),
('16', '16'),
('16', '66'),
('17', '17'),
('17', '67'),
('18', '18'),
('18', '68'),
('19', '19'),
('19', '69'),
('20', '20'),
('20', '70'),
('21', '21'),
('21', '71'),
('22', '22'),
('22', '72'),
('23', '23'),
('23', '73'),
('24', '24'),
('24', '74'),
('25', '25'),
('25', '75'),
('26', '26'),
('26', '76'),
('27', '27'),
('27', '77'),
('28', '28'),
('28', '78'),
('29', '29'),
('29', '79'),
('30', '30'),
('30', '80'),
('31', '31'),
('31', '81'),
('32', '32'),
('32', '82'),
('33', '33'),
('33', '83'),
('34', '34'),
('34', '84'),
('35', '35'),
('35', '85'),
('36', '36'),
('36', '86'),
('37', '37'),
('37', '87'),
('38', '38'),
('38', '88'),
('39', '39'),
('39', '89'),
('40', '40'),
('40', '90'),
('41', '41'),
('41', '91'),
('42', '42'),
('42', '92'),
('43', '43'),
('43', '93'),
('44', '44'),
('44', '94'),
('45', '45'),
('45', '95'),
('46', '46'),
('46', '96'),
('47', '47'),
('47', '97'),
('48', '48'),
('48', '98'),
('49', '49'),
('49', '99'),
('50', '50'),
('50', '100');

-- Создаем таблицу "Смотрю сейчас"

DROP TABLE IF EXISTS view_list;
CREATE TABLE view_list (
	id SERIAL PRIMARY KEY,
	user_id BIGINT UNSIGNED NOT NULL,
	id_movie BIGINT UNSIGNED NOT NULL,
	viewed_time TIME, -- Количество просмотренного времени (закладка момента, на котором остановился пользовтаель)
	FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (id_movie) REFERENCES movie_library(id)
);

INSERT INTO `view_list` (`id`, `user_id`, `id_movie`, `viewed_time`) 
VALUES 
('1', '1', '1', '13:44:53'),
('2', '2', '2', '03:45:48'),
('3', '3', '3', '22:34:13'),
('4', '4', '4', '17:34:08'),
('5', '5', '5', '18:30:34'),
('6', '6', '6', '22:50:53'),
('7', '7', '7', '23:49:27'),
('8', '8', '8', '07:55:42'),
('9', '9', '9', '12:33:00'),
('10', '10', '10', '10:16:39'),
('11', '11', '11', '03:39:59'),
('12', '12', '12', '05:43:44'),
('13', '13', '13', '02:37:44'),
('14', '14', '14', '04:33:11'),
('15', '15', '15', '22:56:41'),
('16', '16', '16', '22:49:34'),
('17', '17', '17', '03:41:37'),
('18', '18', '18', '20:03:57'),
('19', '19', '19', '11:26:27'),
('20', '20', '20', '02:15:17'),
('21', '21', '21', '15:35:36'),
('22', '22', '22', '01:18:38'),
('23', '23', '23', '06:32:02'),
('24', '24', '24', '00:40:58'),
('25', '25', '25', '11:16:39'),
('26', '26', '26', '00:18:30'),
('27', '27', '27', '14:07:24'),
('28', '28', '28', '07:53:48'),
('29', '29', '29', '06:30:46'),
('30', '30', '30', '22:31:50'),
('31', '31', '31', '05:41:28'),
('32', '32', '32', '23:55:55'),
('33', '33', '33', '01:11:05'),
('34', '34', '34', '11:22:04'),
('35', '35', '35', '23:09:43'),
('36', '36', '36', '15:10:05'),
('37', '37', '37', '03:26:13'),
('38', '38', '38', '18:39:15'),
('39', '39', '39', '03:38:54'),
('40', '40', '40', '07:14:28'),
('41', '41', '41', '21:35:41'),
('42', '42', '42', '04:55:56'),
('43', '43', '43', '03:56:35'),
('44', '44', '44', '20:24:12'),
('45', '45', '45', '21:52:07'),
('46', '46', '46', '08:14:54'),
('47', '47', '47', '18:16:25'),
('48', '48', '48', '18:08:03'),
('49', '49', '49', '22:22:57'),
('50', '50', '50', '02:33:47'),
('51', '1', '51', '05:24:54'),
('52', '2', '52', '06:47:22'),
('53', '3', '53', '18:46:41'),
('54', '4', '54', '12:08:52'),
('55', '5', '55', '23:51:40'),
('56', '6', '56', '23:40:47'),
('57', '7', '57', '19:59:03'),
('58', '8', '58', '08:41:24'),
('59', '9', '59', '07:42:23'),
('60', '10', '60', '10:16:49'),
('61', '11', '61', '20:55:15'),
('62', '12', '62', '17:46:18'),
('63', '13', '63', '22:37:01'),
('64', '14', '64', '10:37:56'),
('65', '15', '65', '16:57:13'),
('66', '16', '66', '16:52:07'),
('67', '17', '67', '01:15:51'),
('68', '18', '68', '08:25:21'),
('69', '19', '69', '14:28:20'),
('70', '20', '70', '20:49:24'),
('71', '21', '71', '20:13:00'),
('72', '22', '72', '08:58:04'),
('73', '23', '73', '11:44:10'),
('74', '24', '74', '08:01:03'),
('75', '25', '75', '06:54:11'),
('76', '26', '76', '12:59:18'),
('77', '27', '77', '14:04:19'),
('78', '28', '78', '09:21:21'),
('79', '29', '79', '10:52:59'),
('80', '30', '80', '13:18:31'),
('81', '31', '81', '15:01:56'),
('82', '32', '82', '05:26:27'),
('83', '33', '83', '20:48:51'),
('84', '34', '84', '20:57:26'),
('85', '35', '85', '07:12:54'),
('86', '36', '86', '15:15:26'),
('87', '37', '87', '00:41:43'),
('88', '38', '88', '09:25:51'),
('89', '39', '89', '20:12:00'),
('90', '40', '90', '18:40:20'),
('91', '41', '91', '06:23:01'),
('92', '42', '92', '02:54:52'),
('93', '43', '93', '04:56:03'),
('94', '44', '94', '10:41:19'),
('95', '45', '95', '17:45:30'),
('96', '46', '96', '22:47:30'),
('97', '47', '97', '22:17:56'),
('98', '48', '98', '23:06:18'),
('99', '49', '99', '01:15:56'),
('100', '50', '100', '18:19:06');


-- Создаем таблицу "Оценка фильма"

DROP TABLE IF EXISTS film_score;
CREATE TABLE film_score(
	id SERIAL PRIMARY KEY,
    user_id BIGINT UNSIGNED NOT NULL,
    id_movie BIGINT UNSIGNED NOT NULL,
    `score` ENUM('like', 'dislike'), -- Оценка фильма: нравится  / не нравится
    created_at DATETIME DEFAULT NOW(), -- Дата простановки оценки
    FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE restrict,
    FOREIGN KEY (id_movie) REFERENCES movie_library(id)
);

INSERT INTO `film_score` (`id`, `user_id`, `id_movie`, `score`, `created_at`) 
VALUES 
('1', '1', '1', 'like', '2020-06-29 21:12:29'),
('2', '2', '2', 'dislike', '2015-02-02 01:05:00'),
('3', '3', '3', 'like', '1982-01-04 23:38:24'),
('4', '4', '4', 'dislike', '2020-06-18 12:45:54'),
('5', '5', '5', 'like', '2000-02-23 06:41:11'),
('6', '6', '6', 'dislike', '1991-01-28 17:30:20'),
('7', '7', '7', 'like', '2008-12-22 14:21:31'),
('8', '8', '8', 'like', '2004-11-07 13:05:51'),
('9', '9', '9', 'like', '2000-01-13 03:24:19'),
('10', '10', '10', 'dislike', '2001-06-21 00:23:38'),
('11', '11', '11', 'like', '2009-03-18 12:33:48'),
('12', '12', '12', 'like', '1983-05-28 09:14:16'),
('13', '13', '13', 'dislike', '2015-11-17 09:47:47'),
('14', '14', '14', 'dislike', '1999-11-24 08:47:58'),
('15', '15', '15', 'dislike', '1971-05-21 01:04:48'),
('16', '16', '16', 'like', '1988-01-03 19:14:35'),
('17', '17', '17', 'like', '1986-07-02 17:52:39'),
('18', '18', '18', 'dislike', '1972-08-13 05:20:49'),
('19', '19', '19', 'dislike', '1986-10-21 06:18:11'),
('20', '20', '20', 'dislike', '1998-11-11 10:47:52'),
('21', '21', '21', 'like', '2009-11-12 19:23:29'),
('22', '22', '22', 'like', '2012-11-01 04:58:09'),
('23', '23', '23', 'dislike', '2012-11-10 21:04:15'),
('24', '24', '24', 'like', '1973-03-27 07:36:11'),
('25', '25', '25', 'like', '1972-01-12 08:06:12'),
('26', '26', '26', 'dislike', '1985-11-22 12:30:49'),
('27', '27', '27', 'like', '1993-11-11 04:52:25'),
('28', '28', '28', 'dislike', '1993-06-22 11:37:29'),
('29', '29', '29', 'like', '1990-11-08 21:12:17'),
('30', '30', '30', 'dislike', '1973-06-17 07:26:32'),
('31', '31', '31', 'like', '2003-10-13 07:57:57'),
('32', '32', '32', 'dislike', '2012-07-09 01:21:22'),
('33', '33', '33', 'like', '1981-12-16 01:57:26'),
('34', '34', '34', 'like', '1985-04-05 10:40:25'),
('35', '35', '35', 'dislike', '1986-10-04 21:10:38'),
('36', '36', '36', 'like', '2021-06-08 15:12:27'),
('37', '37', '37', 'like', '2000-07-29 14:23:09'),
('38', '38', '38', 'like', '1998-05-04 19:09:26'),
('39', '39', '39', 'dislike', '2009-01-30 03:32:35'),
('40', '40', '40', 'dislike', '2003-08-07 15:24:33'),
('41', '41', '41', 'like', '2000-04-25 14:17:33'),
('42', '42', '42', 'dislike', '2007-04-15 11:11:13'),
('43', '43', '43', 'like', '1995-10-11 00:12:39'),
('44', '44', '44', 'like', '2015-06-26 03:10:08'),
('45', '45', '45', 'like', '1985-11-13 05:43:57'),
('46', '46', '46', 'like', '2017-11-26 10:02:24'),
('47', '47', '47', 'dislike', '2002-12-13 07:44:20'),
('48', '48', '48', 'like', '2003-05-29 05:58:04'),
('49', '49', '49', 'like', '1981-10-01 09:34:46'),
('50', '50', '50', 'dislike', '1984-01-26 03:53:48'),
('51', '1', '51', 'like', '1986-02-01 07:33:20'),
('52', '2', '52', 'like', '2005-06-22 04:59:02'),
('53', '3', '53', 'dislike', '1996-12-06 12:00:09'),
('54', '4', '54', 'dislike', '1975-05-05 09:07:20'),
('55', '5', '55', 'like', '1980-06-20 07:08:52'),
('56', '6', '56', 'dislike', '2001-09-21 23:05:14'),
('57', '7', '57', 'like', '2021-02-19 04:00:32'),
('58', '8', '58', 'like', '2015-08-08 06:17:07'),
('59', '9', '59', 'like', '1977-03-14 11:11:12'),
('60', '10', '60', 'dislike', '1981-05-22 15:20:20'),
('61', '11', '61', 'dislike', '2015-10-09 09:14:27'),
('62', '12', '62', 'dislike', '1998-02-04 18:10:14'),
('63', '13', '63', 'dislike', '2018-12-12 18:41:45'),
('64', '14', '64', 'dislike', '1997-01-14 21:10:19'),
('65', '15', '65', 'dislike', '1989-01-04 06:15:24'),
('66', '16', '66', 'dislike', '1972-08-28 22:08:37'),
('67', '17', '67', 'like', '1996-09-28 10:36:26'),
('68', '18', '68', 'dislike', '2007-08-17 01:40:38'),
('69', '19', '69', 'dislike', '2009-10-10 05:01:52'),
('70', '20', '70', 'dislike', '1985-07-01 18:51:05'),
('71', '21', '71', 'like', '2013-05-04 23:02:37'),
('72', '22', '72', 'like', '1986-08-06 19:50:45'),
('73', '23', '73', 'like', '2016-11-26 17:24:51'),
('74', '24', '74', 'dislike', '2004-11-16 15:47:26'),
('75', '25', '75', 'dislike', '1984-11-16 21:48:37'),
('76', '26', '76', 'like', '1997-01-21 13:50:17'),
('77', '27', '77', 'dislike', '1993-02-01 06:38:32'),
('78', '28', '78', 'like', '2014-05-02 13:12:24'),
('79', '29', '79', 'dislike', '1996-07-11 13:30:45'),
('80', '30', '80', 'dislike', '2012-06-24 18:26:46'),
('81', '31', '81', 'dislike', '1977-07-03 09:02:41'),
('82', '32', '82', 'like', '2000-05-24 09:30:19'),
('83', '33', '83', 'like', '2012-09-12 06:34:11'),
('84', '34', '84', 'like', '1992-02-11 03:05:44'),
('85', '35', '85', 'dislike', '2006-05-04 01:23:44'),
('86', '36', '86', 'like', '1996-10-21 20:50:04'),
('87', '37', '87', 'dislike', '1974-03-23 07:29:33'),
('88', '38', '88', 'like', '1999-07-19 18:55:44'),
('89', '39', '89', 'dislike', '1973-07-04 20:51:14'),
('90', '40', '90', 'like', '2009-01-28 01:31:47'),
('91', '41', '91', 'dislike', '2003-08-05 21:36:37'),
('92', '42', '92', 'like', '1988-12-27 11:23:04'),
('93', '43', '93', 'like', '2014-12-24 21:17:26'),
('94', '44', '94', 'dislike', '1976-08-27 08:05:48'),
('95', '45', '95', 'like', '2004-10-20 11:12:46'),
('96', '46', '96', 'dislike', '2000-11-13 10:24:07'),
('97', '47', '97', 'dislike', '2008-07-18 14:34:03'),
('98', '48', '98', 'like', '1985-09-07 03:37:59'),
('99', '49', '99', 'like', '2014-07-25 23:42:39'),
('100', '50', '100', 'like', '2019-08-19 20:41:39');


-- Представление, отображающее фильмы, получившие лайк от пользователей

CREATE or replace VIEW view_likes
AS 
  SELECT 
  ml.id,
  ml.name AS 'Наименование фильма', 
  fg.name AS 'Жанр' , 
  ml.`type` AS 'Тип',
  ml.year_issue AS 'Год выпуска', 
  fs.score AS 'Оценка'
  FROM movie_library ml 
    JOIN film_score fs ON ml.id = fs.id_movie 
    JOIN film_genre fg ON ml.id_genre = fg.id 
  WHERE 
  fs.score = 'like';
 
 -- Представление, отображающее фильмы, получившие дизлайк от пользователей
 
 CREATE or replace VIEW view_dislikes
AS 
  SELECT ml.id, 
  ml.name AS 'Наименование фильма', 
  fg.name AS 'Жанр' , 
  ml.`type` AS 'Тип', 
  ml.year_issue AS 'Год выпуска', 
  fs.score AS 'Оценка'
  FROM movie_library ml 
    JOIN film_score fs ON ml.id = fs.id_movie 
    JOIN film_genre fg ON ml.id_genre = fg.id 
  WHERE 
  fs.score = 'dislike';
  
 -- Представление, отображающее полную информацию о тарифах
 
  CREATE or replace VIEW view_tariff
AS 
  SELECT plan_id, 
  tp.name  AS 'Наименование тарифа',
  tp.price AS 'Стоимость' , 
  tt.screen_number AS 'Кол-во экранов (одновременный)',
  tt.phone_number AS 'Кол-во телефонов (одновременно)',
  tt.hd AS 'HD-качество',
  tt.ultrahd AS 'UltraHD-качество'
  FROM tariff_plan tp
    JOIN tariff_terms tt ON tp.plan_id = tt.terms_id;
 
