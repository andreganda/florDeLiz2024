-- MySqlBackup.NET 2.3.8.0
-- Dump Time: 2024-06-25 17:03:31
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
INSERT INTO `__efmigrationshistory`(`MigrationId`,`ProductVersion`) VALUES('20240618032204_inicial','7.0.20'),('20240619135741_mudança renda mensal','7.0.20'),('20240619141130_inclusao nome pai e mae','7.0.20'),('20240619141450_nome pai e mae','7.0.20'),('20240620200847_inclusão observação na venda','7.0.20'),('20240620201751_inclusão observação na venda 2','7.0.20'),('20240620203124_inclusão observação na venda 3','7.0.20'),('20240624000243_usando enumerador','7.0.20'),('20240625122515_entrada com excluido','7.0.20');
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 
-- Dumping data for table clientes
-- 

/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes`(`ClienteID`,`Nome`,`Endereco`,`Cpf`,`Rg`,`DataNascimento`,`EstadoCivil`,`ContatoConjuge`,`CasaPropriaAluguel`,`Profissao`,`LocalTrabalho`,`RendaMensal`,`Email`,`Telefone`,`DataCadastro`,`DataAlteracaoCadastro`,`Status`,`LojaId`,`Observacoes`,`NomeMae`,`NomePai`) VALUES(1,'ANDRE FELIPE MORAIS RODRIGUES GANDA','AVENIDA QUINTINO BOCAIUVA',NULL,NULL,'1989-09-24 00:00:00.000000','CASADO',NULL,'1','Policial militar','Linhares','8500,30','andrefelipeg@hotmail.com','27998238617',NULL,NULL,1,1,'a esposa não pode comprar na ficha dele','rosalia ganda','elson ganda'),(2,'ANTONIA MARCIANO OUVERNEY','AVENIDA PADRE MANOEL DA NOBREGA, 1101 - INTERLAGOS','082.051.267-20','1.208.264-ES','1942-10-08 00:00:00.000000','CASADO',NULL,'0','APOSENTADA',NULL,'1400.00',NULL,'27 99895-6258',NULL,NULL,1,1,NULL,NULL,NULL),(3,'ANICEIA CALEGARI GALVANI','RUA DUQUE DE CAXIAS,420 - INTERLAGOS','091.329.517-52','523.554','1959-07-07 00:00:00.000000','CASADO',NULL,'0','PROPRIETARIA ESPAÇO HERBALIFE','CASA','2000.00',NULL,'2799804-6906',NULL,NULL,1,1,NULL,NULL,NULL),(4,'ALCEIA MARIA LUNZ BATISTA','RUA JOÃO PAULO II, 2305 - INTERLAGOS','031.629.097-16',NULL,'1964-09-21 00:00:00.000000','SOLTEIRO',NULL,'0','APOSENTADA',NULL,'1400.00',NULL,'27 99713-2947',NULL,NULL,1,1,'FILHA IONE LUNZ É AUTORIZADA A COMPRAR NA FICHA DELA','JACI LUNZ','MARIA LUZINETE LUNZ'),(5,'ALESSANDRA GOMES ','RUA ARTUR PINTO SANTANA, 467- INTERLAGOSS','031.830.247-05',NULL,'1975-10-09 00:00:00.000000','CASADO',NULL,'0',NULL,NULL,NULL,NULL,'27 99872-4144',NULL,NULL,0,1,'AUTORIZADO PARA IRMÃ LUCIETE',NULL,NULL),(6,'ALESSANDRA GOMES ','RUA ARTUR PINTO SANTANA, 467- INTERLAGOSS','031.830.247-05',NULL,'1975-10-09 00:00:00.000000','CASADO',NULL,'0',NULL,NULL,NULL,NULL,'27 99872-4144',NULL,NULL,1,1,'AUTORIZADO PARA IRMÃ LUCIETE/ FILHA MARKIELLY','FRANCISCO GOMES','MARIA DA PENHA BIANCARDI GOMES'),(7,'ROSIMARIA CARLESSO','AVENIDA PADRE MANOEL DA NOBREGA, 649 - INTERLAGOS','034.731.097-46','1387101- SPTC','1973-08-20 00:00:00.000000','CASADO','27 99957-8727 - IAMURA BATISTA ','0','COSTUREIRA','EM CASA','0,00',NULL,'(27) 99968-4919',NULL,NULL,1,1,'CLIENTE INDICADA PELA DONA TEREZA','JOSE VIERA CARLESSO','EDITE CORREA CARLESSO'),(8,'GILMARC COSTA LIMA','AVENIDA PADRE MANOEL DA NOBREGA, 1461 - INTERLAGOS','112.962.577-03','2088476','1979-02-09 00:00:00.000000','CASADO','996042024 - HEMILLY','0','ENGENHEIRO','EMPRESARIO','10000,00',NULL,'(27) 99806-2810',NULL,NULL,1,1,NULL,'LENILZA COSTA LIMA ','GILSON LIMA'),(9,'ALESSANDRA VIEIRA',NULL,NULL,NULL,NULL,'SOLTEIRO',NULL,'0',NULL,NULL,NULL,NULL,'(27) 99862-8915',NULL,NULL,1,1,'AUTORIZADO PARA IRMÃ ELIETE E CUNHADA MARCILÉIA ',NULL,NULL),(10,'ALINE PIRES','RUA BARÃO RIO BRANCO',NULL,NULL,NULL,'0',NULL,'1','VENDEDORA','FLOR DE LIS','1400,00',NULL,'(27) 99783-2106',NULL,NULL,1,1,NULL,NULL,NULL),(11,'AURORA  FERNANDES',NULL,NULL,NULL,NULL,'0',NULL,'0',NULL,NULL,'1300,00',NULL,'(27) 99757-8254',NULL,NULL,1,1,NULL,NULL,NULL),(12,'ANA CLAUDIA PEREIRA','RUA FELIPE CAMARÃO ,1464 - INTERLAGOS','060.462.497-24','3124694','1987-08-21 00:00:00.000000','CASADO','SEBASTIÃO LOPES DOS SANTOS','0','DO LAR',NULL,'1000,00',NULL,'(27) 99707-9257',NULL,NULL,1,1,'NÃO PODE COMPRAR! ESTÁ EM PROBLEMAS PSICOLÓGICOS','MARIA LUIZA FRAGA PEREIRA','BELMIRO PEREIRA'),(13,'ADRIANA RODRIGUES DE SOUSA DOS SANTOS','RUA JOÃO GAMA,01 - INTERLAGOS ( ATRAS DO CAIC)','117.996.057-28','194124SPTC',NULL,'CASADO',NULL,'0','CONFEITEIRA','EM CASA','1300,00',NULL,'(27) 99519-9569',NULL,NULL,1,1,NULL,NULL,NULL),(14,'ANDRE GONÇALVES DE JESUS',NULL,NULL,NULL,NULL,'SOLTEIRO',NULL,'0','ENTREGADOR ',NULL,'2000,00',NULL,'(27) 99859-0634',NULL,NULL,1,1,NULL,NULL,NULL),(15,'ALCIMARA NASCIMENTO ALMEIDA',NULL,NULL,NULL,NULL,'CASADO',NULL,'0',NULL,NULL,NULL,NULL,'(27) 99610-3380',NULL,NULL,1,1,NULL,NULL,NULL),(16,'ADELANDRA FELIPE DOS SANTOS',NULL,'108.320.307-08','1879623','1983-09-18 00:00:00.000000','CASADO',NULL,'0',NULL,NULL,NULL,NULL,'(27) 99752-3840',NULL,NULL,1,1,'NÃO VENDER, NÃO PAGA','ALMIRA FERREIRA FELIPE','ADÃO FELIPE'),(17,'AISA NONATO MALANCHINI',NULL,NULL,NULL,NULL,'CASADO',NULL,'0','DO LAR',NULL,NULL,NULL,'(27) 99821-8296',NULL,NULL,1,1,'NÃO VENDER SÓ PAGA ATRASADO',NULL,NULL),(18,'AVULSO - SEM CADASTRO',NULL,NULL,NULL,NULL,'0',NULL,'0',NULL,NULL,NULL,NULL,'(00) 0000-0000',NULL,NULL,1,1,NULL,NULL,NULL),(19,'BERNADETE DAMIANI ZANEZI','AVENIDA CASTRO ALVES, 704 - INTERLAGOS','074.476.607-95','978812','1966-06-25 00:00:00.000000','SOLTEIRO',NULL,'0','MANICURE E RECEBE ALUGUEL','CASA','2000,00',NULL,'(27) 9982-5184',NULL,NULL,1,1,NULL,'ROSANIA MARIA CHAGAS DAMIANI','VALDIR DAMIANI'),(20,'CRISTIANE BATISTA PEREIRA',NULL,NULL,NULL,NULL,'CASADO',NULL,'0','DESEMPREGADA',NULL,NULL,NULL,'(27) 99633-8896',NULL,NULL,1,1,'AUTORIZADO PARA MÃE NÉIA',NULL,NULL),(21,'CLEUZENIR GONÇALVES BARBINO','AVENIDA REPUBLICA - AO LADO BAR DO CHAPOLAS','793.075.277-53',NULL,NULL,'CASADO',NULL,'0','APONSENTADA / RECEBE ALUGUEL',NULL,'2000,00',NULL,'(27) 99946-9426',NULL,NULL,1,1,NULL,NULL,NULL),(22,'CLEYDE MARIA  DOS SANTOS BAZILIO','3 BARRAS AO LADO DA SORVETERIA FRAMBOA',NULL,NULL,NULL,'CASADO',NULL,'1',NULL,NULL,'1400,00',NULL,'(27) 99878-1163',NULL,NULL,1,1,NULL,NULL,NULL),(23,'CENI DIAS DE JESUS SANTOS','RUA MANOEL BANDEIRA','812.534.435-72','0867167190','1978-06-29 00:00:00.000000','CASADO','(27)99728-5181 - RONILSON BATISTA DOS SANTOS','0','COSTUREIRA','EM CASA','1500,00',NULL,'(27) 99819-5077',NULL,NULL,1,1,NULL,'MARIA DAS GRAÇAS DIAS DE JESUS','SIDINEI DE JESUS'),(24,'CELIA PATRICIA GONÇALVES DIAS ',NULL,NULL,NULL,NULL,'CASADO',NULL,'0','BABÁ','CASA ROSALIA','750,00',NULL,'(27) 99877-9802',NULL,NULL,1,1,NULL,NULL,NULL),(25,'CATIANE PINAFO DEBONI','AVENIDA TOBIAS JOSÉ DE ANDRADE,35 - BEBEDOURO','058.162.867-57','2043791 SPTC','1986-09-27 00:00:00.000000','SOLTEIRO',NULL,'0','FAMACEUTICA','FARMARCIA DO EVERALDO','2300,00',NULL,'(27) 99806-4323',NULL,NULL,1,1,NULL,'MARIA LUZIA PINAFO DEBONI','GERALDO DEBONI'),(26,'CLEONICE SOUZA SOARES','RUA DUARTE DA COSTA, 678 - INTERLAGOS','005.328.617-01','1540846','1964-05-10 00:00:00.000000','CASADO','27 99802-0009 - ROMILDO SOARES DE MENEZES','0','RECEBE ALUGUEL','DO LAR','1000,00',NULL,'(27) 99891-3111',NULL,NULL,1,1,NULL,'JUDITE SOUZA SOARES','FRANCISCO CRISTÃO SOARES'),(27,'CHERLIANE SAMPAIO VIEIRA',NULL,'093.118.987-08',NULL,'1982-09-26 00:00:00.000000','CASADO',NULL,'0','COSTUREIRA','EM CASA','1300,00',NULL,'(27) 99974-5799',NULL,NULL,1,1,'AUTORIZADO PARA AS IRMÃS ','JOSEFA SAMPAIO VIEIRA','ADENILSON DA SILVA VIEIRA'),(28,'CINTIA SILVA DOS ANJOS','RIO DE JANEIRO',NULL,NULL,NULL,'0',NULL,'1','TOSA DE CÃO',NULL,NULL,NULL,'(27) 97820-7373',NULL,NULL,1,1,'NÃO PODE COMPRAR',NULL,NULL),(29,'DIONEIA DELPUPO','AVENIDA ',NULL,NULL,NULL,'CASADO',NULL,'1','DOCERA','EM CASA','1300,00',NULL,'(27) 99823-4979',NULL,NULL,1,1,NULL,NULL,NULL),(30,'DAISY LARA KLIPPEL ','RUA DUQUE DE CAXIAS, EM FRENTE AGROMIX PET',NULL,NULL,NULL,'SOLTEIRO',NULL,'1','VETERINARIA','CLINICA VETERINARIA','2000,00',NULL,'27 99666-6125',NULL,NULL,1,1,NULL,NULL,NULL),(31,'DEUCIRA DA CRUZ VIEIRA','AVENIDA CASTRO ALVES',NULL,'''',NULL,'CASADO',NULL,'0','DO LAR',NULL,NULL,NULL,'27 99713-6285',NULL,NULL,1,1,NULL,NULL,NULL),(32,'DULCIANE INÁCIO ','AVENIDA VASCO FERNANDES COUTINHO - AO LADO DA AGUA DE COCO,PXM AO MATERIAL DE CONSTRUÇÃO',NULL,NULL,NULL,'CASADO',NULL,'0','VENDEDORA NATURA, BOTICARIO',NULL,'1000,00',NULL,'27 99755-7711',NULL,NULL,1,1,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb3;

-- 
-- Dumping data for table hangfireaggregatedcounter
-- 

/*!40000 ALTER TABLE `hangfireaggregatedcounter` DISABLE KEYS */;
INSERT INTO `hangfireaggregatedcounter`(`Id`,`Key`,`Value`,`ExpireAt`) VALUES(1,'stats:succeeded',18,NULL),(2,'stats:succeeded:2024-06-19',2,'2024-07-19 21:03:24'),(5,'stats:succeeded:2024-06-20',6,'2024-07-20 20:04:37'),(12,'stats:succeeded:2024-06-21',6,'2024-07-21 20:01:06'),(22,'stats:succeeded:2024-06-23',1,'2024-07-23 23:59:57'),(24,'stats:succeeded:2024-06-24',2,'2024-07-24 00:01:08'),(29,'stats:succeeded:2024-06-25',1,'2024-07-25 12:01:13'),(30,'stats:succeeded:2024-06-25-12',1,'2024-06-26 12:01:13');
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb3;

-- 
-- Dumping data for table hangfirecounter
-- 

/*!40000 ALTER TABLE `hangfirecounter` DISABLE KEYS */;

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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb3;

-- 
-- Dumping data for table hangfirehash
-- 

/*!40000 ALTER TABLE `hangfirehash` DISABLE KEYS */;
INSERT INTO `hangfirehash`(`Id`,`Key`,`Field`,`Value`,`ExpireAt`) VALUES(1,'recurring-job:make_backup_bd','Queue','default',NULL),(2,'recurring-job:make_backup_bd','Cron','0 */5 * * *',NULL),(3,'recurring-job:make_backup_bd','TimeZoneId','UTC',NULL),(4,'recurring-job:make_backup_bd','Job','{\"t\":\"flordelizHemilly.Service.MonitorService, flordelizHemilly, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\",\"m\":\"BackUpBd\",\"p\":[\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\",\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\"],\"a\":[\"\\\"Server=localhost;Database=flordeliz;User=root;Password=ganco;\\\"\",\"\\\"C:\\\\\\\\Projetos - GancoBits\\\\\\\\florDeLiz2024\\\\\\\\flordelizHemilly\\\\\\\\wwwroot\\\"\"]}',NULL),(5,'recurring-job:make_backup_bd','CreatedAt','1718828804361',NULL),(6,'recurring-job:make_backup_bd','NextExecution','1719360000000',NULL),(7,'recurring-job:make_backup_bd','V','2',NULL),(9,'recurring-job:make_backup_bd','LastExecution','1719345665404',NULL),(10,'recurring-job:make_backup_bd','LastJobId','19',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;

-- 
-- Dumping data for table hangfirejob
-- 

/*!40000 ALTER TABLE `hangfirejob` DISABLE KEYS */;
INSERT INTO `hangfirejob`(`Id`,`StateId`,`StateName`,`InvocationData`,`Arguments`,`CreatedAt`,`ExpireAt`) VALUES(18,63,'Succeeded','{\"Type\":\"flordelizHemilly.Service.MonitorService, flordelizHemilly, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\",\"Method\":\"BackUpBd\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\",\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Server=localhost;Database=flordeliz;User=root;Password=ganco;\\\\\\\"\\\",\\\"\\\\\\\"C:\\\\\\\\\\\\\\\\Projetos - GancoBits\\\\\\\\\\\\\\\\florDeLiz2024\\\\\\\\\\\\\\\\flordelizHemilly\\\\\\\\\\\\\\\\wwwroot\\\\\\\"\\\"]\"}','[\"\\\"Server=localhost;Database=flordeliz;User=root;Password=ganco;\\\"\",\"\\\"C:\\\\\\\\Projetos - GancoBits\\\\\\\\florDeLiz2024\\\\\\\\flordelizHemilly\\\\\\\\wwwroot\\\"\"]','2024-06-25 12:00:53.339503','2024-06-26 12:01:13.167151'),(19,69,'Processing','{\"Type\":\"flordelizHemilly.Service.MonitorService, flordelizHemilly, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\",\"Method\":\"BackUpBd\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\",\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Server=localhost;Database=flordeliz;User=root;Password=ganco;\\\\\\\"\\\",\\\"\\\\\\\"C:\\\\\\\\\\\\\\\\Projetos - GancoBits\\\\\\\\\\\\\\\\florDeLiz2024\\\\\\\\\\\\\\\\flordelizHemilly\\\\\\\\\\\\\\\\wwwroot\\\\\\\"\\\"]\"}','[\"\\\"Server=localhost;Database=flordeliz;User=root;Password=ganco;\\\"\",\"\\\"C:\\\\\\\\Projetos - GancoBits\\\\\\\\florDeLiz2024\\\\\\\\flordelizHemilly\\\\\\\\wwwroot\\\"\"]','2024-06-25 20:01:05.572361',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb3;

-- 
-- Dumping data for table hangfirejobparameter
-- 

/*!40000 ALTER TABLE `hangfirejobparameter` DISABLE KEYS */;
INSERT INTO `hangfirejobparameter`(`Id`,`JobId`,`Name`,`Value`) VALUES(71,18,'RecurringJobId','\"make_backup_bd\"'),(72,18,'Time','1719316853'),(73,18,'CurrentCulture','\"pt-BR\"'),(74,18,'CurrentUICulture','\"pt-BR\"'),(75,19,'RecurringJobId','\"make_backup_bd\"'),(76,19,'Time','1719345665'),(77,19,'CurrentCulture','\"pt-BR\"'),(78,19,'CurrentUICulture','\"pt-BR\"'),(79,19,'RetryCount','1');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3;

-- 
-- Dumping data for table hangfirejobqueue
-- 

/*!40000 ALTER TABLE `hangfirejobqueue` DISABLE KEYS */;
INSERT INTO `hangfirejobqueue`(`Id`,`JobId`,`FetchedAt`,`Queue`,`FetchToken`) VALUES(22,19,'2024-06-25 20:03:30.000000','default','c5871cfe-584c-4b91-9d21-f539b72c517d');
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
INSERT INTO `hangfireserver`(`Id`,`Data`,`LastHeartbeat`) VALUES('desktop-etf8o9f:18908:b7beb5cf-6b9f-44eb-8b50-f6c6d5292656','{\"WorkerCount\":20,\"Queues\":[\"default\"],\"StartedAt\":\"2024-06-25T20:01:04.9122321Z\"}','2024-06-25 20:03:30.148760');
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
) ENGINE=InnoDB AUTO_INCREMENT=4035 DEFAULT CHARSET=utf8mb3;

-- 
-- Dumping data for table hangfireset
-- 

/*!40000 ALTER TABLE `hangfireset` DISABLE KEYS */;
INSERT INTO `hangfireset`(`Id`,`Key`,`Value`,`Score`,`ExpireAt`) VALUES(1,'recurring-jobs','make_backup_bd',1.71936E+09,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb3;

-- 
-- Dumping data for table hangfirestate
-- 

/*!40000 ALTER TABLE `hangfirestate` DISABLE KEYS */;
INSERT INTO `hangfirestate`(`Id`,`JobId`,`Name`,`Reason`,`CreatedAt`,`Data`) VALUES(61,18,'Enqueued','Triggered by recurring job scheduler','2024-06-25 12:00:53.448271','{\"EnqueuedAt\":\"1719316853395\",\"Queue\":\"default\"}'),(62,18,'Processing',NULL,'2024-06-25 12:01:07.833925','{\"StartedAt\":\"1719316867813\",\"ServerId\":\"desktop-etf8o9f:59660:37d8b34f-94e3-4ff5-b18d-51565409c6ef\",\"WorkerId\":\"523593af-a25f-4086-aeae-6b611aeaf858\"}'),(63,18,'Succeeded',NULL,'2024-06-25 12:01:13.160919','{\"SucceededAt\":\"1719316873138\",\"PerformanceDuration\":\"5292\",\"Latency\":\"14506\"}'),(64,19,'Enqueued','Triggered by recurring job scheduler','2024-06-25 20:01:05.866536','{\"EnqueuedAt\":\"1719345665825\",\"Queue\":\"default\"}'),(65,19,'Processing',NULL,'2024-06-25 20:01:30.135521','{\"StartedAt\":\"1719345690087\",\"ServerId\":\"desktop-etf8o9f:18908:b7beb5cf-6b9f-44eb-8b50-f6c6d5292656\",\"WorkerId\":\"e619eb35-a9df-4f4b-993a-294f60f7fb1e\"}'),(66,19,'Failed','An exception occurred during performance of the job.','2024-06-25 20:02:12.186614','{\"FailedAt\":\"1719345732057\",\"ExceptionType\":\"MySql.Data.MySqlClient.MySqlException\",\"ExceptionMessage\":\"Timeout expired.  The timeout period elapsed prior to completion of the operation or the server is not responding.\",\"ExceptionDetails\":\"MySql.Data.MySqlClient.MySqlException (0x80004005): Timeout expired.  The timeout period elapsed prior to completion of the operation or the server is not responding.\\r\\n ---> System.TimeoutException: Timeout in IO operation\\r\\n   at MySql.Data.MySqlClient.TimedStream.StopTimer()\\r\\n   at MySql.Data.MySqlClient.TimedStream.ReadAsync(Byte[] buffer, Int32 offset, Int32 count, Boolean execAsync)\\r\\n   at MySql.Data.MySqlClient.TimedStream.Read(Byte[] buffer, Int32 offset, Int32 count)\\r\\n   at MySql.Data.MySqlClient.MySqlStream.ReadFullyAsync(Stream stream, Byte[] buffer, Int32 offset, Int32 count, Boolean execAsync)\\r\\n   at MySql.Data.MySqlClient.MySqlStream.LoadPacketAsync(Boolean execAsync)\\r\\n   at MySql.Data.MySqlClient.MySqlStream.ReadPacketAsync(Boolean execAsync)\\r\\n   at MySql.Data.MySqlClient.NativeDriver.GetResultAsync(Int32 affectedRow, Int64 insertedId, Boolean execAsync)\\r\\n   at MySql.Data.MySqlClient.Driver.GetResultAsync(Int32 statementId, Int32 affectedRows, Int64 insertedId, Boolean execAsync)\\r\\n   at MySql.Data.MySqlClient.Driver.NextResultAsync(Int32 statementId, Boolean force, Boolean execAsync)\\r\\n   at MySql.Data.MySqlClient.MySqlDataReader.NextResultAsync(Boolean execAsync, CancellationToken cancellationToken)\\r\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteReaderAsync(CommandBehavior behavior, Boolean execAsync, CancellationToken cancellationToken)\\r\\n   at MySql.Data.MySqlClient.Interceptors.ExceptionInterceptor.Throw(Exception exception)\\r\\n   at MySql.Data.MySqlClient.MySqlConnection.Throw(Exception ex)\\r\\n   at MySql.Data.MySqlClient.MySqlConnection.HandleTimeoutOrThreadAbortAsync(Exception ex, Boolean execAsync, CancellationToken cancellationToken)\\r\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteReaderAsync(CommandBehavior behavior, Boolean execAsync, CancellationToken cancellationToken)\\r\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteReaderAsync(CommandBehavior behavior, Boolean execAsync, CancellationToken cancellationToken)\\r\\n   at MySql.Data.MySqlClient.Driver.LoadCharacterSetsAsync(MySqlConnection connection, Boolean execAsync, CancellationToken cancellationToken)\\r\\n   at MySql.Data.MySqlClient.Driver.ConfigureAsync(MySqlConnection connection, Boolean execAsync, CancellationToken cancellationToken)\\r\\n   at MySql.Data.MySqlClient.MySqlConnection.OpenAsync(Boolean execAsync, CancellationToken cancellationToken)\\r\\n   at MySql.Data.MySqlClient.MySqlConnection.Open()\\r\\n   at flordelizHemilly.Service.MonitorService.BackUpBd(String connectionString, String backupFilePath) in C:\\\\Projetos - GancoBits\\\\florDeLiz2024\\\\flordelizHemilly\\\\Service\\\\MonitorService.cs:line 33\\r\\n   at System.RuntimeMethodHandle.InvokeMethod(Object target, Void** arguments, Signature sig, Boolean isConstructor)\\r\\n   at System.Reflection.MethodInvoker.Invoke(Object obj, IntPtr* args, BindingFlags invokeAttr)\",\"ServerId\":\"desktop-etf8o9f:18908:b7beb5cf-6b9f-44eb-8b50-f6c6d5292656\"}'),(67,19,'Scheduled','Retry attempt 1 of 10: Timeout expired.  The timeout period elapsed prio…','2024-06-25 20:02:12.202814','{\"EnqueueAt\":\"1719345766080\",\"ScheduledAt\":\"1719345732085\"}'),(68,19,'Enqueued','Triggered by DelayedJobScheduler','2024-06-25 20:03:24.145410','{\"EnqueuedAt\":\"1719345804131\",\"Queue\":\"default\"}'),(69,19,'Processing',NULL,'2024-06-25 20:03:30.325719','{\"StartedAt\":\"1719345810321\",\"ServerId\":\"desktop-etf8o9f:18908:b7beb5cf-6b9f-44eb-8b50-f6c6d5292656\",\"WorkerId\":\"e619eb35-a9df-4f4b-993a-294f60f7fb1e\"}');
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
  `Observacao` longtext,
  `Excluido` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `IX_Vendas_ClienteId` (`ClienteId`),
  CONSTRAINT `FK_Vendas_Clientes_ClienteId` FOREIGN KEY (`ClienteId`) REFERENCES `clientes` (`ClienteID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 
-- Dumping data for table vendas
-- 

/*!40000 ALTER TABLE `vendas` DISABLE KEYS */;
INSERT INTO `vendas`(`Id`,`DataDaVenda`,`ClienteId`,`NumeroParcelas`,`Total`,`LojaId`,`Entrada`,`TipoPagamento`,`Status`,`Observacao`,`Excluido`) VALUES(16,'2024-06-23 00:00:00.000000',2,3,32.320000000000000000000000000,1,0.0000000000000000000000000000,1,1,NULL,0),(17,'2024-06-23 00:00:00.000000',1,2,23.420000000000000000000000000,1,0.0000000000000000000000000000,1,1,NULL,0),(18,'2024-06-23 00:00:00.000000',1,0,32.320000000000000000000000000,1,0.0000000000000000000000000000,3,1,NULL,1),(19,'2024-06-23 00:00:00.000000',3,1,32.320000000000000000000000000,1,0.3200000000000000000000000000,4,1,NULL,0),(20,'2024-06-23 00:00:00.000000',3,3,32.330000000000000000000000000,1,0.0000000000000000000000000000,4,1,NULL,1),(21,'2024-06-23 00:00:00.000000',3,2,333.33000000000000000000000000,1,0.0000000000000000000000000000,4,1,NULL,1),(22,'2024-06-25 00:00:00.000000',2,3,432.32000000000000000000000000,1,0.0000000000000000000000000000,1,0,NULL,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 
-- Dumping data for table itemvendas
-- 

/*!40000 ALTER TABLE `itemvendas` DISABLE KEYS */;
INSERT INTO `itemvendas`(`Id`,`VendaId`,`NomeDoProduto`,`Quantidade`,`PrecoUnitario`) VALUES(7,16,'EQWEQE',1,0.0000000000000000000000000000),(8,16,'3232323323',1,32.320000000000000000000000000),(9,17,'TESTSETE',1,23.420000000000000000000000000),(10,18,'BLUSINHA',1,32.320000000000000000000000000),(11,19,'BRUSINHA TOP',1,32.320000000000000000000000000),(12,20,'BLUSA SEM MANGA',1,32.330000000000000000000000000),(13,21,'DSADASD',1,333.33000000000000000000000000),(14,22,'TESTANDO 1',1,432.32000000000000000000000000);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 
-- Dumping data for table parcelas
-- 

/*!40000 ALTER TABLE `parcelas` DISABLE KEYS */;
INSERT INTO `parcelas`(`Id`,`VendaId`,`NumeroParcela`,`Valor`,`DataVencimento`,`DataPagamento`,`Pago`,`Historico`) VALUES(9,16,1,10.773333333333333333333333333,'2024-07-23 00:00:00.000000','2024-06-23 21:31:50.444722',1,'[\r\n  {\r\n    \"DataPagamento\": \"23/06/2024\",\r\n    \"Valor\": \"100,00\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": null\r\n  }\r\n]'),(10,16,2,0.0000000000000000000000000000,'2024-08-23 00:00:00.000000','0001-01-01 00:00:00.000000',1,'[\r\n  {\r\n    \"DataPagamento\": \"23/06/2024\",\r\n    \"Valor\": \"10,77\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": \"REALIZADO AUTOMATICAMENTE COM RESTANTE DO PAGAMENTO DA PRESTAÇÃO\"\r\n  }\r\n]'),(11,16,3,0.0000000000000000000000000000,'2024-09-23 00:00:00.000000','0001-01-01 00:00:00.000000',1,'[\r\n  {\r\n    \"DataPagamento\": \"23/06/2024\",\r\n    \"Valor\": \"10,77\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": \"REALIZADO AUTOMATICAMENTE COM RESTANTE DO PAGAMENTO DA PRESTAÇÃO\"\r\n  }\r\n]'),(12,17,1,11.710000000000000000000000000,'2024-07-23 00:00:00.000000','2024-06-23 22:26:21.439962',1,'[\r\n  {\r\n    \"DataPagamento\": \"23/06/2024\",\r\n    \"Valor\": \"11,71\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": null\r\n  }\r\n]'),(13,17,2,11.710000000000000000000000000,'2024-08-23 00:00:00.000000','2024-06-23 22:26:25.454898',1,'[\r\n  {\r\n    \"DataPagamento\": \"23/06/2024\",\r\n    \"Valor\": \"11,71\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": null\r\n  }\r\n]'),(14,22,1,144.10666666666666666666666667,'2024-07-25 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(15,22,2,144.10666666666666666666666667,'2024-08-25 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(16,22,3,144.10666666666666666666666667,'2024-09-25 00:00:00.000000','0001-01-01 00:00:00.000000',0,'');
/*!40000 ALTER TABLE `parcelas` ENABLE KEYS */;


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


-- Dump completed on 2024-06-25 17:03:37
-- Total time: 0:0:0:6:394 (d:h:m:s:ms)
