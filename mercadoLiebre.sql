CREATE DATABASE  IF NOT EXISTS `mercadoliebre16_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mercadoliebre16_db`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: mercadoliebre16_db
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addresses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `street` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `userId` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `addresses_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `orderId` int DEFAULT NULL,
  `productId` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orderId` (`orderId`),
  KEY `productId` (`productId`),
  CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `orders` (`id`),
  CONSTRAINT `carts_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Hogar','2022-09-28 06:00:21',NULL,NULL),(2,'Informatica','2022-09-28 06:00:21',NULL,NULL),(3,'Audio y video','2022-09-28 06:00:21',NULL,NULL),(4,'Celulares','2022-09-28 06:00:21',NULL,NULL),(5,'Tiempo libre','2022-09-28 06:00:21',NULL,NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `file` varchar(255) DEFAULT NULL,
  `productId` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `productId` (`productId`),
  CONSTRAINT `images_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,'img-cafetera-moulinex.jpg',1,'2022-09-28 06:00:21',NULL,NULL),(2,'img-macbook-pro-2019.jpg',2,'2022-09-28 06:00:21',NULL,NULL),(3,'img-samsung-galaxy-s10.jpg',3,'2022-09-28 06:00:21',NULL,NULL),(4,'img-heladera-whirpool.jpg',4,'2022-09-28 06:00:21',NULL,NULL),(5,'img-camara-nikon.jpg',5,'2022-09-28 06:00:21',NULL,NULL),(6,'img-aire-acondicionado.jpg',6,'2022-09-28 06:00:21',NULL,NULL),(7,'img-laptop-lenovo.jpg',7,'2022-09-28 06:00:21',NULL,NULL),(8,'img-iphone-11.jpg',8,'2022-09-28 06:00:21',NULL,NULL),(9,'img-apple-magic-keyboard.jpg',9,'2022-09-28 06:00:21',NULL,NULL),(10,'img-mouse-logitech.jpg',10,'2022-09-28 06:00:21',NULL,NULL),(11,'img-parlante-bose.jpg',11,'2022-09-28 06:00:21',NULL,NULL),(12,'img-home-theater-sony.jpg',12,'2022-09-28 06:00:21',NULL,NULL),(13,'img-tv-samsung-smart.jpg',13,'2022-09-28 06:00:21',NULL,NULL),(14,'img-sony-blueray.jpg',14,'2022-09-28 06:00:21',NULL,NULL),(15,'img-bicicleta-fierce.jpg',15,'2022-09-28 06:00:21',NULL,NULL),(16,'img-parlante-sony.jpg',16,'2022-09-28 06:00:21',NULL,NULL);
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `total` int DEFAULT NULL,
  `userId` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` int NOT NULL,
  `discount` int DEFAULT '0',
  `description` text NOT NULL,
  `categoryId` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categoryId` (`categoryId`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Cafetera Moulinex Dolce Gusto Edited',23000,50,'Cafetera Dolce Gusto Lumio. La cafetera Dolce Gusto Lumio es de variedad autom??tica que ha llegado con un dise??o radical al que nos ten??a acostumbrados Dolce Gusto.En este post te contamos todo lo que necesitas saber sobre ella, desde sus caracter??sticas t??cnicas hasta la calidad de las c??psulas o price.',1,'2022-09-28 06:00:21',NULL,NULL),(2,'Macbook Pro 2022',50000,3,'Macbook Pro 2019 Mpxq2ll/a Intel Core i5 2.3 Ghz 8gb RAM 128gb SSD Pantalla 13.3\" Retina Apple Nueva Original. Importada de USA. Se entrega con la factura de compra para contar con la garant??a del fabricante',2,'2022-09-28 06:00:21',NULL,NULL),(3,'Samsung Galaxy S10',72999,25,'Experiencia visual excepcional. Mir?? tus series y pel??culas favoritas con la mejor definici??n.Tendr??s colores brillantes y detalles precisos en todos tus contenidos.Disfrut?? a??n m??s del mejor entretenimiento gracias a su vasta pantalla y ??ngulos de visi??n amplios.',4,'2022-09-28 06:00:21',NULL,NULL),(4,'Heladera no frost Whirlpool WRM45A',147900,10,'Disfrut?? de la frescura de tus alimentos y almacenalos de manera pr??ctica y c??moda en tu heladera Whirlpool, la protagonista de tu cocina. Su sistema no frost evita la generaci??n de escarcha y te permitir?? conservar el sabor y las propiedades nutritivas de los productos.A su vez, su freezer cuenta con una capacidad de 86 litros, que facilitar?? la distribuci??n y el orden de tus congelados para que no te preocupes por la falta de espacio.',1,'2022-09-28 06:00:21',NULL,NULL),(5,'Nikon Reflex D3500 - Kit',53000,20,'Incluye la c??mara D3500, el objetivo zoom AF-P DX NIKKOR 18-55mm y el superteleobjetivo zoom compacto AF-P DX NIKKOR 70-300mm. Ambos objetivos enfocan de forma r??pida y silenciosa, lo que resulta ideal para grabar metraje de v??deo sin que se escuche apenas el ruido del accionamiento.',5,'2022-09-28 06:00:21',NULL,NULL),(6,'Aire Acondicionado 3200w Frio / Calor',20999,12,'AIRE SPLIT 3200W TACA-3200WCHSA/KC FC TCL. Capacidad frio 3200 Watts. Capacidad calor 3300 Watts. Potencia Electrica(W)frio 996. Potencia Electrica(W)calor 1028. Eficiencia energ??tica calor C. Eficiencia energ??tica frio A. Frigorias 2750 UNIDAD INTERIOR. Peso Bruto 10kg. Peso Neto 7 kg',1,'2022-09-28 06:00:21',NULL,NULL),(7,'Notebook Lenovo I3 Intel 8gb Ram',36700,5,'PROCESADOR / CHIPSET. CPU: Intel Core i3(8a generaci??n) 8130U / 2.2 GHz. Velocidad turbo m??xima: 3, 4 GHz. Numero de n??cleos: Doble n??cleo. Cache: 4 MB. Arquitectura de 64 bit: ss. MEMORIA CACH??. Tama??o instalada: 4 MB. ALMACENAMIENTO. Interfaz Serial ATA - 600',2,'2022-09-28 06:00:21',NULL,NULL),(8,'Apple iPhone 11 Pro Dual SIM 256 GB',148000,2,'??El nuevo smartphone que lo tiene todo! Con este lanzamiento, Apple ha superado todos sus r??cords. Su dise??o se destaca por sus l??neas finas y distinguidas a partir de una sola hoja de vidrio resistente, combinada con aluminio de excelente calidad.',4,'2022-09-28 06:00:21',NULL,NULL),(9,'Teclado Apple Magic Inal??mbrico',41398,0,'El teclado m??gico combina un dise??o elegante con una bater??a recargable incorporada y funciones clave mejoradas. Con un mecanismo de tijera estable debajo de cada tecla, as?? como un recorrido de teclas optimizado y un perfil bajo, el Teclado M??gico ofrece una experiencia de escritura notablemente c??moda y precisa.',2,'2022-09-28 06:00:21',NULL,NULL),(10,'Mouse Inal??mbrico Logitech M280',1200,10,'Uso m??s c??modo para la mano derecha gracias a la forma contorneada con recubrimiento de goma blanda. Duraci??n de las pilas hasta 18 meses, gracias al dise??o para ahorrar energ??a.El M280 entra autom??ticamente en estado de suspensi??n cuando no se est?? usando.',2,'2022-09-28 06:00:21',NULL,NULL),(11,'Parlante Inal??mbrico Bose Soundtouch 10',19990,12,'Parlante Inal??mbrico Bose Soundtouch 10. SoundTouch??.La manera m??s sencilla de reproducir m??sica en todo su hogar de forma inal??mbrica. Caracter??sticas. ?? Marca: Bose. ?? Modelo: SoundTouch. ?? Color: Negro',3,'2022-09-28 06:00:21',NULL,NULL),(12,'Home Theatre Sony Bdv-e4100',32990,0,'El sonido Surround de 5.1 canales y 1000 W proporciona un audio de verdadero impacto en los efectos especiales de pel??culas y efectos de sonido de m??sica y deportes. Con la tecnolog??a Near Field Communication(NFC) pod??s disfrutar de Sonido One- Touch para reproducir m??sica de forma instant??nea',3,'2022-09-28 06:00:21',NULL,NULL),(13,'Smart TV Samsung 4K 50',34990,0,'Con el Smart TV Samsung UN50MU6100, viv?? una nueva experiencia visual con la resoluci??n 4K, que te presentar?? im??genes con gran detalle y de alta calidad. Ahora todo lo que veas cobrar?? vida con brillo y colores m??s reales. Gracias a su tama??o de 50\", podr??s transformar tu espacio en una sala de cine y transportarte a donde quieras.',3,'2022-09-28 06:00:21',NULL,NULL),(14,'Sony S6700 Reproductor De Blu-ray ',10999,5,'Disfruta de tus pel??culas favoritas con hasta cuatro veces m??s detalles que Full HD, gracias a la conversi??n de se??ales 4K. Cuando se conecta a un televisor compatible,un procesador de video avanzado convierte el video est??ndar en una se??al cercana a la resoluci??n 4K (3840 x 2160). Con ocho millones de p??xeles, obtendr??s im??genes m??s n??tidas y detalladas, y la mayor calidad de la image te permite sentarte m??s cerca de la pantalla para que te sientas como en el cine.',3,'2022-09-28 06:00:21',NULL,NULL),(15,'Bicicleta Mountain Bike Fierce Rodado 28',25977,12,'Bicicleta Mountain Bike Fierce Rodado 29 21 velocidades. Tipo: Mountain Bike. Rodado: 29. Material Cuadro: Aluminio. Talle: 18. Suspensi??n: Delantera. Velocidades: 21 - Shimano. Sistema de Freno: Disco Mec??nico. Llantas: Doble pared.',5,'2022-09-28 06:00:21',NULL,NULL),(16,'Sony Srs-xb12 Parlante Bluetooth Port??til',4699,5,'Deja que la m??sica dance cobre vida con EXTRA BASS??? Anima el ambiente con EXTRA BASS???1. Un radiador pasivo trabaja con el parlante monoaural para potenciar los tonos bajos y mejorar los graves, a pesar del tama??o compacto. ',3,'2022-09-28 06:00:21',NULL,NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rols`
--

DROP TABLE IF EXISTS `rols`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rols` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rols`
--

LOCK TABLES `rols` WRITE;
/*!40000 ALTER TABLE `rols` DISABLE KEYS */;
INSERT INTO `rols` VALUES (1,'admin','2022-09-28 06:00:21',NULL,NULL),(2,'user','2022-09-28 06:00:21',NULL,NULL);
/*!40000 ALTER TABLE `rols` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequelizemeta`
--

DROP TABLE IF EXISTS `sequelizemeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequelizemeta`
--

LOCK TABLES `sequelizemeta` WRITE;
/*!40000 ALTER TABLE `sequelizemeta` DISABLE KEYS */;
INSERT INTO `sequelizemeta` VALUES ('20220915203454-create-category.js'),('20220915203743-create-rol.js'),('20220915203926-create-product.js'),('20220915204350-create-image.js'),('20220915204511-create-user.js'),('20220915204640-create-address.js'),('20220915204853-create-order.js'),('20220915205011-create-cart.js');
/*!40000 ALTER TABLE `sequelizemeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `rolId` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rolId` (`rolId`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`rolId`) REFERENCES `rols` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','admin@gmail.com','$2b$10$4NRL8nmsROXYnzJUAU35au2T91uSn.rP2nlszt9KqU5C5RFqoEkqe',NULL,1,'2022-09-28 06:00:23',NULL,NULL),(2,'user','user','user@gmail.com','$2b$10$efNNN3vpNI7vpCS0kqPnBOtan9kQA06q7jcIgT0BUtbxAOgrnN0Tm',NULL,2,'2022-09-28 06:00:23',NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-29 19:02:16
