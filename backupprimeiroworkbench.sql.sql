CREATE DATABASE  IF NOT EXISTS `db_faculdade` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_faculdade`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_faculdade
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `aluno`
--

DROP TABLE IF EXISTS `aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno` (
  `RA` int NOT NULL AUTO_INCREMENT,
  `nome_aluno` char(20) DEFAULT NULL,
  `sobrenome_aluno` char(20) DEFAULT NULL,
  `CPF` char(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `nome_pai` char(50) DEFAULT NULL,
  `nome_mae` char(50) DEFAULT NULL,
  `email` char(50) DEFAULT NULL,
  `whatsapp` char(20) DEFAULT NULL,
  `fk_cod_turma` int DEFAULT NULL,
  `fk_cod_curso` int DEFAULT NULL,
  `fk_cod_endereco` int DEFAULT NULL,
  PRIMARY KEY (`RA`),
  KEY `fk_cod_turma` (`fk_cod_turma`),
  KEY `fk_cod_curso` (`fk_cod_curso`),
  KEY `fk_cod_endereco` (`fk_cod_endereco`),
  CONSTRAINT `aluno_ibfk_1` FOREIGN KEY (`fk_cod_turma`) REFERENCES `turma` (`cod_turma`),
  CONSTRAINT `aluno_ibfk_2` FOREIGN KEY (`fk_cod_curso`) REFERENCES `curso` (`cod_curso`),
  CONSTRAINT `aluno_ibfk_3` FOREIGN KEY (`fk_cod_endereco`) REFERENCES `endereco` (`cod_endereco`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
INSERT INTO `aluno` VALUES (61,'Neuza','Alpuim_Orriça','62912334012',1,'F','Antenor_Orriça','Neuzimar_Alpuim_orriça','na@kwontol.com','(63)98649-4358',1,31,20),(62,'Lorena','Faria Pestana','18733004099',0,'F','Paulo_faria','Claudia_pestana','lf@kwontol.com','(63)97330-2827',8,31,21),(63,'Alessia','Lage Franqueira','10131216007',1,'F','Pablo_Lage Franqueira','virna_franqueira','al@kwontol.com','(63)99515-4695',1,31,22),(64,'Gonçalo','Lage','00775693006',1,'M','Noa Silva','Guta_lage','gl@kwontol.com','(63)97662-4933',5,40,23),(65,'Leonor','Trindade Marreiro','69944352020',0,'M','Bento_neto','Maria_Marreiro','lt@kwontol.com','(63)96978-3034',7,33,24),(66,'Matilde','Andrade Sarmento','46830597030',1,'F','Bernardo_louves','Maria_de_lurdes','ma@kwontol.com','(63)96938-3754',5,40,25),(67,'Beatriz','Alpuim_Orriça','37502182004',1,'F','Antenor_Orriça','Marcia_freire','ba@kwontol.com','(63)99122-1529',4,36,25),(68,'Telmo','Almada Roçadas','56245673089',1,'M','jose_Pereira','Amanda_Roçadas','ta@kwontol.com','(63)96702-3632',7,33,26),(69,'Alex','Maia Imperial','83161915046',1,'M','Raimundo_nonato','Botanica_Imperial','am@kwontol.com','(63)98725-0340',1,31,27),(70,'Michael','Vasques','03580900080',1,'M','Bryan_sousa','Jennifer_Vasques','mv@kwontol.com','(63)96785-8703',6,37,28),(71,'Ayrton','Chousa','07909201079',1,'M','Carlos_chousa','Carla_chousa','ac@kwontol.com','(63)96966-4567',4,36,29),(72,'Neuza','Silva','91899796053',1,'F','Flavio_silva','Branca_Silvaa','ns@kwontol.com','(63)98241-7446',7,33,30),(73,'Nayr','Mascarenhas','44268288058',1,'F','Tiago_Mascarenha','Fernanda_Alves_Mascarenhas','nm@kwontol.com','(63)97210-1175',6,37,31),(74,'Roger','Anlicoara Melo','14295701050',1,'F','Rogerio_Melo','Bianca_Anlicoara_Melo','ra@kwontol.com','(63)99339-8830',3,34,32),(75,'Pedro','Rojas','01179361032',1,'M','Zenilto_Rojas','Luzia_Rojas','pr@kwontol.com','(63)96971-5555',8,31,33),(76,'Pedro','Valente Sandinha','83513455046',0,'M','Valentin_Sandinha','Maria_Valente','pv@kwontol.com','(63)96746-6516',3,34,34),(77,'Jessé','Kenedy','92421167000',1,'M','Almir_Kennedy','Ana_Lucia_Souza','jk@kwontol.com','(63)98176-6821',2,32,35),(78,'Polina','carrão','07253917073',1,'F','Vaz_carrão','Guiomar_Carrão','pc@kwontol.com','(63)99374-5459',6,37,36),(79,'Max','Bairros Boga','74426049008',1,'M','Joshua_Boga','Donatela_Boga_Dias','mb@kwontol.com','(63)97985-3126',8,31,37),(80,'Guransh','Pimenta Tedim','79221679039',1,'M','Cailas_Tedim','Jasmine_Pimenta_Tedim','gp@kwontol.com','(63)98676-6667',2,32,38);
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aluno_disciplina`
--

DROP TABLE IF EXISTS `aluno_disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno_disciplina` (
  `fk_RA` int NOT NULL,
  `fk_cod_disciplina` int NOT NULL,
  PRIMARY KEY (`fk_RA`,`fk_cod_disciplina`),
  KEY `fk_cod_disciplina` (`fk_cod_disciplina`),
  CONSTRAINT `aluno_disciplina_ibfk_1` FOREIGN KEY (`fk_RA`) REFERENCES `aluno` (`RA`),
  CONSTRAINT `aluno_disciplina_ibfk_2` FOREIGN KEY (`fk_cod_disciplina`) REFERENCES `disciplina` (`cod_disciplina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno_disciplina`
--

LOCK TABLES `aluno_disciplina` WRITE;
/*!40000 ALTER TABLE `aluno_disciplina` DISABLE KEYS */;
INSERT INTO `aluno_disciplina` VALUES (67,1),(71,1),(67,2),(71,2),(67,3),(71,3),(67,4),(71,4),(67,5),(71,5),(64,6),(66,6),(64,7),(66,7),(64,8),(66,8),(64,9),(66,9),(64,10),(65,10),(66,10),(68,10),(72,10),(70,11),(73,11),(78,11),(70,12),(73,12),(78,12),(70,13),(73,13),(78,13),(70,14),(73,14),(78,14),(70,15),(73,15),(78,15),(61,16),(62,16),(63,16),(69,16),(75,16),(79,16),(61,17),(62,17),(63,17),(69,17),(75,17),(79,17),(61,18),(62,18),(63,18),(69,18),(75,18),(79,18),(61,19),(62,19),(63,19),(69,19),(75,19),(79,19),(61,20),(62,20),(63,20),(65,20),(68,20),(69,20),(72,20),(75,20),(79,20),(65,21),(68,21),(72,21),(77,21),(80,21),(65,22),(68,22),(72,22),(77,22),(80,22),(74,23),(76,23),(74,24),(76,24),(74,25),(76,25),(74,26),(76,26),(65,27),(68,27),(72,27),(77,27),(80,27),(77,28),(80,28),(77,29),(80,29),(74,30),(76,30);
/*!40000 ALTER TABLE `aluno_disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso` (
  `cod_curso` int NOT NULL AUTO_INCREMENT,
  `nome_curso` char(20) DEFAULT NULL,
  `fk_cod_departamento` int DEFAULT NULL,
  PRIMARY KEY (`cod_curso`),
  KEY `fk_cod_departamento` (`fk_cod_departamento`),
  CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`fk_cod_departamento`) REFERENCES `departamento` (`cod_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (31,'Analise_de_sistemas',5),(32,'Engenharia_software',5),(33,'Engenharia_eletrica',5),(34,'adm_banco_de_dados',5),(35,'Historia',1),(36,'Pscicologia',1),(37,'Biologia',3),(38,'fisica',2),(39,'Matemática',2),(40,'contabilidade',2);
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso_disciplina`
--

DROP TABLE IF EXISTS `curso_disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso_disciplina` (
  `fk_cod_curso` int NOT NULL,
  `fk_cod_disciplina` int NOT NULL,
  PRIMARY KEY (`fk_cod_curso`,`fk_cod_disciplina`),
  KEY `fk_cod_disciplina` (`fk_cod_disciplina`),
  CONSTRAINT `curso_disciplina_ibfk_1` FOREIGN KEY (`fk_cod_curso`) REFERENCES `curso` (`cod_curso`),
  CONSTRAINT `curso_disciplina_ibfk_2` FOREIGN KEY (`fk_cod_disciplina`) REFERENCES `disciplina` (`cod_disciplina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso_disciplina`
--

LOCK TABLES `curso_disciplina` WRITE;
/*!40000 ALTER TABLE `curso_disciplina` DISABLE KEYS */;
INSERT INTO `curso_disciplina` VALUES (36,1),(35,2),(36,2),(35,3),(36,3),(36,4),(36,5),(39,6),(40,6),(38,7),(39,7),(40,7),(38,8),(39,8),(40,8),(38,9),(39,9),(40,9),(33,10),(39,10),(40,10),(37,11),(37,12),(37,13),(37,14),(37,15),(31,16),(31,17),(31,18),(31,19),(31,20),(33,20),(32,21),(33,21),(32,22),(33,22),(34,23),(34,24),(34,25),(34,26),(32,27),(33,27),(32,28),(32,29),(34,30);
/*!40000 ALTER TABLE `curso_disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamento` (
  `cod_departamento` int NOT NULL AUTO_INCREMENT,
  `nome_departamento` char(20) NOT NULL,
  PRIMARY KEY (`cod_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,'Ciências_humanas'),(2,'Matemática'),(3,'Biologicas'),(4,'Estágio'),(5,'Tec_informação');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplina`
--

DROP TABLE IF EXISTS `disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disciplina` (
  `cod_disciplina` int NOT NULL AUTO_INCREMENT,
  `nome_disciplina` char(50) DEFAULT NULL,
  `carga_horaria` int NOT NULL,
  `descricao` char(50) DEFAULT NULL,
  `num_alunos` int NOT NULL,
  `fk_cod_departamento` int DEFAULT NULL,
  PRIMARY KEY (`cod_disciplina`),
  KEY `fk_cod_departamento` (`fk_cod_departamento`),
  CONSTRAINT `disciplina_ibfk_1` FOREIGN KEY (`fk_cod_departamento`) REFERENCES `departamento` (`cod_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplina`
--

LOCK TABLES `disciplina` WRITE;
/*!40000 ALTER TABLE `disciplina` DISABLE KEYS */;
INSERT INTO `disciplina` VALUES (1,'Pscicol_cognitiva',80,'null',2,1),(2,'Filosofia e ética',80,'null',2,1),(3,'Antropol_e_sociedadea',80,'null',2,1),(4,'Psicologia social',80,'null',2,1),(5,'Neuropsicologia',80,'null',2,1),(6,'Introducao_matematica',80,'null',2,2),(7,'Aritimetica',80,'null',2,2),(8,'Calculo',80,'null',2,2),(9,'Geometria',80,'null',2,2),(10,'Raciocinio logico',80,'null',5,2),(11,'Bio da Conservação',80,'null',3,3),(12,'Anatom_Vegetal',80,'null',3,3),(13,'Fisiol_Vegetal',80,'null',3,3),(14,'Palinologia',80,'null',3,3),(15,'Anatom_Ecológica',80,'null',3,3),(16,'Análise Estruturada de Sistemas',80,'null',6,5),(17,'Análise Orientada a Objetos',80,'null',6,5),(18,'Fundamentos de Redes de Computadores',80,'null',6,5),(19,'Laboratório de Programação',80,'null',6,5),(20,'Teoria Geral de Sistemas',80,'null',9,5),(21,'Eng _Software',80,'null',5,5),(22,'Gest_Seg_de_TI',80,'null',5,5),(23,'Banco de Dados',80,'null',2,5),(24,'Estrut_d_Dados',80,'null',2,5),(25,'modelagem de Dados',80,'null',2,5),(26,'Programação em Banco de Dados',80,'null',2,5),(27,'Desenvolvimento de Software Seguro',80,'null',5,5),(28,'Direito e Legislação',80,'null',5,5),(29,'Linguagens de Programação',80,'null',5,5),(30,'Sistemas de Banco de Dados',80,'null',2,5);
/*!40000 ALTER TABLE `disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplina_historico`
--

DROP TABLE IF EXISTS `disciplina_historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disciplina_historico` (
  `fk_cod_disciplina` int NOT NULL,
  `fk_cod_historico` int NOT NULL,
  `nota` float(4,2) DEFAULT NULL,
  `frequencia` int DEFAULT NULL,
  PRIMARY KEY (`fk_cod_disciplina`,`fk_cod_historico`),
  KEY `fk_cod_historico` (`fk_cod_historico`),
  CONSTRAINT `disciplina_historico_ibfk_1` FOREIGN KEY (`fk_cod_disciplina`) REFERENCES `disciplina` (`cod_disciplina`),
  CONSTRAINT `disciplina_historico_ibfk_2` FOREIGN KEY (`fk_cod_historico`) REFERENCES `historico` (`cod_historico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplina_historico`
--

LOCK TABLES `disciplina_historico` WRITE;
/*!40000 ALTER TABLE `disciplina_historico` DISABLE KEYS */;
/*!40000 ALTER TABLE `disciplina_historico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `cod_endereco` int NOT NULL AUTO_INCREMENT,
  `nome_rua` char(50) NOT NULL,
  `numer_rua` int NOT NULL,
  `complemento` char(20) DEFAULT NULL,
  `CEP` char(8) NOT NULL,
  `fk_cod_tipo_logradouro` int DEFAULT NULL,
  PRIMARY KEY (`cod_endereco`),
  KEY `fk_cod_tipo_logradouro` (`fk_cod_tipo_logradouro`),
  CONSTRAINT `endereco_ibfk_1` FOREIGN KEY (`fk_cod_tipo_logradouro`) REFERENCES `tipo_logradouro` (`cod_tipo_logradouro`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (20,'francana',150,'null','70630701',1),(21,'10_de_julho',10,'null','72320316',1),(22,'paulistana',78,'oeste','71825223',1),(23,'carioca',79,'null','71536279',1),(24,'goiana',20,'centro','70774000',1),(25,'pascoal',25,'oeste','72309403',1),(26,'josé_neves',178,'null','72317001',1),(27,'bento_alvarado',12,'null','72748004',1),(28,'coisa_boa',5,'null','72610510',1),(29,'coisa_ruim',16,'centro','71261115',1),(30,'tudo_de_bom',132,'boqueirão','73045010',1),(31,'sapolandia',147,'null','72542409',1),(32,'buriti',129,'centro','71573213',1),(33,'arraias',222,'centro','72736012',1),(34,'padre_emilio_de_miranda',4,'null','72710641',1),(35,'cascaiz',282,'null','72260771',1),(36,'corumba',4,'surubim','72536100',1),(37,'brownie',46,'null','73062007',1),(38,'mercadão',49,'boqueirão','72319557',1);
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historico`
--

DROP TABLE IF EXISTS `historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historico` (
  `cod_historico` int NOT NULL AUTO_INCREMENT,
  `dt_inicio` date DEFAULT NULL,
  `dt_fim` date DEFAULT NULL,
  `fk_RA` int NOT NULL,
  PRIMARY KEY (`cod_historico`),
  KEY `fk_RA` (`fk_RA`),
  CONSTRAINT `historico_ibfk_1` FOREIGN KEY (`fk_RA`) REFERENCES `aluno` (`RA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico`
--

LOCK TABLES `historico` WRITE;
/*!40000 ALTER TABLE `historico` DISABLE KEYS */;
/*!40000 ALTER TABLE `historico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professor` (
  `cod_professor` int NOT NULL AUTO_INCREMENT,
  `nome_professor` char(20) NOT NULL,
  `sobrenome_professor` char(50) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `fk_cod_departamento` int DEFAULT NULL,
  PRIMARY KEY (`cod_professor`),
  KEY `fk_cod_departamento` (`fk_cod_departamento`),
  CONSTRAINT `professor_ibfk_1` FOREIGN KEY (`fk_cod_departamento`) REFERENCES `departamento` (`cod_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES (1,'Robert','Sousa',1,1),(2,'Suane','Vilela',1,1),(3,'Jaine','Couto',0,2),(4,'Fabio','Naves',0,2),(5,'Lorena','Silva',1,2),(6,'Lorivaldo','Sousa',1,3),(7,'Catia','Dias',1,3),(8,'Alex','Ribeiro',0,4),(9,'Luciano','Lopes',1,5),(10,'Andrecya','Regis',1,5);
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor_disciplina`
--

DROP TABLE IF EXISTS `professor_disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professor_disciplina` (
  `fk_cod_disciplina` int NOT NULL,
  `fk_cod_professor` int NOT NULL,
  PRIMARY KEY (`fk_cod_disciplina`,`fk_cod_professor`),
  CONSTRAINT `professor_disciplina_ibfk_1` FOREIGN KEY (`fk_cod_disciplina`) REFERENCES `disciplina` (`cod_disciplina`),
  CONSTRAINT `professor_disciplina_ibfk_2` FOREIGN KEY (`fk_cod_disciplina`) REFERENCES `professor` (`cod_professor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor_disciplina`
--

LOCK TABLES `professor_disciplina` WRITE;
/*!40000 ALTER TABLE `professor_disciplina` DISABLE KEYS */;
/*!40000 ALTER TABLE `professor_disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefone`
--

DROP TABLE IF EXISTS `telefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefone` (
  `cod_telefone` int NOT NULL AUTO_INCREMENT,
  `num_telefone` char(20) DEFAULT NULL,
  `fk_cod_tipo_tel` int DEFAULT NULL,
  PRIMARY KEY (`cod_telefone`),
  KEY `fk_cod_tipo_tel` (`fk_cod_tipo_tel`),
  CONSTRAINT `telefone_ibfk_1` FOREIGN KEY (`fk_cod_tipo_tel`) REFERENCES `tipo_telefone` (`cod_tipo_tel`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone`
--

LOCK TABLES `telefone` WRITE;
/*!40000 ALTER TABLE `telefone` DISABLE KEYS */;
INSERT INTO `telefone` VALUES (1,'(63)94200-8636',7),(2,'(63)97330-2827',7),(3,'(63)92606-7573',7),(4,'(63)95045-7352',7),(5,'(63)97322-1250',7),(6,'(63)95026-6216',7),(7,'(63)91581-9162',7),(8,'(63)95698-5537',7),(9,'(63)98241-7446',7),(10,'(63)97210-1175',7),(11,'(63)99339-8830',7),(12,'(63)91639-1741',7),(13,'(63)91451-1997',7),(14,'(63)99374-5459',7),(15,'(63)94113-2071',7),(16,'(63)93314-5771',7),(17,'(63)3329-7185',8),(18,'(63)3896-0242',8),(19,'(63)2888-1038',8),(20,'(63)2893-2248',9),(21,'(63)3512-2932',9),(22,'(63)2653-1707',9);
/*!40000 ALTER TABLE `telefone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefone_aluno`
--

DROP TABLE IF EXISTS `telefone_aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefone_aluno` (
  `cod_tel_aluno` int NOT NULL AUTO_INCREMENT,
  `fk_RA` int NOT NULL,
  `fk_cod_telefone` int NOT NULL,
  PRIMARY KEY (`cod_tel_aluno`),
  KEY `fk_RA` (`fk_RA`),
  KEY `fk_cod_telefone` (`fk_cod_telefone`),
  CONSTRAINT `telefone_aluno_ibfk_1` FOREIGN KEY (`fk_RA`) REFERENCES `aluno` (`RA`),
  CONSTRAINT `telefone_aluno_ibfk_2` FOREIGN KEY (`fk_cod_telefone`) REFERENCES `telefone` (`cod_telefone`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone_aluno`
--

LOCK TABLES `telefone_aluno` WRITE;
/*!40000 ALTER TABLE `telefone_aluno` DISABLE KEYS */;
INSERT INTO `telefone_aluno` VALUES (1,61,1),(2,61,17),(3,61,20),(4,62,2),(5,64,3),(6,65,4),(7,65,18),(8,65,21),(9,66,5),(10,67,6),(11,69,7),(12,69,19),(13,69,22),(14,70,8),(15,72,9),(16,73,10),(17,74,11),(18,76,12),(19,77,13),(20,78,14),(21,79,15),(22,80,16);
/*!40000 ALTER TABLE `telefone_aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_logradouro`
--

DROP TABLE IF EXISTS `tipo_logradouro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_logradouro` (
  `cod_tipo_logradouro` int NOT NULL AUTO_INCREMENT,
  `tipo_logradouro` char(11) DEFAULT NULL,
  PRIMARY KEY (`cod_tipo_logradouro`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_logradouro`
--

LOCK TABLES `tipo_logradouro` WRITE;
/*!40000 ALTER TABLE `tipo_logradouro` DISABLE KEYS */;
INSERT INTO `tipo_logradouro` VALUES (1,'rua'),(2,'quadra'),(3,'avenida'),(4,'praça'),(5,'area'),(6,'colônia'),(7,'condominio'),(8,'chácara');
/*!40000 ALTER TABLE `tipo_logradouro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_telefone`
--

DROP TABLE IF EXISTS `tipo_telefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_telefone` (
  `cod_tipo_tel` int NOT NULL AUTO_INCREMENT,
  `tipo_telefone` char(8) DEFAULT NULL,
  PRIMARY KEY (`cod_tipo_tel`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_telefone`
--

LOCK TABLES `tipo_telefone` WRITE;
/*!40000 ALTER TABLE `tipo_telefone` DISABLE KEYS */;
INSERT INTO `tipo_telefone` VALUES (7,'cel'),(8,'res'),(9,'com');
/*!40000 ALTER TABLE `tipo_telefone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turma`
--

DROP TABLE IF EXISTS `turma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `turma` (
  `cod_turma` int NOT NULL AUTO_INCREMENT,
  `num_alunos` int DEFAULT NULL,
  `periodo` char(8) DEFAULT NULL,
  `dt_inicio` date DEFAULT NULL,
  `dt_fim` date DEFAULT NULL,
  `fk_cod_curso` int DEFAULT NULL,
  PRIMARY KEY (`cod_turma`),
  KEY `fk_cod_curso` (`fk_cod_curso`),
  CONSTRAINT `turma_ibfk_1` FOREIGN KEY (`fk_cod_curso`) REFERENCES `curso` (`cod_curso`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turma`
--

LOCK TABLES `turma` WRITE;
/*!40000 ALTER TABLE `turma` DISABLE KEYS */;
INSERT INTO `turma` VALUES (1,3,'manhã','2022-01-10','2026-12-10',31),(2,2,'manhã','2022-01-10','2026-12-10',32),(3,2,'manhã','2021-01-10','2025-12-10',34),(4,2,'tarde','2021-08-10','2025-12-10',36),(5,2,'noite','2021-08-10','2025-12-10',40),(6,3,'noite','2022-01-10','2026-12-10',37),(7,3,'noite','2022-01-10','2026-12-10',33),(8,3,'noite','2021-01-10','2025-12-10',31);
/*!40000 ALTER TABLE `turma` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-09 20:10:48
