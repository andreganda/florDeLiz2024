-- MySqlBackup.NET 2.3.8.0
-- Dump Time: 2024-06-26 21:01:42
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 
-- Dumping data for table clientes
-- 

/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes`(`ClienteID`,`Nome`,`Endereco`,`Cpf`,`Rg`,`DataNascimento`,`EstadoCivil`,`ContatoConjuge`,`CasaPropriaAluguel`,`Profissao`,`LocalTrabalho`,`RendaMensal`,`Email`,`Telefone`,`DataCadastro`,`DataAlteracaoCadastro`,`Status`,`LojaId`,`Observacoes`,`NomeMae`,`NomePai`) VALUES(1,'ANDRE FELIPE MORAIS RODRIGUES GANDA','AVENIDA QUINTINO BOCAIUVA',NULL,NULL,'1989-09-24 00:00:00.000000','CASADO',NULL,'1','Policial militar','Linhares','8500,30','andrefelipeg@hotmail.com','27998238617',NULL,NULL,1,1,'a esposa não pode comprar na ficha dele','rosalia ganda','elson ganda'),(2,'ANTONIA MARCIANO OUVERNEY','AVENIDA PADRE MANOEL DA NOBREGA, 1101 - INTERLAGOS','082.051.267-20','1.208.264-ES','1942-10-08 00:00:00.000000','CASADO',NULL,'0','APOSENTADA',NULL,'1400.00',NULL,'27 99895-6258',NULL,NULL,1,1,NULL,NULL,NULL),(3,'ANICEIA CALEGARI GALVANI','RUA DUQUE DE CAXIAS,420 - INTERLAGOS','091.329.517-52','523.554','1959-07-07 00:00:00.000000','CASADO',NULL,'0','PROPRIETARIA ESPAÇO HERBALIFE','CASA','2000.00',NULL,'2799804-6906',NULL,NULL,1,1,NULL,NULL,NULL),(4,'ALCEIA MARIA LUNZ BATISTA','RUA JOÃO PAULO II, 2305 - INTERLAGOS','031.629.097-16',NULL,'1964-09-21 00:00:00.000000','SOLTEIRO',NULL,'0','APOSENTADA',NULL,'1400.00',NULL,'27 99713-2947',NULL,NULL,1,1,'FILHA IONE LUNZ É AUTORIZADA A COMPRAR NA FICHA DELA','JACI LUNZ','MARIA LUZINETE LUNZ'),(5,'ALESSANDRA GOMES ','RUA ARTUR PINTO SANTANA, 467- INTERLAGOSS','031.830.247-05',NULL,'1975-10-09 00:00:00.000000','CASADO',NULL,'0',NULL,NULL,NULL,NULL,'27 99872-4144',NULL,NULL,0,1,'AUTORIZADO PARA IRMÃ LUCIETE',NULL,NULL),(6,'ALESSANDRA GOMES ','RUA ARTUR PINTO SANTANA, 467- INTERLAGOSS','031.830.247-05',NULL,'1975-10-09 00:00:00.000000','CASADO',NULL,'0',NULL,NULL,NULL,NULL,'27 99872-4144',NULL,NULL,1,1,'AUTORIZADO PARA IRMÃ LUCIETE/ FILHA MARKIELLY','FRANCISCO GOMES','MARIA DA PENHA BIANCARDI GOMES'),(7,'ROSIMARIA CARLESSO','AVENIDA PADRE MANOEL DA NOBREGA, 649 - INTERLAGOS','034.731.097-46','1387101- SPTC','1973-08-20 00:00:00.000000','CASADO','27 99957-8727 - IAMURA BATISTA ','0','COSTUREIRA','EM CASA','0,00',NULL,'(27) 99968-4919',NULL,NULL,1,1,'CLIENTE INDICADA PELA DONA TEREZA','JOSE VIERA CARLESSO','EDITE CORREA CARLESSO'),(8,'GILMARC COSTA LIMA','AVENIDA PADRE MANOEL DA NOBREGA, 1461 - INTERLAGOS','112.962.577-03','2088476','1979-02-09 00:00:00.000000','CASADO','996042024 - HEMILLY','0','ENGENHEIRO','EMPRESARIO','10000,00',NULL,'(27) 99806-2810',NULL,NULL,1,1,NULL,'LENILZA COSTA LIMA ','GILSON LIMA'),(9,'ALESSANDRA VIEIRA',NULL,NULL,NULL,NULL,'SOLTEIRO',NULL,'0',NULL,NULL,NULL,NULL,'(27) 99862-8915',NULL,NULL,1,1,'AUTORIZADO PARA IRMÃ ELIETE E CUNHADA MARCILÉIA ',NULL,NULL),(10,'ALINE PIRES','RUA BARÃO RIO BRANCO',NULL,NULL,NULL,'0',NULL,'1','VENDEDORA','FLOR DE LIS','1400,00',NULL,'(27) 99783-2106',NULL,NULL,1,1,NULL,NULL,NULL),(11,'AURORA  FERNANDES',NULL,NULL,NULL,NULL,'0',NULL,'0',NULL,NULL,'1300,00',NULL,'(27) 99757-8254',NULL,NULL,1,1,NULL,NULL,NULL),(12,'ANA CLAUDIA PEREIRA','RUA FELIPE CAMARÃO ,1464 - INTERLAGOS','060.462.497-24','3124694','1987-08-21 00:00:00.000000','CASADO','SEBASTIÃO LOPES DOS SANTOS','0','DO LAR',NULL,'1000,00',NULL,'(27) 99707-9257',NULL,NULL,1,1,'NÃO PODE COMPRAR! ESTÁ EM PROBLEMAS PSICOLÓGICOS','MARIA LUIZA FRAGA PEREIRA','BELMIRO PEREIRA'),(13,'ADRIANA RODRIGUES DE SOUSA DOS SANTOS','RUA JOÃO GAMA,01 - INTERLAGOS ( ATRAS DO CAIC)','117.996.057-28','194124SPTC',NULL,'CASADO',NULL,'0','CONFEITEIRA','EM CASA','1300,00',NULL,'(27) 99519-9569',NULL,NULL,1,1,NULL,NULL,NULL),(14,'ANDRE GONÇALVES DE JESUS',NULL,NULL,NULL,NULL,'SOLTEIRO',NULL,'0','ENTREGADOR ',NULL,'2000,00',NULL,'(27) 99859-0634',NULL,NULL,1,1,NULL,NULL,NULL),(15,'ALCIMARA NASCIMENTO ALMEIDA',NULL,NULL,NULL,NULL,'CASADO',NULL,'0',NULL,NULL,NULL,NULL,'(27) 99610-3380',NULL,NULL,1,1,NULL,NULL,NULL),(16,'ADELANDRA FELIPE DOS SANTOS',NULL,'108.320.307-08','1879623','1983-09-18 00:00:00.000000','CASADO',NULL,'0',NULL,NULL,NULL,NULL,'(27) 99752-3840',NULL,NULL,1,1,'NÃO VENDER, NÃO PAGA','ALMIRA FERREIRA FELIPE','ADÃO FELIPE'),(17,'AISA NONATO MALANCHINI',NULL,NULL,NULL,NULL,'CASADO',NULL,'0','DO LAR',NULL,NULL,NULL,'(27) 99821-8296',NULL,NULL,1,1,'NÃO VENDER SÓ PAGA ATRASADO',NULL,NULL),(18,'AVULSO - SEM CADASTRO',NULL,NULL,NULL,NULL,'0',NULL,'0',NULL,NULL,NULL,NULL,'(00) 0000-0000',NULL,NULL,1,1,NULL,NULL,NULL),(19,'BERNADETE DAMIANI ZANEZI','AVENIDA CASTRO ALVES, 704 - INTERLAGOS','074.476.607-95','978812','1966-06-25 00:00:00.000000','SOLTEIRO',NULL,'0','MANICURE E RECEBE ALUGUEL','CASA','2000,00',NULL,'(27) 9982-5184',NULL,NULL,1,1,NULL,'ROSANIA MARIA CHAGAS DAMIANI','VALDIR DAMIANI'),(20,'CRISTIANE BATISTA PEREIRA',NULL,NULL,NULL,NULL,'CASADO',NULL,'0','DESEMPREGADA',NULL,NULL,NULL,'(27) 99633-8896',NULL,NULL,1,1,'AUTORIZADO PARA MÃE NÉIA',NULL,NULL),(21,'CLEUZENIR GONÇALVES BARBINO','AVENIDA REPUBLICA - AO LADO BAR DO CHAPOLAS','793.075.277-53',NULL,NULL,'CASADO',NULL,'0','APONSENTADA / RECEBE ALUGUEL',NULL,'2000,00',NULL,'(27) 99946-9426',NULL,NULL,1,1,NULL,NULL,NULL),(22,'CLEYDE MARIA  DOS SANTOS BAZILIO','3 BARRAS AO LADO DA SORVETERIA FRAMBOA',NULL,NULL,NULL,'CASADO',NULL,'1',NULL,NULL,'1400,00',NULL,'(27) 99878-1163',NULL,NULL,1,1,NULL,NULL,NULL),(23,'CENI DIAS DE JESUS SANTOS','RUA MANOEL BANDEIRA','812.534.435-72','0867167190','1978-06-29 00:00:00.000000','CASADO','(27)99728-5181 - RONILSON BATISTA DOS SANTOS','0','COSTUREIRA','EM CASA','1500,00',NULL,'(27) 99819-5077',NULL,NULL,1,1,NULL,'MARIA DAS GRAÇAS DIAS DE JESUS','SIDINEI DE JESUS'),(24,'CELIA PATRICIA GONÇALVES DIAS ',NULL,NULL,NULL,NULL,'CASADO',NULL,'0','BABÁ','CASA ROSALIA','750,00',NULL,'(27) 99877-9802',NULL,NULL,1,1,NULL,NULL,NULL),(25,'CATIANE PINAFO DEBONI','AVENIDA TOBIAS JOSÉ DE ANDRADE,35 - BEBEDOURO','058.162.867-57','2043791 SPTC','1986-09-27 00:00:00.000000','SOLTEIRO',NULL,'0','FAMACEUTICA','FARMARCIA DO EVERALDO','2300,00',NULL,'(27) 99806-4323',NULL,NULL,1,1,NULL,'MARIA LUZIA PINAFO DEBONI','GERALDO DEBONI'),(26,'CLEONICE SOUZA SOARES','RUA DUARTE DA COSTA, 678 - INTERLAGOS','005.328.617-01','1540846','1964-05-10 00:00:00.000000','CASADO','27 99802-0009 - ROMILDO SOARES DE MENEZES','0','RECEBE ALUGUEL','DO LAR','1000,00',NULL,'(27) 99891-3111',NULL,NULL,1,1,NULL,'JUDITE SOUZA SOARES','FRANCISCO CRISTÃO SOARES'),(27,'CHERLIANE SAMPAIO VIEIRA',NULL,'093.118.987-08',NULL,'1982-09-26 00:00:00.000000','CASADO',NULL,'0','COSTUREIRA','EM CASA','1300,00',NULL,'(27) 99974-5799',NULL,NULL,1,1,'AUTORIZADO PARA AS IRMÃS ','JOSEFA SAMPAIO VIEIRA','ADENILSON DA SILVA VIEIRA'),(28,'CINTIA SILVA DOS ANJOS','RIO DE JANEIRO',NULL,NULL,NULL,'0',NULL,'1','TOSA DE CÃO',NULL,NULL,NULL,'(27) 97820-7373',NULL,NULL,1,1,'NÃO PODE COMPRAR',NULL,NULL),(29,'DIONEIA DELPUPO','AVENIDA ',NULL,NULL,NULL,'CASADO',NULL,'1','DOCERA','EM CASA','1300,00',NULL,'(27) 99823-4979',NULL,NULL,1,1,NULL,NULL,NULL),(30,'DAISY LARA KLIPPEL ','RUA DUQUE DE CAXIAS, EM FRENTE AGROMIX PET',NULL,NULL,NULL,'SOLTEIRO',NULL,'1','VETERINARIA','CLINICA VETERINARIA','2000,00',NULL,'27 99666-6125',NULL,NULL,1,1,NULL,NULL,NULL),(31,'DEUCIRA DA CRUZ VIEIRA','AVENIDA CASTRO ALVES',NULL,'''',NULL,'CASADO',NULL,'0','DO LAR',NULL,NULL,NULL,'27 99713-6285',NULL,NULL,1,1,NULL,NULL,NULL),(32,'DULCIANE INÁCIO ','AVENIDA VASCO FERNANDES COUTINHO - AO LADO DA AGUA DE COCO,PXM AO MATERIAL DE CONSTRUÇÃO',NULL,NULL,NULL,'CASADO',NULL,'0','VENDEDORA NATURA, BOTICARIO',NULL,'1000,00',NULL,'27 99755-7711',NULL,NULL,1,1,NULL,NULL,NULL),(33,'KATCILENE TOLENTINO',NULL,NULL,NULL,NULL,'SOLTEIRO',NULL,'0','MANICURE',NULL,'600,00',NULL,'(27) 99918-9970',NULL,NULL,1,1,NULL,NULL,NULL),(34,'MARIA DA PENHA VIERA ',NULL,NULL,NULL,NULL,'0',NULL,'0','APOSENTADA',NULL,NULL,NULL,'(27) 99995-8929',NULL,NULL,1,1,NULL,NULL,NULL),(35,'VIVIANE FERREIRA',NULL,NULL,NULL,NULL,'CASADO','MARCIANO - 9910-6823','0','COZINHEIRA/EMPRESÁRIA',NULL,NULL,NULL,'(27) 99833-9212',NULL,NULL,1,1,'AUTORIZADO PARA IRMÃ ANDRESSA/ SONIA/ SOBRINHA JENNIFER / MÃE MINERVINA','MINERVINA FERREIRA',NULL),(36,'WALESKA RAPINA SILVA',NULL,NULL,NULL,NULL,'SOLTEIRO',NULL,'1','VENDEDORA','CASA DAS FRALDAS','1500,00',NULL,'(27) 99883-5100',NULL,NULL,1,1,'AUTORIZADO PARA MÃE BELOSIRA RAPINA SILVA / IRMÃ SARAH RAPINA ','BELOSIRA RAPINA SILVA',NULL),(37,'MARCILENE RODRIGUES',NULL,NULL,NULL,NULL,'CASADO',NULL,'1',NULL,NULL,'1000,00',NULL,'(27) 99500-7185',NULL,NULL,1,1,'NÃO PODE COMPRAR SEM AUTORIZAÇÃO DA HEMILLY','GLÓRIA RODRIGUES',NULL),(38,'ANGELA MARIA RIBEIRO',NULL,NULL,NULL,NULL,'CASADO',NULL,'0',NULL,NULL,NULL,NULL,'(27) 99965-7709',NULL,NULL,1,1,NULL,NULL,NULL),(39,'ROSANGELA PEIXINHO DOS SANTOS',NULL,NULL,NULL,NULL,'CASADO',NULL,'0','ETIQUETADORA KIFRANGO','KIFRANGO','1500,00',NULL,'(27) 99638-9663',NULL,NULL,1,1,NULL,NULL,NULL),(40,'SONIA DA SILVA MELO INOCENTE','RUA RONDONIA, 09 - AVISO ',NULL,NULL,NULL,'CASADO',NULL,'0','CORTADORA','KIFRANGO','1600,00',NULL,'(27) 996067-6449',NULL,NULL,1,1,'NÃO TEM TELEFONE. USEI TELEFONE DA IRMÃ SANDRA',NULL,NULL),(41,'SOLANGE CRIVILIM TOLENTINO','AVENIDA CASTRO ALVES, 2520 - INTERLAGOS 2','076.588.077-61','1912357','1977-05-07 00:00:00.000000','CASADO','GABRIEL','0','PROFESSORA','ESCOLA MARILIA DE REZENDE','2400,00',NULL,'27 99889-2004',NULL,NULL,1,1,NULL,'MARIA CRIVILIM TOLENTINO','ARLINDO TOLENTINO FILHO'),(42,'NÁDIA APONFELDNER SELESTRINE',NULL,NULL,NULL,NULL,'SOLTEIRO',NULL,'0','APOSENTADA',NULL,'2500,00',NULL,'27 99977-3015',NULL,NULL,1,1,NULL,NULL,NULL),(43,'LUCIANA TOTÓLA ÁVILA','AVENIDA VASCO FERNANDES COUTINHO, 817 - INTERLAGOS','034.904.547-07','1374652 ES','1973-08-06 00:00:00.000000','CASADO',NULL,'0','PROFESSORA',NULL,'2000,00',NULL,'(27) 99869-4660',NULL,NULL,1,1,'AUTORIZADO PARA VERA LUCIA PESCA','IDALINA ANA GUARNIERI','DIONIZIO AURELIO TOTOLA'),(44,'GILDA GAROSE','AVENIDA TOMÉ DE SOUZA, 935 - INTERLAGOS',NULL,NULL,'1952-05-02 00:00:00.000000','CASADO',NULL,'0','APOSENTADA',NULL,'1200,00',NULL,'27 99855-4633',NULL,NULL,1,1,'AUTORIZADO PARA A FILHA KENIA ',NULL,NULL),(45,'MIRIAN DA SILVA VIEIRA','AVENIDA MARTIN AFONSO DE SOUZA, 1577 -INTERLAGOS','031.833.647-27',NULL,'1973-10-16 00:00:00.000000','CASADO','ASTROGILDO RIBEIRO VIEIRA','0','SERVIDORA PÚBLICA MUNICIPAL','UPA CAIC','2000,00',NULL,'27 99931-2233',NULL,NULL,1,1,NULL,'ELVIRA DA SILVA','ANTONIO DA ROSA SILVA'),(46,'ELIEGE AVILA BARBOSA','AVENIDA PADRE MANOEL DA NÓBREGA, 757 - INTERLAGOS','045.880.607','1252008','1965-10-03 00:00:00.000000','CASADO',NULL,'0',NULL,NULL,NULL,NULL,'27 99782-3038',NULL,NULL,1,1,NULL,'CLARINDA CESCONETTO AVILA','ANTONIO AVILA'),(47,'JOANILCIA LOUREIRA','AVENIDA MMARTINS AFONSO DE SOUZA, 745 - INTERLAGOS','007.878.817-08','1066290 ES','1973-05-08 00:00:00.000000','CASADO','99921-6007 - MARCIANO','0','COSTUREIRA ESTOFADO',NULL,'1500,00',NULL,'27 99733-7901',NULL,NULL,1,1,'SÓ LIBERAR PARA FILHA/FILHO SE ELA LIGAR AUTORIZANDO','MARIA LUIZA DOS SANTOS LOUREIRO','JOÃO LOUREIRO FILHO'),(48,'CIRLENE GONZAGA DIAS DE MORAES','RUA HENRIQUE DE COIMBRA, 756 - INTERLAGOS','124.414.347-21','1.946.445 - ES','1986-12-15 00:00:00.000000','CASADO',NULL,'1','VENDEDORA','ROSEVELT CAMA MESA E BANHO','1300,00',NULL,'27 98845-7436',NULL,NULL,1,1,NULL,'CARMOSINA GONZAGA DIAS ','JOSÉ DE JESUS DIAS'),(49,'MARCELA DENADAI SESANA ZORTEA',NULL,NULL,NULL,NULL,'CASADO',NULL,'0','VENDEDORA ','ARMARINHO SESANA',NULL,NULL,' 27 99628-8087',NULL,NULL,1,1,NULL,NULL,NULL),(50,'IRACI DAS NEVES CAULIT POLONE SILVARES','RUA BARTOLOMEU BUENO DA SILVA, 986  - INTERLAGOS','027.476.147-51','1.90.544 ES''','1969-11-24 00:00:00.000000','CASADO','GILMAR SILVARES','0','DO LAR',NULL,NULL,NULL,'27 99899-8121',NULL,NULL,1,1,NULL,'REGINA CÉLIA CAULIT POLONE','NEURIDES POLONE');
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb3;

-- 
-- Dumping data for table hangfireaggregatedcounter
-- 

/*!40000 ALTER TABLE `hangfireaggregatedcounter` DISABLE KEYS */;
INSERT INTO `hangfireaggregatedcounter`(`Id`,`Key`,`Value`,`ExpireAt`) VALUES(1,'stats:succeeded',35,NULL),(2,'stats:succeeded:2024-06-19',2,'2024-07-19 21:03:24'),(5,'stats:succeeded:2024-06-20',6,'2024-07-20 20:04:37'),(12,'stats:succeeded:2024-06-21',8,'2024-07-21 20:51:38'),(21,'stats:succeeded:2024-06-22',2,'2024-07-22 15:00:25'),(25,'stats:succeeded:2024-06-23',4,'2024-07-23 23:09:56'),(31,'stats:succeeded:2024-06-24',6,'2024-07-24 20:00:17'),(39,'stats:succeeded:2024-06-25',3,'2024-07-25 15:00:38'),(44,'stats:succeeded:2024-06-26',4,'2024-07-26 21:19:06'),(45,'stats:succeeded:2024-06-26-12',2,'2024-06-27 12:21:21'),(47,'stats:succeeded:2024-06-26-17',1,'2024-06-27 17:00:56'),(50,'stats:succeeded:2024-06-26-21',1,'2024-06-27 21:19:06');
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
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb3;

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
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb3;

-- 
-- Dumping data for table hangfirehash
-- 

/*!40000 ALTER TABLE `hangfirehash` DISABLE KEYS */;
INSERT INTO `hangfirehash`(`Id`,`Key`,`Field`,`Value`,`ExpireAt`) VALUES(1,'recurring-job:make_backup_bd','Queue','default',NULL),(2,'recurring-job:make_backup_bd','Cron','0 */5 * * *',NULL),(3,'recurring-job:make_backup_bd','TimeZoneId','UTC',NULL),(4,'recurring-job:make_backup_bd','Job','{\"t\":\"flordelizHemilly.Service.MonitorService, flordelizHemilly, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\",\"m\":\"BackUpBd\",\"p\":[\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\",\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\"],\"a\":[\"\\\"Server=localhost;Database=flordeliz;User=root;Password=ganco;\\\"\",\"\\\"C:\\\\\\\\Projetos - GancoBits\\\\\\\\florDeLiz2024\\\\\\\\flordelizHemilly\\\\\\\\wwwroot\\\"\"]}',NULL),(5,'recurring-job:make_backup_bd','CreatedAt','1718828804361',NULL),(6,'recurring-job:make_backup_bd','NextExecution','1719464400000',NULL),(7,'recurring-job:make_backup_bd','V','2',NULL),(9,'recurring-job:make_backup_bd','LastExecution','1719446490802',NULL),(10,'recurring-job:make_backup_bd','LastJobId','36',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3;

-- 
-- Dumping data for table hangfirejob
-- 

/*!40000 ALTER TABLE `hangfirejob` DISABLE KEYS */;
INSERT INTO `hangfirejob`(`Id`,`StateId`,`StateName`,`InvocationData`,`Arguments`,`CreatedAt`,`ExpireAt`) VALUES(32,98,'Succeeded','{\"Type\":\"flordelizHemilly.Service.MonitorService, flordelizHemilly, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\",\"Method\":\"BackUpBd\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\",\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Server=mysql.flordelizlinhares.kinghost.net;Database=flordelizlinha;User=flordelizlinha;Password=10081075731Ganda;\\\\\\\"\\\",\\\"\\\\\\\"d:\\\\\\\\\\\\\\\\web\\\\\\\\\\\\\\\\localuser\\\\\\\\\\\\\\\\flordelizlinhares\\\\\\\\\\\\\\\\www\\\\\\\\\\\\\\\\wwwroot\\\\\\\"\\\"]\"}','[\"\\\"Server=mysql.flordelizlinhares.kinghost.net;Database=flordelizlinha;User=flordelizlinha;Password=10081075731Ganda;\\\"\",\"\\\"d:\\\\\\\\web\\\\\\\\localuser\\\\\\\\flordelizlinhares\\\\\\\\www\\\\\\\\wwwroot\\\"\"]','2024-06-25 20:01:07.118175','2024-06-27 12:21:12.140911'),(33,100,'Succeeded','{\"Type\":\"flordelizHemilly.Service.MonitorService, flordelizHemilly, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\",\"Method\":\"BackUpBd\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\",\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Server=mysql.flordelizlinhares.kinghost.net;Database=flordelizlinha;User=flordelizlinha;Password=10081075731Ganda;\\\\\\\"\\\",\\\"\\\\\\\"d:\\\\\\\\\\\\\\\\web\\\\\\\\\\\\\\\\localuser\\\\\\\\\\\\\\\\flordelizlinhares\\\\\\\\\\\\\\\\www\\\\\\\\\\\\\\\\wwwroot\\\\\\\"\\\"]\"}','[\"\\\"Server=mysql.flordelizlinhares.kinghost.net;Database=flordelizlinha;User=flordelizlinha;Password=10081075731Ganda;\\\"\",\"\\\"d:\\\\\\\\web\\\\\\\\localuser\\\\\\\\flordelizlinhares\\\\\\\\www\\\\\\\\wwwroot\\\"\"]','2024-06-26 12:21:00.053682','2024-06-27 12:21:20.642208'),(34,103,'Succeeded','{\"Type\":\"flordelizHemilly.Service.MonitorService, flordelizHemilly, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\",\"Method\":\"BackUpBd\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\",\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Server=localhost;Database=flordeliz;User=root;Password=ganco;\\\\\\\"\\\",\\\"\\\\\\\"C:\\\\\\\\\\\\\\\\Projetos - GancoBits\\\\\\\\\\\\\\\\florDeLiz2024\\\\\\\\\\\\\\\\flordelizHemilly\\\\\\\\\\\\\\\\wwwroot\\\\\\\"\\\"]\"}','[\"\\\"Server=localhost;Database=flordeliz;User=root;Password=ganco;\\\"\",\"\\\"C:\\\\\\\\Projetos - GancoBits\\\\\\\\florDeLiz2024\\\\\\\\flordelizHemilly\\\\\\\\wwwroot\\\"\"]','2024-06-26 17:00:04.961784','2024-06-27 17:00:56.467830'),(35,106,'Succeeded','{\"Type\":\"flordelizHemilly.Service.MonitorService, flordelizHemilly, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\",\"Method\":\"BackUpBd\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\",\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Server=localhost;Database=flordeliz;User=root;Password=ganco;\\\\\\\"\\\",\\\"\\\\\\\"C:\\\\\\\\\\\\\\\\Projetos - GancoBits\\\\\\\\\\\\\\\\florDeLiz2024\\\\\\\\\\\\\\\\flordelizHemilly\\\\\\\\\\\\\\\\wwwroot\\\\\\\"\\\"]\"}','[\"\\\"Server=localhost;Database=flordeliz;User=root;Password=ganco;\\\"\",\"\\\"C:\\\\\\\\Projetos - GancoBits\\\\\\\\florDeLiz2024\\\\\\\\flordelizHemilly\\\\\\\\wwwroot\\\"\"]','2024-06-26 21:18:48.450053','2024-06-27 21:19:05.968311'),(36,108,'Processing','{\"Type\":\"flordelizHemilly.Service.MonitorService, flordelizHemilly, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\",\"Method\":\"BackUpBd\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\",\\\"System.String, System.Private.CoreLib, Version=7.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Server=localhost;Database=flordeliz;User=root;Password=ganco;\\\\\\\"\\\",\\\"\\\\\\\"C:\\\\\\\\\\\\\\\\Projetos - GancoBits\\\\\\\\\\\\\\\\florDeLiz2024\\\\\\\\\\\\\\\\flordelizHemilly\\\\\\\\\\\\\\\\wwwroot\\\\\\\"\\\"]\"}','[\"\\\"Server=localhost;Database=flordeliz;User=root;Password=ganco;\\\"\",\"\\\"C:\\\\\\\\Projetos - GancoBits\\\\\\\\florDeLiz2024\\\\\\\\flordelizHemilly\\\\\\\\wwwroot\\\"\"]','2024-06-27 00:01:30.851524',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb3;

-- 
-- Dumping data for table hangfirejobparameter
-- 

/*!40000 ALTER TABLE `hangfirejobparameter` DISABLE KEYS */;
INSERT INTO `hangfirejobparameter`(`Id`,`JobId`,`Name`,`Value`) VALUES(125,32,'RecurringJobId','\"make_backup_bd\"'),(126,32,'Time','1719345667'),(127,32,'CurrentCulture','\"pt-BR\"'),(128,32,'CurrentUICulture','\"pt-BR\"'),(129,33,'RecurringJobId','\"make_backup_bd\"'),(130,33,'Time','1719404458'),(131,33,'CurrentCulture','\"pt-BR\"'),(132,33,'CurrentUICulture','\"pt-BR\"'),(133,34,'RecurringJobId','\"make_backup_bd\"'),(134,34,'Time','1719421204'),(135,34,'CurrentCulture','\"pt-BR\"'),(136,34,'CurrentUICulture','\"pt-BR\"'),(137,35,'RecurringJobId','\"make_backup_bd\"'),(138,35,'Time','1719436728'),(139,35,'CurrentCulture','\"pt-BR\"'),(140,35,'CurrentUICulture','\"pt-BR\"'),(141,36,'RecurringJobId','\"make_backup_bd\"'),(142,36,'Time','1719446490'),(143,36,'CurrentCulture','\"pt-BR\"'),(144,36,'CurrentUICulture','\"pt-BR\"');
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3;

-- 
-- Dumping data for table hangfirejobqueue
-- 

/*!40000 ALTER TABLE `hangfirejobqueue` DISABLE KEYS */;
INSERT INTO `hangfirejobqueue`(`Id`,`JobId`,`FetchedAt`,`Queue`,`FetchToken`) VALUES(36,36,'2024-06-27 00:01:41.000000','default','f2d56b94-25ed-47fd-bf7a-e5acd51c7ca4');
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
INSERT INTO `hangfireserver`(`Id`,`Data`,`LastHeartbeat`) VALUES('desktop-etf8o9f:24988:e8523fde-e9b6-4881-8bfe-35b4f0e7bf16','{\"WorkerCount\":20,\"Queues\":[\"default\"],\"StartedAt\":\"2024-06-26T21:20:48.4934074Z\"}','2024-06-26 23:59:40.982128');
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
) ENGINE=InnoDB AUTO_INCREMENT=10052 DEFAULT CHARSET=utf8mb3;

-- 
-- Dumping data for table hangfireset
-- 

/*!40000 ALTER TABLE `hangfireset` DISABLE KEYS */;
INSERT INTO `hangfireset`(`Id`,`Key`,`Value`,`Score`,`ExpireAt`) VALUES(1,'recurring-jobs','make_backup_bd',1.71946E+09,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb3;

-- 
-- Dumping data for table hangfirestate
-- 

/*!40000 ALTER TABLE `hangfirestate` DISABLE KEYS */;
INSERT INTO `hangfirestate`(`Id`,`JobId`,`Name`,`Reason`,`CreatedAt`,`Data`) VALUES(94,32,'Enqueued','Triggered by recurring job scheduler','2024-06-25 20:01:07.123828','{\"EnqueuedAt\":\"1719345667122\",\"Queue\":\"default\"}'),(95,32,'Processing',NULL,'2024-06-25 20:01:18.879615','{\"StartedAt\":\"1719345678874\",\"ServerId\":\"web22f37:15060:28a0f5b0-fe39-4ef1-86a2-312ad3fd0e2b\",\"WorkerId\":\"316a372a-7e8c-4b00-a840-a9f15f950a49\"}'),(96,32,'Processing',NULL,'2024-06-26 12:21:00.144024','{\"StartedAt\":\"1719404457902\",\"ServerId\":\"desktop-etf8o9f:7864:deccf0d7-b071-4140-8ed2-05ba60eab45f\",\"WorkerId\":\"ff44a7fd-87ca-4fc7-94f8-9afba69cb2b5\"}'),(97,33,'Enqueued','Triggered by recurring job scheduler','2024-06-26 12:21:00.164457','{\"EnqueuedAt\":\"1719404460150\",\"Queue\":\"default\"}'),(98,32,'Succeeded',NULL,'2024-06-26 12:21:12.132774','{\"SucceededAt\":\"1719404472098\",\"PerformanceDuration\":\"11896\",\"Latency\":\"58793082\"}'),(99,33,'Processing',NULL,'2024-06-26 12:21:12.188922','{\"StartedAt\":\"1719404472180\",\"ServerId\":\"desktop-etf8o9f:7864:deccf0d7-b071-4140-8ed2-05ba60eab45f\",\"WorkerId\":\"ff44a7fd-87ca-4fc7-94f8-9afba69cb2b5\"}'),(100,33,'Succeeded',NULL,'2024-06-26 12:21:20.640154','{\"SucceededAt\":\"1719404480629\",\"PerformanceDuration\":\"8422\",\"Latency\":\"12153\"}'),(101,34,'Enqueued','Triggered by recurring job scheduler','2024-06-26 17:00:05.127627','{\"EnqueuedAt\":\"1719421205042\",\"Queue\":\"default\"}'),(102,34,'Processing',NULL,'2024-06-26 17:00:48.655488','{\"StartedAt\":\"1719421248441\",\"ServerId\":\"desktop-etf8o9f:204:3bc1fab9-ab85-48c4-b8ea-10935b268243\",\"WorkerId\":\"ad794c22-70a4-46cb-8866-5b779392f353\"}'),(103,34,'Succeeded',NULL,'2024-06-26 17:00:56.464685','{\"SucceededAt\":\"1719421256443\",\"PerformanceDuration\":\"7771\",\"Latency\":\"43709\"}'),(104,35,'Enqueued','Triggered by recurring job scheduler','2024-06-26 21:18:48.539921','{\"EnqueuedAt\":\"1719436728495\",\"Queue\":\"default\"}'),(105,35,'Processing',NULL,'2024-06-26 21:19:02.888783','{\"StartedAt\":\"1719436742860\",\"ServerId\":\"desktop-etf8o9f:988:bed036d4-7196-4306-937d-7adf40cbf60e\",\"WorkerId\":\"93b240c4-824c-4d6f-b40a-1054d57ced6c\"}'),(106,35,'Succeeded',NULL,'2024-06-26 21:19:05.957929','{\"SucceededAt\":\"1719436745932\",\"PerformanceDuration\":\"3007\",\"Latency\":\"14474\"}'),(107,36,'Enqueued','Triggered by recurring job scheduler','2024-06-27 00:01:30.903553','{\"EnqueuedAt\":\"1719446490883\",\"Queue\":\"default\"}'),(108,36,'Processing',NULL,'2024-06-27 00:01:42.005295','{\"StartedAt\":\"1719446501970\",\"ServerId\":\"desktop-etf8o9f:24988:e8523fde-e9b6-4881-8bfe-35b4f0e7bf16\",\"WorkerId\":\"46fc3d43-0149-48f7-85a6-9ac3880512b5\"}');
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
  `Total` decimal(10,2) NOT NULL,
  `LojaId` int DEFAULT NULL,
  `Entrada` decimal(65,30) NOT NULL,
  `TipoPagamento` int DEFAULT NULL,
  `Status` int NOT NULL,
  `Observacao` longtext,
  `Excluido` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `IX_Vendas_ClienteId` (`ClienteId`),
  CONSTRAINT `FK_Vendas_Clientes_ClienteId` FOREIGN KEY (`ClienteId`) REFERENCES `clientes` (`ClienteID`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 
-- Dumping data for table vendas
-- 

/*!40000 ALTER TABLE `vendas` DISABLE KEYS */;
INSERT INTO `vendas`(`Id`,`DataDaVenda`,`ClienteId`,`NumeroParcelas`,`Total`,`LojaId`,`Entrada`,`TipoPagamento`,`Status`,`Observacao`,`Excluido`) VALUES(16,'2024-06-21 00:00:00.000000',18,2,74.90,1,0.0000000000000000000000000000,1,1,NULL,1),(18,'2024-06-24 00:00:00.000000',18,0,68.00,1,0.0000000000000000000000000000,2,1,'PAGAMENTO VIA PIX',0),(19,'2024-06-21 00:00:00.000000',18,2,74.90,1,0.0000000000000000000000000000,4,1,NULL,0),(20,'2024-06-21 00:00:00.000000',18,2,74.90,1,0.0000000000000000000000000000,4,1,NULL,1),(21,'2024-06-24 00:00:00.000000',18,0,69.80,1,0.0000000000000000000000000000,2,1,'PAGAMENTO VIA PIX',0),(22,'2024-06-08 00:00:00.000000',33,2,79.90,1,0.0000000000000000000000000000,1,0,NULL,0),(23,'2024-06-08 00:00:00.000000',34,4,443.30,1,0.0000000000000000000000000000,1,1,NULL,0),(24,'2024-06-18 00:00:00.000000',35,4,279.80,1,0.0000000000000000000000000000,1,0,'COMPRA FEITA POR ANDRESSA',0),(25,'2024-06-25 00:00:00.000000',1,0,32.32,1,0.0000000000000000000000000000,2,1,NULL,1),(26,'2024-06-18 00:00:00.000000',7,2,459.60,1,259.00000000000000000000000000,1,0,NULL,0),(27,'2024-06-18 00:00:00.000000',36,1,59.90,1,0.0000000000000000000000000000,1,0,'COMPRA FEITA PELA MÃE BELOSIRA',0),(28,'2024-06-18 00:00:00.000000',37,4,359.70,1,0.0000000000000000000000000000,1,0,NULL,0),(29,'2024-06-18 00:00:00.000000',38,2,76.90,1,0.0000000000000000000000000000,1,0,NULL,0),(30,'2024-06-08 00:00:00.000000',39,3,149.90,1,0.0000000000000000000000000000,1,0,NULL,0),(31,'2024-06-18 00:00:00.000000',39,3,161.80,1,0.0000000000000000000000000000,1,0,NULL,0),(32,'2024-05-25 00:00:00.000000',39,4,654.60,1,0.0000000000000000000000000000,1,0,NULL,0),(33,'2024-06-18 00:00:00.000000',40,4,254.80,1,0.0000000000000000000000000000,1,0,NULL,0),(34,'2024-06-25 00:00:00.000000',10,2,76.90,1,0.0000000000000000000000000000,1,0,NULL,0),(35,'2024-06-19 00:00:00.000000',41,2,123.70,1,0.0000000000000000000000000000,1,0,NULL,0),(36,'2024-06-19 00:00:00.000000',37,2,79.80,1,0.0000000000000000000000000000,1,0,'COMPRA FEITA PELA MÃE GLORIA',0),(37,'2024-06-19 00:00:00.000000',42,4,249.80,1,0.0000000000000000000000000000,1,0,NULL,0),(38,'2024-06-20 00:00:00.000000',42,2,54.90,1,0.0000000000000000000000000000,1,0,NULL,0),(39,'2024-06-19 00:00:00.000000',43,2,119.90,1,0.0000000000000000000000000000,1,0,'COMPRA FEITA PELA VERA LUCIA PESCA',0),(40,'0001-01-01 00:00:00.000000',43,2,79.90,1,0.0000000000000000000000000000,1,0,'COMPRA FEITA PELA RITA - AMIGA DA VERA LUCIA ',0),(41,'2024-06-19 00:00:00.000000',36,3,136.50,1,0.0000000000000000000000000000,1,0,NULL,0),(42,'2024-06-19 00:00:00.000000',44,1,39.90,1,0.0000000000000000000000000000,1,0,NULL,0),(43,'2024-06-19 00:00:00.000000',42,2,77.80,1,0.0000000000000000000000000000,1,0,NULL,0),(44,'2024-06-19 00:00:00.000000',42,3,139.90,1,0.0000000000000000000000000000,1,0,'COMPRA FEITA PELA MÃE ',0),(45,'2024-06-19 00:00:00.000000',45,1,23.90,1,0.0000000000000000000000000000,1,0,NULL,0),(46,'2024-06-20 00:00:00.000000',10,2,153.80,1,0.0000000000000000000000000000,1,0,'COMPRA FEITA PELO PADASTRO',0),(47,'2024-06-21 00:00:00.000000',46,3,173.80,1,0.0000000000000000000000000000,1,0,NULL,0),(48,'2024-06-22 00:00:00.000000',47,2,79.90,1,0.0000000000000000000000000000,1,0,NULL,0),(49,'2024-06-22 00:00:00.000000',44,4,375.30,1,0.0000000000000000000000000000,1,0,'COMPRA FEITA PELA FILHA KÊNIA',0),(50,'2024-06-25 00:00:00.000000',49,1,53.80,1,0.0000000000000000000000000000,1,0,NULL,0),(51,'2024-06-25 00:00:00.000000',50,2,89.80,1,0.0000000000000000000000000000,1,0,NULL,1),(52,'2024-05-18 00:00:00.000000',50,3,200.50,1,0.0000000000000000000000000000,1,0,NULL,1),(53,'2024-06-25 00:00:00.000000',1,3,100.00,1,0.0000000000000000000000000000,1,0,NULL,1),(54,'2024-05-18 00:00:00.000000',50,3,200.50,1,0.0000000000000000000000000000,1,1,NULL,0),(55,'2024-06-25 00:00:00.000000',1,2,100.00,1,0.0000000000000000000000000000,1,0,NULL,1),(56,'2024-06-25 00:00:00.000000',50,2,89.80,1,0.0000000000000000000000000000,1,1,NULL,0),(57,'2024-03-26 00:00:00.000000',1,4,430.00,1,0.0000000000000000000000000000,1,1,NULL,0),(58,'2024-06-26 00:00:00.000000',1,3,4324.34,1,0.0000000000000000000000000000,1,1,NULL,0),(59,'2024-01-26 00:00:00.000000',1,6,1034.24,1,0.0000000000000000000000000000,1,1,NULL,0),(60,'2024-04-26 00:00:00.000000',1,3,430.00,1,0.0000000000000000000000000000,1,1,NULL,0),(61,'2024-01-26 00:00:00.000000',1,8,4343.44,1,0.0000000000000000000000000000,1,0,NULL,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 
-- Dumping data for table itemvendas
-- 

/*!40000 ALTER TABLE `itemvendas` DISABLE KEYS */;
INSERT INTO `itemvendas`(`Id`,`VendaId`,`NomeDoProduto`,`Quantidade`,`PrecoUnitario`) VALUES(7,16,'CAMISA USE MAIS TAM. P ',1,74.900000000000000000000000000),(9,18,'BERMUDA BRIM INFANTIL TAM.16',1,68.000000000000000000000000000),(10,19,'CAMISA MASCULINA USE MAIS TAM.P',1,74.900000000000000000000000000),(11,20,'CAMISA MASCULINA USE MAIS TA.P',1,74.900000000000000000000000000),(12,21,'CINTO MASCULINO',1,34.900000000000000000000000000),(13,21,'CINTO FEMININO',1,34.900000000000000000000000000),(14,22,'CALÇA PANTALONA ESTAMPADA',1,79.90000000000000000000000000),(15,23,'BLUSA MALHA',1,39.900000000000000000000000000),(16,23,'VESTIDO MOLETINHO VINHO',1,99.90000000000000000000000000),(17,23,'BLUSA TECIDO',1,64.900000000000000000000000000),(18,23,'BRINCO FOLHEADO',1,38.900000000000000000000000000),(19,23,'CONJUNTO INFANTIL',1,59.900000000000000000000000000),(20,23,'BLUSA MALHA',1,39.900000000000000000000000000),(21,23,'VESTIDO MOLETINHO CINZA',1,99.90000000000000000000000000),(22,24,'VESTIDO TECIDO',1,139.90000000000000000000000000),(23,24,'VESTIDO TECIDO',1,139.90000000000000000000000000),(24,25,'TSETEA',1,32.320000000000000000000000000),(25,26,'CALÇA JEANS FEMININA',3,119.90000000000000000000000000),(26,26,'CALÇA JEANS FEMININA',1,99.90000000000000000000000000),(27,27,'BERMUDA BRIM INFANTIL MASCULINA',1,59.900000000000000000000000000),(28,28,'VESTIDO TECIDO',1,159.90000000000000000000000000),(29,28,'VESTIDO TECIDO',1,149.90000000000000000000000000),(30,28,'REFIL HIDRANTE NATURA ALGODÃO',1,49.900000000000000000000000000),(31,29,'HIDRATANTE BOTICÁRIO AMEIXA NEGRA',1,76.900000000000000000000000000),(32,30,'VESTIDO TECIDO ',1,149.90000000000000000000000000),(33,31,'HIDRANTE BOTICARIO ORQUIDEA',1,76.900000000000000000000000000),(34,31,'BODY SPLASH ORQUIDEA BOTICARIO',1,84.90000000000000000000000000),(35,32,'SUTIÃ GG',1,69.900000000000000000000000000),(36,32,'SUTIÃ GGG',1,69.900000000000000000000000000),(37,32,'PALETA DE SOMBRAS MAQUIAGEM',1,22.900000000000000000000000000),(38,32,'MAQUIAGEM',1,19.900000000000000000000000000),(39,32,'LÁPIS PARA OLHOS',1,13.900000000000000000000000000),(40,32,'BLUSH ROSADO',1,17.900000000000000000000000000),(41,32,'BLUSH ROSA',1,16.900000000000000000000000000),(42,32,'PÓ COMPACTO',2,13.900000000000000000000000000),(43,32,'GLOSS LABIAL',1,15.900000000000000000000000000),(44,32,'ESPONJA',1,9.900000000000000000000000000),(45,32,'PERFUME EGEO',1,129.90000000000000000000000000),(46,32,'VESTIDO ',1,99.90000000000000000000000000),(47,32,'VESTIDO',1,139.90000000000000000000000000),(48,33,'CUECA ADULTO',2,10.000000000000000000000000000),(49,33,'CALCINHA ADULTO',4,16.900000000000000000000000000),(50,33,'CALCINHA INFANTIL',4,7.9000000000000000000000000000),(51,33,'SUTIÃO TOP MEIA',4,33.900000000000000000000000000),(52,34,'HIDRATANTE AMEIXA NEGRA BOTICÁRIO',1,76.900000000000000000000000000),(53,35,'CALCINHA BUNDA RICA ',2,34.900000000000000000000000000),(54,35,'BRINCO FOLHEADO',1,53.900000000000000000000000000),(55,36,'BLUSA ACADEMIA',1,39.900000000000000000000000000),(56,36,'BERMUDA ACADEMIA',1,39.900000000000000000000000000),(57,37,'CALÇA JEANS',1,129.90000000000000000000000000),(58,37,'CALÇA JEANS',1,119.90000000000000000000000000),(59,38,'CAMISA MASCULINA',1,54.900000000000000000000000000),(60,39,'VESTIDO TECIDO ',1,119.90000000000000000000000000),(61,40,'SHORT JEANS FEMININO',1,79.90000000000000000000000000),(62,41,'BERMUDA MOLETOM INFANTIL',1,64.900000000000000000000000000),(63,41,'GLOSS LABIAL INFANTIL',1,15.900000000000000000000000000),(64,41,'ARCO DE CABELO',1,9.900000000000000000000000000),(65,41,'BOLSA INFANTIL',1,29.900000000000000000000000000),(66,41,'GLOSS INFANTIL',1,15.900000000000000000000000000),(67,42,'BLUSA MALHA',1,39.900000000000000000000000000),(68,43,'CAMISOLA ',1,29.900000000000000000000000000),(69,43,'BABYDOLL',1,47.900000000000000000000000000),(70,44,'VESTIDO TECIDO',1,139.90000000000000000000000000),(71,45,'BRINCO FOLHEADO',1,23.900000000000000000000000000),(72,46,'HIDRADANTE AMEIXA BOTICARIO',2,76.900000000000000000000000000),(73,47,'CALÇA BRIM MASCULINA',1,128.90000000000000000000000000),(74,47,'BLUSA T-SHIRT',1,44.900000000000000000000000000),(75,48,'BOLSA PRETA',1,79.90000000000000000000000000),(76,49,'BLUSA INFANTIL',2,22.900000000000000000000000000),(77,49,'CASACO LINHA ',1,99.90000000000000000000000000),(78,49,'CASACO PÊLO INFANTIL',1,79.90000000000000000000000000),(79,49,'BLUSA TECIDO',1,59.900000000000000000000000000),(80,49,'BLUSA TECIDO',1,49.900000000000000000000000000),(81,49,'LEGGING PRETA INFANTIL',1,39.900000000000000000000000000),(82,50,'SUTIÃ TOP ',1,33.900000000000000000000000000),(83,50,'CINTO FINO FEMININO',1,19.900000000000000000000000000),(84,51,'BERMUDA DE TACTEL MASCULINA',1,39.900000000000000000000000000),(85,51,'BERMUDA TACTEL MASCULINA',1,49.900000000000000000000000000),(86,52,'CALCINHA',4,15.900000000000000000000000000),(87,52,'CALCINHA',1,7.9000000000000000000000000000),(88,52,'CASACO LINHA',1,99.90000000000000000000000000),(89,52,'CALCINHA',1,29.100000000000000000000000000),(90,53,'TESTE2',1,100.00000000000000000000000000),(91,54,'CALCINHA',4,15.900000000000000000000000000),(92,54,'CASACO LINHA',1,99.90000000000000000000000000),(93,54,'CALCINHA',1,29.100000000000000000000000000),(94,54,'CALCINHA',1,7.9000000000000000000000000000),(95,55,'TESTESTES',1,100.00000000000000000000000000),(96,56,'BERMUDA TACTEL',1,39.900000000000000000000000000),(97,56,'BERMUDA TACTEL MASCULINO',1,49.900000000000000000000000000),(98,57,'SSFDFDSFSFSDF',1,430.00000000000000000000000000),(99,58,'DASDDSDA',1,4324.3400000000000000000000000),(100,59,'BLUSA LINDO ',32,32.320000000000000000000000000),(101,60,'DSADD3',1,430.00000000000000000000000000),(102,61,'SDSAAS',1,4343.4400000000000000000000000);
/*!40000 ALTER TABLE `itemvendas` ENABLE KEYS */;

-- 
-- Definition of parcelas
-- 

DROP TABLE IF EXISTS `parcelas`;
CREATE TABLE IF NOT EXISTS `parcelas` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `VendaId` int NOT NULL,
  `NumeroParcela` int NOT NULL,
  `Valor` decimal(10,2) NOT NULL,
  `DataVencimento` datetime(6) NOT NULL,
  `DataPagamento` datetime(6) NOT NULL,
  `Pago` tinyint(1) NOT NULL,
  `Historico` longtext NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_Parcelas_VendaId` (`VendaId`),
  CONSTRAINT `FK_Parcelas_Vendas_VendaId` FOREIGN KEY (`VendaId`) REFERENCES `vendas` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 
-- Dumping data for table parcelas
-- 

/*!40000 ALTER TABLE `parcelas` DISABLE KEYS */;
INSERT INTO `parcelas`(`Id`,`VendaId`,`NumeroParcela`,`Valor`,`DataVencimento`,`DataPagamento`,`Pago`,`Historico`) VALUES(9,16,1,37.45,'2024-07-21 00:00:00.000000','2024-06-24 16:57:56.754362',1,'[\r\n  {\r\n    \"DataPagamento\": \"24/06/2024\",\r\n    \"Valor\": \"37,45\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": null\r\n  }\r\n]'),(10,16,2,37.45,'2024-08-21 00:00:00.000000','2024-06-24 16:58:01.186044',1,'[\r\n  {\r\n    \"DataPagamento\": \"24/06/2024\",\r\n    \"Valor\": \"37,45\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": null\r\n  }\r\n]'),(11,22,1,0.00,'2024-07-08 00:00:00.000000','2024-06-26 11:16:27.770114',1,'[\r\n  {\r\n    \"DataPagamento\": \"26/06/2024\",\r\n    \"Valor\": \"50,00\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": null\r\n  }\r\n]'),(12,22,2,39.95,'2024-08-08 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(13,23,1,10.83,'2024-07-08 00:00:00.000000','2024-06-25 17:12:07.225993',1,'[\r\n  {\r\n    \"DataPagamento\": \"25/06/2024\",\r\n    \"Valor\": \"100,00\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": null\r\n  },\r\n  {\r\n    \"DataPagamento\": \"25/06/2024\",\r\n    \"Valor\": \"300,00\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": null\r\n  }\r\n]'),(14,23,2,0.00,'2024-08-08 00:00:00.000000','0001-01-01 00:00:00.000000',1,'[\r\n  {\r\n    \"DataPagamento\": \"25/06/2024\",\r\n    \"Valor\": \"89,18\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": \"REALIZADO AUTOMATICAMENTE COM RESTANTE DO PAGAMENTO DA PRESTAÇÃO\"\r\n  },\r\n  {\r\n    \"DataPagamento\": \"25/06/2024\",\r\n    \"Valor\": \"21,65\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": \"REALIZADO AUTOMATICAMENTE COM RESTANTE DO PAGAMENTO DA PRESTAÇÃO\"\r\n  }\r\n]'),(15,23,3,0.00,'2024-09-08 00:00:00.000000','0001-01-01 00:00:00.000000',1,'[\r\n  {\r\n    \"DataPagamento\": \"25/06/2024\",\r\n    \"Valor\": \"67,52\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": \"REALIZADO AUTOMATICAMENTE COM RESTANTE DO PAGAMENTO DA PRESTAÇÃO\"\r\n  },\r\n  {\r\n    \"DataPagamento\": \"25/06/2024\",\r\n    \"Valor\": \"43,30\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": \"REALIZADO AUTOMATICAMENTE COM RESTANTE DO PAGAMENTO DA PRESTAÇÃO\"\r\n  }\r\n]'),(16,23,4,0.00,'2024-10-08 00:00:00.000000','0001-01-01 00:00:00.000000',1,'[\r\n  {\r\n    \"DataPagamento\": \"25/06/2024\",\r\n    \"Valor\": \"24,22\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": \"REALIZADO AUTOMATICAMENTE COM RESTANTE DO PAGAMENTO DA PRESTAÇÃO\"\r\n  },\r\n  {\r\n    \"DataPagamento\": \"25/06/2024\",\r\n    \"Valor\": \"86,60\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": \"REALIZADO AUTOMATICAMENTE COM RESTANTE DO PAGAMENTO DA PRESTAÇÃO\"\r\n  }\r\n]'),(17,24,1,69.95,'2024-07-18 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(18,24,2,69.95,'2024-08-18 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(19,24,3,69.95,'2024-09-18 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(20,24,4,69.95,'2024-10-18 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(21,26,1,100.30,'2024-07-18 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(22,26,2,100.30,'2024-08-18 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(23,27,1,59.90,'2024-07-18 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(24,28,1,89.93,'2024-07-18 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(25,28,2,89.93,'2024-08-18 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(26,28,3,89.93,'2024-09-18 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(27,28,4,89.93,'2024-10-18 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(28,29,1,38.45,'2024-07-18 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(29,29,2,38.45,'2024-08-18 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(30,30,1,49.97,'2024-07-08 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(31,30,2,49.97,'2024-08-08 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(32,30,3,49.97,'2024-09-08 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(33,31,1,53.93,'2024-07-18 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(34,31,2,53.93,'2024-08-18 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(35,31,3,53.93,'2024-09-18 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(36,32,1,163.65,'2024-06-25 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(37,32,2,163.65,'2024-07-25 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(38,32,3,163.65,'2024-08-25 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(39,32,4,163.65,'2024-09-25 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(40,33,1,63.70,'2024-07-18 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(41,33,2,63.70,'2024-08-18 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(42,33,3,63.70,'2024-09-18 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(43,33,4,63.70,'2024-10-18 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(44,34,1,38.45,'2024-07-25 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(45,34,2,38.45,'2024-08-25 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(46,35,1,61.85,'2024-07-19 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(47,35,2,61.85,'2024-08-19 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(48,36,1,39.90,'2024-07-19 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(49,36,2,39.90,'2024-08-19 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(50,37,1,62.45,'2024-07-19 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(51,37,2,62.45,'2024-08-19 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(52,37,3,62.45,'2024-09-19 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(53,37,4,62.45,'2024-10-19 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(54,38,1,0.00,'2024-07-20 00:00:00.000000','2024-06-26 11:19:23.843858',1,'[\r\n  {\r\n    \"DataPagamento\": \"26/06/2024\",\r\n    \"Valor\": \"27,45\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": null\r\n  }\r\n]'),(55,38,2,7.45,'2024-08-20 00:00:00.000000','2024-06-26 11:19:35.646469',0,'[\r\n  {\r\n    \"DataPagamento\": \"26/06/2024\",\r\n    \"Valor\": \"20,00\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": null\r\n  }\r\n]'),(56,39,1,59.95,'2024-07-19 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(57,39,2,59.95,'2024-08-19 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(58,40,1,39.95,'0001-02-01 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(59,40,2,39.95,'0001-03-01 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(60,41,1,45.50,'2024-07-19 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(61,41,2,45.50,'2024-08-19 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(62,41,3,45.50,'2024-09-19 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(63,42,1,39.90,'2024-07-19 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(64,43,1,38.90,'2024-07-19 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(65,43,2,38.90,'2024-08-19 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(66,44,1,46.63,'2024-07-19 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(67,44,2,46.63,'2024-08-19 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(68,44,3,46.63,'2024-09-19 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(69,45,1,23.90,'2024-07-19 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(70,46,1,76.90,'2024-07-20 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(71,46,2,76.90,'2024-08-20 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(72,47,1,57.93,'2024-07-21 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(73,47,2,57.93,'2024-08-21 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(74,47,3,57.93,'2024-09-21 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(75,48,1,39.95,'2024-07-22 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(76,48,2,39.95,'2024-08-22 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(77,49,1,93.83,'2024-07-22 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(78,49,2,93.83,'2024-08-22 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(79,49,3,93.83,'2024-09-22 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(80,49,4,93.83,'2024-10-22 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(81,50,1,53.80,'2024-07-25 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(82,51,1,44.90,'2024-07-25 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(83,51,2,44.90,'2024-08-25 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(84,52,1,0.01,'2024-06-18 00:00:00.000000','2024-06-25 16:39:54.757166',0,'[\r\n  {\r\n    \"DataPagamento\": \"25/06/2024\",\r\n    \"Valor\": \"66,83\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": null\r\n  },\r\n  {\r\n    \"DataPagamento\": \"25/06/2024\",\r\n    \"Valor\": \"0,94\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": null\r\n  }\r\n]'),(85,52,2,0.03,'2024-07-18 00:00:00.000000','0001-01-01 00:00:00.000000',0,'[\r\n  {\r\n    \"DataPagamento\": \"25/06/2024\",\r\n    \"Valor\": \"65,88\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": \"REALIZADO AUTOMATICAMENTE COM RESTANTE DO PAGAMENTO DA PRESTAÇÃO\"\r\n  },\r\n  {\r\n    \"DataPagamento\": \"25/06/2024\",\r\n    \"Valor\": \"0,93\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": \"REALIZADO AUTOMATICAMENTE COM RESTANTE DO PAGAMENTO DA PRESTAÇÃO\"\r\n  }\r\n]'),(86,52,3,1.01,'2024-08-18 00:00:00.000000','0001-01-01 00:00:00.000000',0,'[\r\n  {\r\n    \"DataPagamento\": \"25/06/2024\",\r\n    \"Valor\": \"64,92\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": \"REALIZADO AUTOMATICAMENTE COM RESTANTE DO PAGAMENTO DA PRESTAÇÃO\"\r\n  },\r\n  {\r\n    \"DataPagamento\": \"25/06/2024\",\r\n    \"Valor\": \"0,90\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": \"REALIZADO AUTOMATICAMENTE COM RESTANTE DO PAGAMENTO DA PRESTAÇÃO\"\r\n  }\r\n]'),(87,53,1,33.33,'2024-07-25 00:00:00.000000','2024-06-25 16:55:35.730801',1,'[\r\n  {\r\n    \"DataPagamento\": \"25/06/2024\",\r\n    \"Valor\": \"33,33\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": null\r\n  }\r\n]'),(88,53,2,3.33,'2024-08-25 00:00:00.000000','2024-06-25 16:55:47.866557',0,'[\r\n  {\r\n    \"DataPagamento\": \"25/06/2024\",\r\n    \"Valor\": \"30,00\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": null\r\n  }\r\n]'),(89,53,3,6.67,'2024-09-25 00:00:00.000000','0001-01-01 00:00:00.000000',0,'[\r\n  {\r\n    \"DataPagamento\": \"25/06/2024\",\r\n    \"Valor\": \"26,67\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": \"REALIZADO AUTOMATICAMENTE COM RESTANTE DO PAGAMENTO DA PRESTAÇÃO\"\r\n  }\r\n]'),(90,54,1,0.01,'2024-06-18 00:00:00.000000','2024-06-25 17:10:38.920049',1,'[\r\n  {\r\n    \"DataPagamento\": \"25/06/2024\",\r\n    \"Valor\": \"66,83\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": null\r\n  },\r\n  {\r\n    \"DataPagamento\": \"25/06/2024\",\r\n    \"Valor\": \"0,94\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": null\r\n  },\r\n  {\r\n    \"DataPagamento\": \"25/06/2024\",\r\n    \"Valor\": \"0,01\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": null\r\n  }\r\n]'),(91,54,2,0.03,'2024-07-18 00:00:00.000000','2024-06-26 10:33:45.966595',1,'[\r\n  {\r\n    \"DataPagamento\": \"25/06/2024\",\r\n    \"Valor\": \"65,88\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": \"REALIZADO AUTOMATICAMENTE COM RESTANTE DO PAGAMENTO DA PRESTAÇÃO\"\r\n  },\r\n  {\r\n    \"DataPagamento\": \"25/06/2024\",\r\n    \"Valor\": \"0,93\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": \"REALIZADO AUTOMATICAMENTE COM RESTANTE DO PAGAMENTO DA PRESTAÇÃO\"\r\n  },\r\n  {\r\n    \"DataPagamento\": \"26/06/2024\",\r\n    \"Valor\": \"0,03\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": null\r\n  }\r\n]'),(92,54,3,1.01,'2024-08-18 00:00:00.000000','2024-06-26 10:33:59.471197',1,'[\r\n  {\r\n    \"DataPagamento\": \"25/06/2024\",\r\n    \"Valor\": \"64,92\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": \"REALIZADO AUTOMATICAMENTE COM RESTANTE DO PAGAMENTO DA PRESTAÇÃO\"\r\n  },\r\n  {\r\n    \"DataPagamento\": \"25/06/2024\",\r\n    \"Valor\": \"0,90\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": \"REALIZADO AUTOMATICAMENTE COM RESTANTE DO PAGAMENTO DA PRESTAÇÃO\"\r\n  },\r\n  {\r\n    \"DataPagamento\": \"26/06/2024\",\r\n    \"Valor\": \"2,00\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": null\r\n  }\r\n]'),(93,55,1,10.00,'2024-07-25 00:00:00.000000','2024-06-25 16:57:25.743088',0,'[\r\n  {\r\n    \"DataPagamento\": \"25/06/2024\",\r\n    \"Valor\": \"40,00\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": null\r\n  }\r\n]'),(94,55,2,20.00,'2024-08-25 00:00:00.000000','0001-01-01 00:00:00.000000',0,'[\r\n  {\r\n    \"DataPagamento\": \"25/06/2024\",\r\n    \"Valor\": \"30,00\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": \"REALIZADO AUTOMATICAMENTE COM RESTANTE DO PAGAMENTO DA PRESTAÇÃO\"\r\n  }\r\n]'),(95,56,1,44.90,'2024-07-25 00:00:00.000000','2024-06-26 09:23:04.595169',1,'[\r\n  {\r\n    \"DataPagamento\": \"26/06/2024\",\r\n    \"Valor\": \"44,90\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": null\r\n  }\r\n]'),(96,56,2,0.00,'2024-08-25 00:00:00.000000','2024-06-26 18:31:41.873007',1,'[\r\n  {\r\n    \"DataPagamento\": \"26/06/2024\",\r\n    \"Valor\": \"30,00\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": null\r\n  },\r\n  {\r\n    \"DataPagamento\": \"26/06/2024\",\r\n    \"Valor\": \"14,90\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": null\r\n  }\r\n]'),(97,57,1,13.12,'2024-04-26 00:00:00.000000','2024-06-26 10:17:30.209358',1,'[\r\n  {\r\n    \"DataPagamento\": \"26/06/2024\",\r\n    \"Valor\": \"107,50\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": null\r\n  },\r\n  {\r\n    \"DataPagamento\": \"26/06/2024\",\r\n    \"Valor\": \"14,72\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": null\r\n  }\r\n]'),(98,57,2,107.50,'2024-05-26 00:00:00.000000','2024-06-26 10:20:31.164653',1,'[\r\n  {\r\n    \"DataPagamento\": \"26/06/2024\",\r\n    \"Valor\": \"150,00\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": null\r\n  }\r\n]'),(99,57,3,71.66,'2024-06-26 00:00:00.000000','2024-06-26 10:25:23.448577',1,'[\r\n  {\r\n    \"DataPagamento\": \"26/06/2024\",\r\n    \"Valor\": \"35,84\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": \"REALIZADO AUTOMATICAMENTE COM RESTANTE DO PAGAMENTO DA PRESTAÇÃO\"\r\n  },\r\n  {\r\n    \"DataPagamento\": \"26/06/2024\",\r\n    \"Valor\": \"71,66\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": null\r\n  }\r\n]'),(100,57,4,0.00,'2024-07-26 00:00:00.000000','2024-06-26 11:03:33.002486',1,'[\r\n  {\r\n    \"DataPagamento\": \"26/06/2024\",\r\n    \"Valor\": \"107,50\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": null\r\n  }\r\n]'),(101,58,1,1000.00,'2024-07-26 00:00:00.000000','2024-06-26 10:30:45.712219',1,'[\r\n  {\r\n    \"DataPagamento\": \"26/06/2024\",\r\n    \"Valor\": \"0,45\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": null\r\n  },\r\n  {\r\n    \"DataPagamento\": \"26/06/2024\",\r\n    \"Valor\": \"441,00\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": null\r\n  },\r\n  {\r\n    \"DataPagamento\": \"26/06/2024\",\r\n    \"Valor\": \"2000,00\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": null\r\n  }\r\n]'),(102,58,2,1441.45,'2024-08-26 00:00:00.000000','2024-06-26 10:32:31.538696',1,'[\r\n  {\r\n    \"DataPagamento\": \"26/06/2024\",\r\n    \"Valor\": \"2000,00\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": null\r\n  }\r\n]'),(103,58,3,882.90,'2024-09-26 00:00:00.000000','2024-06-26 10:33:25.953980',1,'[\r\n  {\r\n    \"DataPagamento\": \"26/06/2024\",\r\n    \"Valor\": \"558,55\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": \"REALIZADO AUTOMATICAMENTE COM RESTANTE DO PAGAMENTO DA PRESTAÇÃO\"\r\n  },\r\n  {\r\n    \"DataPagamento\": \"26/06/2024\",\r\n    \"Valor\": \"882,90\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": null\r\n  }\r\n]'),(104,59,1,172.37,'2024-02-26 00:00:00.000000','2024-06-26 10:35:19.446394',1,'[\r\n  {\r\n    \"DataPagamento\": \"26/06/2024\",\r\n    \"Valor\": \"214,08\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": null\r\n  }\r\n]'),(105,59,2,172.37,'2024-03-26 00:00:00.000000','2024-06-26 10:36:07.871868',1,'[\r\n  {\r\n    \"DataPagamento\": \"26/06/2024\",\r\n    \"Valor\": \"210,00\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": null\r\n  }\r\n]'),(106,59,3,166.46,'2024-04-26 00:00:00.000000','2024-06-26 10:37:16.179640',1,'[\r\n  {\r\n    \"DataPagamento\": \"26/06/2024\",\r\n    \"Valor\": \"5,91\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": \"REALIZADO AUTOMATICAMENTE COM RESTANTE DO PAGAMENTO DA PRESTAÇÃO\"\r\n  },\r\n  {\r\n    \"DataPagamento\": \"26/06/2024\",\r\n    \"Valor\": \"300,00\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": null\r\n  }\r\n]'),(107,59,4,59.14,'2024-05-26 00:00:00.000000','2024-06-26 10:37:44.430473',1,'[\r\n  {\r\n    \"DataPagamento\": \"26/06/2024\",\r\n    \"Valor\": \"113,23\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": \"REALIZADO AUTOMATICAMENTE COM RESTANTE DO PAGAMENTO DA PRESTAÇÃO\"\r\n  },\r\n  {\r\n    \"DataPagamento\": \"26/06/2024\",\r\n    \"Valor\": \"100,00\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": null\r\n  }\r\n]'),(108,59,5,0.00,'2024-06-26 00:00:00.000000','2024-06-26 10:59:55.173820',1,'[\r\n  {\r\n    \"DataPagamento\": \"26/06/2024\",\r\n    \"Valor\": \"54,09\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": \"REALIZADO AUTOMATICAMENTE COM RESTANTE DO PAGAMENTO DA PRESTAÇÃO\"\r\n  },\r\n  {\r\n    \"DataPagamento\": \"26/06/2024\",\r\n    \"Valor\": \"37,19\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": \"REALIZADO AUTOMATICAMENTE COM RESTANTE DO PAGAMENTO DA PRESTAÇÃO\"\r\n  },\r\n  {\r\n    \"DataPagamento\": \"26/06/2024\",\r\n    \"Valor\": \"80,00\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": null\r\n  },\r\n  {\r\n    \"DataPagamento\": \"26/06/2024\",\r\n    \"Valor\": \"100,00\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": null\r\n  }\r\n]'),(109,59,6,0.00,'2024-07-26 00:00:00.000000','2024-06-26 11:00:27.338986',1,'[\r\n  {\r\n    \"DataPagamento\": \"26/06/2024\",\r\n    \"Valor\": \"98,91\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": \"REALIZADO AUTOMATICAMENTE COM RESTANTE DO PAGAMENTO DA PRESTAÇÃO\"\r\n  },\r\n  {\r\n    \"DataPagamento\": \"26/06/2024\",\r\n    \"Valor\": \"100,00\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": null\r\n  }\r\n]'),(110,60,1,0.00,'2024-05-26 00:00:00.000000','2024-06-26 11:01:30.532760',1,'[\r\n  {\r\n    \"DataPagamento\": \"26/06/2024\",\r\n    \"Valor\": \"200,00\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": null\r\n  }\r\n]'),(111,60,2,0.00,'2024-06-26 00:00:00.000000','0001-01-01 00:00:00.000000',1,'[\r\n  {\r\n    \"DataPagamento\": \"26/06/2024\",\r\n    \"Valor\": \"143,33\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": \"REALIZADO AUTOMATICAMENTE COM RESTANTE DO PAGAMENTO DA PRESTAÇÃO\"\r\n  }\r\n]'),(112,60,3,0.00,'2024-07-26 00:00:00.000000','2024-06-26 11:02:31.810645',1,'[\r\n  {\r\n    \"DataPagamento\": \"26/06/2024\",\r\n    \"Valor\": \"47,78\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": \"REALIZADO AUTOMATICAMENTE COM RESTANTE DO PAGAMENTO DA PRESTAÇÃO\"\r\n  },\r\n  {\r\n    \"DataPagamento\": \"26/06/2024\",\r\n    \"Valor\": \"90,00\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": null\r\n  },\r\n  {\r\n    \"DataPagamento\": \"26/06/2024\",\r\n    \"Valor\": \"100,00\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": null\r\n  }\r\n]'),(113,61,1,0.00,'2024-02-26 00:00:00.000000','2024-06-26 11:17:54.120298',1,'[\r\n  {\r\n    \"DataPagamento\": \"26/06/2024\",\r\n    \"Valor\": \"500,00\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": null\r\n  },\r\n  {\r\n    \"DataPagamento\": \"26/06/2024\",\r\n    \"Valor\": \"216,51\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": null\r\n  }\r\n]'),(114,61,2,0.00,'2024-03-26 00:00:00.000000','2024-06-26 14:53:43.330136',1,'[\r\n  {\r\n    \"DataPagamento\": \"26/06/2024\",\r\n    \"Valor\": \"552,92\",\r\n    \"Juros\": \"0,02\",\r\n    \"Observacao\": null\r\n  }\r\n]'),(115,61,3,0.00,'2024-04-26 00:00:00.000000','2024-06-26 14:48:02.199098',1,'[\r\n  {\r\n    \"DataPagamento\": \"10/06/2024\",\r\n    \"Valor\": \"591,79\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": null\r\n  }\r\n]'),(116,61,4,0.00,'2024-05-26 00:00:00.000000','2024-06-26 14:47:06.092151',1,'[\r\n  {\r\n    \"DataPagamento\": \"07/06/2024\",\r\n    \"Valor\": \"555,96\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": null\r\n  },\r\n  {\r\n    \"DataPagamento\": \"10/06/2024\",\r\n    \"Valor\": \"21,25\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": null\r\n  }\r\n]'),(117,61,5,0.00,'2024-06-26 00:00:00.000000','2024-06-26 18:21:28.895158',1,'[\r\n  {\r\n    \"DataPagamento\": \"04/06/2024\",\r\n    \"Valor\": \"500,00\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": null\r\n  },\r\n  {\r\n    \"DataPagamento\": \"26/06/2024\",\r\n    \"Valor\": \"42,93\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": null\r\n  }\r\n]'),(118,61,6,0.00,'2024-07-26 00:00:00.000000','2024-06-26 14:29:58.054795',1,'[\r\n  {\r\n    \"DataPagamento\": \"26/06/2024\",\r\n    \"Valor\": \"542,93\",\r\n    \"Juros\": \"0,2\",\r\n    \"Observacao\": null\r\n  }\r\n]'),(119,61,7,542.93,'2024-08-26 00:00:00.000000','0001-01-01 00:00:00.000000',0,''),(120,61,8,542.93,'2024-09-26 00:00:00.000000','0001-01-01 00:00:00.000000',0,'');
/*!40000 ALTER TABLE `parcelas` ENABLE KEYS */;


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


-- Dump completed on 2024-06-26 21:01:42
-- Total time: 0:0:0:0:267 (d:h:m:s:ms)
