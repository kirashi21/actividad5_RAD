CREATE DATABASE  IF NOT EXISTS `db_peliculas` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_peliculas`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: db_peliculas
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `peliculas`
--

DROP TABLE IF EXISTS `peliculas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `peliculas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) DEFAULT NULL,
  `descripcion` longtext,
  `anio` varchar(10) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `trailer` varchar(100) DEFAULT NULL,
  `categoria_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categoria_id_idx` (`categoria_id`),
  CONSTRAINT `categoria_id` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peliculas`
--

LOCK TABLES `peliculas` WRITE;
/*!40000 ALTER TABLE `peliculas` DISABLE KEYS */;
INSERT INTO `peliculas` VALUES (1,'Oppenheimer','Oppenheimer aboga contra un mayor desarrollo nuclear, especialmente la bomba de hidrógeno, lo que lo sitúa en el bando opuesto a su compañero del Proyecto Manhattan Edward Teller. Su postura se convierte en un punto de discordia en el lado americano en medio de la tensa Guerra Fría con la Unión Soviética.','2023','/images/oppenheimer.jpg','https://www.youtube.com/embed/MVvGSBKV504',1),(2,'Barbie','Barbie es una película de comedia fantástica estadounidense de 2023, dirigida por Greta Gerwig y escrita por Gerwig y Noah Baumbach.​ Basada en Barbie, la línea de muñecas de moda de Mattel, es la primera película de acción en vivo de Barbie, luego de numerosas películas animadas por computadora, lanzadas directas a video y por transmisión televisiva.','2023','/images/barbie.jpg','https://www.youtube.com/embed/gH2mRECr6y4',4),(3,'Elvis','Una mirada a la vida y la carrera del legendario cantante y músico Elvis Presley.','2022','/images/elvis.jpg','https://www.youtube.com/embed/JoqmHAr3fu8',2),(4,'Top Gun: Maverick','Pete \'Maverick\' Mitchell debe entrenar a un grupo de jóvenes pilotos de combate para una misión especial.','2022','/images/topgunmaverick.jpg','https://www.youtube.com/embed/zzBIzYmxatU',5),(5,'Spider-Man: Across the Spider-Verse','Miles Morales se embarca en una aventura interdimensional para unir a los Spider-Men de diferentes universos.','2023','/images/spidermanacrossthespiderverse.jpg','https://www.youtube.com/embed/b3_1cyJRaQ8',7),(6,'The Batman','Bruce Wayne se enfrenta a un nuevo villano, El Acertijo, mientras intenta limpiar Gotham City de la corrupción.','2022','/images/thebatman.jpg','https://www.youtube.com/embed/fWQrd6cwJ0A',5),(7,'Doctor Strange in the Multiverse of Madness','Doctor Strange debe enfrentarse a una amenaza multiversal mientras intenta ayudar a América Chávez a controlar sus poderes.','2022','/images/doctorstrangeinthemultiverseofmadness.jpg','https://www.youtube.com/embed/D9AzGVmMVpk',4),(8,'Jurassic World Dominion','Los dinosaurios viven ahora entre los humanos, y deben coexistir de alguna manera.','2022','/images/jurassicworlddominion.jpg','https://www.youtube.com/embed/pF4iC_e_qW8',5),(9,'The Black Phone','Un niño secuestrado por un asesino en serie se comunica con las víctimas anteriores del asesino a través de un teléfono desconectado.','2022','/images/theblackphone.jpg','https://www.youtube.com/embed/XhcEnHDKHco',6),(10,'Everything Everywhere All at Once','Una mujer china inmigrante debe salvar el mundo explorando los infinitos universos paralelos que existen.','2022','/images/everythingeverywhereallatonce.jpg','https://www.youtube.com/embed/UiN9e-y2P7g',3),(11,'Elementos','En una ciudad donde los residentes del fuego, el agua, la tierra y el aire viven juntos, una joven apasionada y un chico que se deja llevar por la corriente descubrirán algo elemental: cuánto tienen en común.','2023','/images/elementos.jpg','https://www.youtube.com/embed/BTEPMz-xNgw?si=x5aIZS09SFAff1Zf',7),(12,'Lilo y Stitch','Lilo es una niña hawaiana que se siente sola y decide adoptar un perro muy feo al que llama Stitch. Stitch sería la mascota perfecta... si no fuera en realidad un experimento genético que ha escapado de un planeta alienígena y que ha aterrizado en la tierra por casualidad. Con su amor y su inquebrantable fe en el ohana (el concepto hawaiano de la familia), Lilo termina conquistando el corazón de Stitch y le ofrece algo que el original perro nunca pensó tener: un hogar.','2002','/images/pelicula-1697978612674.jpg','https://www.youtube.com/embed/8A9GjPKiR7Y?si=tXeb_6J67hoJ84FO',7),(13,'El exorcista: Creyente','El padre de un niño poseído busca la ayuda de Chris MacNeil, cuya hija Regan sobrevivió a una posesión similar en la década de 1970.','2023','/images/pelicula-1697978848525.jpg','https://www.youtube.com/embed/DWk4XS0xUtI?si=UMZ1kGmfOFGHh-NG',6),(14,'Saw X','Armado con un nuevo propósito, el infame asesino en serie regresa a su trabajo, dándole la vuelta a los estafadores en su forma visceral característica a través de trampas tortuosas, trastornadas e ingeniosas.','2023','/images/pelicula-1697979006729.jpg','https://www.youtube.com/embed/vEn_IB95oRg?si=kJewHHL3tPvHFxAI',6),(15,'El Justiciero: Capítulo final','Desde que renunció a su vida como asesino del gobierno, Robert McCall ha luchado para reconciliarse con las cosas horribles que ha hecho en el pasado y encuentra un extraño consuelo en hacer justicia en nombre de los oprimidos. Mientras se encuentra en su casa en el sur de Italia, descubre que sus nuevos amigos están bajo el control de los jefes del crimen local.','2023','/images/pelicula-1697979342116.jpg','https://www.youtube.com/embed/E5wgTo4roJU?si=uIKJfSfmMcdCo4G8',5),(16,'La Monja','1956, Francia. Un sacerdote es asesinado, un mal se extiende y la hermana Irene se enfrenta de nuevo a la fuerza malévola de Valak, la monja demonio.','2023','/images/pelicula-1697979490357.jpg','https://www.youtube.com/embed/dHPzbu3jjOs',6),(17,'Kraken y Sirenas','La escuela se vuelve aún más incómoda cuando la tímida adolescente Ruby Gillman descubre que desciende de la reina de los krakens. Sin embargo, no sabe que las sirenas pretenden arrebatarles la autoridad de los océanos y ella es la clave del plan.','2023','/images/krakenysirenas.jpg','https://www.youtube.com/embed/9njwwO5eXnA?si=oX7FNgeOJHmzRrgE',7),(18,'La Patrulla Canina: La superpelícula','Con el destino de Ciudad Aventura al filo del abismo, los Poderosos Cachorros tendrán que detener a los supervillanos antes de que sea demasiado tarde, y Skye descubrirá que hasta la más pequeña del equipo puede ser la que determine el resultado.','2023','/images/patrullacanina.jpg','https://www.youtube.com/embed/-RfwjPfquUg?si=UGsQkXPVGJIPCqpj',7),(19,'Háblame','La solitaria adolescente Mia se engancha a la emoción de invocar espíritus utilizando una mano embalsamada, pero cuando se enfrenta a un alma que dice ser su madre muerta, desata una plaga de fuerzas sobrenaturales y se debate entre decidir en quién puede confiar: en los vivos o en los muertos.','2023','/images/hablame.jpg','https://www.youtube.com/embed/Jyd4ga_6MTM?si=someS0and5H4zWWM',6),(20,'La sirenita','Ariel es una joven y soñadora sirena, hija del Rey Tritón, que está cansada de su vida como princesa bajo el mar. Su mayor deseo es abandonar el fondo marino y tener una vida normal y apacible en la superficie. La bruja Úrsula descubre su anhelo y, por eso, a cambio de su preciosa voz le ofrece un cuerpo totalmente humano. Ariel acepta, movida por su pasión por conocer el mundo terrestre y porque está enamorada de un apuesto príncipe humano. Pero las cosas no serán fáciles para Ariel, ya que la bruja Úrsula esconde oscuras intenciones.','2023','/images/lasirenita.jpg','https://www.youtube.com/embed/8LECfkm4fJA?si=GE57seRInUsEEJH1',4),(21,'No se aceptan devoluciones','Valentín, un tipo mujeriego, soltero y egoísta, de repente, tiene que hacerse cargo de una hija a la que no conocía, fruto de una aventura ocasional. Decidido a devolverle la niña a su madre, emprende un viaje con ella a Los Ángeles, pero la convivencia con la niña acaba transformándolo en lo más íntimo','2013','/images/noseaceotandevoluciones.jpg','https://www.youtube.com/embed/Ua5qcs7RHiY?si=WmsUcPLJJ5l_Zb3H',3),(22,'El sonido de la libertad','Narra la historia de Tim Ballard, un ex Agente de Seguridad Nacional de Estados Unidos que dejó su trabajo para dedicar su vida, sumergiéndose en el submundo del tráfico de personas a lo largo de Latinoamérica, a intentar salvar las vidas de cientos de niños.','2023','/images/elsonidodelalibertad.jpg','https://www.youtube.com/embed/H82uvLvszQ0?si=w7Wo5CKZV-LPublk',5),(23,'El Justiciero 3','Desde que renunció a su vida como asesino del gobierno, Robert McCall ha luchado para reconciliarse con las cosas horribles que ha hecho en el pasado y encuentra un extraño consuelo en hacer justicia en nombre de los oprimidos. Mientras se encuentra en su casa en el sur de Italia, descubre que sus nuevos amigos están bajo el control de los jefes del crimen local. A medida que los acontecimientos comienzan a complicarse, McCall entiende lo que tiene que hacer: convertirse en el protector de sus amigos enfrentándose a la mafia.','2023','/images/eljusticiero.jpg','https://www.youtube.com/embed/_-EkaAXbk_w?si=mc5H_kyKS6NSqtqi',5),(24,'Pinocho','Versión en acción real del aclamado cuento sobre una marioneta que se embarca en una trepidante aventura para convertirse en un niño de verdad. La historia también presenta a otros personajes, como Gepetto, el carpintero que fabrica a Pinocho y lo trata como a su propio hijo; Pepito Grillo, que hace las veces de guía y “conciencia” de Pinocho; el Hada Azul; el Honrado Juan; la gaviota Sofía, y el cochero.','2023','/images/pinocho.jpg','https://www.youtube.com/embed/TITv1TNi5mI?si=u_6nX3W89CZwPmJl',4),(25,'Avatar: El Camino del Agua','Versión en acción real del aclamado cuento sobre una marioneta que se embarca en una trepidante aventura para convertirse en un niño de verdad. La historia también presenta a otros personajes, como Gepetto, el carpintero que fabrica a Pinocho y lo trata como a su propio hijo; Pepito Grillo, que hace las veces de guía y “conciencia” de Pinocho; el Hada Azul; el Honrado Juan; la gaviota Sofía, y el cochero.','2022','/images/avatarelcaminodelagua.jpg','https://www.youtube.com/embed/u0hxjdWG84k?si=poWg0BfYof9X41BF',4),(26,'¿Y dónde están las rubias?','Dos ambiciosos -pero con poca fortuna- agentes del FBI de color (Shawn y Marlon Wayans) se hacen pasar por mujeres, novatas en la alta sociedad, en el exclusivo complejo Hamptons para investigar un círculo de secuestros. Pero mientras preparan su actuación en el mayor acontecimiento social del año se encuentran que irrumpir en la alta sociedad es mucho más duro de lo que parecía.','2004','/images/dondeestanlasrubias.jpg','https://www.youtube.com/embed/aeVkbNka9HM?si=6pnW__I9S2_0SAP3',3),(27,'El Angel','Debido a su apariencia angelical, la prensa llama a Carlitos El ángel de la muerte. Llama la atención por su belleza, y se convierte en una celebridad de la noche a la mañana. En total se cree que cometió más de cuarenta robos y once asesinatos. Hoy, después de más de cuarenta y cinco años en la cárcel, Carlos Robledo Puch es el preso que más tiempo lleva en prisión en la historia de Argentina.','2018','/images/elangel.jpg','https://www.youtube.com/embed/8xC09nRwvEs?si=tR8fsqufCOJkfKQr',2),(28,'Bohemian Rhapsody','Freddie Mercury desafía los estereotipos y se convierte en uno de los vocalistas más reconocidos de la música mundial. Después de dejar la banda Queen para seguir una carrera como solista, Mercury se reúne con la banda para dar una de las mejores actuaciones en la historia del rock and roll.','2018','/images/bohemianrhapsody.jpg','https://www.youtube.com/embed/LTAIlPsMOs4?si=sKtBbchaCLgAubn6',2),(29,'Son Como Niños','Cinco amigos vuelven a verse después de treinta años para asistir al funeral de su entrenador de baloncesto de la infancia. Con sus esposas e hijos a cuestas, deciden pasar el fin de semana del 4 de julio en una casa cerca de un lago, en la que muchos años atrás habían celebrado la conquista de un campeonato. Curiosamente, esos días de convivencia les harán comprender que, a pesar de que ya son personas adultas, en realidad no han crecido.','2010','/images/soncomoniños.jpg','https://www.youtube.com/embed/yMEDiKD7cyE?si=-CNAoCMwZVnf-h4N',3),(30,'La teoría del todo','La película gira en torno a la vida de Stephen Hawking, el importante teórico y divulgador científico que cambió la historia de la ciencia y la tecnología moderna para siempre. La película se centrará en la relación que mantuvo el británico con Jane Wilde, su primera mujer, con quien contrajo matrimonio después de que le diagnosticaran una enfermedad por la que no le quedaban más de dos años de vida.','2014','/images/lateoriadeltodo.jpg','https://www.youtube.com/embed/aHW4pleEVJY?si=eIfTeAJyiuU7oaV5',2),(31,'Criminales en el mar','Unos recién casados estadounidenses que visitan Europa en su luna de miel, quedan atrapados en el misterio de un asesinato después de presenciar un crimen.','2023','/images/criminalesenelmar.jpg','https://www.youtube.com/embed/R8HZeYfJnNU?si=pRpGUkl9gcMfPKkc',3),(32,'Rubia','Basada en el bestseller de la cinco veces finalista al Premio Pulitzer, Joyce Carol Oates, BLONDE es la historia personal audazmente reinventada de la sex symbol más famosa del mundo, Marilyn Monroe. La película es un retrato ficticio de la modelo, actriz y cantante durante los años 50 y 60, contada a través de la mirada moderna de la cultura de las celebridades.','2022','/images/rubia.jpg','https://www.youtube.com/embed/4oPRYJePoKk?si=jNK0jPpjOhVUu7CR',2),(33,'Las Nadadoras','Una historia del viaje milagroso realizado por las hermanas nadadoras Yusra y Sarah Mardini que huyeron como refugiadas de la Siria devastada por la guerra para vivir una nueva vida en Europa y la oportunidad de competir en los Juegos Olímpicos de Río de 2016.','2022','/images/lasnadadoras.jpg','https://www.youtube.com/embed/B5aR3i3Uh0E?si=-LNGZBtmkhVld-Lp',1),(34,'Sin novedad en el frente','Las aterradoras experiencias y la angustia de un joven soldado alemán en el frente occidental durante la Primera Guerra Mundial.','2022','/images/sinovedadesalfrente.jpg','https://www.youtube.com/embed/EBk1lXQ7rcY?si=P142hifNfuuGxw-u',1),(35,'Madame Curie','Cuenta la historia de la ganadora del Premio Nobel Marie Curie y sus extraordinarios descubrimientos científicos, a través del prisma de su matrimonio con su esposo Pierre, y los efectos sísmicos y transformadores que su descubrimiento del radio tuvo en el siglo XX.','2020','/images/madamecurie.jpg','https://www.youtube.com/embed/l0TMezN5etQ?si=QvBSYn-CqEFWDJ7k',1);
/*!40000 ALTER TABLE `peliculas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-25  1:09:06
