-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: shoes_shop_flowey
-- ------------------------------------------------------
-- Server version	8.0.44

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Женская обувь'),(2,'Мужская обувь');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `manufacterer`
--

LOCK TABLES `manufacterer` WRITE;
/*!40000 ALTER TABLE `manufacterer` DISABLE KEYS */;
INSERT INTO `manufacterer` VALUES (1,'Kari'),(2,'Marco Tozzi'),(3,'Рос'),(4,'Rieker'),(5,'Alessio Nesca'),(6,'CROSBY');
/*!40000 ALTER TABLE `manufacterer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `order_status`
--

LOCK TABLES `order_status` WRITE;
/*!40000 ALTER TABLE `order_status` DISABLE KEYS */;
INSERT INTO `order_status` VALUES (1,'Новый'),(2,'Завершен');
/*!40000 ALTER TABLE `order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2025-02-27','2025-04-20',1,4,901,2),(2,'2022-09-28','2025-04-21',11,1,902,2),(3,'2025-03-21','2025-04-22',2,2,903,2),(4,'2025-02-20','2025-04-23',11,3,904,2),(5,'2025-03-17','2025-04-24',2,4,905,2),(6,'2025-03-01','2025-04-25',15,1,906,2),(7,'30.02.2025','2025-04-26',3,2,907,2),(8,'2025-03-31','2025-04-27',19,3,908,1),(9,'2025-04-02','2025-04-28',5,4,909,1),(10,'2025-04-03','2025-04-29',19,4,910,1);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `products_name`
--

LOCK TABLES `products_name` WRITE;
/*!40000 ALTER TABLE `products_name` DISABLE KEYS */;
INSERT INTO `products_name` VALUES (1,'Ботинки'),(2,'Туфли'),(3,'Кроссовки'),(4,'Полуботинки'),(5,'Кеды'),(6,'Тапочки'),(7,'Сапоги');
/*!40000 ALTER TABLE `products_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `proorders`
--

LOCK TABLES `proorders` WRITE;
/*!40000 ALTER TABLE `proorders` DISABLE KEYS */;
INSERT INTO `proorders` VALUES (1,1,1,2),(2,2,1,2),(3,3,2,1),(4,4,2,1),(5,6,3,10),(6,5,3,10),(7,7,4,5),(8,8,4,4),(9,1,5,2),(10,2,5,2),(11,3,6,1),(12,4,6,1),(13,5,7,10),(14,6,7,10),(15,7,8,5),(16,8,8,4),(17,9,9,5),(18,10,9,1),(19,11,10,5),(20,12,10,5);
/*!40000 ALTER TABLE `proorders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pvs`
--

LOCK TABLES `pvs` WRITE;
/*!40000 ALTER TABLE `pvs` DISABLE KEYS */;
INSERT INTO `pvs` VALUES (1,420151,' г. Лесной',' ул. Вишневая',32),(2,125061,' г. Лесной',' ул. Подгорная',8),(3,630370,' г. Лесной',' ул. Шоссейная',24),(4,400562,' г. Лесной',' ул. Зеленая',32),(5,614510,' г. Лесной',' ул. Маяковского',47),(6,410542,' г. Лесной',' ул. Светлая',46),(7,620839,' г. Лесной',' ул. Цветочная',8),(8,443890,' г. Лесной',' ул. Коммунистическая',1),(9,603379,' г. Лесной',' ул. Спортивная',46),(10,603721,' г. Лесной',' ул. Гоголя',41),(11,410172,' г. Лесной',' ул. Северная',13),(12,614611,' г. Лесной',' ул. Молодежная',50),(13,454311,' г.Лесной',' ул. Новая',19),(14,660007,' г.Лесной',' ул. Октябрьская',19),(15,603036,' г. Лесной',' ул. Садовая',4),(16,394060,' г.Лесной',' ул. Фрунзе',43),(17,410661,' г. Лесной',' ул. Школьная',50),(18,625590,' г. Лесной',' ул. Коммунистическая',20),(19,625683,' г. Лесной',' ул. 8 Марта',3),(20,450983,' г.Лесной',' ул. Комсомольская',26),(21,394782,' г. Лесной',' ул. Чехова',3),(22,603002,' г. Лесной',' ул. Дзержинского',28),(23,450558,' г. Лесной',' ул. Набережная',30),(24,344288,' г. Лесной',' ул. Чехова',1),(25,614164,' г.Лесной','  ул. Степная',30),(26,394242,' г. Лесной',' ул. Коммунистическая',43),(27,660540,' г. Лесной',' ул. Солнечная',25),(28,125837,' г. Лесной',' ул. Шоссейная',40),(29,125703,' г. Лесной',' ул. Партизанская',49),(30,625283,' г. Лесной',' ул. Победы',46),(31,614753,' г. Лесной',' ул. Полевая',35),(32,426030,' г. Лесной',' ул. Маяковского',44),(33,450375,' г. Лесной ','ул. Клубная',44),(34,625560,' г. Лесной',' ул. Некрасова',12),(35,630201,' г. Лесной',' ул. Комсомольская',17),(36,190949,' г. Лесной',' ул. Мичурина',26);
/*!40000 ALTER TABLE `pvs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Администратор'),(2,'Менеджер'),(3,'Авторизированный клиент');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'Kari'),(2,'Обувь для вас');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tovar`
--

LOCK TABLES `tovar` WRITE;
/*!40000 ALTER TABLE `tovar` DISABLE KEYS */;
INSERT INTO `tovar` VALUES (1,'А112Т4',1,'шт.',4990,1,1,1,3,6,'Женские Ботинки демисезонные kari','1.jpg'),(2,'F635R4',1,'шт.',3244,2,2,1,2,13,'Ботинки Marco Tozzi женские демисезонные, размер 39, цвет бежевый','2.jpg'),(3,'H782T5',2,'шт.',4499,1,1,2,4,5,'Туфли kari мужские классика MYZ21AW-450A, размер 43, цвет: черный','3.jpg'),(4,'G783F5',1,'шт.',5900,1,3,2,2,8,'Мужские ботинки Рос-Обувь кожаные с натуральным мехом','4.jpg'),(5,'J384T6',1,'шт.',3800,2,4,2,2,16,'B3430/14 Полуботинки мужские Rieker','5.jpg'),(6,'D572U8',3,'шт.',4100,2,3,2,3,6,'129615-4 Кроссовки мужские','6.jpg'),(7,'F572H7',2,'шт.',2700,1,2,1,2,14,'Туфли Marco Tozzi женские летние, размер 39, цвет черный','7.jpg'),(8,'D329H3',4,'шт.',1890,2,5,1,4,4,'Полуботинки Alessio Nesca женские 3-30797-47, размер 37, цвет: бордовый','8.jpg'),(9,'B320R5',2,'шт.',4300,1,4,1,2,6,'Туфли Rieker женские демисезонные, размер 41, цвет коричневый','9.jpg'),(10,'G432E4',2,'шт.',2800,1,1,1,3,15,'Туфли kari женские TR-YR-413017, размер 37, цвет: черный','10.jpg'),(11,'S213E3',4,'шт.',2156,2,6,2,3,6,'407700/01-01 Полуботинки мужские CROSBY',''),(12,'E482R4',4,'шт.',1800,1,1,1,2,14,'Полуботинки kari женские MYZ20S-149, размер 41, цвет: черный',''),(13,'S634B5',5,'шт.',5500,2,6,2,3,0,'5 Caprice мужские демисезонные, размер 42, цвет черный',''),(14,'K345R4',4,'шт.',2100,2,6,2,2,3,'407700/01-02 Полуботинки мужские CROSBY',''),(15,'O754F4',2,'шт.',5400,2,4,1,4,18,'Туфли женские демисезонные Rieker артикул 55073-68/37',''),(16,'G531F4',1,'шт.',6600,1,1,1,12,9,'Ботинки женские зимние ROMER арт. 893167-01 Черный',''),(17,'J542F5',6,'шт.',500,1,1,2,13,0,'Тапочки мужские Арт.70701-55-67син р.41',''),(18,'B431R5',1,'шт.',2700,2,4,2,2,5,'Мужские кожаные ботинки/мужские ботинки',''),(19,'P764G4',2,'шт.',6800,1,6,1,15,15,'Туфли женские, ARGO, размер 38',''),(20,'C436G5',1,'шт.',10200,1,5,1,15,9,'Ботинки женские, ARGO, размер 40',''),(21,'F427R5',1,'шт.',11800,2,4,1,15,11,'Ботинки на молнии с декоративной пряжкой FRAU',''),(22,'N457T5',4,'шт.',4600,1,6,1,3,13,'Полуботинки Ботинки черные зимние, мех',''),(23,'D364R4',2,'шт.',12400,1,1,1,16,5,'Туфли Luiza Belly женские Kate-lazo черные из натуральной замши',''),(24,'S326R5',6,'шт.',9900,2,6,2,17,15,'Мужские кожаные тапочки \"Профиль С.Дали\"\" \"',''),(25,'L754R4',4,'шт.',1700,1,1,1,2,7,'Полуботинки kari женские WB2020SS-26, размер 38, цвет: черный',''),(26,'M542T5',3,'шт.',2800,2,4,2,18,3,'Кроссовки мужские TOFA',''),(27,'D268G5',2,'шт.',4399,2,4,1,3,12,'Туфли Rieker женские демисезонные, размер 36, цвет коричневый',''),(28,'T324F5',7,'шт.',4699,1,6,1,2,5,'Сапоги замша Цвет: синий',''),(29,'K358H6',6,'шт.',599,1,4,2,20,2,'Тапочки мужские син р.41',''),(30,'H535R5',1,'шт.',2300,2,4,1,2,7,'Женские Ботинки демисезонные','');
/*!40000 ALTER TABLE `tovar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,1,'Никифорова','Весения','Николаевна','94d5ous@gmail.com','uzWC67'),(2,1,'Сазонов','Руслан','Германович','uth4iz@mail.com','2L6KZG'),(3,1,'Одинцов','Серафим','Артёмович','yzls62@outlook.com','JlFRCZ'),(4,2,'Степанов','Михаил','Артёмович','1diph5e@tutanota.com','8ntwUp'),(5,2,'Ворсин','Петр','Евгеньевич','tjde7c@yahoo.com','YOyhfR'),(6,2,'Старикова','Елена','Павловна','wpmrc3do@tutanota.com','RSbvHv'),(7,3,'Михайлюк','Анна','Вячеславовна','5d4zbu@tutanota.com','rwVDh9'),(8,3,'Ситдикова','Елена','Анатольевна','ptec8ym@yahoo.com','LdNyos'),(9,3,'Ворсин','Петр','Евгеньевич','1qz4kw@mail.com','gynQMT'),(10,3,'Старикова','Елена','Павловна','4np6se@mail.com','AtnDjr');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-21 11:51:13
