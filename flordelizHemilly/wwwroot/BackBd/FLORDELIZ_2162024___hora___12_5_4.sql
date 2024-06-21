-- MySqlBackup.NET 2.3.8.0
-- Dump Time: 2024-06-21 12:05:05
-- --------------------------------------
-- Server version 10.2.36-MariaDB-log MariaDB Server


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- 
-- Definition of Clientes
-- 

DROP TABLE IF EXISTS `Clientes`;
CREATE TABLE IF NOT EXISTS `Clientes` (
  `ClienteID` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` longtext NOT NULL,
  `Endereco` longtext DEFAULT NULL,
  `Cpf` longtext DEFAULT NULL,
  `Rg` longtext DEFAULT NULL,
  `DataNascimento` datetime(6) DEFAULT NULL,
  `EstadoCivil` longtext DEFAULT NULL,
  `ContatoConjuge` longtext DEFAULT NULL,
  `CasaPropriaAluguel` longtext DEFAULT NULL,
  `Profissao` longtext DEFAULT NULL,
  `LocalTrabalho` longtext DEFAULT NULL,
  `RendaMensal` longtext DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Telefone` longtext NOT NULL,
  `DataCadastro` datetime(6) DEFAULT NULL,
  `DataAlteracaoCadastro` datetime(6) DEFAULT NULL,
  `Status` int(11) NOT NULL,
  `LojaId` int(11) NOT NULL,
  `Observacoes` longtext DEFAULT NULL,
  `NomeMae` longtext DEFAULT NULL,
  `NomePai` longtext DEFAULT NULL,
  PRIMARY KEY (`ClienteID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

-- 
-- Dumping data for table Clientes
-- 

/*!40000 ALTER TABLE `Clientes` DISABLE KEYS */;
INSERT INTO `Clientes`(`ClienteID`,`Nome`,`Endereco`,`Cpf`,`Rg`,`DataNascimento`,`EstadoCivil`,`ContatoConjuge`,`CasaPropriaAluguel`,`Profissao`,`LocalTrabalho`,`RendaMensal`,`Email`,`Telefone`,`DataCadastro`,`DataAlteracaoCadastro`,`Status`,`LojaId`,`Observacoes`,`NomeMae`,`NomePai`) VALUES(1,'ANDRE FELIPE MORAIS RODRIGUES GANDA','AVENIDA QUINTINO BOCAIUVA',NULL,NULL,'1989-09-24 00:00:00.000000','CASADO',NULL,'1','Policial militar','Linhares','8500,30','andrefelipeg@hotmail.com','27998238617',NULL,NULL,1,1,'a esposa não pode comprar na ficha dele','rosalia ganda','elson ganda'),(2,'ANTONIA MARCIANO OUVERNEY','AVENIDA PADRE MANOEL DA NOBREGA, 1101 - INTERLAGOS','082.051.267-20','1.208.264-ES','1942-10-08 00:00:00.000000','CASADO',NULL,'0','APOSENTADA',NULL,'1400.00',NULL,'27 99895-6258',NULL,NULL,1,1,NULL,NULL,NULL),(3,'ANICEIA CALEGARI GALVANI','RUA DUQUE DE CAXIAS,420 - INTERLAGOS','091.329.517-52','523.554','1959-07-07 00:00:00.000000','CASADO',NULL,'0','PROPRIETARIA ESPAÇO HERBALIFE','CASA','2000.00',NULL,'2799804-6906',NULL,NULL,1,1,NULL,NULL,NULL),(4,'ALCEIA MARIA LUNZ BATISTA','RUA JOÃO PAULO II, 2305 - INTERLAGOS','031.629.097-16',NULL,'1964-09-21 00:00:00.000000','SOLTEIRO',NULL,'0','APOSENTADA',NULL,'1400.00',NULL,'27 99713-2947',NULL,NULL,1,1,'FILHA IONE LUNZ É AUTORIZADA A COMPRAR NA FICHA DELA','JACI LUNZ','MARIA LUZINETE LUNZ'),(5,'ALESSANDRA GOMES ','RUA ARTUR PINTO SANTANA, 467- INTERLAGOSS','031.830.247-05',NULL,'1975-10-09 00:00:00.000000','CASADO',NULL,'0',NULL,NULL,NULL,NULL,'27 99872-4144',NULL,NULL,0,1,'AUTORIZADO PARA IRMÃ LUCIETE',NULL,NULL),(6,'ALESSANDRA GOMES ','RUA ARTUR PINTO SANTANA, 467- INTERLAGOSS','031.830.247-05',NULL,'1975-10-09 00:00:00.000000','CASADO',NULL,'0',NULL,NULL,NULL,NULL,'27 99872-4144',NULL,NULL,1,1,'AUTORIZADO PARA IRMÃ LUCIETE/ FILHA MARKIELLY','FRANCISCO GOMES','MARIA DA PENHA BIANCARDI GOMES'),(7,'ROSIMARIA CARLESSO','AVENIDA PADRE MANOEL DA NOBREGA, 649 - INTERLAGOS','034.731.097-46','1387101- SPTC','1973-08-20 00:00:00.000000','CASADO','27 99957-8727 - IAMURA BATISTA ','0','COSTUREIRA','EM CASA','0,00',NULL,'(27) 99968-4919',NULL,NULL,1,1,'CLIENTE INDICADA PELA DONA TEREZA','JOSE VIERA CARLESSO','EDITE CORREA CARLESSO'),(8,'GILMARC COSTA LIMA','AVENIDA PADRE MANOEL DA NOBREGA, 1461 - INTERLAGOS','112.962.577-03','2088476','1979-02-09 00:00:00.000000','CASADO','996042024 - HEMILLY','0','ENGENHEIRO','EMPRESARIO','10000,00',NULL,'(27) 99806-2810',NULL,NULL,1,1,NULL,'LENILZA COSTA LIMA ','GILSON LIMA'),(9,'ALESSANDRA VIEIRA',NULL,NULL,NULL,NULL,'SOLTEIRO',NULL,'0',NULL,NULL,NULL,NULL,'(27) 99862-8915',NULL,NULL,1,1,'AUTORIZADO PARA IRMÃ ELIETE E CUNHADA MARCILÉIA ',NULL,NULL),(10,'ALINE PIRES','RUA BARÃO RIO BRANCO',NULL,NULL,NULL,'0',NULL,'1','VENDEDORA','FLOR DE LIS','1400,00',NULL,'(27) 99783-2106',NULL,NULL,1,1,NULL,NULL,NULL),(11,'AURORA  FERNANDES',NULL,NULL,NULL,NULL,'0',NULL,'0',NULL,NULL,'1300,00',NULL,'(27) 99757-8254',NULL,NULL,1,1,NULL,NULL,NULL),(12,'ANA CLAUDIA PEREIRA','RUA FELIPE CAMARÃO ,1464 - INTERLAGOS','060.462.497-24','3124694','1987-08-21 00:00:00.000000','CASADO','SEBASTIÃO LOPES DOS SANTOS','0','DO LAR',NULL,'1000,00',NULL,'(27) 99707-9257',NULL,NULL,1,1,'NÃO PODE COMPRAR! ESTÁ EM PROBLEMAS PSICOLÓGICOS','MARIA LUIZA FRAGA PEREIRA','BELMIRO PEREIRA'),(13,'ADRIANA RODRIGUES DE SOUSA DOS SANTOS','RUA JOÃO GAMA,01 - INTERLAGOS ( ATRAS DO CAIC)','117.996.057-28','194124SPTC',NULL,'CASADO',NULL,'0','CONFEITEIRA','EM CASA','1300,00',NULL,'(27) 99519-9569',NULL,NULL,1,1,NULL,NULL,NULL),(14,'ANDRE GONÇALVES DE JESUS',NULL,NULL,NULL,NULL,'SOLTEIRO',NULL,'0','ENTREGADOR ',NULL,'2000,00',NULL,'(27) 99859-0634',NULL,NULL,1,1,NULL,NULL,NULL),(15,'ALCIMARA NASCIMENTO ALMEIDA',NULL,NULL,NULL,NULL,'CASADO',NULL,'0',NULL,NULL,NULL,NULL,'(27) 99610-3380',NULL,NULL,1,1,NULL,NULL,NULL),(16,'ADELANDRA FELIPE DOS SANTOS',NULL,'108.320.307-08','1879623','1983-09-18 00:00:00.000000','CASADO',NULL,'0',NULL,NULL,NULL,NULL,'(27) 99752-3840',NULL,NULL,1,1,'NÃO VENDER, NÃO PAGA','ALMIRA FERREIRA FELIPE','ADÃO FELIPE'),(17,'AISA NONATO MALANCHINI',NULL,NULL,NULL,NULL,'CASADO',NULL,'0','DO LAR',NULL,NULL,NULL,'(27) 99821-8296',NULL,NULL,1,1,'NÃO VENDER SÓ PAGA ATRASADO',NULL,NULL),(18,'AVULSO - SEM CADASTRO',NULL,NULL,NULL,NULL,'0',NULL,'0',NULL,NULL,NULL,NULL,'(00) 0000-0000',NULL,NULL,1,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `Clientes` ENABLE KEYS */;

-- 
-- Definition of HangfireAggregatedCounter
-- 

DROP TABLE IF EXISTS `HangfireAggregatedCounter`;
CREATE TABLE IF NOT EXISTS `HangfireAggregatedCounter` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Key` varchar(100) NOT NULL,
  `Value` int(11) NOT NULL,
  `ExpireAt` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `IX_HangfireCounterAggregated_Key` (`Key`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table HangfireAggregatedCounter
-- 

/*!40000 ALTER TABLE `HangfireAggregatedCounter` DISABLE KEYS */;
INSERT INTO `HangfireAggregatedCounter`(`Id`,`Key`,`Value`,`ExpireAt`) VALUES(1,'stats:succeeded',11,NULL),(2,'stats:succeeded:2024-06-19',2,'2024-07-19 21:03:24'),(5,'stats:succeeded:2024-06-20',6,'2024-07-20 20:04:37'),(10,'stats:succeeded:2024-06-20-15',1,'2024-06-21 15:00:39'),(11,'stats:succeeded:2024-06-20-20',2,'2024-06-21 20:04:37'),(12,'stats:succeeded:2024-06-21',3,'2024-07-21 15:00:32'),(13,'stats:succeeded:2024-06-21-00',1,'2024-06-22 00:19:10'),(15,'stats:succeeded:2024-06-21-11',1,'2024-06-22 11:00:29'),(16,'stats:succeeded:2024-06-21-15',1,'2024-06-22 15:00:32');
/*!40000 ALTER TABLE `HangfireAggregatedCounter` ENABLE KEYS */;

-- 
-- Definition of HangfireCounter
-- 

DROP TABLE IF EXISTS `HangfireCounter`;
CREATE TABLE IF NOT EXISTS `HangfireCounter` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Key` varchar(100) NOT NULL,
  `Value` int(11) NOT NULL,
  `ExpireAt` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_HangfireCounter_Key` (`Key`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table HangfireCounter
-- 

/*!40000 ALTER TABLE `HangfireCounter` DISABLE KEYS */;

/*!40000 ALTER TABLE `HangfireCounter` ENABLE KEYS */;

-- 
-- Definition of HangfireDistributedLock
-- 

DROP TABLE IF EXISTS `HangfireDistributedLock`;
CREATE TABLE IF NOT EXISTS `HangfireDistributedLock` (
  `Resource` varchar(100) NOT NULL,
  `CreatedAt` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table HangfireDistributedLock
-- 

/*!40000 ALTER TABLE `HangfireDistributedLock` DISABLE KEYS */;

/*!40000 ALTER TABLE `HangfireDistributedLock` ENABLE KEYS */;

-- 
-- Definition of HangfireHash
-- 

DROP TABLE IF EXISTS `HangfireHash`;
CREATE TABLE IF NOT EXISTS `HangfireHash` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Key` varchar(100) NOT NULL,
  `Field` varchar(40) NOT NULL,
  `Value` longtext DEFAULT NULL,
  `ExpireAt` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `IX_HangfireHash_Key_Field` (`Key`,`Field`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table HangfireHash
-- 

/*!40000 ALTER TABLE `HangfireHash` DISABLE KEYS */;
INSERT INTO `HangfireHash`(`Id`,`Key`,`Field`,`Value`,`ExpireAt`) VALUES(1,'recurring-job:make_backup_bd','Queue','default',NULL),(2,'recurring-job:make_backup_bd','Cron','0 */5 * * *',NULL),(3,'recurring-job:make_backup_bd','TimeZoneId','UTC',NULL),(4,'recurring-job:make_backup_bd','Job','{\"t\":\"flordelizHemilly.Service.MonitorService, flordelizHemilly, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\",\"m\":\"BackUpBd\",\"p\":[\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\",\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\"],\"a\":[\"\\\"Server=mysql.flordelizlinhares.kinghost.net;Database=flordelizlinha;User=flordelizlinha;Password=10081075731Ganda;\\\"\",\"\\\"d:\\\\\\\\web\\\\\\\\localuser\\\\\\\\flordelizlinhares\\\\\\\\www\\\"\"]}',NULL),(5,'recurring-job:make_backup_bd','CreatedAt','1718828804361',NULL),(6,'recurring-job:make_backup_bd','NextExecution','1719000000000',NULL),(7,'recurring-job:make_backup_bd','V','2',NULL),(9,'recurring-job:make_backup_bd','LastExecution','1718982019180',NULL),(10,'recurring-job:make_backup_bd','LastJobId','11',NULL);
/*!40000 ALTER TABLE `HangfireHash` ENABLE KEYS */;

-- 
-- Definition of HangfireJob
-- 

DROP TABLE IF EXISTS `HangfireJob`;
CREATE TABLE IF NOT EXISTS `HangfireJob` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `StateId` int(11) DEFAULT NULL,
  `StateName` varchar(20) DEFAULT NULL,
  `InvocationData` longtext NOT NULL,
  `Arguments` longtext NOT NULL,
  `CreatedAt` datetime(6) NOT NULL,
  `ExpireAt` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_HangfireJob_StateName` (`StateName`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table HangfireJob
-- 

/*!40000 ALTER TABLE `HangfireJob` DISABLE KEYS */;
INSERT INTO `HangfireJob`(`Id`,`StateId`,`StateName`,`InvocationData`,`Arguments`,`CreatedAt`,`ExpireAt`) VALUES(6,18,'Succeeded','{\"Type\":\"flordelizHemilly.Service.MonitorService, flordelizHemilly, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\",\"Method\":\"BackUpBd\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\",\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Server=mysql.flordelizlinhares.kinghost.net;Database=flordelizlinha;User=flordelizlinha;Password=10081075731Ganda;\\\\\\\"\\\",\\\"\\\\\\\"d:\\\\\\\\\\\\\\\\web\\\\\\\\\\\\\\\\localuser\\\\\\\\\\\\\\\\flordelizlinhares\\\\\\\\\\\\\\\\www\\\\\\\"\\\"]\"}','[\"\\\"Server=mysql.flordelizlinhares.kinghost.net;Database=flordelizlinha;User=flordelizlinha;Password=10081075731Ganda;\\\"\",\"\\\"d:\\\\\\\\web\\\\\\\\localuser\\\\\\\\flordelizlinhares\\\\\\\\www\\\"\"]','2024-06-20 15:00:24.447991','2024-06-21 15:00:39.153658'),(7,21,'Succeeded','{\"Type\":\"flordelizHemilly.Service.MonitorService, flordelizHemilly, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\",\"Method\":\"BackUpBd\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\",\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Server=mysql.flordelizlinhares.kinghost.net;Database=flordelizlinha;User=flordelizlinha;Password=10081075731Ganda;\\\\\\\"\\\",\\\"\\\\\\\"d:\\\\\\\\\\\\\\\\web\\\\\\\\\\\\\\\\localuser\\\\\\\\\\\\\\\\flordelizlinhares\\\\\\\\\\\\\\\\www\\\\\\\"\\\"]\"}','[\"\\\"Server=mysql.flordelizlinhares.kinghost.net;Database=flordelizlinha;User=flordelizlinha;Password=10081075731Ganda;\\\"\",\"\\\"d:\\\\\\\\web\\\\\\\\localuser\\\\\\\\flordelizlinhares\\\\\\\\www\\\"\"]','2024-06-20 20:04:06.363309','2024-06-21 20:04:22.745871'),(8,24,'Succeeded','{\"Type\":\"flordelizHemilly.Service.MonitorService, flordelizHemilly, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\",\"Method\":\"BackUpBd\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\",\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Server=mysql.flordelizlinhares.kinghost.net;Database=flordelizlinha;User=flordelizlinha;Password=10081075731Ganda;\\\\\\\"\\\",\\\"\\\\\\\"d:\\\\\\\\\\\\\\\\web\\\\\\\\\\\\\\\\localuser\\\\\\\\\\\\\\\\flordelizlinhares\\\\\\\\\\\\\\\\www\\\\\\\"\\\"]\"}','[\"\\\"Server=mysql.flordelizlinhares.kinghost.net;Database=flordelizlinha;User=flordelizlinha;Password=10081075731Ganda;\\\"\",\"\\\"d:\\\\\\\\web\\\\\\\\localuser\\\\\\\\flordelizlinhares\\\\\\\\www\\\"\"]','2024-06-20 20:04:37.666917','2024-06-21 20:04:37.962330'),(9,27,'Succeeded','{\"Type\":\"flordelizHemilly.Service.MonitorService, flordelizHemilly, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\",\"Method\":\"BackUpBd\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\",\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Server=mysql.flordelizlinhares.kinghost.net;Database=flordelizlinha;User=flordelizlinha;Password=10081075731Ganda;\\\\\\\"\\\",\\\"\\\\\\\"d:\\\\\\\\\\\\\\\\web\\\\\\\\\\\\\\\\localuser\\\\\\\\\\\\\\\\flordelizlinhares\\\\\\\\\\\\\\\\www\\\\\\\"\\\"]\"}','[\"\\\"Server=mysql.flordelizlinhares.kinghost.net;Database=flordelizlinha;User=flordelizlinha;Password=10081075731Ganda;\\\"\",\"\\\"d:\\\\\\\\web\\\\\\\\localuser\\\\\\\\flordelizlinhares\\\\\\\\www\\\"\"]','2024-06-21 00:18:54.632731','2024-06-22 00:19:10.158105'),(10,30,'Succeeded','{\"Type\":\"flordelizHemilly.Service.MonitorService, flordelizHemilly, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\",\"Method\":\"BackUpBd\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\",\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Server=mysql.flordelizlinhares.kinghost.net;Database=flordelizlinha;User=flordelizlinha;Password=10081075731Ganda;\\\\\\\"\\\",\\\"\\\\\\\"d:\\\\\\\\\\\\\\\\web\\\\\\\\\\\\\\\\localuser\\\\\\\\\\\\\\\\flordelizlinhares\\\\\\\\\\\\\\\\www\\\\\\\"\\\"]\"}','[\"\\\"Server=mysql.flordelizlinhares.kinghost.net;Database=flordelizlinha;User=flordelizlinha;Password=10081075731Ganda;\\\"\",\"\\\"d:\\\\\\\\web\\\\\\\\localuser\\\\\\\\flordelizlinhares\\\\\\\\www\\\"\"]','2024-06-21 11:00:13.760357','2024-06-22 11:00:29.110323'),(11,33,'Succeeded','{\"Type\":\"flordelizHemilly.Service.MonitorService, flordelizHemilly, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\",\"Method\":\"BackUpBd\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\",\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Server=mysql.flordelizlinhares.kinghost.net;Database=flordelizlinha;User=flordelizlinha;Password=10081075731Ganda;\\\\\\\"\\\",\\\"\\\\\\\"d:\\\\\\\\\\\\\\\\web\\\\\\\\\\\\\\\\localuser\\\\\\\\\\\\\\\\flordelizlinhares\\\\\\\\\\\\\\\\www\\\\\\\"\\\"]\"}','[\"\\\"Server=mysql.flordelizlinhares.kinghost.net;Database=flordelizlinha;User=flordelizlinha;Password=10081075731Ganda;\\\"\",\"\\\"d:\\\\\\\\web\\\\\\\\localuser\\\\\\\\flordelizlinhares\\\\\\\\www\\\"\"]','2024-06-21 15:00:19.260198','2024-06-22 15:00:32.423649');
/*!40000 ALTER TABLE `HangfireJob` ENABLE KEYS */;

-- 
-- Definition of HangfireJobParameter
-- 

DROP TABLE IF EXISTS `HangfireJobParameter`;
CREATE TABLE IF NOT EXISTS `HangfireJobParameter` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `JobId` int(11) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Value` longtext DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `IX_HangfireJobParameter_JobId_Name` (`JobId`,`Name`),
  KEY `FK_HangfireJobParameter_Job` (`JobId`),
  CONSTRAINT `FK_HangfireJobParameter_Job` FOREIGN KEY (`JobId`) REFERENCES `HangfireJob` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table HangfireJobParameter
-- 

/*!40000 ALTER TABLE `HangfireJobParameter` DISABLE KEYS */;
INSERT INTO `HangfireJobParameter`(`Id`,`JobId`,`Name`,`Value`) VALUES(21,6,'RecurringJobId','\"make_backup_bd\"'),(22,6,'Time','1718895624'),(23,6,'CurrentCulture','\"pt-BR\"'),(24,6,'CurrentUICulture','\"pt-BR\"'),(25,7,'RecurringJobId','\"make_backup_bd\"'),(26,7,'Time','1718913846'),(27,7,'CurrentCulture','\"pt-BR\"'),(28,7,'CurrentUICulture','\"pt-BR\"'),(29,8,'RecurringJobId','\"make_backup_bd\"'),(30,8,'Time','1718913877'),(31,8,'CurrentCulture','\"pt-BR\"'),(32,8,'CurrentUICulture','\"pt-BR\"'),(33,9,'RecurringJobId','\"make_backup_bd\"'),(34,9,'Time','1718929134'),(35,9,'CurrentCulture','\"pt-BR\"'),(36,9,'CurrentUICulture','\"pt-BR\"'),(37,10,'RecurringJobId','\"make_backup_bd\"'),(38,10,'Time','1718967613'),(39,10,'CurrentCulture','\"pt-BR\"'),(40,10,'CurrentUICulture','\"pt-BR\"'),(41,11,'RecurringJobId','\"make_backup_bd\"'),(42,11,'Time','1718982019'),(43,11,'CurrentCulture','\"pt-BR\"'),(44,11,'CurrentUICulture','\"pt-BR\"');
/*!40000 ALTER TABLE `HangfireJobParameter` ENABLE KEYS */;

-- 
-- Definition of HangfireJobQueue
-- 

DROP TABLE IF EXISTS `HangfireJobQueue`;
CREATE TABLE IF NOT EXISTS `HangfireJobQueue` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `JobId` int(11) NOT NULL,
  `FetchedAt` datetime(6) DEFAULT NULL,
  `Queue` varchar(50) NOT NULL,
  `FetchToken` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_HangfireJobQueue_QueueAndFetchedAt` (`Queue`,`FetchedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table HangfireJobQueue
-- 

/*!40000 ALTER TABLE `HangfireJobQueue` DISABLE KEYS */;

/*!40000 ALTER TABLE `HangfireJobQueue` ENABLE KEYS */;

-- 
-- Definition of HangfireJobState
-- 

DROP TABLE IF EXISTS `HangfireJobState`;
CREATE TABLE IF NOT EXISTS `HangfireJobState` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `JobId` int(11) NOT NULL,
  `CreatedAt` datetime(6) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Reason` varchar(100) DEFAULT NULL,
  `Data` longtext DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_HangfireJobState_Job` (`JobId`),
  CONSTRAINT `FK_HangfireJobState_Job` FOREIGN KEY (`JobId`) REFERENCES `HangfireJob` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table HangfireJobState
-- 

/*!40000 ALTER TABLE `HangfireJobState` DISABLE KEYS */;

/*!40000 ALTER TABLE `HangfireJobState` ENABLE KEYS */;

-- 
-- Definition of HangfireList
-- 

DROP TABLE IF EXISTS `HangfireList`;
CREATE TABLE IF NOT EXISTS `HangfireList` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Key` varchar(100) NOT NULL,
  `Value` longtext DEFAULT NULL,
  `ExpireAt` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table HangfireList
-- 

/*!40000 ALTER TABLE `HangfireList` DISABLE KEYS */;

/*!40000 ALTER TABLE `HangfireList` ENABLE KEYS */;

-- 
-- Definition of HangfireServer
-- 

DROP TABLE IF EXISTS `HangfireServer`;
CREATE TABLE IF NOT EXISTS `HangfireServer` (
  `Id` varchar(100) NOT NULL,
  `Data` longtext NOT NULL,
  `LastHeartbeat` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table HangfireServer
-- 

/*!40000 ALTER TABLE `HangfireServer` DISABLE KEYS */;
INSERT INTO `HangfireServer`(`Id`,`Data`,`LastHeartbeat`) VALUES('web22f37:16372:6990ead8-9375-483b-9dd8-a95814d6bdcd','{\"WorkerCount\":5,\"Queues\":[\"default\"],\"StartedAt\":\"2024-06-21T13:33:54.8066549Z\"}','2024-06-21 15:04:56.095575');
/*!40000 ALTER TABLE `HangfireServer` ENABLE KEYS */;

-- 
-- Definition of HangfireSet
-- 

DROP TABLE IF EXISTS `HangfireSet`;
CREATE TABLE IF NOT EXISTS `HangfireSet` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Key` varchar(100) NOT NULL,
  `Value` varchar(256) NOT NULL,
  `Score` float NOT NULL,
  `ExpireAt` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `IX_HangfireSet_Key_Value` (`Key`,`Value`)
) ENGINE=InnoDB AUTO_INCREMENT=4019 DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table HangfireSet
-- 

/*!40000 ALTER TABLE `HangfireSet` DISABLE KEYS */;
INSERT INTO `HangfireSet`(`Id`,`Key`,`Value`,`Score`,`ExpireAt`) VALUES(1,'recurring-jobs','make_backup_bd',1.719E+09,NULL);
/*!40000 ALTER TABLE `HangfireSet` ENABLE KEYS */;

-- 
-- Definition of HangfireState
-- 

DROP TABLE IF EXISTS `HangfireState`;
CREATE TABLE IF NOT EXISTS `HangfireState` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `JobId` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Reason` varchar(100) DEFAULT NULL,
  `CreatedAt` datetime(6) NOT NULL,
  `Data` longtext DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_HangfireHangFire_State_Job` (`JobId`),
  CONSTRAINT `FK_HangfireHangFire_State_Job` FOREIGN KEY (`JobId`) REFERENCES `HangfireJob` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table HangfireState
-- 

/*!40000 ALTER TABLE `HangfireState` DISABLE KEYS */;
INSERT INTO `HangfireState`(`Id`,`JobId`,`Name`,`Reason`,`CreatedAt`,`Data`) VALUES(16,6,'Enqueued','Triggered by recurring job scheduler','2024-06-20 15:00:24.485813','{\"EnqueuedAt\":\"1718895624472\",\"Queue\":\"default\"}'),(17,6,'Processing',NULL,'2024-06-20 15:00:38.041948','{\"StartedAt\":\"1718895638019\",\"ServerId\":\"web22f37:12040:231d48f3-70bc-4ebe-9e29-c8b297a69390\",\"WorkerId\":\"96389444-cef9-47bd-b174-d82a1d7407ca\"}'),(18,6,'Succeeded',NULL,'2024-06-20 15:00:39.149071','{\"SucceededAt\":\"1718895639128\",\"PerformanceDuration\":\"1077\",\"Latency\":\"13603\"}'),(19,7,'Enqueued','Triggered by recurring job scheduler','2024-06-20 20:04:06.465477','{\"EnqueuedAt\":\"1718913846406\",\"Queue\":\"default\"}'),(20,7,'Processing',NULL,'2024-06-20 20:04:21.319770','{\"StartedAt\":\"1718913861287\",\"ServerId\":\"web22f37:4660:286d3a46-085d-4ada-9823-d40dc8a0df30\",\"WorkerId\":\"9f22ffa6-346a-4304-a38e-3e973ce22efb\"}'),(21,7,'Succeeded',NULL,'2024-06-20 20:04:22.739583','{\"SucceededAt\":\"1718913862719\",\"PerformanceDuration\":\"1391\",\"Latency\":\"14964\"}'),(22,8,'Enqueued','Triggered using recurring job manager','2024-06-20 20:04:37.677118','{\"EnqueuedAt\":\"1718913877673\",\"Queue\":\"default\"}'),(23,8,'Processing',NULL,'2024-06-20 20:04:37.777977','{\"StartedAt\":\"1718913877772\",\"ServerId\":\"web22f37:4660:286d3a46-085d-4ada-9823-d40dc8a0df30\",\"WorkerId\":\"9f22ffa6-346a-4304-a38e-3e973ce22efb\"}'),(24,8,'Succeeded',NULL,'2024-06-20 20:04:37.960119','{\"SucceededAt\":\"1718913877952\",\"PerformanceDuration\":\"165\",\"Latency\":\"120\"}'),(25,9,'Enqueued','Triggered by recurring job scheduler','2024-06-21 00:18:54.704985','{\"EnqueuedAt\":\"1718929134662\",\"Queue\":\"default\"}'),(26,9,'Processing',NULL,'2024-06-21 00:19:09.464851','{\"StartedAt\":\"1718929149440\",\"ServerId\":\"web22f37:2624:bded9911-7ad4-4867-b6e7-2458e66cadf0\",\"WorkerId\":\"8afe0ebd-3f6c-4157-b91d-eca5e35d8245\"}'),(27,9,'Succeeded',NULL,'2024-06-21 00:19:10.155065','{\"SucceededAt\":\"1718929150139\",\"PerformanceDuration\":\"668\",\"Latency\":\"14837\"}'),(28,10,'Enqueued','Triggered by recurring job scheduler','2024-06-21 11:00:13.843691','{\"EnqueuedAt\":\"1718967613797\",\"Queue\":\"default\"}'),(29,10,'Processing',NULL,'2024-06-21 11:00:28.328117','{\"StartedAt\":\"1718967628301\",\"ServerId\":\"web22f37:12292:b3707ed9-0cc9-44d3-80eb-775d8fb619a3\",\"WorkerId\":\"e5a51f8b-420f-4ba3-8b1e-a581d9d4079a\"}'),(30,10,'Succeeded',NULL,'2024-06-21 11:00:29.106785','{\"SucceededAt\":\"1718967629092\",\"PerformanceDuration\":\"757\",\"Latency\":\"14574\"}'),(31,11,'Enqueued','Triggered by recurring job scheduler','2024-06-21 15:00:19.394686','{\"EnqueuedAt\":\"1718982019297\",\"Queue\":\"default\"}'),(32,11,'Processing',NULL,'2024-06-21 15:00:31.134285','{\"StartedAt\":\"1718982031101\",\"ServerId\":\"web22f37:16372:6990ead8-9375-483b-9dd8-a95814d6bdcd\",\"WorkerId\":\"a863867d-7213-44f2-ad9c-6935020760c8\"}'),(33,11,'Succeeded',NULL,'2024-06-21 15:00:32.411219','{\"SucceededAt\":\"1718982032380\",\"PerformanceDuration\":\"1217\",\"Latency\":\"11902\"}');
/*!40000 ALTER TABLE `HangfireState` ENABLE KEYS */;

-- 
-- Definition of Lojas
-- 

DROP TABLE IF EXISTS `Lojas`;
CREATE TABLE IF NOT EXISTS `Lojas` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` longtext NOT NULL,
  `NomeFantasia` longtext NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- 
-- Dumping data for table Lojas
-- 

/*!40000 ALTER TABLE `Lojas` DISABLE KEYS */;
INSERT INTO `Lojas`(`Id`,`Nome`,`NomeFantasia`) VALUES(1,'FLOR DE LIZ','FLOR DE LIZ'),(2,'GANDA MODAS','GANDA MODAS');
/*!40000 ALTER TABLE `Lojas` ENABLE KEYS */;

-- 
-- Definition of Usuarios
-- 

DROP TABLE IF EXISTS `Usuarios`;
CREATE TABLE IF NOT EXISTS `Usuarios` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` longtext NOT NULL,
  `Telefone` longtext NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Login` longtext DEFAULT NULL,
  `Senha` longtext DEFAULT NULL,
  `LojasAcesso` longtext NOT NULL,
  `LojaId` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- 
-- Dumping data for table Usuarios
-- 

/*!40000 ALTER TABLE `Usuarios` DISABLE KEYS */;
INSERT INTO `Usuarios`(`Id`,`Nome`,`Telefone`,`Email`,`Login`,`Senha`,`LojasAcesso`,`LojaId`) VALUES(1,'Andre Felipe Ganda','27998238617','andrefelipeg@hotmail.com','andre.ganda','123456','[\"1\"]',1),(2,'hemilly ganda','999999','hmrganda@gmail.com','hemilly.ganda','10203045','[\"1\",\"2\"]',1),(3,'Rosalia Morais Rodrigues Ganda','27997560808','rfmoraisme@hotmail.com','rosalia.ganda','10203045','[\"2\"]',2);
/*!40000 ALTER TABLE `Usuarios` ENABLE KEYS */;

-- 
-- Definition of Vendas
-- 

DROP TABLE IF EXISTS `Vendas`;
CREATE TABLE IF NOT EXISTS `Vendas` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `DataDaVenda` datetime(6) NOT NULL,
  `ClienteId` int(11) DEFAULT NULL,
  `NumeroParcelas` int(11) NOT NULL,
  `Total` decimal(65,30) NOT NULL,
  `LojaId` int(11) DEFAULT NULL,
  `Entrada` decimal(65,30) NOT NULL,
  `TipoPagamento` int(11) NOT NULL,
  `Status` int(11) NOT NULL,
  `Observacao` longtext DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_Vendas_ClienteId` (`ClienteId`),
  CONSTRAINT `FK_Vendas_Clientes_ClienteId` FOREIGN KEY (`ClienteId`) REFERENCES `Clientes` (`ClienteID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

-- 
-- Dumping data for table Vendas
-- 

/*!40000 ALTER TABLE `Vendas` DISABLE KEYS */;

/*!40000 ALTER TABLE `Vendas` ENABLE KEYS */;

-- 
-- Definition of ItemVendas
-- 

DROP TABLE IF EXISTS `ItemVendas`;
CREATE TABLE IF NOT EXISTS `ItemVendas` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `VendaId` int(11) NOT NULL,
  `NomeDoProduto` longtext NOT NULL,
  `Quantidade` int(11) NOT NULL,
  `PrecoUnitario` decimal(65,30) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_ItemVendas_VendaId` (`VendaId`),
  CONSTRAINT `FK_ItemVendas_Vendas_VendaId` FOREIGN KEY (`VendaId`) REFERENCES `Vendas` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- 
-- Dumping data for table ItemVendas
-- 

/*!40000 ALTER TABLE `ItemVendas` DISABLE KEYS */;

/*!40000 ALTER TABLE `ItemVendas` ENABLE KEYS */;

-- 
-- Definition of Parcelas
-- 

DROP TABLE IF EXISTS `Parcelas`;
CREATE TABLE IF NOT EXISTS `Parcelas` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `VendaId` int(11) NOT NULL,
  `NumeroParcela` int(11) NOT NULL,
  `Valor` decimal(65,30) NOT NULL,
  `DataVencimento` datetime(6) NOT NULL,
  `DataPagamento` datetime(6) NOT NULL,
  `Pago` tinyint(1) NOT NULL,
  `Historico` longtext NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_Parcelas_VendaId` (`VendaId`),
  CONSTRAINT `FK_Parcelas_Vendas_VendaId` FOREIGN KEY (`VendaId`) REFERENCES `Vendas` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- 
-- Dumping data for table Parcelas
-- 

/*!40000 ALTER TABLE `Parcelas` DISABLE KEYS */;

/*!40000 ALTER TABLE `Parcelas` ENABLE KEYS */;

-- 
-- Definition of __EFMigrationsHistory
-- 

DROP TABLE IF EXISTS `__EFMigrationsHistory`;
CREATE TABLE IF NOT EXISTS `__EFMigrationsHistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL,
  PRIMARY KEY (`MigrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 
-- Dumping data for table __EFMigrationsHistory
-- 

/*!40000 ALTER TABLE `__EFMigrationsHistory` DISABLE KEYS */;
INSERT INTO `__EFMigrationsHistory`(`MigrationId`,`ProductVersion`) VALUES('20240618032204_inicial','7.0.20'),('20240619135741_mudança renda mensal','7.0.20'),('20240619141130_inclusao nome pai e mae','7.0.20'),('20240619141450_nome pai e mae','7.0.20'),('20240620200847_inclusão observação na venda','7.0.20'),('20240620201751_inclusão observação na venda 2','7.0.20');
/*!40000 ALTER TABLE `__EFMigrationsHistory` ENABLE KEYS */;


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


-- Dump completed on 2024-06-21 12:05:15
-- Total time: 0:0:0:9:981 (d:h:m:s:ms)
