-- MySqlBackup.NET 2.3.8.0
-- Dump Time: 2024-06-21 11:52:02
-- --------------------------------------
-- Server version 8.0.36 MySQL Community Server - GPL


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- 
-- Definition of __efmigrationshistory
-- 

DROP TABLE IF EXISTS `__efmigrationshistory`;
CREATE TABLE IF NOT EXISTS `__efmigrationshistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL,
  PRIMARY KEY (`MigrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 
-- Dumping data for table __efmigrationshistory
-- 

/*!40000 ALTER TABLE `__efmigrationshistory` DISABLE KEYS */;
INSERT INTO `__efmigrationshistory`(`MigrationId`,`ProductVersion`) VALUES('20240618032204_inicial','7.0.20'),('20240619135741_mudança renda mensal','7.0.20'),('20240619141130_inclusao nome pai e mae','7.0.20'),('20240619141450_nome pai e mae','7.0.20'),('20240620200847_inclusão observação na venda','7.0.20'),('20240620201751_inclusão observação na venda 2','7.0.20'),('20240620203124_inclusão observação na venda 3','7.0.20');
/*!40000 ALTER TABLE `__efmigrationshistory` ENABLE KEYS */;

-- 
-- Definition of clientes
-- 

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE IF NOT EXISTS `clientes` (
  `ClienteID` int NOT NULL AUTO_INCREMENT,
  `Nome` longtext NOT NULL,
  `Endereco` longtext,
  `Cpf` longtext,
  `Rg` longtext,
  `DataNascimento` datetime(6) DEFAULT NULL,
  `EstadoCivil` longtext,
  `ContatoConjuge` longtext,
  `CasaPropriaAluguel` longtext,
  `Profissao` longtext,
  `LocalTrabalho` longtext,
  `RendaMensal` longtext,
  `Email` varchar(100) DEFAULT NULL,
  `Telefone` longtext NOT NULL,
  `DataCadastro` datetime(6) DEFAULT NULL,
  `DataAlteracaoCadastro` datetime(6) DEFAULT NULL,
  `Status` int NOT NULL,
  `LojaId` int NOT NULL,
  `Observacoes` longtext,
  `NomeMae` longtext,
  `NomePai` longtext,
  PRIMARY KEY (`ClienteID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 
-- Dumping data for table clientes
-- 

/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes`(`ClienteID`,`Nome`,`Endereco`,`Cpf`,`Rg`,`DataNascimento`,`EstadoCivil`,`ContatoConjuge`,`CasaPropriaAluguel`,`Profissao`,`LocalTrabalho`,`RendaMensal`,`Email`,`Telefone`,`DataCadastro`,`DataAlteracaoCadastro`,`Status`,`LojaId`,`Observacoes`,`NomeMae`,`NomePai`) VALUES(1,'ANDRE FELIPE MORAIS RODRIGUES GANDA','AVENIDA QUINTINO BOCAIUVA',NULL,NULL,'1989-09-24 00:00:00.000000','CASADO',NULL,'1','Policial militar','Linhares','8500,30','andrefelipeg@hotmail.com','27998238617',NULL,NULL,1,1,'a esposa não pode comprar na ficha dele','rosalia ganda','elson ganda'),(2,'ANTONIA MARCIANO OUVERNEY','AVENIDA PADRE MANOEL DA NOBREGA, 1101 - INTERLAGOS','082.051.267-20','1.208.264-ES','1942-10-08 00:00:00.000000','CASADO',NULL,'0','APOSENTADA',NULL,'1400.00',NULL,'27 99895-6258',NULL,NULL,1,1,NULL,NULL,NULL),(3,'ANICEIA CALEGARI GALVANI','RUA DUQUE DE CAXIAS,420 - INTERLAGOS','091.329.517-52','523.554','1959-07-07 00:00:00.000000','CASADO',NULL,'0','PROPRIETARIA ESPAÇO HERBALIFE','CASA','2000.00',NULL,'2799804-6906',NULL,NULL,1,1,NULL,NULL,NULL),(4,'ALCEIA MARIA LUNZ BATISTA','RUA JOÃO PAULO II, 2305 - INTERLAGOS','031.629.097-16',NULL,'1964-09-21 00:00:00.000000','SOLTEIRO',NULL,'0','APOSENTADA',NULL,'1400.00',NULL,'27 99713-2947',NULL,NULL,1,1,'FILHA IONE LUNZ É AUTORIZADA A COMPRAR NA FICHA DELA','JACI LUNZ','MARIA LUZINETE LUNZ'),(5,'ALESSANDRA GOMES ','RUA ARTUR PINTO SANTANA, 467- INTERLAGOSS','031.830.247-05',NULL,'1975-10-09 00:00:00.000000','CASADO',NULL,'0',NULL,NULL,NULL,NULL,'27 99872-4144',NULL,NULL,0,1,'AUTORIZADO PARA IRMÃ LUCIETE',NULL,NULL),(6,'ALESSANDRA GOMES ','RUA ARTUR PINTO SANTANA, 467- INTERLAGOSS','031.830.247-05',NULL,'1975-10-09 00:00:00.000000','CASADO',NULL,'0',NULL,NULL,NULL,NULL,'27 99872-4144',NULL,NULL,1,1,'AUTORIZADO PARA IRMÃ LUCIETE/ FILHA MARKIELLY','FRANCISCO GOMES','MARIA DA PENHA BIANCARDI GOMES'),(7,'ROSIMARIA CARLESSO','AVENIDA PADRE MANOEL DA NOBREGA, 649 - INTERLAGOS','034.731.097-46','1387101- SPTC','1973-08-20 00:00:00.000000','CASADO','27 99957-8727 - IAMURA BATISTA ','0','COSTUREIRA','EM CASA','0,00',NULL,'(27) 99968-4919',NULL,NULL,1,1,'CLIENTE INDICADA PELA DONA TEREZA','JOSE VIERA CARLESSO','EDITE CORREA CARLESSO'),(8,'GILMARC COSTA LIMA','AVENIDA PADRE MANOEL DA NOBREGA, 1461 - INTERLAGOS','112.962.577-03','2088476','1979-02-09 00:00:00.000000','CASADO','996042024 - HEMILLY','0','ENGENHEIRO','EMPRESARIO','10000,00',NULL,'(27) 99806-2810',NULL,NULL,1,1,NULL,'LENILZA COSTA LIMA ','GILSON LIMA'),(9,'ALESSANDRA VIEIRA',NULL,NULL,NULL,NULL,'SOLTEIRO',NULL,'0',NULL,NULL,NULL,NULL,'(27) 99862-8915',NULL,NULL,1,1,'AUTORIZADO PARA IRMÃ ELIETE E CUNHADA MARCILÉIA ',NULL,NULL),(10,'ALINE PIRES','RUA BARÃO RIO BRANCO',NULL,NULL,NULL,'0',NULL,'1','VENDEDORA','FLOR DE LIS','1400,00',NULL,'(27) 99783-2106',NULL,NULL,1,1,NULL,NULL,NULL),(11,'AURORA  FERNANDES',NULL,NULL,NULL,NULL,'0',NULL,'0',NULL,NULL,'1300,00',NULL,'(27) 99757-8254',NULL,NULL,1,1,NULL,NULL,NULL),(12,'ANA CLAUDIA PEREIRA','RUA FELIPE CAMARÃO ,1464 - INTERLAGOS','060.462.497-24','3124694','1987-08-21 00:00:00.000000','CASADO','SEBASTIÃO LOPES DOS SANTOS','0','DO LAR',NULL,'1000,00',NULL,'(27) 99707-9257',NULL,NULL,1,1,'NÃO PODE COMPRAR! ESTÁ EM PROBLEMAS PSICOLÓGICOS','MARIA LUIZA FRAGA PEREIRA','BELMIRO PEREIRA'),(13,'ADRIANA RODRIGUES DE SOUSA DOS SANTOS','RUA JOÃO GAMA,01 - INTERLAGOS ( ATRAS DO CAIC)','117.996.057-28','194124SPTC',NULL,'CASADO',NULL,'0','CONFEITEIRA','EM CASA','1300,00',NULL,'(27) 99519-9569',NULL,NULL,1,1,NULL,NULL,NULL),(14,'ANDRE GONÇALVES DE JESUS',NULL,NULL,NULL,NULL,'SOLTEIRO',NULL,'0','ENTREGADOR ',NULL,'2000,00',NULL,'(27) 99859-0634',NULL,NULL,1,1,NULL,NULL,NULL),(15,'ALCIMARA NASCIMENTO ALMEIDA',NULL,NULL,NULL,NULL,'CASADO',NULL,'0',NULL,NULL,NULL,NULL,'(27) 99610-3380',NULL,NULL,1,1,NULL,NULL,NULL),(16,'ADELANDRA FELIPE DOS SANTOS',NULL,'108.320.307-08','1879623','1983-09-18 00:00:00.000000','CASADO',NULL,'0',NULL,NULL,NULL,NULL,'(27) 99752-3840',NULL,NULL,1,1,'NÃO VENDER, NÃO PAGA','ALMIRA FERREIRA FELIPE','ADÃO FELIPE'),(17,'AISA NONATO MALANCHINI',NULL,NULL,NULL,NULL,'CASADO',NULL,'0','DO LAR',NULL,NULL,NULL,'(27) 99821-8296',NULL,NULL,1,1,'NÃO VENDER SÓ PAGA ATRASADO',NULL,NULL),(18,'AVULSO - SEM CADASTRO',NULL,NULL,NULL,NULL,'0',NULL,'0',NULL,NULL,NULL,NULL,'(00) 00000-0000',NULL,NULL,1,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;

-- 
-- Definition of hangfireaggregatedcounter
-- 

DROP TABLE IF EXISTS `hangfireaggregatedcounter`;
CREATE TABLE IF NOT EXISTS `hangfireaggregatedcounter` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Key` varchar(100) NOT NULL,
  `Value` int NOT NULL,
  `ExpireAt` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `IX_HangfireCounterAggregated_Key` (`Key`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3;

-- 
-- Dumping data for table hangfireaggregatedcounter
-- 

/*!40000 ALTER TABLE `hangfireaggregatedcounter` DISABLE KEYS */;
INSERT INTO `hangfireaggregatedcounter`(`Id`,`Key`,`Value`,`ExpireAt`) VALUES(1,'stats:succeeded',17,NULL),(2,'stats:succeeded:2024-06-19',2,'2024-07-19 21:03:24'),(5,'stats:succeeded:2024-06-20',5,'2024-07-20 20:04:22'),(10,'stats:succeeded:2024-06-20-15',1,'2024-06-21 15:00:39'),(11,'stats:succeeded:2024-06-20-20',1,'2024-06-21 20:04:22'),(14,'stats:succeeded:2024-06-21',10,'2024-07-21 14:41:14'),(15,'stats:succeeded:2024-06-21-12',1,'2024-06-22 12:59:16'),(17,'stats:succeeded:2024-06-21-13',7,'2024-06-22 13:38:44'),(22,'stats:succeeded:2024-06-21-14',2,'2024-06-22 14:41:14');
/*!40000 ALTER TABLE `hangfireaggregatedcounter` ENABLE KEYS */;

-- 
-- Definition of hangfirecounter
-- 

DROP TABLE IF EXISTS `hangfirecounter`;
CREATE TABLE IF NOT EXISTS `hangfirecounter` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Key` varchar(100) NOT NULL,
  `Value` int NOT NULL,
  `ExpireAt` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_HangfireCounter_Key` (`Key`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb3;

-- 
-- Dumping data for table hangfirecounter
-- 

/*!40000 ALTER TABLE `hangfirecounter` DISABLE KEYS */;
INSERT INTO `hangfirecounter`(`Id`,`Key`,`Value`,`ExpireAt`) VALUES(52,'stats:succeeded:2024-06-21',1,'2024-07-21 14:51:58'),(53,'stats:succeeded:2024-06-21-14',1,'2024-06-22 14:51:58'),(54,'stats:succeeded',1,NULL),(55,'stats:succeeded:2024-06-21',1,'2024-07-21 14:52:02'),(56,'stats:succeeded:2024-06-21-14',1,'2024-06-22 14:52:02'),(57,'stats:succeeded',1,NULL);
/*!40000 ALTER TABLE `hangfirecounter` ENABLE KEYS */;

-- 
-- Definition of hangfiredistributedlock
-- 

DROP TABLE IF EXISTS `hangfiredistributedlock`;
CREATE TABLE IF NOT EXISTS `hangfiredistributedlock` (
  `Resource` varchar(100) NOT NULL,
  `CreatedAt` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 
-- Dumping data for table hangfiredistributedlock
-- 

/*!40000 ALTER TABLE `hangfiredistributedlock` DISABLE KEYS */;

/*!40000 ALTER TABLE `hangfiredistributedlock` ENABLE KEYS */;

-- 
-- Definition of hangfirehash
-- 

DROP TABLE IF EXISTS `hangfirehash`;
CREATE TABLE IF NOT EXISTS `hangfirehash` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Key` varchar(100) NOT NULL,
  `Field` varchar(40) NOT NULL,
  `Value` longtext,
  `ExpireAt` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `IX_HangfireHash_Key_Field` (`Key`,`Field`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb3;

-- 
-- Dumping data for table hangfirehash
-- 

/*!40000 ALTER TABLE `hangfirehash` DISABLE KEYS */;
INSERT INTO `hangfirehash`(`Id`,`Key`,`Field`,`Value`,`ExpireAt`) VALUES(1,'recurring-job:make_backup_bd','Queue','default',NULL),(2,'recurring-job:make_backup_bd','Cron','0 */5 * * *',NULL),(3,'recurring-job:make_backup_bd','TimeZoneId','UTC',NULL),(4,'recurring-job:make_backup_bd','Job','{\"t\":\"flordelizHemilly.Service.MonitorService, flordelizHemilly, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\",\"m\":\"BackUpBd\",\"p\":[\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\",\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\"],\"a\":[\"\\\"Server=localhost;Database=flordeliz;User=root;Password=ganco;\\\"\",\"\\\"C:\\\\\\\\Projetos - GancoBits\\\\\\\\florDeLiz2024\\\\\\\\flordelizHemilly\\\\\\\\wwwroot\\\"\"]}',NULL),(5,'recurring-job:make_backup_bd','CreatedAt','1718828804361',NULL),(6,'recurring-job:make_backup_bd','NextExecution','1718982000000',NULL),(7,'recurring-job:make_backup_bd','V','2',NULL),(9,'recurring-job:make_backup_bd','LastExecution','1718981522042',NULL),(10,'recurring-job:make_backup_bd','LastJobId','21',NULL);
/*!40000 ALTER TABLE `hangfirehash` ENABLE KEYS */;

-- 
-- Definition of hangfirejob
-- 

DROP TABLE IF EXISTS `hangfirejob`;
CREATE TABLE IF NOT EXISTS `hangfirejob` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `StateId` int DEFAULT NULL,
  `StateName` varchar(20) DEFAULT NULL,
  `InvocationData` longtext NOT NULL,
  `Arguments` longtext NOT NULL,
  `CreatedAt` datetime(6) NOT NULL,
  `ExpireAt` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_HangfireJob_StateName` (`StateName`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;

-- 
-- Dumping data for table hangfirejob
-- 

/*!40000 ALTER TABLE `hangfirejob` DISABLE KEYS */;
INSERT INTO `hangfirejob`(`Id`,`StateId`,`StateName`,`InvocationData`,`Arguments`,`CreatedAt`,`ExpireAt`) VALUES(6,18,'Succeeded','{\"Type\":\"flordelizHemilly.Service.MonitorService, flordelizHemilly, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\",\"Method\":\"BackUpBd\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\",\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Server=mysql.flordelizlinhares.kinghost.net;Database=flordelizlinha;User=flordelizlinha;Password=10081075731Ganda;\\\\\\\"\\\",\\\"\\\\\\\"d:\\\\\\\\\\\\\\\\web\\\\\\\\\\\\\\\\localuser\\\\\\\\\\\\\\\\flordelizlinhares\\\\\\\\\\\\\\\\www\\\\\\\"\\\"]\"}','[\"\\\"Server=mysql.flordelizlinhares.kinghost.net;Database=flordelizlinha;User=flordelizlinha;Password=10081075731Ganda;\\\"\",\"\\\"d:\\\\\\\\web\\\\\\\\localuser\\\\\\\\flordelizlinhares\\\\\\\\www\\\"\"]','2024-06-20 15:00:24.447991','2024-06-21 15:00:39.153658'),(7,21,'Succeeded','{\"Type\":\"flordelizHemilly.Service.MonitorService, flordelizHemilly, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\",\"Method\":\"BackUpBd\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\",\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Server=mysql.flordelizlinhares.kinghost.net;Database=flordelizlinha;User=flordelizlinha;Password=10081075731Ganda;\\\\\\\"\\\",\\\"\\\\\\\"d:\\\\\\\\\\\\\\\\web\\\\\\\\\\\\\\\\localuser\\\\\\\\\\\\\\\\flordelizlinhares\\\\\\\\\\\\\\\\www\\\\\\\"\\\"]\"}','[\"\\\"Server=mysql.flordelizlinhares.kinghost.net;Database=flordelizlinha;User=flordelizlinha;Password=10081075731Ganda;\\\"\",\"\\\"d:\\\\\\\\web\\\\\\\\localuser\\\\\\\\flordelizlinhares\\\\\\\\www\\\"\"]','2024-06-20 20:04:06.363309','2024-06-21 20:04:22.745871'),(8,67,'Processing','{\"Type\":\"flordelizHemilly.Service.MonitorService, flordelizHemilly, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\",\"Method\":\"BackUpBd\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\",\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Server=mysql.flordelizlinhares.kinghost.net;Database=flordelizlinha;User=flordelizlinha;Password=10081075731Ganda;\\\\\\\"\\\",\\\"\\\\\\\"d:\\\\\\\\\\\\\\\\web\\\\\\\\\\\\\\\\localuser\\\\\\\\\\\\\\\\flordelizlinhares\\\\\\\\\\\\\\\\www\\\\\\\"\\\"]\"}','[\"\\\"Server=mysql.flordelizlinhares.kinghost.net;Database=flordelizlinha;User=flordelizlinha;Password=10081075731Ganda;\\\"\",\"\\\"d:\\\\\\\\web\\\\\\\\localuser\\\\\\\\flordelizlinhares\\\\\\\\www\\\"\"]','2024-06-20 20:04:37.666917',NULL),(9,30,'Succeeded','{\"Type\":\"flordelizHemilly.Service.MonitorService, flordelizHemilly, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\",\"Method\":\"BackUpBd\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\",\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Server=localhost;Database=flordeliz;User=root;Password=ganco;\\\\\\\"\\\",\\\"\\\\\\\"C:\\\\\\\\\\\\\\\\Projetos - GancoBits\\\\\\\\\\\\\\\\florDeLiz2024\\\\\\\\\\\\\\\\flordelizHemilly\\\\\\\"\\\"]\"}','[\"\\\"Server=localhost;Database=flordeliz;User=root;Password=ganco;\\\"\",\"\\\"C:\\\\\\\\Projetos - GancoBits\\\\\\\\florDeLiz2024\\\\\\\\flordelizHemilly\\\"\"]','2024-06-21 12:59:00.490196','2024-06-22 12:59:15.746604'),(10,35,'Succeeded','{\"Type\":\"flordelizHemilly.Service.MonitorService, flordelizHemilly, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\",\"Method\":\"BackUpBd\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\",\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Server=localhost;Database=flordeliz;User=root;Password=ganco;\\\\\\\"\\\",\\\"\\\\\\\"C:\\\\\\\\\\\\\\\\Projetos - GancoBits\\\\\\\\\\\\\\\\florDeLiz2024\\\\\\\\\\\\\\\\flordelizHemilly\\\\\\\"\\\"]\"}','[\"\\\"Server=localhost;Database=flordeliz;User=root;Password=ganco;\\\"\",\"\\\"C:\\\\\\\\Projetos - GancoBits\\\\\\\\florDeLiz2024\\\\\\\\flordelizHemilly\\\"\"]','2024-06-21 13:00:28.871605','2024-06-22 13:00:35.377224'),(11,38,'Succeeded','{\"Type\":\"flordelizHemilly.Service.MonitorService, flordelizHemilly, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\",\"Method\":\"BackUpBd\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\",\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Server=localhost;Database=flordeliz;User=root;Password=ganco;\\\\\\\"\\\",\\\"\\\\\\\"C:\\\\\\\\\\\\\\\\Projetos - GancoBits\\\\\\\\\\\\\\\\florDeLiz2024\\\\\\\\\\\\\\\\flordelizHemilly\\\\\\\"\\\"]\"}','[\"\\\"Server=localhost;Database=flordeliz;User=root;Password=ganco;\\\"\",\"\\\"C:\\\\\\\\Projetos - GancoBits\\\\\\\\florDeLiz2024\\\\\\\\flordelizHemilly\\\"\"]','2024-06-21 13:01:19.354193','2024-06-22 13:01:28.026457'),(12,41,'Succeeded','{\"Type\":\"flordelizHemilly.Service.MonitorService, flordelizHemilly, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\",\"Method\":\"BackUpBd\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\",\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Server=localhost;Database=flordeliz;User=root;Password=ganco;\\\\\\\"\\\",\\\"\\\\\\\"C:\\\\\\\\\\\\\\\\Projetos - GancoBits\\\\\\\\\\\\\\\\florDeLiz2024\\\\\\\\\\\\\\\\flordelizHemilly\\\\\\\"\\\"]\"}','[\"\\\"Server=localhost;Database=flordeliz;User=root;Password=ganco;\\\"\",\"\\\"C:\\\\\\\\Projetos - GancoBits\\\\\\\\florDeLiz2024\\\\\\\\flordelizHemilly\\\"\"]','2024-06-21 13:10:48.561957','2024-06-22 13:10:51.113440'),(13,44,'Succeeded','{\"Type\":\"flordelizHemilly.Service.MonitorService, flordelizHemilly, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\",\"Method\":\"BackUpBd\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\",\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Server=localhost;Database=flordeliz;User=root;Password=ganco;\\\\\\\"\\\",\\\"\\\\\\\"C:\\\\\\\\\\\\\\\\Projetos - GancoBits\\\\\\\\\\\\\\\\florDeLiz2024\\\\\\\\\\\\\\\\flordelizHemilly\\\\\\\"\\\"]\"}','[\"\\\"Server=localhost;Database=flordeliz;User=root;Password=ganco;\\\"\",\"\\\"C:\\\\\\\\Projetos - GancoBits\\\\\\\\florDeLiz2024\\\\\\\\flordelizHemilly\\\"\"]','2024-06-21 13:11:07.056060','2024-06-22 13:11:13.620883'),(14,48,'Succeeded','{\"Type\":\"flordelizHemilly.Service.MonitorService, flordelizHemilly, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\",\"Method\":\"BackUpBd\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\",\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Server=localhost;Database=flordeliz;User=root;Password=ganco;\\\\\\\"\\\",\\\"\\\\\\\"C:\\\\\\\\\\\\\\\\Projetos - GancoBits\\\\\\\\\\\\\\\\florDeLiz2024\\\\\\\\\\\\\\\\flordelizHemilly\\\\\\\\\\\\\\\\wwwroot\\\\\\\"\\\"]\"}','[\"\\\"Server=localhost;Database=flordeliz;User=root;Password=ganco;\\\"\",\"\\\"C:\\\\\\\\Projetos - GancoBits\\\\\\\\florDeLiz2024\\\\\\\\flordelizHemilly\\\\\\\\wwwroot\\\"\"]','2024-06-21 13:37:17.855011','2024-06-22 13:37:23.218108'),(15,51,'Succeeded','{\"Type\":\"flordelizHemilly.Service.MonitorService, flordelizHemilly, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\",\"Method\":\"BackUpBd\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\",\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Server=localhost;Database=flordeliz;User=root;Password=ganco;\\\\\\\"\\\",\\\"\\\\\\\"C:\\\\\\\\\\\\\\\\Projetos - GancoBits\\\\\\\\\\\\\\\\florDeLiz2024\\\\\\\\\\\\\\\\flordelizHemilly\\\\\\\\\\\\\\\\wwwroot\\\\\\\"\\\"]\"}','[\"\\\"Server=localhost;Database=flordeliz;User=root;Password=ganco;\\\"\",\"\\\"C:\\\\\\\\Projetos - GancoBits\\\\\\\\florDeLiz2024\\\\\\\\flordelizHemilly\\\\\\\\wwwroot\\\"\"]','2024-06-21 13:38:12.185157','2024-06-22 13:38:27.668350'),(16,54,'Succeeded','{\"Type\":\"flordelizHemilly.Service.MonitorService, flordelizHemilly, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\",\"Method\":\"BackUpBd\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\",\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Server=localhost;Database=flordeliz;User=root;Password=ganco;\\\\\\\"\\\",\\\"\\\\\\\"C:\\\\\\\\\\\\\\\\Projetos - GancoBits\\\\\\\\\\\\\\\\florDeLiz2024\\\\\\\\\\\\\\\\flordelizHemilly\\\\\\\\\\\\\\\\wwwroot\\\\\\\"\\\"]\"}','[\"\\\"Server=localhost;Database=flordeliz;User=root;Password=ganco;\\\"\",\"\\\"C:\\\\\\\\Projetos - GancoBits\\\\\\\\florDeLiz2024\\\\\\\\flordelizHemilly\\\\\\\\wwwroot\\\"\"]','2024-06-21 13:38:39.626243','2024-06-22 13:38:43.990480'),(17,66,'Succeeded','{\"Type\":\"flordelizHemilly.Service.MonitorService, flordelizHemilly, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\",\"Method\":\"BackUpBd\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\",\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Server=localhost;Database=flordeliz;User=root;Password=ganco;\\\\\\\"\\\",\\\"\\\\\\\"C:\\\\\\\\\\\\\\\\Projetos - GancoBits\\\\\\\\\\\\\\\\florDeLiz2024\\\\\\\\\\\\\\\\flordelizHemilly\\\\\\\\\\\\\\\\wwwroot\\\\\\\"\\\"]\"}','[\"\\\"Server=localhost;Database=flordeliz;User=root;Password=ganco;\\\"\",\"\\\"C:\\\\\\\\Projetos - GancoBits\\\\\\\\florDeLiz2024\\\\\\\\flordelizHemilly\\\\\\\\wwwroot\\\"\"]','2024-06-21 14:08:29.347010','2024-06-22 14:08:37.663560'),(18,70,'Succeeded','{\"Type\":\"flordelizHemilly.Service.MonitorService, flordelizHemilly, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\",\"Method\":\"BackUpBd\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\",\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Server=localhost;Database=flordeliz;User=root;Password=ganco;\\\\\\\"\\\",\\\"\\\\\\\"C:\\\\\\\\\\\\\\\\Projetos - GancoBits\\\\\\\\\\\\\\\\florDeLiz2024\\\\\\\\\\\\\\\\flordelizHemilly\\\\\\\\\\\\\\\\wwwroot\\\\\\\"\\\"]\"}','[\"\\\"Server=localhost;Database=flordeliz;User=root;Password=ganco;\\\"\",\"\\\"C:\\\\\\\\Projetos - GancoBits\\\\\\\\florDeLiz2024\\\\\\\\flordelizHemilly\\\\\\\\wwwroot\\\"\"]','2024-06-21 14:40:20.882784','2024-06-22 14:41:13.658795'),(19,73,'Succeeded','{\"Type\":\"flordelizHemilly.Service.MonitorService, flordelizHemilly, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\",\"Method\":\"BackUpBd\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\",\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Server=localhost;Database=flordeliz;User=root;Password=ganco;\\\\\\\"\\\",\\\"\\\\\\\"C:\\\\\\\\\\\\\\\\Projetos - GancoBits\\\\\\\\\\\\\\\\florDeLiz2024\\\\\\\\\\\\\\\\flordelizHemilly\\\\\\\\\\\\\\\\wwwroot\\\\\\\"\\\"]\"}','[\"\\\"Server=localhost;Database=flordeliz;User=root;Password=ganco;\\\"\",\"\\\"C:\\\\\\\\Projetos - GancoBits\\\\\\\\florDeLiz2024\\\\\\\\flordelizHemilly\\\\\\\\wwwroot\\\"\"]','2024-06-21 14:51:56.303118','2024-06-22 14:51:58.210143'),(20,77,'Succeeded','{\"Type\":\"flordelizHemilly.Service.MonitorService, flordelizHemilly, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\",\"Method\":\"BackUpBd\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\",\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Server=localhost;Database=flordeliz;User=root;Password=ganco;\\\\\\\"\\\",\\\"\\\\\\\"C:\\\\\\\\\\\\\\\\Projetos - GancoBits\\\\\\\\\\\\\\\\florDeLiz2024\\\\\\\\\\\\\\\\flordelizHemilly\\\\\\\\\\\\\\\\wwwroot\\\\\\\"\\\"]\"}','[\"\\\"Server=localhost;Database=flordeliz;User=root;Password=ganco;\\\"\",\"\\\"C:\\\\\\\\Projetos - GancoBits\\\\\\\\florDeLiz2024\\\\\\\\flordelizHemilly\\\\\\\\wwwroot\\\"\"]','2024-06-21 14:52:00.229763','2024-06-22 14:52:02.237773'),(21,78,'Processing','{\"Type\":\"flordelizHemilly.Service.MonitorService, flordelizHemilly, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\",\"Method\":\"BackUpBd\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\",\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Server=localhost;Database=flordeliz;User=root;Password=ganco;\\\\\\\"\\\",\\\"\\\\\\\"C:\\\\\\\\\\\\\\\\Projetos - GancoBits\\\\\\\\\\\\\\\\florDeLiz2024\\\\\\\\\\\\\\\\flordelizHemilly\\\\\\\\\\\\\\\\wwwroot\\\\\\\"\\\"]\"}','[\"\\\"Server=localhost;Database=flordeliz;User=root;Password=ganco;\\\"\",\"\\\"C:\\\\\\\\Projetos - GancoBits\\\\\\\\florDeLiz2024\\\\\\\\flordelizHemilly\\\\\\\\wwwroot\\\"\"]','2024-06-21 14:52:02.044288',NULL);
/*!40000 ALTER TABLE `hangfirejob` ENABLE KEYS */;

-- 
-- Definition of hangfirejobparameter
-- 

DROP TABLE IF EXISTS `hangfirejobparameter`;
CREATE TABLE IF NOT EXISTS `hangfirejobparameter` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `JobId` int NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Value` longtext,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `IX_HangfireJobParameter_JobId_Name` (`JobId`,`Name`),
  KEY `FK_HangfireJobParameter_Job` (`JobId`),
  CONSTRAINT `FK_HangfireJobParameter_Job` FOREIGN KEY (`JobId`) REFERENCES `hangfirejob` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb3;

-- 
-- Dumping data for table hangfirejobparameter
-- 

/*!40000 ALTER TABLE `hangfirejobparameter` DISABLE KEYS */;
INSERT INTO `hangfirejobparameter`(`Id`,`JobId`,`Name`,`Value`) VALUES(21,6,'RecurringJobId','\"make_backup_bd\"'),(22,6,'Time','1718895624'),(23,6,'CurrentCulture','\"pt-BR\"'),(24,6,'CurrentUICulture','\"pt-BR\"'),(25,7,'RecurringJobId','\"make_backup_bd\"'),(26,7,'Time','1718913846'),(27,7,'CurrentCulture','\"pt-BR\"'),(28,7,'CurrentUICulture','\"pt-BR\"'),(29,8,'RecurringJobId','\"make_backup_bd\"'),(30,8,'Time','1718913877'),(31,8,'CurrentCulture','\"pt-BR\"'),(32,8,'CurrentUICulture','\"pt-BR\"'),(33,9,'RecurringJobId','\"make_backup_bd\"'),(34,9,'Time','1718974740'),(35,9,'CurrentCulture','\"pt-BR\"'),(36,9,'CurrentUICulture','\"pt-BR\"'),(37,8,'RetryCount','3'),(38,10,'RecurringJobId','\"make_backup_bd\"'),(39,10,'Time','1718974828'),(40,10,'CurrentCulture','\"pt-BR\"'),(41,10,'CurrentUICulture','\"pt-BR\"'),(42,11,'RecurringJobId','\"make_backup_bd\"'),(43,11,'Time','1718974879'),(44,11,'CurrentCulture','\"pt-BR\"'),(45,11,'CurrentUICulture','\"pt-BR\"'),(46,12,'RecurringJobId','\"make_backup_bd\"'),(47,12,'Time','1718975448'),(48,12,'CurrentCulture','\"pt-BR\"'),(49,12,'CurrentUICulture','\"pt-BR\"'),(50,13,'RecurringJobId','\"make_backup_bd\"'),(51,13,'Time','1718975467'),(52,13,'CurrentCulture','\"pt-BR\"'),(53,13,'CurrentUICulture','\"pt-BR\"'),(54,14,'RecurringJobId','\"make_backup_bd\"'),(55,14,'Time','1718977037'),(56,14,'CurrentCulture','\"pt-BR\"'),(57,14,'CurrentUICulture','\"pt-BR\"'),(58,15,'RecurringJobId','\"make_backup_bd\"'),(59,15,'Time','1718977092'),(60,15,'CurrentCulture','\"pt-BR\"'),(61,15,'CurrentUICulture','\"pt-BR\"'),(62,16,'RecurringJobId','\"make_backup_bd\"'),(63,16,'Time','1718977119'),(64,16,'CurrentCulture','\"pt-BR\"'),(65,16,'CurrentUICulture','\"pt-BR\"'),(68,17,'RecurringJobId','\"make_backup_bd\"'),(69,17,'Time','1718978909'),(70,17,'CurrentCulture','\"pt-BR\"'),(71,17,'CurrentUICulture','\"pt-BR\"'),(72,18,'RecurringJobId','\"make_backup_bd\"'),(73,18,'Time','1718980820'),(74,18,'CurrentCulture','\"pt-BR\"'),(75,18,'CurrentUICulture','\"pt-BR\"'),(76,19,'RecurringJobId','\"make_backup_bd\"'),(77,19,'Time','1718981516'),(78,19,'CurrentCulture','\"pt-BR\"'),(79,19,'CurrentUICulture','\"pt-BR\"'),(80,20,'RecurringJobId','\"make_backup_bd\"'),(81,20,'Time','1718981520'),(82,20,'CurrentCulture','\"pt-BR\"'),(83,20,'CurrentUICulture','\"pt-BR\"'),(84,21,'RecurringJobId','\"make_backup_bd\"'),(85,21,'Time','1718981522'),(86,21,'CurrentCulture','\"pt-BR\"'),(87,21,'CurrentUICulture','\"pt-BR\"');
/*!40000 ALTER TABLE `hangfirejobparameter` ENABLE KEYS */;

-- 
-- Definition of hangfirejobqueue
-- 

DROP TABLE IF EXISTS `hangfirejobqueue`;
CREATE TABLE IF NOT EXISTS `hangfirejobqueue` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `JobId` int NOT NULL,
  `FetchedAt` datetime(6) DEFAULT NULL,
  `Queue` varchar(50) NOT NULL,
  `FetchToken` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_HangfireJobQueue_QueueAndFetchedAt` (`Queue`,`FetchedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;

-- 
-- Dumping data for table hangfirejobqueue
-- 

/*!40000 ALTER TABLE `hangfirejobqueue` DISABLE KEYS */;
INSERT INTO `hangfirejobqueue`(`Id`,`JobId`,`FetchedAt`,`Queue`,`FetchToken`) VALUES(19,8,'2024-06-21 14:35:01.000000','default','44860f37-a95e-45de-b7a0-176fcb1e92e2'),(24,21,'2024-06-21 14:52:02.000000','default','579b7008-b52d-41b5-a80b-7b1e27815197');
/*!40000 ALTER TABLE `hangfirejobqueue` ENABLE KEYS */;

-- 
-- Definition of hangfirejobstate
-- 

DROP TABLE IF EXISTS `hangfirejobstate`;
CREATE TABLE IF NOT EXISTS `hangfirejobstate` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `JobId` int NOT NULL,
  `CreatedAt` datetime(6) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Reason` varchar(100) DEFAULT NULL,
  `Data` longtext,
  PRIMARY KEY (`Id`),
  KEY `FK_HangfireJobState_Job` (`JobId`),
  CONSTRAINT `FK_HangfireJobState_Job` FOREIGN KEY (`JobId`) REFERENCES `hangfirejob` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 
-- Dumping data for table hangfirejobstate
-- 

/*!40000 ALTER TABLE `hangfirejobstate` DISABLE KEYS */;

/*!40000 ALTER TABLE `hangfirejobstate` ENABLE KEYS */;

-- 
-- Definition of hangfirelist
-- 

DROP TABLE IF EXISTS `hangfirelist`;
CREATE TABLE IF NOT EXISTS `hangfirelist` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Key` varchar(100) NOT NULL,
  `Value` longtext,
  `ExpireAt` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 
-- Dumping data for table hangfirelist
-- 

/*!40000 ALTER TABLE `hangfirelist` DISABLE KEYS */;

/*!40000 ALTER TABLE `hangfirelist` ENABLE KEYS */;

-- 
-- Definition of hangfireserver
-- 

DROP TABLE IF EXISTS `hangfireserver`;
CREATE TABLE IF NOT EXISTS `hangfireserver` (
  `Id` varchar(100) NOT NULL,
  `Data` longtext NOT NULL,
  `LastHeartbeat` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 
-- Dumping data for table hangfireserver
-- 

/*!40000 ALTER TABLE `hangfireserver` DISABLE KEYS */;
INSERT INTO `hangfireserver`(`Id`,`Data`,`LastHeartbeat`) VALUES('desktop-etf8o9f:34680:dcedb19c-d703-4cbc-a93b-69f3f2cb2381','{\"WorkerCount\":20,\"Queues\":[\"default\"],\"StartedAt\":\"2024-06-21T14:40:10.2001421Z\"}','2024-06-21 14:51:38.833371');
/*!40000 ALTER TABLE `hangfireserver` ENABLE KEYS */;

-- 
-- Definition of hangfireset
-- 

DROP TABLE IF EXISTS `hangfireset`;
CREATE TABLE IF NOT EXISTS `hangfireset` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Key` varchar(100) NOT NULL,
  `Value` varchar(256) NOT NULL,
  `Score` float NOT NULL,
  `ExpireAt` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `IX_HangfireSet_Key_Value` (`Key`,`Value`)
) ENGINE=InnoDB AUTO_INCREMENT=4037 DEFAULT CHARSET=utf8mb3;

-- 
-- Dumping data for table hangfireset
-- 

/*!40000 ALTER TABLE `hangfireset` DISABLE KEYS */;
INSERT INTO `hangfireset`(`Id`,`Key`,`Value`,`Score`,`ExpireAt`) VALUES(1,'recurring-jobs','make_backup_bd',1.71898E+09,NULL);
/*!40000 ALTER TABLE `hangfireset` ENABLE KEYS */;

-- 
-- Definition of hangfirestate
-- 

DROP TABLE IF EXISTS `hangfirestate`;
CREATE TABLE IF NOT EXISTS `hangfirestate` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `JobId` int NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Reason` varchar(100) DEFAULT NULL,
  `CreatedAt` datetime(6) NOT NULL,
  `Data` longtext,
  PRIMARY KEY (`Id`),
  KEY `FK_HangfireHangFire_State_Job` (`JobId`),
  CONSTRAINT `FK_HangfireHangFire_State_Job` FOREIGN KEY (`JobId`) REFERENCES `hangfirejob` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb3;

-- 
-- Dumping data for table hangfirestate
-- 

/*!40000 ALTER TABLE `hangfirestate` DISABLE KEYS */;
INSERT INTO `hangfirestate`(`Id`,`JobId`,`Name`,`Reason`,`CreatedAt`,`Data`) VALUES(16,6,'Enqueued','Triggered by recurring job scheduler','2024-06-20 15:00:24.485813','{\"EnqueuedAt\":\"1718895624472\",\"Queue\":\"default\"}'),(17,6,'Processing',NULL,'2024-06-20 15:00:38.041948','{\"StartedAt\":\"1718895638019\",\"ServerId\":\"web22f37:12040:231d48f3-70bc-4ebe-9e29-c8b297a69390\",\"WorkerId\":\"96389444-cef9-47bd-b174-d82a1d7407ca\"}'),(18,6,'Succeeded',NULL,'2024-06-20 15:00:39.149071','{\"SucceededAt\":\"1718895639128\",\"PerformanceDuration\":\"1077\",\"Latency\":\"13603\"}'),(19,7,'Enqueued','Triggered by recurring job scheduler','2024-06-20 20:04:06.465477','{\"EnqueuedAt\":\"1718913846406\",\"Queue\":\"default\"}'),(20,7,'Processing',NULL,'2024-06-20 20:04:21.319770','{\"StartedAt\":\"1718913861287\",\"ServerId\":\"web22f37:4660:286d3a46-085d-4ada-9823-d40dc8a0df30\",\"WorkerId\":\"9f22ffa6-346a-4304-a38e-3e973ce22efb\"}'),(21,7,'Succeeded',NULL,'2024-06-20 20:04:22.739583','{\"SucceededAt\":\"1718913862719\",\"PerformanceDuration\":\"1391\",\"Latency\":\"14964\"}'),(22,8,'Enqueued','Triggered using recurring job manager','2024-06-20 20:04:37.677118','{\"EnqueuedAt\":\"1718913877673\",\"Queue\":\"default\"}'),(23,8,'Processing',NULL,'2024-06-20 20:04:37.777977','{\"StartedAt\":\"1718913877772\",\"ServerId\":\"web22f37:4660:286d3a46-085d-4ada-9823-d40dc8a0df30\",\"WorkerId\":\"9f22ffa6-346a-4304-a38e-3e973ce22efb\"}'),(24,8,'Processing',NULL,'2024-06-20 20:34:52.861090','{\"StartedAt\":\"1718915692660\",\"ServerId\":\"desktop-etf8o9f:42044:b89e5aea-ee61-4d04-be22-2c05c9b7252a\",\"WorkerId\":\"66684e9d-3cdd-45a3-84be-2af2c88ebd4a\"}'),(25,8,'Processing',NULL,'2024-06-21 12:59:00.513759','{\"StartedAt\":\"1718974740352\",\"ServerId\":\"desktop-etf8o9f:45836:a04aa5db-08a7-47ad-a5b0-34761135b35c\",\"WorkerId\":\"eebadfaa-3c5b-4b87-924f-f7d134baad3c\"}'),(26,9,'Enqueued','Triggered by recurring job scheduler','2024-06-21 12:59:00.525472','{\"EnqueuedAt\":\"1718974740521\",\"Queue\":\"default\"}'),(27,9,'Processing',NULL,'2024-06-21 12:59:01.399095','{\"StartedAt\":\"1718974741388\",\"ServerId\":\"desktop-etf8o9f:45836:a04aa5db-08a7-47ad-a5b0-34761135b35c\",\"WorkerId\":\"162e1c0d-69b4-45fb-9dc4-211b04bc507e\"}'),(28,8,'Failed','An exception occurred during performance of the job.','2024-06-21 12:59:15.705239','{\"FailedAt\":\"1718974754284\",\"ExceptionType\":\"System.IO.DirectoryNotFoundException\",\"ExceptionMessage\":\"Could not find a part of the path ''d:\\\\web\\\\localuser\\\\flordelizlinhares\\\\www\\\\wwwroot\\\\BackBd''.\",\"ExceptionDetails\":\"System.IO.DirectoryNotFoundException: Could not find a part of the path ''d:\\\\web\\\\localuser\\\\flordelizlinhares\\\\www\\\\wwwroot\\\\BackBd''.\\r\\n   at System.IO.FileSystem.CreateDirectory(String fullPath, Byte[] securityDescriptor)\\r\\n   at System.IO.Directory.CreateDirectory(String path)\\r\\n   at MySql.Data.MySqlClient.MySqlBackup.ExportToFile(String filePath)\\r\\n   at flordelizHemilly.Service.MonitorService.BackUpBd(String connectionString, String backupFilePath) in C:\\\\Projetos - GancoBits\\\\florDeLiz2024\\\\flordelizHemilly\\\\Service\\\\MonitorService.cs:line 31\\r\\n   at System.RuntimeMethodHandle.InvokeMethod(Object target, Void** arguments, Signature sig, Boolean isConstructor)\\r\\n   at System.Reflection.MethodInvoker.Invoke(Object obj, IntPtr* args, BindingFlags invokeAttr)\",\"ServerId\":\"desktop-etf8o9f:45836:a04aa5db-08a7-47ad-a5b0-34761135b35c\"}'),(29,8,'Scheduled','Retry attempt 1 of 10: Could not find a part of the path ''d:\\web\\localus…','2024-06-21 12:59:15.716920','{\"EnqueueAt\":\"1718974782305\",\"ScheduledAt\":\"1718974754305\"}'),(30,9,'Succeeded',NULL,'2024-06-21 12:59:15.740858','{\"SucceededAt\":\"1718974755685\",\"PerformanceDuration\":\"14267\",\"Latency\":\"926\"}'),(31,8,'Enqueued','Triggered via Dashboard UI','2024-06-21 12:59:29.927382','{\"EnqueuedAt\":\"1718974769914\",\"Queue\":\"default\"}'),(32,8,'Processing',NULL,'2024-06-21 12:59:30.718399','{\"StartedAt\":\"1718974770715\",\"ServerId\":\"desktop-etf8o9f:45836:a04aa5db-08a7-47ad-a5b0-34761135b35c\",\"WorkerId\":\"b4b6ff02-5721-4389-a5a9-4d5f65520a39\"}'),(33,10,'Enqueued','Triggered using recurring job manager','2024-06-21 13:00:28.916318','{\"EnqueuedAt\":\"1718974828901\",\"Queue\":\"default\"}'),(34,10,'Processing',NULL,'2024-06-21 13:00:29.667173','{\"StartedAt\":\"1718974829648\",\"ServerId\":\"desktop-etf8o9f:77228:5468962d-7ad0-4bd0-b920-25519530e066\",\"WorkerId\":\"5afcb9d7-d509-46d6-961e-54d5b78d1879\"}'),(35,10,'Succeeded',NULL,'2024-06-21 13:00:35.373608','{\"SucceededAt\":\"1718974835358\",\"PerformanceDuration\":\"5675\",\"Latency\":\"810\"}'),(36,11,'Enqueued','Triggered using recurring job manager','2024-06-21 13:01:19.372915','{\"EnqueuedAt\":\"1718974879371\",\"Queue\":\"default\"}'),(37,11,'Processing',NULL,'2024-06-21 13:01:20.387145','{\"StartedAt\":\"1718974880383\",\"ServerId\":\"desktop-etf8o9f:77228:5468962d-7ad0-4bd0-b920-25519530e066\",\"WorkerId\":\"9d39a9bb-8228-4386-a9b5-caff317cd6ed\"}'),(38,11,'Succeeded',NULL,'2024-06-21 13:01:28.025520','{\"SucceededAt\":\"1718974888012\",\"PerformanceDuration\":\"7619\",\"Latency\":\"1039\"}'),(39,12,'Enqueued','Triggered using recurring job manager','2024-06-21 13:10:48.571716','{\"EnqueuedAt\":\"1718975448571\",\"Queue\":\"default\"}'),(40,12,'Processing',NULL,'2024-06-21 13:10:50.899489','{\"StartedAt\":\"1718975450895\",\"ServerId\":\"desktop-etf8o9f:77228:5468962d-7ad0-4bd0-b920-25519530e066\",\"WorkerId\":\"c52f77e0-e30f-47df-83aa-c60fe3a2d3f3\"}'),(41,12,'Succeeded',NULL,'2024-06-21 13:10:51.112706','{\"SucceededAt\":\"1718975451104\",\"PerformanceDuration\":\"197\",\"Latency\":\"2345\"}'),(42,13,'Enqueued','Triggered using recurring job manager','2024-06-21 13:11:07.069480','{\"EnqueuedAt\":\"1718975467068\",\"Queue\":\"default\"}'),(43,13,'Processing',NULL,'2024-06-21 13:11:10.470673','{\"StartedAt\":\"1718975470466\",\"ServerId\":\"desktop-etf8o9f:77228:5468962d-7ad0-4bd0-b920-25519530e066\",\"WorkerId\":\"9d39a9bb-8228-4386-a9b5-caff317cd6ed\"}'),(44,13,'Succeeded',NULL,'2024-06-21 13:11:13.619601','{\"SucceededAt\":\"1718975473605\",\"PerformanceDuration\":\"3128\",\"Latency\":\"3420\"}'),(45,8,'Processing',NULL,'2024-06-21 13:29:39.358606','{\"StartedAt\":\"1718976579304\",\"ServerId\":\"desktop-etf8o9f:76680:e6edca79-d520-4996-af04-df699648df0d\",\"WorkerId\":\"93b31344-0bb1-4710-a7be-21feaae12eef\"}'),(46,14,'Enqueued','Triggered using recurring job manager','2024-06-21 13:37:17.909846','{\"EnqueuedAt\":\"1718977037892\",\"Queue\":\"default\"}'),(47,14,'Processing',NULL,'2024-06-21 13:37:22.386692','{\"StartedAt\":\"1718977042364\",\"ServerId\":\"desktop-etf8o9f:77268:3ad7a9b7-c775-4424-be84-3af6c446f5d5\",\"WorkerId\":\"c9b53184-95c8-4fbe-b951-9145cc57bf15\"}'),(48,14,'Succeeded',NULL,'2024-06-21 13:37:23.213906','{\"SucceededAt\":\"1718977043192\",\"PerformanceDuration\":\"753\",\"Latency\":\"4583\"}'),(49,15,'Enqueued','Triggered using recurring job manager','2024-06-21 13:38:12.205650','{\"EnqueuedAt\":\"1718977092204\",\"Queue\":\"default\"}'),(50,15,'Processing',NULL,'2024-06-21 13:38:16.487043','{\"StartedAt\":\"1718977096476\",\"ServerId\":\"desktop-etf8o9f:77268:3ad7a9b7-c775-4424-be84-3af6c446f5d5\",\"WorkerId\":\"3a8bf5f4-baff-4eb8-af09-7ac2a6049b9b\"}'),(51,15,'Succeeded',NULL,'2024-06-21 13:38:27.664482','{\"SucceededAt\":\"1718977107649\",\"PerformanceDuration\":\"11152\",\"Latency\":\"4312\"}'),(52,16,'Enqueued','Triggered using recurring job manager','2024-06-21 13:38:39.648915','{\"EnqueuedAt\":\"1718977119647\",\"Queue\":\"default\"}'),(53,16,'Processing',NULL,'2024-06-21 13:38:42.419976','{\"StartedAt\":\"1718977122413\",\"ServerId\":\"desktop-etf8o9f:77268:3ad7a9b7-c775-4424-be84-3af6c446f5d5\",\"WorkerId\":\"b5934b54-1608-4eb3-97f6-74e7bdb2b974\"}'),(54,16,'Succeeded',NULL,'2024-06-21 13:38:43.989026','{\"SucceededAt\":\"1718977123978\",\"PerformanceDuration\":\"1547\",\"Latency\":\"2804\"}'),(55,8,'Processing',NULL,'2024-06-21 13:59:43.753650','{\"StartedAt\":\"1718978383744\",\"ServerId\":\"desktop-etf8o9f:77268:3ad7a9b7-c775-4424-be84-3af6c446f5d5\",\"WorkerId\":\"0a168dc7-fa53-4900-ab9b-4194bfbf30e3\"}'),(56,8,'Failed','An exception occurred during performance of the job.','2024-06-21 14:01:24.686921','{\"FailedAt\":\"1718978484652\",\"ExceptionType\":\"System.IO.DirectoryNotFoundException\",\"ExceptionMessage\":\"Could not find a part of the path ''d:\\\\web\\\\localuser\\\\flordelizlinhares\\\\www\\\\BackBd''.\",\"ExceptionDetails\":\"System.IO.DirectoryNotFoundException: Could not find a part of the path ''d:\\\\web\\\\localuser\\\\flordelizlinhares\\\\www\\\\BackBd''.\\r\\n   at System.IO.FileSystem.CreateDirectory(String fullPath, Byte[] securityDescriptor)\\r\\n   at System.IO.Directory.CreateDirectory(String path)\\r\\n   at MySql.Data.MySqlClient.MySqlBackup.ExportToFile(String filePath)\\r\\n   at flordelizHemilly.Service.MonitorService.BackUpBd(String connectionString, String backupFilePath) in C:\\\\Projetos - GancoBits\\\\florDeLiz2024\\\\flordelizHemilly\\\\Service\\\\MonitorService.cs:line 31\\r\\n   at InvokeStub_MonitorService.BackUpBd(Object, Object, IntPtr*)\\r\\n   at System.Reflection.MethodInvoker.Invoke(Object obj, IntPtr* args, BindingFlags invokeAttr)\",\"ServerId\":\"desktop-etf8o9f:77268:3ad7a9b7-c775-4424-be84-3af6c446f5d5\"}'),(57,8,'Scheduled','Retry attempt 2 of 10: Could not find a part of the path ''d:\\web\\localus…','2024-06-21 14:01:24.690942','{\"EnqueueAt\":\"1718978530669\",\"ScheduledAt\":\"1718978484669\"}'),(58,8,'Enqueued','Triggered by DelayedJobScheduler','2024-06-21 14:02:54.739962','{\"EnqueuedAt\":\"1718978574729\",\"Queue\":\"default\"}'),(59,8,'Processing',NULL,'2024-06-21 14:02:54.763840','{\"StartedAt\":\"1718978574756\",\"ServerId\":\"desktop-etf8o9f:77268:3ad7a9b7-c775-4424-be84-3af6c446f5d5\",\"WorkerId\":\"0a168dc7-fa53-4900-ab9b-4194bfbf30e3\"}'),(60,8,'Failed','An exception occurred during performance of the job.','2024-06-21 14:03:13.031546','{\"FailedAt\":\"1718978592943\",\"ExceptionType\":\"System.IO.DirectoryNotFoundException\",\"ExceptionMessage\":\"Could not find a part of the path ''d:\\\\web\\\\localuser\\\\flordelizlinhares\\\\www\\\\BackBd''.\",\"ExceptionDetails\":\"System.IO.DirectoryNotFoundException: Could not find a part of the path ''d:\\\\web\\\\localuser\\\\flordelizlinhares\\\\www\\\\BackBd''.\\r\\n   at System.IO.FileSystem.CreateDirectory(String fullPath, Byte[] securityDescriptor)\\r\\n   at System.IO.Directory.CreateDirectory(String path)\\r\\n   at MySql.Data.MySqlClient.MySqlBackup.ExportToFile(String filePath)\\r\\n   at flordelizHemilly.Service.MonitorService.BackUpBd(String connectionString, String backupFilePath) in C:\\\\Projetos - GancoBits\\\\florDeLiz2024\\\\flordelizHemilly\\\\Service\\\\MonitorService.cs:line 31\\r\\n   at InvokeStub_MonitorService.BackUpBd(Object, Object, IntPtr*)\\r\\n   at System.Reflection.MethodInvoker.Invoke(Object obj, IntPtr* args, BindingFlags invokeAttr)\",\"ServerId\":\"desktop-etf8o9f:77268:3ad7a9b7-c775-4424-be84-3af6c446f5d5\"}'),(61,8,'Scheduled','Retry attempt 3 of 10: Could not find a part of the path ''d:\\web\\localus…','2024-06-21 14:03:13.033837','{\"EnqueueAt\":\"1718978636022\",\"ScheduledAt\":\"1718978593022\"}'),(62,8,'Enqueued','Triggered by DelayedJobScheduler','2024-06-21 14:04:58.103001','{\"EnqueuedAt\":\"1718978698093\",\"Queue\":\"default\"}'),(63,8,'Processing',NULL,'2024-06-21 14:04:58.127852','{\"StartedAt\":\"1718978698122\",\"ServerId\":\"desktop-etf8o9f:77268:3ad7a9b7-c775-4424-be84-3af6c446f5d5\",\"WorkerId\":\"0a168dc7-fa53-4900-ab9b-4194bfbf30e3\"}'),(64,17,'Enqueued','Triggered using recurring job manager','2024-06-21 14:08:29.407694','{\"EnqueuedAt\":\"1718978909389\",\"Queue\":\"default\"}'),(65,17,'Processing',NULL,'2024-06-21 14:08:37.012146','{\"StartedAt\":\"1718978916994\",\"ServerId\":\"desktop-etf8o9f:66808:87c0755a-182d-4e73-8697-1f517e3fae25\",\"WorkerId\":\"a093747a-49ee-41d4-b74c-d07ac3a3a8e6\"}'),(66,17,'Succeeded',NULL,'2024-06-21 14:08:37.657189','{\"SucceededAt\":\"1718978917620\",\"PerformanceDuration\":\"595\",\"Latency\":\"7677\"}'),(67,8,'Processing',NULL,'2024-06-21 14:35:01.349316','{\"StartedAt\":\"1718980501271\",\"ServerId\":\"desktop-etf8o9f:33176:9a511014-9f27-4595-9f3f-fd0f9c29bd3f\",\"WorkerId\":\"3a51184b-b196-4455-b5c0-43575a4c6a0b\"}'),(68,18,'Enqueued','Triggered using recurring job manager','2024-06-21 14:40:20.934257','{\"EnqueuedAt\":\"1718980820919\",\"Queue\":\"default\"}'),(69,18,'Processing',NULL,'2024-06-21 14:40:25.439921','{\"StartedAt\":\"1718980825332\",\"ServerId\":\"desktop-etf8o9f:34680:dcedb19c-d703-4cbc-a93b-69f3f2cb2381\",\"WorkerId\":\"3b6aeafc-62ec-4539-99f7-634c3e0f768d\"}'),(70,18,'Succeeded',NULL,'2024-06-21 14:41:13.655511','{\"SucceededAt\":\"1718980873645\",\"PerformanceDuration\":\"48186\",\"Latency\":\"4575\"}'),(71,19,'Enqueued','Triggered using recurring job manager','2024-06-21 14:51:56.321693','{\"EnqueuedAt\":\"1718981516319\",\"Queue\":\"default\"}'),(72,19,'Processing',NULL,'2024-06-21 14:51:58.015721','{\"StartedAt\":\"1718981518013\",\"ServerId\":\"desktop-etf8o9f:34680:dcedb19c-d703-4cbc-a93b-69f3f2cb2381\",\"WorkerId\":\"82bc19b6-399d-4cdf-a1d5-7aa1eb4ed0ec\"}'),(73,19,'Succeeded',NULL,'2024-06-21 14:51:58.208868','{\"SucceededAt\":\"1718981518189\",\"PerformanceDuration\":\"169\",\"Latency\":\"1717\"}'),(74,20,'Enqueued','Triggered using recurring job manager','2024-06-21 14:52:00.240849','{\"EnqueuedAt\":\"1718981520240\",\"Queue\":\"default\"}'),(75,21,'Enqueued','Triggered using recurring job manager','2024-06-21 14:52:02.058600','{\"EnqueuedAt\":\"1718981522057\",\"Queue\":\"default\"}'),(76,20,'Processing',NULL,'2024-06-21 14:52:02.134793','{\"StartedAt\":\"1718981522128\",\"ServerId\":\"desktop-etf8o9f:34680:dcedb19c-d703-4cbc-a93b-69f3f2cb2381\",\"WorkerId\":\"1302c72f-16ab-4613-accd-85b7cf1e0653\"}'),(77,20,'Succeeded',NULL,'2024-06-21 14:52:02.236849','{\"SucceededAt\":\"1718981522230\",\"PerformanceDuration\":\"85\",\"Latency\":\"1915\"}'),(78,21,'Processing',NULL,'2024-06-21 14:52:02.249123','{\"StartedAt\":\"1718981522246\",\"ServerId\":\"desktop-etf8o9f:34680:dcedb19c-d703-4cbc-a93b-69f3f2cb2381\",\"WorkerId\":\"1302c72f-16ab-4613-accd-85b7cf1e0653\"}');
/*!40000 ALTER TABLE `hangfirestate` ENABLE KEYS */;

-- 
-- Definition of lojas
-- 

DROP TABLE IF EXISTS `lojas`;
CREATE TABLE IF NOT EXISTS `lojas` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Nome` longtext NOT NULL,
  `NomeFantasia` longtext NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 
-- Dumping data for table lojas
-- 

/*!40000 ALTER TABLE `lojas` DISABLE KEYS */;
INSERT INTO `lojas`(`Id`,`Nome`,`NomeFantasia`) VALUES(1,'FLOR DE LIZ','FLOR DE LIZ'),(2,'GANDA MODAS','GANDA MODAS');
/*!40000 ALTER TABLE `lojas` ENABLE KEYS */;

-- 
-- Definition of usuarios
-- 

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Nome` longtext NOT NULL,
  `Telefone` longtext NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Login` longtext,
  `Senha` longtext,
  `LojasAcesso` longtext NOT NULL,
  `LojaId` int NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 
-- Dumping data for table usuarios
-- 

/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios`(`Id`,`Nome`,`Telefone`,`Email`,`Login`,`Senha`,`LojasAcesso`,`LojaId`) VALUES(1,'Andre Felipe Ganda','27998238617','andrefelipeg@hotmail.com','andre.ganda','123456','[\"1\"]',1),(2,'hemilly ganda','999999','hmrganda@gmail.com','hemilly.ganda','10203045','[\"1\",\"2\"]',1),(3,'Rosalia Morais Rodrigues Ganda','27997560808','rfmoraisme@hotmail.com','rosalia.ganda','10203045','[\"2\"]',2);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;

-- 
-- Definition of vendas
-- 

DROP TABLE IF EXISTS `vendas`;
CREATE TABLE IF NOT EXISTS `vendas` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `DataDaVenda` datetime(6) NOT NULL,
  `ClienteId` int DEFAULT NULL,
  `NumeroParcelas` int NOT NULL,
  `Total` decimal(65,30) NOT NULL,
  `LojaId` int DEFAULT NULL,
  `Entrada` decimal(65,30) NOT NULL,
  `TipoPagamento` int NOT NULL,
  `Status` int NOT NULL,
  `Observacao` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`Id`),
  KEY `IX_Vendas_ClienteId` (`ClienteId`),
  CONSTRAINT `FK_Vendas_Clientes_ClienteId` FOREIGN KEY (`ClienteId`) REFERENCES `clientes` (`ClienteID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 
-- Dumping data for table vendas
-- 

/*!40000 ALTER TABLE `vendas` DISABLE KEYS */;
INSERT INTO `vendas`(`Id`,`DataDaVenda`,`ClienteId`,`NumeroParcelas`,`Total`,`LojaId`,`Entrada`,`TipoPagamento`,`Status`,`Observacao`) VALUES(4,'2024-06-20 00:00:00.000000',1,1,324.32000000000000000000000000,1,0.0000000000000000000000000000,0,0,NULL),(5,'2024-06-20 00:00:00.000000',1,1,43.430000000000000000000000000,1,0.0000000000000000000000000000,0,0,NULL),(6,'2024-06-20 00:00:00.000000',1,0,0.2300000000000000000000000000,1,0.0000000000000000000000000000,2,1,NULL),(7,'2024-06-21 00:00:00.000000',1,0,46.460000000000000000000000000,1,0.0000000000000000000000000000,2,1,'observação');
/*!40000 ALTER TABLE `vendas` ENABLE KEYS */;

-- 
-- Definition of itemvendas
-- 

DROP TABLE IF EXISTS `itemvendas`;
CREATE TABLE IF NOT EXISTS `itemvendas` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `VendaId` int NOT NULL,
  `NomeDoProduto` longtext NOT NULL,
  `Quantidade` int NOT NULL,
  `PrecoUnitario` decimal(65,30) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_ItemVendas_VendaId` (`VendaId`),
  CONSTRAINT `FK_ItemVendas_Vendas_VendaId` FOREIGN KEY (`VendaId`) REFERENCES `vendas` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 
-- Dumping data for table itemvendas
-- 

/*!40000 ALTER TABLE `itemvendas` DISABLE KEYS */;
INSERT INTO `itemvendas`(`Id`,`VendaId`,`NomeDoProduto`,`Quantidade`,`PrecoUnitario`) VALUES(5,4,'ROUPA 5''''',1,324.32000000000000000000000000),(6,5,'DASDA434',1,43.430000000000000000000000000),(7,6,'ROUPA 5',1,0.2300000000000000000000000000),(8,7,'TESTE TSHIT',2,23.230000000000000000000000000);
/*!40000 ALTER TABLE `itemvendas` ENABLE KEYS */;

-- 
-- Definition of parcelas
-- 

DROP TABLE IF EXISTS `parcelas`;
CREATE TABLE IF NOT EXISTS `parcelas` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `VendaId` int NOT NULL,
  `NumeroParcela` int NOT NULL,
  `Valor` decimal(65,30) NOT NULL,
  `DataVencimento` datetime(6) NOT NULL,
  `DataPagamento` datetime(6) NOT NULL,
  `Pago` tinyint(1) NOT NULL,
  `Historico` longtext NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_Parcelas_VendaId` (`VendaId`),
  CONSTRAINT `FK_Parcelas_Vendas_VendaId` FOREIGN KEY (`VendaId`) REFERENCES `vendas` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 
-- Dumping data for table parcelas
-- 

/*!40000 ALTER TABLE `parcelas` DISABLE KEYS */;

/*!40000 ALTER TABLE `parcelas` ENABLE KEYS */;


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


-- Dump completed on 2024-06-21 11:52:02
-- Total time: 0:0:0:0:60 (d:h:m:s:ms)
