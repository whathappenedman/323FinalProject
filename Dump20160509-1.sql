CREATE DATABASE  IF NOT EXISTS `project1` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `project1`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: project1
-- ------------------------------------------------------
-- Server version	5.7.12-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ingredients`
--

DROP TABLE IF EXISTS `ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingredients` (
  `idIngredients` int(11) NOT NULL AUTO_INCREMENT,
  `IngredientsName` varchar(45) DEFAULT NULL,
  `IngredientsCost` int(11) DEFAULT NULL,
  PRIMARY KEY (`idIngredients`),
  UNIQUE KEY `idIngredients_UNIQUE` (`idIngredients`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredients`
--

LOCK TABLES `ingredients` WRITE;
/*!40000 ALTER TABLE `ingredients` DISABLE KEYS */;
INSERT INTO `ingredients` VALUES (1,'lettuce',0),(2,'chips',0),(3,'wings',0),(4,'dough',0),(5,'pasta',0),(6,'bread',0),(7,'cookie_dough',0),(8,'milk',0),(9,'cake_mix',0),(10,'croutons',0),(11,'ranch',0),(12,'tomatos',0),(13,'1000_island',0),(14,'salsa',0),(15,'guac',0),(16,'cheddar',0),(17,'garlic',0),(18,'buffalo_sauce',0),(19,'hot_sauce',0),(20,'chese',0),(21,'parm',0),(22,'mayo',0),(23,'butter',0),(24,'ice',0),(25,'water',0),(26,'chicken',0),(27,'beef',0),(28,'pepperoni',0),(29,'veggie',0),(30,'chocolate',0),(31,'vanilla',0),(32,'mango',0),(33,'peanut_butter',0),(34,'oatmeal',0);
/*!40000 ALTER TABLE `ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nutrition`
--

DROP TABLE IF EXISTS `nutrition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nutrition` (
  `idNutrition` int(11) NOT NULL AUTO_INCREMENT,
  `Calories` int(11) DEFAULT NULL,
  PRIMARY KEY (`idNutrition`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nutrition`
--

LOCK TABLES `nutrition` WRITE;
/*!40000 ALTER TABLE `nutrition` DISABLE KEYS */;
INSERT INTO `nutrition` VALUES (1,1000),(2,1000),(3,1000),(4,1000),(5,1000),(6,1000),(7,1000),(8,1000),(9,1000),(10,1000),(11,1000),(12,1000),(13,1000),(14,1000),(15,1000),(16,1000),(17,1000),(18,1000),(19,1000),(20,1000),(21,1000),(22,1000),(23,1000),(24,1000),(25,1000),(26,1000),(27,1000);
/*!40000 ALTER TABLE `nutrition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe_details`
--

DROP TABLE IF EXISTS `recipe_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipe_details` (
  `idRecipe_details` int(11) NOT NULL AUTO_INCREMENT,
  `Recipes_idRecipes` int(11) NOT NULL,
  `Ingredients_idIngredients` int(11) NOT NULL,
  `Recepie_detailsQuantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`idRecipe_details`),
  KEY `fk_Recepie details_Recipies_idx` (`Recipes_idRecipes`),
  KEY `fk_Recepie details_Ingredients1_idx` (`Ingredients_idIngredients`),
  CONSTRAINT `fk_Recepie details_Ingredients1` FOREIGN KEY (`Ingredients_idIngredients`) REFERENCES `ingredients` (`idIngredients`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Recepie details_Recipies` FOREIGN KEY (`Recipes_idRecipes`) REFERENCES `recipes` (`idRecipes`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_details`
--

LOCK TABLES `recipe_details` WRITE;
/*!40000 ALTER TABLE `recipe_details` DISABLE KEYS */;
INSERT INTO `recipe_details` VALUES (1,1,1,0),(2,1,10,0),(3,1,11,0),(4,2,1,0),(5,2,12,0),(6,2,13,0),(7,3,1,0),(8,3,26,0),(9,3,11,0),(10,4,2,0),(11,4,15,0),(12,5,2,0),(13,5,15,0),(14,6,2,0),(15,6,16,0),(16,7,3,0),(17,7,17,0),(18,8,3,0),(19,8,18,0),(20,9,3,0),(21,9,19,0),(22,10,4,0),(23,10,20,0),(24,10,26,0),(25,11,4,0),(26,11,20,0),(27,11,27,0),(28,12,4,0),(29,12,20,0),(30,12,28,0),(31,13,5,0),(32,13,21,0),(33,13,26,0),(34,14,5,0),(35,14,21,0),(36,14,27,0),(37,15,5,0),(38,15,21,0),(39,15,29,0),(40,16,6,0),(41,16,22,0),(42,16,26,0),(43,17,6,0),(44,17,22,0),(45,17,27,0),(46,18,6,0),(47,18,22,0),(48,18,29,0),(49,19,7,0),(50,19,23,0),(51,19,30,0),(52,20,7,0),(53,20,23,0),(54,20,33,0),(55,21,7,0),(56,21,23,0),(57,21,34,0),(58,22,8,0),(59,22,24,0),(60,22,30,0),(61,23,8,0),(62,23,24,0),(63,23,31,0),(64,24,8,0),(65,24,24,0),(66,24,32,0),(67,25,9,0),(68,25,25,0),(69,25,30,0),(70,26,9,0),(71,26,25,0),(72,26,31,0),(73,27,9,0),(74,27,25,0),(75,27,32,0);
/*!40000 ALTER TABLE `recipe_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipes`
--

DROP TABLE IF EXISTS `recipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipes` (
  `idRecipes` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Prep_Time` double DEFAULT NULL,
  `Serves` int(11) DEFAULT NULL,
  `Nutrition_idNutrition` int(11) NOT NULL,
  `Type` varchar(45) DEFAULT NULL,
  `SubType` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idRecipes`),
  UNIQUE KEY `idRecipies_UNIQUE` (`idRecipes`),
  KEY `fk_Recipies_Nutrition1_idx` (`Nutrition_idNutrition`),
  CONSTRAINT `fk_Recipies_Nutrition1` FOREIGN KEY (`Nutrition_idNutrition`) REFERENCES `nutrition` (`idNutrition`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipes`
--

LOCK TABLES `recipes` WRITE;
/*!40000 ALTER TABLE `recipes` DISABLE KEYS */;
INSERT INTO `recipes` VALUES (1,'Cesar_Salad',30,4,1,'App','Salad'),(2,'House_Salad',30,4,2,'App','Salad'),(3,'Chicken_Salad',30,4,3,'App','Salad'),(4,'Salsa_and_Chips',10,3,4,'App','Chips'),(5,'Guac_and_Chips',10,3,5,'App','Chips'),(6,'Nachos',10,3,6,'App','Chips'),(7,'Garlic_Wings',15,2,7,'App','Wings'),(8,'Buffalo_Wings',15,2,8,'App','Wings'),(9,'Spicy_Wings',15,2,9,'App','Wings'),(10,'Chicken_Pizza',40,4,10,'Ent','Pizza'),(11,'Beef_Pizza',40,4,11,'Ent','Pizza'),(12,'Pepperoni_Pizza',40,4,12,'Ent','Pizza'),(13,'Chicken_Pasta',35,4,13,'Ent','Pasta'),(14,'Beef_Pasta',35,4,14,'Ent','Pasta'),(15,'Veggie_Pasta',35,4,15,'Ent','Pasta'),(16,'Chicken_Sandwhich',15,2,16,'Ent','Sandwhich'),(17,'Beef_Sandwhich',15,2,17,'Ent','Sandwhich'),(18,'Veggie_Sandwhich',15,2,18,'Ent','Sandwhich'),(19,'Chocolate_Chip_Cookie',50,4,19,'Des','Cookie'),(20,'Peanut_Butter_Cookie',50,4,20,'Des','Cookie'),(21,'Oatmeal_Cookie',50,4,21,'Des','Cookie'),(22,'Chocolate_Ice_Cream',5,2,22,'Des','Ice_Cream'),(23,'Vanilla_Ice_Cream',5,2,23,'Des','Ice_Cream'),(24,'Mango_Ice_Cream',5,2,24,'Des','Ice_Cream'),(25,'Chocolate_Cake',90,4,25,'Des','Cake'),(26,'Vanilla_Cake',90,4,26,'Des','Cake'),(27,'Mango_Cake',90,4,27,'Des','Cake');
/*!40000 ALTER TABLE `recipes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'project1'
--
/*!50003 DROP PROCEDURE IF EXISTS `getCourse` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getCourse`(IN x VARCHAR(20))
BEGIN
select name,serves,prep_time,ingredients_idIngredients,ingredientsname 
	from recipes inner join recipe_details 
	on recipes.idrecipes = recipe_details.Recipes_idRecipes join ingredients 
	on recipe_details.ingredients_idingredients = ingredients.idingredients
		where type = x;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getrec` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getrec`(IN x VARCHAR(20))
BEGIN
select name,serves,prep_time,ingredients_idIngredients,ingredientsname 
	from recipes inner join recipe_details 
	on recipes.idrecipes = recipe_details.Recipes_idRecipes join ingredients 
	on recipe_details.ingredients_idingredients = ingredients.idingredients
		where name = x;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getTotal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getTotal`(IN x1 VARCHAR(20), IN x2 VARCHAR(20), IN x3 VARCHAR(20))
BEGIN
select ingredientsname 
	from recipes inner join recipe_details 
	on recipes.idrecipes = recipe_details.Recipes_idRecipes join ingredients 
	on recipe_details.ingredients_idingredients = ingredients.idingredients
		where name = x1
        union
select ingredientsname 
	from recipes inner join recipe_details 
	on recipes.idrecipes = recipe_details.Recipes_idRecipes join ingredients 
	on recipe_details.ingredients_idingredients = ingredients.idingredients
		where name = x2
		union
select ingredientsname 
	from recipes inner join recipe_details 
	on recipes.idrecipes = recipe_details.Recipes_idRecipes join ingredients 
	on recipe_details.ingredients_idingredients = ingredients.idingredients
		where name = x3;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-09 20:15:14
