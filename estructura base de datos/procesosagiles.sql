-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 31-05-2019 a las 01:49:33
-- Versión del servidor: 5.7.25
-- Versión de PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `music1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--
CREATE TABLE `genero` (
  `generoId` int(11) NOT NULL,
  `nombreGenero` varchar(150) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `album`
--

INSERT INTO `genero`(`generoId`,`nombreGenero`) VALUES
(1,'pop'),
(2,'Rap'),
(3,'Romantica'),
(4,'Cumbia'),
(5,'Reggaeton'),
(6,'Balada'),
(7,'Rock'),
(8,'Nacional');

--
-- Estructura de tabla para la tabla `album`
--

CREATE TABLE `album` (
  `idAlbum` int(11) NOT NULL,
  `nombreAlb` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `genero` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `idArtista` int(11) NOT NULL,
  `generoId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `album`
--

INSERT INTO `album` (`idAlbum`, `nombreAlb`, `genero`, `idArtista`, `generoID`) VALUES
(1,'El Dorado','pop', 1, 1),
(2,'¿Dónde están los ladrones?','pop', 1, 1),
(3,'sinfonica','pop', 7, 1),
(4,'locuras','pop', 7, 1),
(5,'la luz del decierto ','pop', 6, 1),
(6,'minita ','pop', 6, 1),
(7,'durmiendo bajo la luna','pop', 4, 1),
(8,'durmiendo bajo la luna','pop', 4, 1),
(9,'la china (álbum de queen)','pop', 5, 1),
(10,'fer100 (álbum de  queen)','pop', 5, 1),
(11,'remedio pa tu dolor','pop', 8, 1),
(12,'situacion','pop', 8, 1),
(13,'si tu me llamas','pop', 9, 4),
(14,'guarda tus secretos','pop', 9, 4),
(15,'es imposible','pop', 10, 2),
(16,'yela','pop', 10, 2),
(17,'la suerte','pop', 11, 1),
(18,'no es justo','pop', 11, 1),
(19,'lo note','pop', 12, 6),
(20,'lloviendote','pop', 12, 6),
(21,'una y otra ves','pop', 13, 7),
(22,'cuando empiesas a bailar','pop', 13, 7),
(23,'bebesita','pop', 14, 7),
(24,'es un secreto','pop', 14, 7),
(25,'que nadie se entere','pop', 15, 7),
(26,'a escondidas','pop', 15, 7),
(27,'es el destino','pop', 16, 8),
(28,'me va y me viene','pop', 16, 8),
(29,'intensa','pop', 17, 7),
(30,'vientos','pop', 17, 7),
(31,'no siento','pop', 18, 3),
(32,'pa atras','pop', 18, 3),
(33,'sale suave','pop', 19, 4),
(34,'dame un beso demas','pop', 19, 4),
(35,'duro y suave','pop', 20, 8),
(36,'indesisa','pop', 20, 8),
(37,'el pato se sella','pop', 21, 3),
(38,'yo soy tu estrella','pop', 21, 3),
(39,'no me acuerdo','pop', 22, 8),
(40,'no paso','pop', 22, 8),
(41,'te monte los cuernos','pop', 23, 8),
(42,'como duele','pop', 23, 8),
(43,'a decir que si','pop', 24, 7),
(44,'estaba bonita','pop', 24, 7),
(45,'loco por la cinturita','pop', 25, 1),
(46,'reina afrodita','pop', 25, 1),
(47,'amor divino','pop', 26, 1),
(48,'pronto volver','pop', 26, 1),
(49,'aqui clavado','pop', 27, 7),
(50,'avandonado','pop', 27, 7),
(51,'bebiendo tequila','pop', 28, 5),
(52,'abre el corazon','pop', 28, 5),
(53,'estoy clavado','pop', 29, 3),
(54,'estoy herido','pop', 29, 3),
(55,'desesperado','pop', 30, 3),
(56,'duele el amor','pop', 30, 3),
(57,'aunque ya no volveras','pop', 31, 5),
(58,'recibiendo','pop', 31, 5),
(59,'siento tu cuerpo','pop', 32, 3),
(60,'mentirosa','pop', 32, 3),
(61,'vuelve','pop', 33, 8),
(62,'rendirse jamas','pop', 33, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artista`
--

CREATE TABLE `artista` (
  `idArtista` int(11) NOT NULL,
  `nombreArt` varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  `imagenArt` varchar(300) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `artista`
--

INSERT INTO `artista` (`idArtista`, `nombreArt`, `imagenArt`) VALUES
(1,'Shakira','/imagenes/shakira.jpg'),
(2,'Enrique Iglesias','/imagenes/enriqueI.jpg'),
(3,'fey','/imagenes/fey1.jpg'),
(4,'Michael Jackson','/imagenes/michael.png'),
(5,'queen','/imagenes/queen.jpg'),
(6,'heroes del siencio','/imagenes/heroes.jpg'),
(7,'evanescence','/imagenes/evanescence.jpg'),

-- integracion
(8,'Alejandra Guzman','/imagenes/alejandra.jpg'),
(9,'Angeles Azules','/imagenes/angelesAzules.jpg'),
(10,'Beret','/imagenes/beret.jpg'),
(11,'Bruno Mars','/imagenes/brunomars.jpg'),
(12,'Daryl Hall & John Oates','/imagenes/daryl.jpg'),

(13,'Duncan Dhu','/imagenes/duncan.jpg'),
(14,'Enanitos Verdes','/imagenes/enanitosverdes.jpg'),
(15,'Gloria Trevi','/imagenes/gloriatrevi.jpg'),
(16,'Grupo Bolivia','/imagenes/grupobolivia.jpg'),
(17,'Guns N Roses','/imagenes/gun.jpg'),

(18,'Ha Ash','/imagenes/haash.jpg'),
(19,'Jambao','/imagenes/jambao.jpg'),
(20,'Kalamarca','/imagenes/kalamarca.jpg'),
(21,'Kalimba','/imagenes/kalimba.jpg'),
(22,'Kjarkas','/imagenes/kjarkas.jpg'),

(23,'LLajtaymanta','/imagenes/llajtaymanta.jpg'),
(24,'Metallica','/imagenes/metalica.jpg'),
(25,'Miranda','/imagenes/miranda.jpg'),
(26,'Morat','/imagenes/morat.jpg'),
(27,'Octavia','/imagenes/octavia.jpg'),

(28,'Piso 21','/imagenes/piso21.jpg'),
(29,'Reik','/imagenes/reik.jpg'),
(30,'Rio roma','/imagenes/rioroma.jpg'),
(31,'Sebastian yatra','/imagenes/sebastianyatra.jpg'),
(32,'Sin bandera','/imagenes/sinbandera.jpg'),
(33,'Tupay','/imagenes/tupay.jpg');


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cancion`
--

CREATE TABLE `cancion` (
  `idCancion` int(11) NOT NULL,
  `titulo` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `imgCancion` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `audio` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `idAlbum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cancion`
--

INSERT INTO `cancion` (`idCancion`, `titulo`, `imgCancion`, `audio`, `idAlbum`) VALUES
(1,'Me enamore','/imagenes/shakira-eldorado.jpg','/audio/Shakira - Me Enamore.mp3', 1),
(2,'Chantaje','/imagenes/shakira-eldorado.jpg','/audio/Chantaje-Shakira Ft Maluma.mp3', 1),
(3,'La Bicicleta','/imagenes/shakira-eldorado.jpg','/audio/La Bicicleta - Carlos Vives FT Shakira.mp3', 1),
(4,'La chispa adecuada)','/imagenes/heroes.jpg','/audio/Héroes del Silencio - La chispa adecuada.mp3', 5),
(5,'La sirena varada)','/imagenes/heroes.jpg','/audio/Héroes del Silencio - La sirena varada.mp3', 5),
(6,'Heroe de Leyenda','/imagenes/heroes.jpg','/audio/Heroe de Leyenda Heroes del silencio.mp3', 6),
(7,'Flor del loto)','/imagenes/heroes.jpg','/audio/Héroes del Silencio - Flor del loto.mp3', 6),
(8,'Maldito duende)','/imagenes/heroes.jpg','/audio/Héroes del Silencio - Maldito duende.mp3', 5),
(9,'ring Me To Life (Official Music Video)','/imagenes/evanescence.jpg','/audio/Evanescence - Bring Me To Life (Official Music Video).mp3', 3),
(10,'Evanescence - Everybodys Fool','/imagenes/evanescence.jpg','/audio/Evanescence - Everybodys Fool.mp3', 3),
(11,'Evanescence - Going Under','/imagenes/evanescence.jpg','/audio/Evanescence - Going Under (Official Music Video).mp3', 4),
(12,'Evanescence - My Immortal','/imagenes/evanescence.jpg','/audio/Evanescence - My Immortal (Official Music Video).mp3', 4),
(13,'haunted- Evanescence','/imagenes/evanescence.jpg','/audio/haunted- Evanescence.mp3', 3),
(14,'Beat It (Official Video)','/imagenes/michael.png','/audio/Michael Jackson - Beat It (Official Video).mp3', 7),
(15,'Billie Jean (Official Music Video)','/imagenes/michael.png','/audio/Michael Jackson - Billie Jean (Official Music Video).mp3', 8),
(16,'Black Or White (Shortened Version)','/imagenes/michael.png','/audio/Michael Jackson - Black Or White (Shortened Version).mp3', 7),
(17,'Thriller (Official Music Video)','/imagenes/michael.png','/audio/Michael Jackson - Thriller (Official Music Video).mp3', 8),
(18,'Michael Jackson - You Are Not Alone (Official Video)','/imagenes/michael.png','/audio/Michael Jackson - You Are Not Alone (Official Video).mp3', 7),
(19,'Las 5 mejores canciones de Queen','/imagenes/queen.jpg','/audio/Las 5 mejores canciones de Queen.mp3', 9),
(20,'Queen  Somebody To Love','/imagenes/queen.jpg','/audio/Queen  Somebody To Love - HD Live - 1981 Montreal - YouTube.mp3', 10),
(21,'Love of my life & Is this the world we created','/imagenes/queen.jpg','/audio/Queen - Love of my life & Is this the world we created (Live at Wembley).mp3', 9),
(22,'The Show Must Go On - (Lyrics_ Subtitulado Español)','/imagenes/queen.jpg','/audio/Queen - The Show Must Go On - (Lyrics_ Subtitulado Español).mp3', 10),
(23,'Radio Ga Ga (Live Aid)','/imagenes/queen.jpg','/audio/Radio Ga Ga (Live Aid).mp3', 9);

-- injeccion 
INSERT INTO `cancion` (`idCancion`, `titulo`, `imgCancion`, `audio`, `idAlbum`) VALUES
(24,'Mas Buena','/imagenes/alejandra.jpg','/audio/alejandra & Alejandra Guzman - Mas Buena.mp3',8),
(25,'Me Siento Tan Sola','/imagenes/alejandra.jpg','/audio/alejandra alejandra, Me Siento Tan Sola.mp3',8),
(26,'Lo Aprendí de Ti','/imagenes/alejandra.jpg','/audio/Alejandra feat ha ash - Lo Aprendí de Ti .mp3',8),
(27,'Mala Hierba ','/imagenes/alejandra.jpg','/audio/Alejandra Guzman  Mala Hierba (HD).mp3',8),
(28,'Mirala Miralo','/imagenes/alejandra.jpg','/audio/Alejandra Guzman  Mirala Miralo (HD).mp3',8),
(29,'TEN CUIDADO CON EL CORAZON','/imagenes/alejandra.jpg','/audio/ALEJANDRA GUZMAN  TEN CUIDADO CON EL CORAZON.mp3',8),
(30,'Cariñito Corazon','/imagenes/alejandra.jpg','/audio/Alejandra Guzman - Cariñito Corazon.mp3',8),
(31,'Cuando Un Hombre Te Enamora','/imagenes/alejandra.jpg','/audio/Alejandra Guzman - Cuando Un Hombre Te Enamora.mp3',8),
(32,'Dia De Suerte','/imagenes/alejandra.jpg','/audio/Alejandra Guzmán - Dia De Suerte.mp3',8),
(33,'Eternamente Bella','/imagenes/alejandra.jpg','/audio/Alejandra Guzman - Eternamente Bella.mp3',8);



INSERT INTO `cancion` (`idCancion`, `titulo`, `imgCancion`, `audio`, `idAlbum`) VALUES
(34,'Hacer el amor con otro','/imagenes/alejandra.jpg','/audio/Alejandra Guzman - Hacer el amor con otro.mp3',8),
(35,'Mentiras Piadosas','/imagenes/alejandra.jpg','/audio/Alejandra Guzman - Mentiras Piadosas.mp3',8),
(36,'Mi Enfermedad','/imagenes/alejandra.jpg','/audio/Alejandra Guzmán - Mi Enfermedad (Live At The Roxy).mp3',8),
(37,'Mi Peor Error','/imagenes/alejandra.jpg','/audio/Alejandra Guzmán - Mi Peor Error (Primera Fila) (En Vivo).mp3',8),
(38,'Soy Así.mp3','/imagenes/alejandra.jpg','/audio/Alejandra Guzmán - Soy Así.mp3',8),
(39,'Todos Me Miran','/imagenes/alejandra.jpg','/audio/Alejandra Guzmán - Todos Me Miran.mp3',8),
(40,'Yo Te Esperaba','/imagenes/alejandra.jpg','/audio/Alejandra Guzmán - Yo Te Esperaba (En Vivo).mp3',8),
(41,'Beatriz Luengo Quítatelo','/imagenes/alejandra.jpg','/audio/Alejandra Guzmán Beatriz Luengo - Quítatelo.mp3',8),
(42,'Bye Mama','/imagenes/alejandra.jpg','/audio/Alejandra Guzmán Bye Mama (Debut).mp3',8),
(43,'Volverte a Amar ','/imagenes/alejandra.jpg','/audio/Alejandra Guzmán Camila - Volverte a Amar .mp3',8),
(44,'Yo No Soy de Nadie','/imagenes/alejandra.jpg','/audio/Alejandra Guzmán Fonseca - Yo No Soy de Nadie (En Vivo).mp3',8),
(45,'Libre','/imagenes/alejandra.jpg','/audio/Alejandra guzman Libre.mp3',8),
(46,'Frida Parte','/imagenes/alejandra.jpg','/audio/Alejandra Guzman y Frida Parte 1.mp3',8),
(47,'Ándale','/imagenes/alejandra.jpg','/audio/Ándale.mp3',8);

INSERT INTO `cancion` (`idCancion`, `titulo`, `imgCancion`, `audio`, `idAlbum`) VALUES
(48,'Acompañame','/imagenes/alejandra.jpg','/audio/Enrique Guzman y Alejandra Guzman-Acompañame.mp3',8),
(49,'Llama por favor','/imagenes/alejandra.jpg','/audio/Llama por favor   Alejandra Guzman letra.mp3',8),
(50,'Para mi','/imagenes/alejandra.jpg','/audio/Para mi - Alejandra Guzmán con letra.mp3',8),
(51,'Tan Sólo Tú','/imagenes/alejandra.jpg','/audio/Tan Sólo Tú  Alejandra  Guzmán.mp3',8),
(52,'Yo Te Esperaba','/imagenes/alejandra.jpg','/audio/Yo Te Esperaba   Alejandra Guzman.mp3',8),
(53,'El liston de tu pelo','/imagenes/angelesAzules.jpg','/audio/Angeles azules  El liston de tu pelo.mp3',9),
(54,'liston de tu pelo','/imagenes/angelesAzules.jpg','/audio/angeles azules  liston de tu pelo.mp3',9),
(55,'Angeles Azules en Tijuana','/imagenes/angelesAzules.jpg','/audio/Angeles Azules en Tijuana.mp3',9),
(56,'ANGELES AZULES EN VIVO','/imagenes/angelesAzules.jpg','/audio/ANGELES AZULES EN VIVO.mp3',9),
(57,'ANGELES AZULES','/imagenes/angelesAzules.jpg','/audio/ANGELES AZULES.mp3',9),
(58,'La Cumbia Del Pichoncito','/imagenes/angelesAzules.jpg','/audio/La Cumbia Del Pichoncito.mp3',9),
(59,'La Cumbia Picosa','/imagenes/angelesAzules.jpg','/audio/La Cumbia Picosa.mp3',9),
(60,'Ay Amor La Banda Night Show.mp3','/imagenes/angelesAzules.jpg','/audio/Los Angeles Azules  - Ay Amor La Banda Night Show.mp3',9),
(61,'En vivo en el Club Del Lobo.mp3','/imagenes/angelesAzules.jpg','/audio/Los Ángeles Azules - En vivo en el Club Del Lobo.mp3',9),
(62,'acapella.mp3','/imagenes/angelesAzules.jpg','/audio/los angeles azules acapella.mp3',9),
(63,'AUNQUE NO ESTES CONMIGO .mp3','/imagenes/angelesAzules.jpg','/audio/los angeles azules AUNQUE NO ESTES CONMIGO .mp3',9),
(64,'Como te voy a olvidar.mp3','/imagenes/angelesAzules.jpg','/audio/Los Angeles azules Como te voy a olvidar.mp3',9),
(65,'El listón de tu pelo.mp3','/imagenes/angelesAzules.jpg','/audio/Los Angeles azules El listón de tu pelo.mp3',9),
(66,'en el Pasaguero.mp3','/imagenes/angelesAzules.jpg','/audio/Los Angeles Azules en el Pasaguero.mp3',9),
(67,'en Kory 24 de Septiembre.mp3','/imagenes/angelesAzules.jpg','/audio/Los Angeles Azules en Kory 24 de Septiembre.mp3',9),
(68,'en pasaguero.mp3','/imagenes/angelesAzules.jpg','/audio/Los Angeles azules en pasaguero.mp3',9),
(69,'en RIMBO 5.mp3','/imagenes/angelesAzules.jpg','/audio/Los angeles azules en RIMBO 5.mp3',9),
(70,'LOS YAGUARU.mp3','/imagenes/angelesAzules.jpg','/audio/Los Angeles azules LOS YAGUARU.mp3',9),
(71,'Mi Cantar Hize LLorar.mp3','/imagenes/angelesAzules.jpg','/audio/Los Angeles azules Mi Cantar Hize LLorar.mp3',9),
(72,'Mi Niña Mujer.mp3','/imagenes/angelesAzules.jpg','/audio/Los Angeles azules Mi Niña Mujer.mp3',9),
(73,'Mis Sentimientos.mp3','/imagenes/angelesAzules.jpg','/audio/Los Angeles azules Mis Sentimientos.mp3',9),
(74,'Pero tu mirada.mp3','/imagenes/angelesAzules.jpg','/audio/Los Angeles azules Pero tu mirada.mp3',9),
(75,'tuitcallejero.mp3','/imagenes/angelesAzules.jpg','/audio/Los Angeles azules tuitcallejero.mp3',9),
(76,'Un Tecito.mp3','/imagenes/angelesAzules.jpg','/audio/Los Angeles azules Un Tecito.mp3',9),
(77,'Sin ti no se vivir - Angeles Azules.mp3','/imagenes/angelesAzules.jpg','/audio/Sin ti no se vivir - Angeles Azules.mp3',9),
(78,'Beret - Vuelve.mp3','/imagenes/beret.jpg','/audio/Beret - Vuelve.mp3',10);



INSERT INTO `cancion` (`idCancion`, `titulo`, `imgCancion`, `audio`, `idAlbum`) VALUES
(79,'BALA PERDIDA ','/imagenes/beret.jpg','/audio/BALA PERDIDA  BERET  LETRA.mp3',10),
(80,'Te Echo De Menos (LETRA).mp3','/imagenes/beret.jpg','/audio/Beret  - Te Echo De Menos (LETRA).mp3',10),
(81,'BLESS .mp3','/imagenes/beret.jpg','/audio/BERET - BLESS .mp3',10),
(82,'Ceniza (Letra).mp3','/imagenes/beret.jpg','/audio/Beret - Ceniza (Letra).mp3',10),
(83,'CÓDICE (LETRA).mp3','/imagenes/beret.jpg','/audio/BERET - CÓDICE (LETRA).mp3',10),
(84,'Corazón de piedra (Letra).mp3','/imagenes/beret.jpg','/audio/Beret - Corazón de piedra (Letra).mp3',10),
(85,'CUANDO ABRES LOS OJOS - LETRA.mp3','/imagenes/beret.jpg','/audio/BERET - CUANDO ABRES LOS OJOS - LETRA.mp3',10),
(86,'DIEZ MIL PORQUÉS.mp3','/imagenes/beret.jpg','/audio/BERET - DIEZ MIL PORQUÉS.mp3',10),
(87,'ESENCIAL.mp3','/imagenes/beret.jpg','/audio/BERET - ESENCIAL.mp3',10),
(88,'Llegará (Letra).mp3','/imagenes/beret.jpg','/audio/Beret - Llegará (Letra).mp3',10),
(89,'LO SIENTO','/imagenes/beret.jpg','/audio/BERET - LO SIENTO [VIDEOLYRICS OFICIAL_ LETRA].mp3',10),
(90,'OJALÁ ','/imagenes/beret.jpg','/audio/BERET - OJALÁ (LETRA).mp3',10),
(91,'PÁGINAS QUEMADAS','/imagenes/beret.jpg','/audio/BERET - PÁGINAS QUEMADAS - LETRA.mp3',10),
(92,'Son Solo Instantes.mp3','/imagenes/beret.jpg','/audio/Beret - Son Solo Instantes.mp3',10),
(93,'TAN SOLO VEN Y DIME.mp3','/imagenes/beret.jpg','/audio/BERET - TAN SOLO VEN Y DIME.mp3',10),
(94,'UN JUEVES A LAS CINCO.mp3','/imagenes/beret.jpg','/audio/BERET - UN JUEVES A LAS CINCO.mp3',10),
(95,'Beret Cóseme.mp3','/imagenes/beret.jpg','/audio/Beret Cóseme.mp3',10),
(96,'BERET Culpable','/imagenes/beret.jpg','/audio/BERET Culpable Manuel Turizo.mp3',10),
(97,'BERET Melendi','/imagenes/beret.jpg','/audio/BERET Melendi - Destino o Casualidad .mp3',10),
(98,'BERET Tal Vez.mp3','/imagenes/beret.jpg','/audio/BERET Paulo Londra - Tal Vez.mp3',10),
(99,'beretUn Año.mp3','/imagenes/beret.jpg','/audio/beret Reik - Un Año.mp3',10),
(100,'Devuélveme El Corazón.mp3','/imagenes/beret.jpg','/audio/beret Yatra - Devuélveme El Corazón.mp3',10),
(101,'Dime quien ama de verdad','/imagenes/beret.jpg','/audio/Dime quien ama de verdad - Beret (Letra).mp3',10),
(102,'Dime quien ama de verdad','/imagenes/beret.jpg','/audio/Dime quien ama de verdad-Beret .mp3',10),
(103,'Frío','/imagenes/beret.jpg','/audio/Frío - Beret (Letra).mp3',10),
(104,'Karen Méndez ','/imagenes/beret.jpg','/audio/Karen Méndez - Cóseme - Letra (Beret Cover).mp3',10),
(105,'Dices Que Te Vas','/imagenes/beret.jpg','/audio/Karol G, Anuel AA - Dices Que Te Vas.mp3',10),
(106,'Amor Genuino','/imagenes/beret.jpg','/audio/Ozuna - Amor Genuino BERET.mp3',10),
(107,'24K Magic ','/imagenes/brunomars.jpg','/audio/Bruno Mars - 24K Magic (Official Video).mp3',11),
(108,'Chunky from the Victorias','/imagenes/brunomars.jpg','/audio/Bruno Mars - Chunky from the Victorias .mp3',11),
(109,'Count on me lyrics','/imagenes/brunomars.jpg','/audio/Bruno Mars - Count on me lyrics.mp3',11),
(110,'Finesse Remix ','/imagenes/brunomars.jpg','/audio/Bruno Mars - Finesse Remix feat. Cardi B.mp3',11),
(111,'Gorilla ','/imagenes/brunomars.jpg','/audio/Bruno Mars - Gorilla (Official Video).mp3',11),
(112,'Grenade ','/imagenes/brunomars.jpg','/audio/Bruno Mars - Grenade [Official Video].mp3',11),
(113,'It Will Rain ','/imagenes/brunomars.jpg','/audio/Bruno Mars - It Will Rain (Official Video).mp3',11),
(114,'Just The Way You Are ','/imagenes/brunomars.jpg','/audio/Bruno Mars - Just The Way You Are [Official Video].mp3',11),
(115,'Liquor Store Blues','/imagenes/brunomars.jpg','/audio/Bruno Mars - Liquor Store Blues .mp3',11),
(116,'Locked Out Of Heaven ','/imagenes/brunomars.jpg','/audio/Bruno Mars - Locked Out Of Heaven (Official Video).mp3',11),
(117,'Marry You (Lyrics)','/imagenes/brunomars.jpg','/audio/Bruno Mars - Marry You (Lyrics) HD.mp3',11),
(118,'Runaway Baby ','/imagenes/brunomars.jpg','/audio/Bruno Mars - Runaway Baby (Official Audio Video) [HD].mp3',11),
(119,'Thats What I Like','/imagenes/brunomars.jpg','/audio/Bruno Mars - Thats What I Like (Official Video).mp3',11),
(120,'The Lazy Song ','/imagenes/brunomars.jpg','/audio/Bruno Mars - The Lazy Song (Official Video).mp3',11),
(121,'The Other Side ','/imagenes/brunomars.jpg','/audio/Bruno Mars - The Other Side (feat. Cee Lo Green & B.o.B) [Home Video].mp3',11),
(122,'Treasure ','/imagenes/brunomars.jpg','/audio/Bruno Mars - Treasure (Official Video).mp3',11),
(123,'Versace on the Floor','/imagenes/brunomars.jpg','/audio/Bruno Mars - Versace on the Floor (Official Video).mp3',11),
(124,'When  Was Your Man ','/imagenes/brunomars.jpg','/audio/Bruno Mars - When  Was Your Man (Official Video).mp3',11),
(125,'I Ask in the Live Lounge','/imagenes/brunomars.jpg','/audio/Bruno Mars covers Adeles All I Ask in the Live Lounge.mp3',11),
(126,'bruno mars rest of my life ','/imagenes/brunomars.jpg','/audio/bruno mars rest of my life (lyrics).mp3',11),
(127,'Please Me ','/imagenes/brunomars.jpg','/audio/Cardi B & Bruno Mars - Please Me (Lyrics).mp3',11),
(128,'Wake Up in The Sky','/imagenes/brunomars.jpg','/audio/Gucci Mane, Bruno Mars, Kodak Black - Wake Up in The Sky.mp3',11),
(129,'Uptown Funk ','/imagenes/brunomars.jpg','/audio/Mark Ronson - Uptown Funk (Official Video) ft. Bruno Mars.mp3',11),
(130,'Girls Like You f(Volume 2)','/imagenes/brunomars.jpg','/audio/Maroon 5 - Girls Like You ft. Cardi B (Volume 2).mp3',11),
(131,'Sugar','/imagenes/brunomars.jpg','/audio/Maroon 5 - Sugar.mp3',11),
(132,'Snoop Dogg & Wiz Khalifa','/imagenes/brunomars.jpg','/audio/Snoop Dogg & Wiz Khalifa - Young, Wild and Free ft. Bruno Mars.mp3',11),
(133,'Talking To The Moon','/imagenes/brunomars.jpg','/audio/Talking To The Moon   Bruno Mars Lyrics.mp3',11),
(134,'Billionaire','/imagenes/brunomars.jpg','/audio/Travie McCoy - Billionaire ft. Bruno Mars [OFFICIAL VIDEO].mp3',11),
(135,'  See You Again ','/imagenes/brunomars.jpg','/audio/Wiz Khalifa - See You Again ft. Charlie Puth  Furious 7 .mp3',11),
(136,'Nothings Gonna.mp3','/imagenes/daryl.jpg','/audio/Daryl Hall  Nothings Gonna.mp3',12),
(137,'Cant Go For That .mp3','/imagenes/daryl.jpg','/audio/Daryl Hall & John Oates -  Cant Go For That .mp3',12),
(138,'Kiss on my list .mp3','/imagenes/daryl.jpg','/audio/Daryl Hall & John Oates - Kiss on my list .mp3',12);

INSERT INTO `cancion` (`idCancion`, `titulo`, `imgCancion`, `audio`, `idAlbum`) VALUES
(139,'Maneater.mp3','/imagenes/daryl.jpg','/audio/Daryl Hall & John Oates - Maneater.mp3',12),
(140,'Out Of Touch.mp3','/imagenes/daryl.jpg','/audio/Daryl Hall & John Oates - Out Of Touch.mp3',12),
(141,'Say it Isnt So.mp3','/imagenes/daryl.jpg','/audio/Daryl Hall & John Oates - Say it Isnt So.mp3',12),
(142,'Baby Come Back.mp3','/imagenes/daryl.jpg','/audio/Daryl Hall Baby Come Back.mp3',12),
(143,'Broken Wings.mp3','/imagenes/daryl.jpg','/audio/Daryl Hall Broken Wings.mp3',12),
(144,'Dont You .mp3','/imagenes/daryl.jpg','/audio/Daryl Hall Dont You .mp3',12),
(145,'Down Under.mp3','/imagenes/daryl.jpg','/audio/Daryl Hall Down Under.mp3',12);



INSERT INTO `cancion` (`idCancion`, `titulo`, `imgCancion`, `audio`, `idAlbum`) VALUES
(146,'Fears - Head Over Heels.mp3','/imagenes/daryl.jpg','/audio/Daryl Hall Fears - Head Over Heels.mp3',12),
(147,'Idol - Rebel Yell.mp3','/imagenes/daryl.jpg','/audio/Daryl Hall Idol - Rebel Yell.mp3',12),
(148,'Jazz - Shattered Dreams .mp3','/imagenes/daryl.jpg','/audio/Daryl Hall Jazz - Shattered Dreams .mp3',12),
(149,'Girls Just Want To Have Fun.mp3','/imagenes/daryl.jpg','/audio/Daryl Hall Lauper - Girls Just Want To Have Fun.mp3',12),
(150,'League  Dont You Want Me.mp3','/imagenes/daryl.jpg','/audio/Daryl Hall League  Dont You Want Me.mp3',12),
(151,'Tears For Fears.mp3','/imagenes/daryl.jpg','/audio/Daryl Hall Rule The World - Tears For Fears.mp3',12),
(152,'Seagulls -  Ran.mp3','/imagenes/daryl.jpg','/audio/Daryl Hall Seagulls -  Ran.mp3',12),
(153,'All Night Fuji.mp3','/imagenes/daryl.jpg','/audio/Daryl Hall Self Control - All Night Fuji.mp3',12),
(154,'Sembello Maniac.mp3','/imagenes/daryl.jpg','/audio/Daryl Hall Sembello Maniac.mp3',12),
(155,'Spandau Ballet - True.mp3','/imagenes/daryl.jpg','/audio/Daryl Hall Spandau Ballet - True.mp3',12),
(156,'Survivor Burning Heart.mp3','/imagenes/daryl.jpg','/audio/Daryl Hall Survivor Burning Heart.mp3',12),
(157,'Talking in Your Sleep.mp3','/imagenes/daryl.jpg','/audio/Daryl Hall Talking in Your Sleep.mp3',12),
(158,'The Cars - Drive.mp3','/imagenes/daryl.jpg','/audio/Daryl Hall The Cars - Drive.mp3',12),
(159,'The Gang - Fresh.mp3','/imagenes/daryl.jpg','/audio/Daryl Hall The Gang - Fresh.mp3',12);

INSERT INTO `cancion` (`idCancion`, `titulo`, `imgCancion`, `audio`, `idAlbum`) VALUES
(160,'The Outfield - Your Love.mp3','/imagenes/daryl.jpg','/audio/Daryl Hall The Outfield - Your Love.mp3',12),
(161,'Thompson Twins - Hold.mp3','/imagenes/daryl.jpg','/audio/Daryl Hall Thompson Twins - Hold.mp3',12),
(162,'Toto - Hold The Line.mp3','/imagenes/daryl.jpg','/audio/Daryl Hall Toto - Hold The Line.mp3',12),
(163,'Toto - Rosanna.mp3','/imagenes/daryl.jpg','/audio/Daryl Hall Toto - Rosanna.mp3',12),
(164,'Work - Its a Mistake.mp3','/imagenes/duncan.jpg','/audio/Daryl Hall Work - Its a Mistake.mp3',13),
(165,'Young Turks .mp3','/imagenes/duncan.jpg','/audio/Daryl Hall Young Turks .mp3',12),
(166,'Soda Stereo - La Ciudad de la Furia - Conferencia de prensa .mp3','/imagenes/duncan.jpg','/audio/Duncan Dhu  Soda Stereo - La Ciudad de la Furia - Conferencia de prensa .mp3',13),
(167,'A tientas (Videoclip oficial).mp3','/imagenes/duncan.jpg','/audio/Duncan Dhu - A tientas (Videoclip oficial).mp3',13),
(168,'a un minuto de ti.mp3','/imagenes/duncan.jpg','/audio/Duncan Dhu - a un minuto de ti.mp3',13),
(169,'cien gaviotas.mp3','/imagenes/duncan.jpg','/audio/Duncan Dhu - cien gaviotas.mp3',13),
(170,'En Algún Lugar (Letra).mp3','/imagenes/duncan.jpg','/audio/Duncan Dhu - En Algún Lugar (Letra).mp3',13),
(171,'Afuera - Caifanes.mp3','/imagenes/duncan.jpg','/audio/Duncan Dhu Afuera - Caifanes.mp3',13),
(172,'Andres Calamaro - flaca.mp3','/imagenes/duncan.jpg','/audio/Duncan Dhu Andres Calamaro - flaca.mp3',13),
(173,'Eros Ramazzotti - La Cosa Mas Bella.mp3','/imagenes/duncan.jpg','/audio/Duncan Dhu Eros Ramazzotti - La Cosa Mas Bella.mp3',13),
(174,'Eros Ramazzotti - Otra Como Tu..mp3','/imagenes/duncan.jpg','/audio/Duncan Dhu Eros Ramazzotti - Otra Como Tu..mp3',13),
(175,'complices (original - audio HQ).mp3','/imagenes/duncan.jpg','/audio/Duncan Dhu es por ti - complices (original - audio HQ).mp3',13),
(176,'Prisioneros con letra.mp3','/imagenes/duncan.jpg','/audio/Duncan Dhu Estrechez  - Los Prisioneros con letra.mp3',13),
(177,'Entre dos tierras.mp3','/imagenes/duncan.jpg','/audio/Duncan Dhu Heroes del Silencio - Entre dos tierras.mp3',13),
(178,'Maldito duende.mp3','/imagenes/duncan.jpg','/audio/Duncan Dhu Heroes del Silencio - Maldito duende.mp3',13),
(179,'Te quiero .mp3','/imagenes/duncan.jpg','/audio/Duncan Dhu Hombres G - Te quiero .mp3',13),
(180,'HOMBRES G Devuelveme A Mi Chica.mp3','/imagenes/duncan.jpg','/audio/Duncan Dhu HOMBRES G Devuelveme A Mi Chica.mp3',13),
(181,'JARABE DE PALO - LA FLACA.mp3','/imagenes/duncan.jpg','/audio/Duncan Dhu JARABE DE PALO - LA FLACA.mp3',13),
(182,'La Oreja de Van Gogh - Rosas.mp3','/imagenes/duncan.jpg','/audio/Duncan Dhu La Oreja de Van Gogh - Rosas.mp3',13),
(183,'Lamento Boliviano-Enanitos','/imagenes/duncan.jpg','/audio/Duncan Dhu Lamento Boliviano-Enanitos Verdes-Con Letra.mp3',13),
(184,'los prisioneros','/imagenes/duncan.jpg','/audio/Duncan Dhu los prisioneros - tren al sur con letra.mp3',13),
(185,'Fiesta Pagana Diabulus In Opera','/imagenes/duncan.jpg','/audio/Duncan Dhu Mago de Oz - Fiesta Pagana Diabulus In Opera .mp3',13),
(186,'Me quedaré solo','/imagenes/duncan.jpg','/audio/Duncan Dhu Me quedaré solo.mp3',13),
(187,'Moenia - Ni Tu Ni Nadie.mp3','/imagenes/duncan.jpg','/audio/Duncan Dhu Moenia - Ni Tu Ni Nadie.mp3',13),
(188,'Persiana Americana .mp3','/imagenes/duncan.jpg','/audio/Duncan Dhu Persiana Americana .mp3',13),
(189,'Pienso en Ti','/imagenes/duncan.jpg','/audio/Duncan Dhu Pienso en Ti. Duncan Dhu.    Letra.mp3',13),
(190,'The Outfield','/imagenes/duncan.jpg','/audio/Duncan Dhu The Outfield - Your Love.mp3',13),
(191,'Vilma Palma e Vampiros','/imagenes/duncan.jpg','/audio/Duncan Dhu Vilma Palma e Vampiros - Bye By .mp3',13),
(192,'Vilma Palma e Vampiros','/imagenes/duncan.jpg','/audio/Duncan Dhu Vilma Palma e Vampiros - Mojada.mp3',13),
(193,'Zoe - Labios Rotos','/imagenes/duncan.jpg','/audio/Duncan Dhu Zoe - Labios Rotos .mp3',13),
(194,'Zoe - Soñe.mp3','/imagenes/duncan.jpg','/audio/Duncan Dhu Zoe - Soñe.mp3',13);

INSERT INTO `cancion` (`idCancion`, `titulo`, `imgCancion`, `audio`, `idAlbum`) VALUES
(195,'Enanitos Eros Ramazzotti','/imagenes/enanitosverdes.jpg','/audio/Enanitos Eros Ramazzotti - Otra Como Tu..mp3',14),
(196,'Enanitos Eterna Soledad','/imagenes/enanitosverdes.jpg','/audio/Enanitos Eterna Soledad (Enanitos Verdes).mp3',14),
(197,'Enanitos Gianluca Grignani','/imagenes/enanitosverdes.jpg','/audio/Enanitos Gianluca Grignani - Mi Historia Entre Tus Dedos.mp3',14),
(198,'Te quiero (con la letra).mp3','/imagenes/enanitosverdes.jpg','/audio/Enanitos Hombres G - Te quiero (con la letra).mp3',14),
(199,'Devuélveme a Mi Chica.mp3','/imagenes/enanitosverdes.jpg','/audio/Enanitos Hombres G, Enanitos Verdes - Devuélveme a Mi Chica.mp3',14),
(200,'Temblando (En Vivo).mp3','/imagenes/enanitosverdes.jpg','/audio/Enanitos Hombres G, Enanitos Verdes - Temblando (En Vivo).mp3',14),
(201,'Venezia (En Vivo).mp3','/imagenes/enanitosverdes.jpg','/audio/Enanitos Hombres G, Enanitos Verdes - Venezia (En Vivo).mp3',14),
(202,'amargo adios con letra.mp3','/imagenes/enanitosverdes.jpg','/audio/Enanitos Inspector-amargo adios con letra.mp3',14),
(203,'La Flaca.mp3','/imagenes/enanitosverdes.jpg','/audio/Enanitos Jarabe De Palo - La Flaca.mp3',14),
(204,'Caos','/imagenes/enanitosverdes.jpg','/audio/Enanitos La planta (la ramera) letra - Caos.mp3',14),
(205,'hombre en París.mp3','/imagenes/enanitosverdes.jpg','/audio/Enanitos Lobo-hombre en París.mp3',14),
(206,'Oye Mi Amor.mp3','/imagenes/enanitosverdes.jpg','/audio/Enanitos Maná - Oye Mi Amor.mp3',14),
(207,'Mariposa Traicionera','/imagenes/enanitosverdes.jpg','/audio/Enanitos Mariposa Traicionera (Letra).mp3',14),
(208,'Mi Primer Dia Sin Ti','/imagenes/enanitosverdes.jpg','/audio/Enanitos Mi Primer Dia Sin Ti - Enanitos Verdes.mp3',14),
(209,'Aún Sigo Cantando','/imagenes/enanitosverdes.jpg','/audio/ENANITOS VERDES _ Aún Sigo Cantando (con letra).mp3',14),
(210,'Amores lejanos.mp3','/imagenes/enanitosverdes.jpg','/audio/Enanitos Verdes -  Amores lejanos.mp3',14),
(211,'Igual que ayer.mp3','/imagenes/enanitosverdes.jpg','/audio/Enanitos Verdes - Igual que ayer.mp3',14),
(212,'La Muralla Verde','/imagenes/enanitosverdes.jpg','/audio/Enanitos Verdes - La Muralla Verde [Lyrics].mp3',14),
(213,'Tu cárcel. (Con la letra)....mp3','/imagenes/enanitosverdes.jpg','/audio/Enanitos Verdes - Tu cárcel. (Con la letra)....mp3',14),
(214,'La célula que explota.mp3','/imagenes/enanitosverdes.jpg','/audio/Enanitos Verdes Caifanes - La célula que explota.mp3',14),
(215,'viejas cartas letra','/imagenes/enanitosverdes.jpg','/audio/enanitos verdes tus viejas cartas letra.mp3',14),
(216,'Amigos.mp3','/imagenes/enanitosverdes.jpg','/audio/Enanitos Verdes- Amigos.mp3',14),
(217,'Lamento Boliviano','/imagenes/enanitosverdes.jpg','/audio/Lamento Boliviano-Enanitos Verdes-Con Letra.mp3',14),
(218,'Historia De Taxi  (Video).mp3','/imagenes/enanitosverdes.jpg','/audio/Los Enanitos Ricardo Arjona - Historia De Taxi  (Video).mp3',14),
(219,'Soda stereo-De musica Ligera (','/imagenes/enanitosverdes.jpg','/audio/Los Enanitos Soda stereo-De musica Ligera (original).mp3',14),
(220,'Verdes - Cada Vez Que Digo Adiós','/imagenes/enanitosverdes.jpg','/audio/Los Enanitos Verdes - Cada Vez Que Digo Adiós.mp3',14),
(221,'Y Ahora Te Vas','/imagenes/enanitosverdes.jpg','/audio/Los Enanitos Verdes - Y Ahora Te Vas.mp3',14),
(222,'Luz de dia','/imagenes/enanitosverdes.jpg','/audio/Luz de dia - Enanitos Verdes ( letra ).mp3',14),
(223,'Por el restos de tus dias','/imagenes/enanitosverdes.jpg','/audio/Por el restos de tus dias Enanitos Verdes.mp3',14),
(224,'Ábranse Perras.mp3','/imagenes/gloriatrevi.jpg','/audio/Gloria Trevi - Ábranse Perras.mp3',15),
(225,'Como Yo Te Amo.mp3','/imagenes/gloriatrevi.jpg','/audio/Gloria Trevi - Como Yo Te Amo.mp3',15),
(226,'El Favor De La Soledad.mp3','/imagenes/gloriatrevi.jpg','/audio/Gloria Trevi - El Favor De La Soledad.mp3',15),
(227,'Ellas Soy Yo.mp3','/imagenes/gloriatrevi.jpg','/audio/Gloria Trevi - Ellas Soy Yo.mp3',15),
(228,'Esa Hembra Es Mala ','/imagenes/gloriatrevi.jpg','/audio/Gloria Trevi - Esa Hembra Es Mala (DF Presenta).mp3',15),
(229,'Ese Hombre Es Malo ','/imagenes/gloriatrevi.jpg','/audio/Gloria Trevi - Ese Hombre Es Malo (En Vivo).mp3',15),
(230,'Habla Blah Blah ','/imagenes/gloriatrevi.jpg','/audio/Gloria Trevi - Habla Blah Blah ft. Shy Carter.mp3',15),
(231,'Me Lloras ft. Charly Black','/imagenes/gloriatrevi.jpg','/audio/Gloria Trevi - Me Lloras ft. Charly Black.mp3',15),
(232,'Mediterráneo','/imagenes/gloriatrevi.jpg','/audio/Gloria Trevi - Mediterráneo (Audio).mp3',15),
(233,'No Querías Lastimarme','/imagenes/gloriatrevi.jpg','/audio/Gloria Trevi - No Querías Lastimarme.mp3',15),
(234,'Pelo Suelto Medley','/imagenes/gloriatrevi.jpg','/audio/Gloria Trevi - Pelo Suelto Medley (En Vivo).mp3',15),
(235,'Pelo Suelto.mp3','/imagenes/gloriatrevi.jpg','/audio/Gloria Trevi - Pelo Suelto.mp3',15),
(236,'Que Me Duela.mp3','/imagenes/gloriatrevi.jpg','/audio/Gloria Trevi - Que Me Duela.mp3',15),
(237,'Rómpeme El Corazón.mp3','/imagenes/gloriatrevi.jpg','/audio/Gloria Trevi - Rómpeme El Corazón.mp3',15),
(238,'Todos Me Miran','/imagenes/gloriatrevi.jpg','/audio/Gloria Trevi - Todos Me Miran (Videoclip Oficial).mp3',15),
(239,'Tribu (Audio).mp3','/imagenes/gloriatrevi.jpg','/audio/Gloria Trevi - Tribu (Audio).mp3',15),
(240,'Vas A Recordarme.mp3','/imagenes/gloriatrevi.jpg','/audio/Gloria Trevi - Vas A Recordarme.mp3',15),
(241,'Vestida De Azúcar.mp3','/imagenes/gloriatrevi.jpg','/audio/Gloria Trevi - Vestida De Azúcar.mp3',15),
(242,'Yo Soy Su Vida.mp3','/imagenes/gloriatrevi.jpg','/audio/Gloria Trevi - Yo Soy Su Vida.mp3',15),
(243,'Yo Tengo Hoy (','/imagenes/gloriatrevi.jpg','/audio/Gloria Trevi - Yo Tengo Hoy (Audio).mp3',15),
(244,'Zapatos Viejos ','/imagenes/gloriatrevi.jpg','/audio/Gloria Trevi - Zapatos Viejos (Video Original).mp3',15),
(245,'Cuando Un Hombre Te Enamora.mp3','/imagenes/gloriatrevi.jpg','/audio/Gloria Trevi & Alejandra Guzmán - Cuando Un Hombre Te Enamora.mp3',15),
(246,'Más Buena (Official Video).mp3','/imagenes/gloriatrevi.jpg','/audio/Gloria Trevi & Alejandra Guzmán - Más Buena (Official Video).mp3',15),
(247,'Con Los Ojos Cerrados.mp3','/imagenes/gloriatrevi.jpg','/audio/Gloria Trevi Con Los Ojos Cerrados.mp3',15),
(248,'Dr Psiquiatra.mp3','/imagenes/gloriatrevi.jpg','/audio/Gloria Trevi Dr Psiquiatra.mp3',15),
(249,'EL RECUENTO','/imagenes/gloriatrevi.jpg','/audio/GLORIA TREVI EL RECUENTO DE LOS DAÑOS EN VIVO HD.mp3',15),
(250,'Karol G - Hijoep.mp3','/imagenes/gloriatrevi.jpg','/audio/Gloria Trevi Karol G - Hijoep.mp3',15),
(251,'Me Siento Tan Sola','/imagenes/gloriatrevi.jpg','/audio/Gloria Trevi Me Siento Tan Sola Festival de Viña .mp3',15),
(252,'ahora te sorprendes','/imagenes/gloriatrevi.jpg','/audio/Gloria Y ahora te sorprendes Gloria Trevi con letra.mp3',15),
(253,'Amame.mp3','/imagenes/grupobolivia.jpg','/audio/Grupo Bolivia - Amame.mp3',16),
(254,'Chaska Chasquita.mp3','/imagenes/grupobolivia.jpg','/audio/Grupo Bolivia - Chaska Chasquita.mp3',16),
(255,'Fue un error.mp3','/imagenes/grupobolivia.jpg','/audio/Grupo Bolivia - Fue un error.mp3',16),
(256,'Recuerdos Mix.mp3','/imagenes/grupobolivia.jpg','/audio/Grupo Bolivia - Recuerdos Mix.mp3',16),
(257,'recuerdos.mp3','/imagenes/grupobolivia.jpg','/audio/Grupo Bolivia - recuerdos.mp3',16),
(258,'Selección de huayños.mp3','/imagenes/grupobolivia.jpg','/audio/Grupo BOLIVIA - Selección de huayños.mp3',16),
(259,'en vano fue.mp3','/imagenes/grupobolivia.jpg','/audio/Grupo Bolivia ANTOLOGIA   en vano fue.mp3',16),
(260,'ALEJATE.mp3','/imagenes/grupobolivia.jpg','/audio/Grupo Bolivia ANTOLOGIA - ALEJATE.mp3',16),
(261,'Hoy Me iré.mp3','/imagenes/grupobolivia.jpg','/audio/Grupo Bolivia Antología - Hoy Me iré.mp3',16),
(262,'aquella noche  ','/imagenes/grupobolivia.jpg','/audio/Grupo Bolivia aquella noche  proyeccion.mp3',16),
(263,'Arbol de mi destino ','/imagenes/grupobolivia.jpg','/audio/Grupo Bolivia Arbol de mi destino kjarkas letra.mp3',16),
(264,'Ave de Cristal','/imagenes/grupobolivia.jpg','/audio/Grupo Bolivia Ave de Cristal  Los Kjarkas.mp3',16),
(265,'Como si no Supiera','/imagenes/grupobolivia.jpg','/audio/Grupo Bolivia Como si no Supiera - WILLIAM LUNA.mp3',16),
(266,'Duele','/imagenes/grupobolivia.jpg','/audio/Grupo Bolivia Duele - Los Kjarkas.mp3',16);

INSERT INTO `cancion` (`idCancion`, `titulo`, `imgCancion`, `audio`, `idAlbum`) VALUES
(267,'SE FELIZ.mp3','/imagenes/grupobolivia.jpg','/audio/Grupo Bolivia GRUPO FEMENINO BOLIVIA    SE FELIZ.mp3',16),
(268,'Amarte Siempre.mp3','/imagenes/grupobolivia.jpg','/audio/Grupo Bolivia kjarkas -  Amarte Siempre.mp3',16),
(269,'Cara Bonita (Official Video).mp3','/imagenes/grupobolivia.jpg','/audio/Grupo Bolivia Kjarkas - Cara Bonita (Official Video).mp3',16),
(270,'Munasquechay .mp3','/imagenes/grupobolivia.jpg','/audio/Grupo Bolivia Kjarkas - Munasquechay .mp3',16),
(271,'Tuna Papita .mp3','/imagenes/grupobolivia.jpg','/audio/Grupo Bolivia Kjarkas - Tuna Papita .mp3',16),
(272,'Yo No He Nacido Para Sufrir.mp3','/imagenes/grupobolivia.jpg','/audio/Grupo Bolivia Kjarkas - Yo No He Nacido Para Sufrir.mp3',16),
(273,'Vengo solterito.mp3','/imagenes/grupobolivia.jpg','/audio/Grupo Bolivia Los Apus - Vengo solterito.mp3',16),
(274,'Kullaguadas.mp3','/imagenes/grupobolivia.jpg','/audio/Grupo Bolivia Los Chevere Seleccion de Kullaguadas.mp3',16),
(275,'LAl final.mp3','/imagenes/grupobolivia.jpg','/audio/Grupo Bolivia LOS KJARKAS - Al final.mp3',16),
(276,'Llorando Se Fue.mp3','/imagenes/grupobolivia.jpg','/audio/Grupo Bolivia Los Kjarkas Llorando Se Fue.mp3',16),
(277,'Son tantas noches que no dormí.mp3','/imagenes/grupobolivia.jpg','/audio/Grupo Bolivia Son tantas noches que no dormí.mp3',16),
(278,'TODO ME HABLA DE TIKJARKAS HD.mp3','/imagenes/grupobolivia.jpg','/audio/Grupo Bolivia TODO ME HABLA DE TIKJARKAS HD.mp3',16),
(279,'Vida ya no es vida - Antologia.mp3','/imagenes/grupobolivia.jpg','/audio/Grupo Bolivia Vida ya no es vida - Antologia.mp3',16),
(280,'Se Fue.mp3','/imagenes/grupobolivia.jpg','/audio/Grupo Femenino Bolivia - Se Fue.mp3',16),
(281,'Te Prometo.mp3','/imagenes/grupobolivia.jpg','/audio/GRUPO FEMENINO BOLIVIA - Te Prometo.mp3',16),
(282,'Dont Cry .mp3','/imagenes/gun.jpg','/audio/Guns N Roses - Dont Cry .mp3',17),
(283,'Estranged .mp3','/imagenes/gun.jpg','/audio/Guns N Roses - Estranged .mp3',17),
(284,'Its So Easy.mp3','/imagenes/gun.jpg','/audio/Guns N Roses - Its So Easy.mp3',17),
(285,'Knockin On Heavens Door Lyrics.mp3','/imagenes/gun.jpg','/audio/Guns N Roses - Knockin On Heavens Door Lyrics.mp3',17),
(286,'Live And Let Die .mp3','/imagenes/gun.jpg','/audio/Guns N Roses - Live And Let Die .mp3',17);

INSERT INTO `cancion` (`idCancion`, `titulo`, `imgCancion`, `audio`, `idAlbum`) VALUES
(287,'November Rain.mp3','/imagenes/gun.jpg','/audio/Guns N Roses - November Rain.mp3',17),
(288,'Paradise City.mp3','/imagenes/gun.jpg','/audio/Guns N Roses - Paradise City.mp3',17),
(289,'Patience .mp3','/imagenes/gun.jpg','/audio/Guns N Roses - Patience .mp3',17),
(290,'Since I Dont Have You .mp3','/imagenes/gun.jpg','/audio/Guns N Roses - Since I Dont Have You .mp3',17),
(291,'Sweet Child O Mine.mp3','/imagenes/gun.jpg','/audio/Guns N Roses - Sweet Child O Mine.mp3',17),
(292,'Welcome To The Jungle .mp3','/imagenes/gun.jpg','/audio/Guns N Roses - Welcome To The Jungle .mp3',17),
(293,'Yesterdays.mp3','/imagenes/gun.jpg','/audio/Guns N Roses - Yesterdays.mp3',17),
(294,'You Could Be Mine.mp3','/imagenes/gun.jpg','/audio/Guns N Roses - You Could Be Mine.mp3',17),
(295,'Highway to Hell.mp3','/imagenes/gun.jpg','/audio/Guns N Roses AC_DC - Highway to Hell.mp3',17),
(296,'Thunderstruck.mp3','/imagenes/gun.jpg','/audio/Guns N Roses AC_DC - Thunderstruck.mp3',17),
(297,'Crazy .mp3','/imagenes/gun.jpg','/audio/Guns N Roses Aerosmith - Crazy .mp3',17),
(298,'I Dont Want to Miss a Thing.mp3','/imagenes/gun.jpg','/audio/Guns N Roses Aerosmith - I Dont Want to Miss a Thing.mp3',17),
(299,'Always.mp3','/imagenes/gun.jpg','/audio/Guns N Roses Bon Jovi - Always.mp3',17),
(300,'Its My Life.mp3','/imagenes/gun.jpg','/audio/Guns N Roses Bon Jovi - Its My Life.mp3',17),
(301,'Livin On A Prayer.mp3','/imagenes/gun.jpg','/audio/Guns N Roses Bon Jovi - Livin On A Prayer.mp3',17),
(302,'Back in Black Vocal Cover.mp3','/imagenes/gun.jpg','/audio/Guns N Roses Boncini - Back in Black Vocal Cover.mp3',17),
(303,'Civil War.mp3','/imagenes/gun.jpg','/audio/Guns N Roses Civil War.mp3',17),
(304,'Europe - The Final Countdown.mp3','/imagenes/gun.jpg','/audio/Guns N Roses Europe - The Final Countdown.mp3',17),
(305,'Metallica - Nothing Else Matters.mp3','/imagenes/gun.jpg','/audio/Guns N Roses Metallica - Nothing Else Matters.mp3',17),
(306,'Mr. Brownstone.mp3','/imagenes/gun.jpg','/audio/Guns N Roses Mr. Brownstone.mp3',17),
(307,'Nightrain.mp3','/imagenes/gun.jpg','/audio/Guns N Roses Nightrain.mp3',17),
(308,'Nirvana - Smells Like Teen Spirit.mp3','/imagenes/gun.jpg','/audio/Guns N Roses Nirvana - Smells Like Teen Spirit.mp3',17),
(309,'Pink Floyd - Another Brick In The Wall (HQ).mp3','/imagenes/gun.jpg','/audio/Guns N Roses Pink Floyd - Another Brick In The Wall (HQ).mp3',17),
(310,'Wind Of Change.mp3','/imagenes/gun.jpg','/audio/Guns N Roses Scorpions - Wind Of Change.mp3',17);

INSERT INTO `cancion` (`idCancion`, `titulo`, `imgCancion`, `audio`, `idAlbum`) VALUES
(311,'HA ASH Reik - Ya me enteré.mp3','/imagenes/haash.jpg','/audio/HA ASH Reik - Ya me enteré.mp3',18),
(312,'HA ASH Reik, Manuel Turizo - Aleluya.mp3','/imagenes/haash.jpg','/audio/HA ASH Reik, Manuel Turizo - Aleluya.mp3',18),
(313,'HA ASH Ricardo Arjona - Fuiste tú.mp3','/imagenes/haash.jpg','/audio/HA ASH Ricardo Arjona - Fuiste tú.mp3',18),
(314,'HA ASH Sebastián Yatra, Reik - Un Año.mp3','/imagenes/haash.jpg','/audio/HA ASH Sebastián Yatra, Reik - Un Año.mp3',18),
(315,'HA ASH Thalia - Equivocada.mp3','/imagenes/haash.jpg','/audio/HA ASH Thalia - Equivocada.mp3',18),
(316,'HA ASH Yuridia - Amigos No Por Favor.mp3','/imagenes/haash.jpg','/audio/HA ASH Yuridia - Amigos No Por Favor.mp3',18),
(317,'HA-ASH - 30 de Febrero FT Abraham.mp3','/imagenes/haash.jpg','/audio/HA-ASH - 30 de Febrero FT Abraham.mp3',18),
(318,'HA-ASH - Cómo Se Acabó.mp3','/imagenes/haash.jpg','/audio/HA-ASH - Cómo Se Acabó.mp3',18),
(319,'HA-ASH - Eso No Va a Suceder.mp3','/imagenes/haash.jpg','/audio/HA-ASH - Eso No Va a Suceder.mp3',18),
(320,'HA-ASH - Ex de Verdad .mp3','/imagenes/haash.jpg','/audio/HA-ASH - Ex de Verdad .mp3',18),
(321,'HA-ASH - Lo Aprendí de Ti .mp3','/imagenes/haash.jpg','/audio/HA-ASH - Lo Aprendí de Ti .mp3',18),
(322,'HA-ASH - No Pasa Nada .mp3','/imagenes/haash.jpg','/audio/HA-ASH - No Pasa Nada .mp3',18),
(323,'HA-ASH - No Te Puedo Enamorar.mp3','/imagenes/haash.jpg','/audio/HA-ASH - No Te Puedo Enamorar.mp3',18),
(324,'HA-ASH - Odio Amarte .mp3','/imagenes/haash.jpg','/audio/HA-ASH - Odio Amarte .mp3',18),
(325,'HA-ASH - Ojalá .mp3','/imagenes/haash.jpg','/audio/HA-ASH - Ojalá .mp3',18),
(326,'HA-ASH - Pedazos Del Corazón .mp3','/imagenes/haash.jpg','/audio/HA-ASH - Pedazos Del Corazón .mp3',18),
(327,'HA-ASH - Perdón, Perdón.mp3','/imagenes/haash.jpg','/audio/HA-ASH - Perdón, Perdón.mp3',18),
(328,'HA-ASH - Qué Hago Yo .mp3','/imagenes/haash.jpg','/audio/HA-ASH - Qué Hago Yo .mp3',18),
(329,'HA-ASH - Qué Me Faltó.mp3','/imagenes/haash.jpg','/audio/HA-ASH - Qué Me Faltó.mp3',18),
(330,'HA-ASH - Sé Que Te Vas ft. Matisse.mp3','/imagenes/haash.jpg','/audio/HA-ASH - Sé Que Te Vas ft. Matisse.mp3',18),
(331,'HA-ASH - Te Dejo En Libertad .mp3','/imagenes/haash.jpg','/audio/HA-ASH - Te Dejo En Libertad .mp3',18),
(332,'HA-ASH - Todo No Fue Suficiente.mp3','/imagenes/haash.jpg','/audio/HA-ASH - Todo No Fue Suficiente.mp3',18),
(333,'HA-ASH - Un Beso Tuyo.mp3','/imagenes/haash.jpg','/audio/HA-ASH - Un Beso Tuyo.mp3',18),
(334,'HA-ASH Como fui a enamorarme.mp3','/imagenes/haash.jpg','/audio/HA-ASH Como fui a enamorarme.mp3',18),
(335,'HA-ASH Prince Royce - 100 Años.mp3','/imagenes/haash.jpg','/audio/HA-ASH Prince Royce - 100 Años.mp3',18),
(336,'HA-ASH VAMOS A LLAMARLO AMOR.mp3','/imagenes/haash.jpg','/audio/HA-ASH VAMOS A LLAMARLO AMOR.mp3',18),
(337,'HASTA QUE LLEGASTE TU - HA ASH.mp3','/imagenes/haash.jpg','/audio/HASTA QUE LLEGASTE TU - HA ASH.mp3',18),
(338,'Melendi - Destino o Casualidad ft. Ha_Ash.mp3','/imagenes/haash.jpg','/audio/Melendi - Destino o Casualidad ft. Ha_Ash.mp3',18),
(339,'Quédate Lejos - HA ASH  y  Maluma.mp3','/imagenes/haash.jpg','/audio/Quédate Lejos - HA ASH  y  Maluma.mp3',18),
(340,'Y Qué Pasó .mp3','/imagenes/jambao.jpg','/audio/Jambao  - Y Qué Pasó .mp3',19),
(341,'la tengo que olvidar.mp3','/imagenes/jambao.jpg','/audio/jambao  la tengo que olvidar.mp3',19),
(342,'amiga (letra).mp3','/imagenes/jambao.jpg','/audio/Jambao - amiga (letra).mp3',19),
(343,'carla (letra).mp3','/imagenes/jambao.jpg','/audio/Jambao - carla (letra).mp3',19),
(344,'consejo (letra).mp3','/imagenes/jambao.jpg','/audio/Jambao - consejo (letra).mp3',19),
(345,'estar enamorado (letra).mp3','/imagenes/jambao.jpg','/audio/Jambao - estar enamorado (letra).mp3',19),
(346,'la barca (letra).mp3','/imagenes/jambao.jpg','/audio/Jambao - la barca (letra).mp3',19),
(347,'lo que me duele (letra).mp3','/imagenes/jambao.jpg','/audio/Jambao - lo que me duele (letra).mp3',19),
(348,'mi niña hermosa (letra).mp3','/imagenes/jambao.jpg','/audio/Jambao - mi niña hermosa (letra).mp3',19),
(349,'nunca nunca (letra).mp3','/imagenes/jambao.jpg','/audio/Jambao - nunca nunca (letra).mp3',19),
(350,'Se Parece Mas A Ti.mp3','/imagenes/jambao.jpg','/audio/Jambao - Se Parece Mas A Ti.mp3',19),
(351,'te arrepentiras (letra).mp3','/imagenes/jambao.jpg','/audio/Jambao - te arrepentiras (letra).mp3',19),
(352,'Los Recuerdos.mp3','/imagenes/jambao.jpg','/audio/jambao Agrupacion Marilyn - Los Recuerdos.mp3',19),
(353,'el amor.mp3','/imagenes/jambao.jpg','/audio/jambao Agrupacion marilyn-el amor.mp3',19),
(354,'marilyn.mp3','/imagenes/jambao.jpg','/audio/jambao Agrupacion marilyn-oh marilyn.mp3',19);








INSERT INTO `cancion` (`idCancion`, `titulo`, `imgCancion`, `audio`, `idAlbum`) VALUES
(355,'CON LA MISMA MONEDA','/imagenes/jambao.jpg','/audio/jambao CON LA MISMA MONEDA- KARINA LA PRINCESITA.mp3',19),
(356,'Me muero de amor.mp3','/imagenes/jambao.jpg','/audio/jambao Damas Gratis - Me muero de amor.mp3',19),
(357,'Este Tonto Corazón','/imagenes/jambao.jpg','/audio/jambao Este Tonto Corazón - Agrupación Marilyn].mp3',19),
(358,'GILDA NO ME ARREPIENTO DE ESTE AMOR.mp3','/imagenes/jambao.jpg','/audio/jambao GILDA NO ME ARREPIENTO DE ESTE AMOR.mp3',19),
(359,'El Rosal ','/imagenes/jambao.jpg','/audio/jambao Grupo CañaveralTiene Espinas El Rosal ft. Jenny .mp3',19),
(360,'HOY MIENTRAS','/imagenes/jambao.jpg','/audio/jambao HOY MIENTRAS....mp3',19),
(361,'Como Olvidarme.mp3','/imagenes/jambao.jpg','/audio/jambao La Beriso - Como Olvidarme.mp3',19),
(362,'Llorarás Más de Diez Veces.mp3','/imagenes/jambao.jpg','/audio/jambao Leo Mattioli - Llorarás Más de Diez Veces.mp3',19),
(363,'Por Qué Te Fuiste.mp3','/imagenes/jambao.jpg','/audio/jambao Maricarmen Marin - Por Qué Te Fuiste.mp3',19),
(364,'no nos supimos amar ','/imagenes/jambao.jpg','/audio/Jambao no nos supimos amar video oficial.mp3',19),
(365,'Oye mujer Lo Nuevo.mp3','/imagenes/jambao.jpg','/audio/jambao Oye mujer Lo Nuevo.mp3',19),
(366,'Una Cerveza (Versión 2018).mp3','/imagenes/jambao.jpg','/audio/jambao Ráfaga - Una Cerveza (Versión 2018).mp3',19),
(367,'se me ha perdido un corazon gilda.mp3','/imagenes/jambao.jpg','/audio/jambao se me ha perdido un corazon gilda.mp3',19),
(368,'Vienes y te vas','/imagenes/jambao.jpg','/audio/jambao Vienes y te vas - La base.mp3',19),
(369,'AMERICA - KALAMARKA.mp3','/imagenes/kalamarca.jpg','/audio/AMERICA - KALAMARKA.mp3',20),
(370,'JAGUAR.mp3','/imagenes/kalamarca.jpg','/audio/JAGUAR.mp3',20),
(371,'CAMPEON DE TOBAS.mp3','/imagenes/kalamarca.jpg','/audio/kalamarca CAMPEON DE TOBAS.mp3',20),
(372,'AMAZONAS.mp3','/imagenes/kalamarca.jpg','/audio/KALAMARKA   AMAZONAS.mp3',20),
(373,'Aguas Claras.mp3','/imagenes/kalamarca.jpg','/audio/Kalamarka - Aguas Claras.mp3',20),
(374,'Rosa.mp3','/imagenes/kalamarca.jpg','/audio/Kalamarka - Rosa.mp3',20),
(375,'CUANDO FLOREZCA EL CHUÑO','/imagenes/kalamarca.jpg','/audio/KALAMARKA (CUANDO FLOREZCA EL CHUÑO).mp3',20),
(376,'Mix Tobas By D J D.mp3','/imagenes/kalamarca.jpg','/audio/Mix Tobas By D J D.mp3',20),
(377,'Saya de la Vida ','/imagenes/kalamarca.jpg','/audio/Saya de la Vida - Yuri Ortuo.mp3',20),
(378,'Tobas  ES ASI KalaMarka.mp3','/imagenes/kalamarca.jpg','/audio/Tobas  ES ASI KalaMarka.mp3',20),
(379,'Enrique Guzmán Kalimba','/imagenes/kalimba.jpg','/audio/Enrique Guzmán Kalimba - Lucila.mp3',21),
(380,'cantan El Triste.mp3','/imagenes/kalimba.jpg','/audio/Eva Ayllón y Kalimba cantan El Triste.mp3',21),
(381,'¿Dónde Guardo El Corazón.mp3','/imagenes/kalimba.jpg','/audio/Kalimba - ¿Dónde Guardo El Corazón.mp3',21),
(382,'Como Yo Te Amo.mp3','/imagenes/kalimba.jpg','/audio/Kalimba - Como Yo Te Amo.mp3',21),
(383,'Déjenme Si Estoy Llorando.mp3','/imagenes/kalimba.jpg','/audio/Kalimba - Déjenme Si Estoy Llorando.mp3',21),
(384,'Duele (Crazy).mp3','/imagenes/kalimba.jpg','/audio/Kalimba - Duele (Crazy).mp3',21),
(385,'Este Frío.mp3','/imagenes/kalimba.jpg','/audio/Kalimba - Este Frío.mp3',21),
(386,'Estrellas Rotas ','/imagenes/kalimba.jpg','/audio/Kalimba - Estrellas Rotas (Lyric Video).mp3',21),
(387,'Lo Aprendí de Ti.mp3','/imagenes/kalimba.jpg','/audio/Kalimba - Lo Aprendí de Ti.mp3',21),
(388,'No Me Quiero Enamorar.mp3','/imagenes/kalimba.jpg','/audio/Kalimba - No Me Quiero Enamorar.mp3',21),
(389,'No Tengo Dinero.mp3','/imagenes/kalimba.jpg','/audio/Kalimba - No Tengo Dinero.mp3',21),
(390,'Quien Será.mp3','/imagenes/kalimba.jpg','/audio/Kalimba - Quien Será.mp3',21),
(391,'Se Te Olvido.mp3','/imagenes/kalimba.jpg','/audio/Kalimba - Se Te Olvido.mp3',21),
(392,'Si Me Dejas Ahora.mp3','/imagenes/kalimba.jpg','/audio/Kalimba - Si Me Dejas Ahora.mp3',21),
(393,'Tocando Fondo  (Video).mp3','/imagenes/kalimba.jpg','/audio/Kalimba - Tocando Fondo  (Video).mp3',21),
(394,'Todo Se Derrumbo.mp3','/imagenes/kalimba.jpg','/audio/Kalimba - Todo Se Derrumbo.mp3',21),
(395,'Tu Corazon Lo Sabe.mp3','/imagenes/kalimba.jpg','/audio/Kalimba - Tu Corazon Lo Sabe.mp3',21),
(396,'Un Nuevo Mundo Sin Ti (Video).mp3','/imagenes/kalimba.jpg','/audio/Kalimba - Un Nuevo Mundo Sin Ti (Video).mp3',21),
(397,'Ya Lo Sé Que Tú Te Vas.mp3','/imagenes/kalimba.jpg','/audio/Kalimba - Ya Lo Sé Que Tú Te Vas.mp3',21),
(398,'Yo No Nací para Amar.mp3','/imagenes/kalimba.jpg','/audio/Kalimba - Yo No Nací para Amar.mp3',21),
(399,'Aléjate De Mi.mp3','/imagenes/kalimba.jpg','/audio/Kalimba Camila - Aléjate De Mi.mp3',21),
(400,'kalimba Prometiste.mp3','/imagenes/kalimba.jpg','/audio/kalimba Prometiste.mp3',21),
(401,'Entra En Mi Vida.mp3','/imagenes/kalimba.jpg','/audio/kalimba Sin Bandera - Entra En Mi Vida.mp3',21),
(402,'No puedo dejarte de amar','/imagenes/kalimba.jpg','/audio/Kalimba y Reik- No puedo dejarte de amar con letra.mp3',21),
(403,'llorar duele mas  kalimba.mp3','/imagenes/kalimba.jpg','/audio/llorar duele mas  kalimba.mp3',21),
(404,'Melissa barrera','/imagenes/kalimba.jpg','/audio/Melissa barrera y kalimba volver a caer TANTO AMOR.mp3',21),
(405,'Moenia - Ni Tu Ni Nadie.mp3','/imagenes/kalimba.jpg','/audio/Moenia - Ni Tu Ni Nadie.mp3',21),
(406,'Pancho Barraza ','/imagenes/kalimba.jpg','/audio/Pancho Barraza Kalimba - Pero La Recuerdo.mp3',21),
(407,'Solo Déjate amar ','/imagenes/kalimba.jpg','/audio/Solo Déjate amar - Kalimba.mp3',21),
(408,'Ave de Cristal ','/imagenes/kjarkas.jpg','/audio/Ave de Cristal  Los Kjarkas.mp3',22),
(409,'COMO OLVIDARTE ','/imagenes/kjarkas.jpg','/audio/COMO OLVIDARTE MI VIDA LOS KJARKAS HD.mp3',22),
(410,'El Picaflor','/imagenes/kjarkas.jpg','/audio/El Picaflor _ Surimana - LOS KJARKAS.mp3',22),
(411,'Cara Bonita ','/imagenes/kjarkas.jpg','/audio/Kjarkas - Cara Bonita (Official Video).mp3',22),
(412,'Francisquita.mp3','/imagenes/kjarkas.jpg','/audio/Kjarkas - Francisquita.mp3',22),
(413,'Fria (Official Video).mp3','/imagenes/kjarkas.jpg','/audio/Kjarkas - Fria (Official Video).mp3',22),
(414,'Mi gran amor.mp3','/imagenes/kjarkas.jpg','/audio/Kjarkas - Mi gran amor.mp3',22),
(415,'Munasquechay ','/imagenes/kjarkas.jpg','/audio/Kjarkas - Munasquechay (Official Video).mp3',22),
(416,'Saya de Cochabamba .mp3','/imagenes/kjarkas.jpg','/audio/KJARKAS - Saya de Cochabamba .mp3',22),
(417,'Tarija  La Picara.mp3','/imagenes/kjarkas.jpg','/audio/Kjarkas - Tarija  La Picara.mp3',22),
(418,'Te Vine A Ver .mp3','/imagenes/kjarkas.jpg','/audio/Kjarkas - Te Vine A Ver .mp3',22),
(419,'Tuna Papita .mp3','/imagenes/kjarkas.jpg','/audio/Kjarkas - Tuna Papita .mp3',22),
(420,'Yo No He Nacido Para Sufrir.mp3','/imagenes/kjarkas.jpg','/audio/Kjarkas - Yo No He Nacido Para Sufrir.mp3',22),
(421,'Chicas bailando Saya.mp3','/imagenes/kjarkas.jpg','/audio/Kjarkas Chicas bailando Saya.mp3',22),
(422,'fue en escenario.mp3','/imagenes/kjarkas.jpg','/audio/Kjarkas LLorando se fue en escenario.mp3',22),
(423,'noches que no dormí.mp3','/imagenes/kjarkas.jpg','/audio/Kjarkas Son tantas noches que no dormí.mp3',22),
(424,'Los Kjarkas.mp3','/imagenes/kjarkas.jpg','/audio/La Picara - Los Kjarkas.mp3',22),
(425,'Vivo por Ti Video.mp3','/imagenes/kjarkas.jpg','/audio/Los Kjarkas   Vivo por Ti Video.mp3',22),
(426,'wayayay..mp3','/imagenes/kjarkas.jpg','/audio/Los Kjarkas  - wayayay..mp3',22),
(427,'Al final.mp3','/imagenes/kjarkas.jpg','/audio/LOS KJARKAS - Al final.mp3',22);









INSERT INTO `cancion` (`idCancion`, `titulo`, `imgCancion`, `audio`, `idAlbum`) VALUES
(428,'Kutimuy (Vuelve).mp3','/imagenes/kjarkas.jpg','/audio/LOS KJARKAS - Kutimuy (Vuelve).mp3',22),
(429,'La mujer que llegó.mp3','/imagenes/kjarkas.jpg','/audio/LOS KJARKAS - La mujer que llegó.mp3',22),
(430,'Siempre he de adorarte.mp3','/imagenes/kjarkas.jpg','/audio/LOS KJARKAS - Siempre he de adorarte.mp3',22),
(431,'Perdoname.mp3','/imagenes/kjarkas.jpg','/audio/Los Kjarkas y Eva Ayllon en Lima - Perdoname.mp3',22),
(432,'puedo vivir sin tu amor kjarkas.mp3','/imagenes/kjarkas.jpg','/audio/puedo vivir sin tu amor kjarkas.mp3',22),
(433,'Tiempo al Tiempo','/imagenes/kjarkas.jpg','/audio/Tiempo al Tiempo - Los kjarkas.mp3',22),
(434,'TODO ME HABLA DE TI','/imagenes/kjarkas.jpg','/audio/TODO ME HABLA DE TI-KJARKAS HD.mp3',22),
(435,'UKANHAMPI MUNATAXA ','/imagenes/kjarkas.jpg','/audio/UKANHAMPI MUNATAXA Los Kjarkas.mp3',22),
(436,'Vivir junto a Ti Kjarkas.mp3','/imagenes/kjarkas.jpg','/audio/Vivir junto a Ti Kjarkas.mp3',22),
(437,'tu mi vida eres tu ','/imagenes/llajtaymanta.jpg','/audio/llajtaymanta   tu mi vida eres tu HD 2017.mp3',23),
(438,'30 Años San Simón.mp3','/imagenes/llajtaymanta.jpg','/audio/LLAJTAYMANTA - 30 Años San Simón.mp3',23),
(439,'Aromeñita Donde Puedo Verte.mp3','/imagenes/llajtaymanta.jpg','/audio/Llajtaymanta - Aromeñita Donde Puedo Verte.mp3',23),
(440,'Chaca Chaca.mp3','/imagenes/llajtaymanta.jpg','/audio/Llajtaymanta - Chaca Chaca.mp3',23),
(441,'Chevere Que Che.mp3','/imagenes/llajtaymanta.jpg','/audio/LLajtaymanta - Chevere Que Che.mp3',23),
(442,'Ciudad Blanca.mp3','/imagenes/llajtaymanta.jpg','/audio/Llajtaymanta - Ciudad Blanca.mp3',23),
(443,'Desde Sucre .mp3','/imagenes/llajtaymanta.jpg','/audio/LLAJTAYMANTA - Desde Sucre .mp3',23),
(444,'DUEÑA DE MI CORAZÓN.mp3','/imagenes/llajtaymanta.jpg','/audio/LLAJTAYMANTA - DUEÑA DE MI CORAZÓN.mp3',23),
(445,'La Flor Más Bonita.mp3','/imagenes/llajtaymanta.jpg','/audio/Llajtaymanta - La Flor Más Bonita.mp3',23),
(446,'LOS EUCAS.mp3','/imagenes/llajtaymanta.jpg','/audio/LLAJTAYMANTA - LOS EUCAS.mp3',23),
(447,'Matraquitas De Plata.mp3','/imagenes/llajtaymanta.jpg','/audio/Llajtaymanta - Matraquitas De Plata.mp3',23),
(448,'Mix De Morenadas [VIVO].mp3','/imagenes/llajtaymanta.jpg','/audio/Llajtaymanta - Mix De Morenadas [VIVO].mp3',23),
(449,'Ñawpa Tolqas .mp3','/imagenes/llajtaymanta.jpg','/audio/LLAJTAYMANTA - Ñawpa Tolqas .mp3',23),
(450,'Para Toda la Vida...!!! (Morenada).mp3','/imagenes/llajtaymanta.jpg','/audio/Llajtaymanta - Para Toda la Vida...!!! (Morenada).mp3',23),
(451,'San Simon USA.mp3','/imagenes/llajtaymanta.jpg','/audio/Llajtaymanta - San Simon USA.mp3',23),
(452,'Tío Mañazo.mp3','/imagenes/llajtaymanta.jpg','/audio/LLAJTAYMANTA - Tío Mañazo.mp3',23),
(453,'LA BRUJITA.mp3','/imagenes/llajtaymanta.jpg','/audio/LLAJTAYMANTA -LA BRUJITA.mp3',23),
(454,'aquella noche  proyeccion.mp3','/imagenes/llajtaymanta.jpg','/audio/Llajtaymanta aquella noche  proyeccion.mp3',23),
(455,'Yana Ñawi .mp3','/imagenes/llajtaymanta.jpg','/audio/Llajtaymanta CHILA J - Yana Ñawi .mp3',23),
(456,'Cara Bonita .mp3','/imagenes/llajtaymanta.jpg','/audio/Llajtaymanta Kjarkas - Cara Bonita .mp3',23),
(457,'Jilguero flores .mp3','/imagenes/llajtaymanta.jpg','/audio/Llajtaymanta Kjarkas - Jilguero flores .mp3',23),
(458,'Munasquechay.mp3','/imagenes/llajtaymanta.jpg','/audio/Llajtaymanta Kjarkas - Munasquechay.mp3',23),
(459,'Tuna Papita.mp3','/imagenes/llajtaymanta.jpg','/audio/Llajtaymanta Kjarkas - Tuna Papita.mp3',23),
(460,'Yo No He Nacido Para Sufrir.mp3','/imagenes/llajtaymanta.jpg','/audio/Llajtaymanta Kjarkas - Yo No He Nacido Para Sufrir.mp3',23),
(461,'LATINOS ENGANCHADOS.mp3','/imagenes/llajtaymanta.jpg','/audio/LLAJTAYMANTA LATINOS ENGANCHADOS.mp3',23),
(462,'MORENADA COCANIS HD.mp4.mp3','/imagenes/llajtaymanta.jpg','/audio/LLAJTAYMANTA MORENADA COCANIS HD.mp4.mp3',23),
(463,'NO TE QUIERO VER.mp3','/imagenes/llajtaymanta.jpg','/audio/LLAJTAYMANTA_NO TE QUIERO VER.mp3',23),
(464,'Los Kjarkas Llorando Se Fue.mp3','/imagenes/llajtaymanta.jpg','/audio/Los Kjarkas Llorando Se Fue.mp3',23),
(465,'Moreno Bandido & Cuando me vaya - Llajtaymanta.mp3','/imagenes/llajtaymanta.jpg','/audio/Moreno Bandido & Cuando me vaya - Llajtaymanta.mp3',23),
(466,'All Nightmare Long.mp3','/imagenes/metalica.jpg','/audio/Metallica - All Nightmare Long.mp3',24),
(467,'Am I Evil Live at the Big 4.mp3','/imagenes/metalica.jpg','/audio/Metallica - Am I Evil Live at the Big 4.mp3',24),
(468,'Atlas Rise.mp3','/imagenes/metalica.jpg','/audio/Metallica - Atlas Rise.mp3',24),
(469,'Enter Sandman.mp3','/imagenes/metalica.jpg','/audio/Metallica - Enter Sandman.mp3',24),
(470,'Fade to Black.mp3','/imagenes/metalica.jpg','/audio/Metallica - Fade to Black.mp3',24),
(471,'For Whom the Bell Tolls.mp3','/imagenes/metalica.jpg','/audio/Metallica - For Whom the Bell Tolls.mp3',24),
(472,'Hardwired.mp3','/imagenes/metalica.jpg','/audio/Metallica - Hardwired.mp3',24),
(473,'Here Comes Revenge.mp3','/imagenes/metalica.jpg','/audio/Metallica - Here Comes Revenge.mp3',24),
(474,'Hero Of The Day.mp3','/imagenes/metalica.jpg','/audio/Metallica - Hero Of The Day.mp3',24),
(475,'Lords of Summer.mp3','/imagenes/metalica.jpg','/audio/Metallica - Lords of Summer.mp3',24),
(476,'ManUNkind.mp3','/imagenes/metalica.jpg','/audio/Metallica - ManUNkind.mp3',24),
(477,'Nothing Else Matters.mp3','/imagenes/metalica.jpg','/audio/Metallica - Nothing Else Matters.mp3',24),
(478,'One.mp3','/imagenes/metalica.jpg','/audio/Metallica - One.mp3',24),
(479,'Orion .mp3','/imagenes/metalica.jpg','/audio/Metallica - Orion .mp3',24),
(480,'Sad But True Lyrics (HD).mp3','/imagenes/metalica.jpg','/audio/Metallica - Sad But True Lyrics (HD).mp3',24),
(481,'Seek & Destroy.mp3','/imagenes/metalica.jpg','/audio/Metallica - Seek & Destroy.mp3',24),
(482,'The Day That Never Comes','/imagenes/metalica.jpg','/audio/Metallica - The Day That Never Comes (video).mp3',24),
(483,'The God That Failed.mp3','/imagenes/metalica.jpg','/audio/Metallica - The God That Failed.mp3',24),
(484,'The Unforgiven (Video).mp3','/imagenes/metalica.jpg','/audio/Metallica - The Unforgiven (Video).mp3',24),
(485,'The Unnamed Feeling.mp3','/imagenes/metalica.jpg','/audio/Metallica - The Unnamed Feeling.mp3',24),
(486,'Turn the Page .mp3','/imagenes/metalica.jpg','/audio/Metallica - Turn the Page .mp3',24),
(487,'Until It Sleeps.mp3','/imagenes/metalica.jpg','/audio/Metallica - Until It Sleeps.mp3',24),
(488,'Welcome Home.mp3','/imagenes/metalica.jpg','/audio/Metallica - Welcome Home.mp3',24),
(489,'Wherever I May Roam.mp3','/imagenes/metalica.jpg','/audio/Metallica - Wherever I May Roam.mp3',24),
(490,'Whiskey In The Jar (Video).mp3','/imagenes/metalica.jpg','/audio/Metallica - Whiskey In The Jar (Video).mp3',24),
(491,'Thunderstruck.mp3','/imagenes/metalica.jpg','/audio/Metallica AC_DC - Thunderstruck.mp3',24),
(492,'November Rain.mp3','/imagenes/metalica.jpg','/audio/Metallica Roses - November Rain.mp3',24),
(493,'Sweet Child Mine .mp3','/imagenes/metalica.jpg','/audio/Metallica Roses - Sweet Child Mine .mp3',24),
(494,'Master Of Puppets (Lyrics).mp3','/imagenes/metalica.jpg','/audio/Metallica-Master Of Puppets (Lyrics).mp3',24),
(495,'Miranda!.mp3','/imagenes/miranda.jpg','/audio/Hola - Miranda!.mp3',25);



INSERT INTO `cancion` (`idCancion`, `titulo`, `imgCancion`, `audio`, `idAlbum`) VALUES
(496,'Don La guitarra de lolo.mp3','/imagenes/miranda.jpg','/audio/Miranda   Don La guitarra de lolo.mp3',25),
(497,'Rosa Pastel.mp3','/imagenes/miranda.jpg','/audio/miranda Belanova - Rosa Pastel.mp3',25),
(498,'Deseos de Cosas Imposibles.mp3','/imagenes/miranda.jpg','/audio/miranda Deseos de Cosas Imposibles.mp3',25),
(499,'Miranda!.mp3','/imagenes/miranda.jpg','/audio/miranda El profe - Miranda!.mp3',25),
(500,'Decirnos la Verdad.mp3','/imagenes/miranda.jpg','/audio/miranda Meteoros - Decirnos la Verdad.mp3',25),
(501,'743.mp3','/imagenes/miranda.jpg','/audio/Miranda! - 743.mp3',25),
(502,'Cálido y Rojo.mp3','/imagenes/miranda.jpg','/audio/Miranda! - Cálido y Rojo.mp3',25),
(503,'En Esta Noche.mp3','/imagenes/miranda.jpg','/audio/Miranda! - En Esta Noche.mp3',25),
(504,'Enamorada.mp3','/imagenes/miranda.jpg','/audio/Miranda! - Enamorada.mp3',25),
(505,'Enero Feat. Jesús Navarro','/imagenes/miranda.jpg','/audio/Miranda! - Enero Feat. Jesús Navarro (Video Oficial).mp3',25),
(506,'EXTRAÑO ','/imagenes/miranda.jpg','/audio/MIRANDA! - EXTRAÑO (Video Oficial).mp3',25),
(507,'Iman (Video ','/imagenes/miranda.jpg','/audio/Miranda! - Iman (Video Oficial).mp3',25),
(508,'La Colisión (','/imagenes/miranda.jpg','/audio/Miranda! - La Colisión (Official Video).mp3',25),
(509,'Lejos de Vos ','/imagenes/miranda.jpg','/audio/Miranda! - Lejos de Vos (Official Video).mp3',25),
(510,'Lo que siento por ti ','/imagenes/miranda.jpg','/audio/Miranda! - Lo que siento por ti (Video Oficial).mp3',25),
(511,'Mentía (Video Oficial).mp3','/imagenes/miranda.jpg','/audio/Miranda! - Mentía (Video Oficial).mp3',25),
(512,'Perfecta (Video Clip).mp3','/imagenes/miranda.jpg','/audio/Miranda! - Perfecta (Video Clip).mp3',25),
(513,'Prisionero.mp3','/imagenes/miranda.jpg','/audio/Miranda! - Prisionero.mp3',25),
(514,'Tu misterioso alguien','/imagenes/miranda.jpg','/audio/Miranda! - Tu misterioso alguien (Video oficial).mp3',25),
(515,'YA LO SABIA.mp3','/imagenes/miranda.jpg','/audio/MIRANDA! - YA LO SABIA.mp3',25),
(516,'Yo te diré (Video Oficial).mp3','/imagenes/miranda.jpg','/audio/Miranda! - Yo te diré (Video Oficial).mp3',25),
(517,'Fantasmas ','/imagenes/miranda.jpg','/audio/MIRANDA! Fantasmas (Video Oficial).mp3',25),
(518,'Ni Tu Ni Nadie.mp3','/imagenes/miranda.jpg','/audio/Moenia - Ni Tu Ni Nadie.mp3',25),
(519,'Nadie Como Tú ','/imagenes/miranda.jpg','/audio/Nadie Como Tú - Miranda! .mp3',25),
(520,'Puro Talento ','/imagenes/miranda.jpg','/audio/Puro Talento - Miranda .mp3',25),
(521,'Ritmo & Decepción','/imagenes/miranda.jpg','/audio/Ritmo & Decepción - Miranda!.mp3',25),
(522,'Traición - Miranda!.mp3','/imagenes/miranda.jpg','/audio/Traición - Miranda!.mp3',25),
(523,'Uno los Dos - Miranda!.mp3','/imagenes/miranda.jpg','/audio/Uno los Dos - Miranda!.mp3',25),
(524,'Andrés Cepeda - morat.mp3','/imagenes/morat.jpg','/audio/Andrés Cepeda - morat.mp3',26),
(525,'¿Qué Ganas (Letra).mp3','/imagenes/morat.jpg','/audio/Morat - ¿Qué Ganas (Letra).mp3',26),
(526,'Acuérdate De Mí ','/imagenes/morat.jpg','/audio/Morat - Acuérdate De Mí (Live) _ Vevo X.mp3',26),
(527,'Amor Con Hielo ','/imagenes/morat.jpg','/audio/Morat - Amor Con Hielo (Video Oficial).mp3',26),
(528,'Aprender A Quererte ','/imagenes/morat.jpg','/audio/Morat - Aprender A Quererte (Video Oficial).mp3',26),
(529,'Cómo Te Atreves ','/imagenes/morat.jpg','/audio/Morat - Cómo Te Atreves (Video Oficial).mp3',26),
(530,'Cuando Nadie Ve.mp3','/imagenes/morat.jpg','/audio/Morat - Cuando Nadie Ve.mp3',26);





INSERT INTO `cancion` (`idCancion`, `titulo`, `imgCancion`, `audio`, `idAlbum`) VALUES
(531,'Cuánto Me Duele ','/imagenes/morat.jpg','/audio/Morat - Cuánto Me Duele (Video Oficial).mp3',26),
(532,'Déjame Ir ','/imagenes/morat.jpg','/audio/Morat - Déjame Ir (Video Oficial).mp3',26),
(533,'Di Que No Te Vas','/imagenes/morat.jpg','/audio/Morat - Di Que No Te Vas (Versión en Acústico).mp3',26),
(534,'En Un Sólo Día ','/imagenes/morat.jpg','/audio/Morat - En Un Sólo Día (Video Oficial).mp3',26),
(535,'La Correcta','/imagenes/morat.jpg','/audio/Morat - La Correcta.mp3',26),
(536,'Maldita Costumbre','/imagenes/morat.jpg','/audio/Morat - Maldita Costumbre (Letra).mp3',26),
(537,'Mi Nuevo Vicio ','/imagenes/morat.jpg','/audio/Morat - Mi Nuevo Vicio (Lyric).mp3',26),
(538,'Mi Vida Entera ','/imagenes/morat.jpg','/audio/Morat - Mi Vida Entera (Live) _ Vevo X.mp3',26),
(539,'No Se Va.mp3','/imagenes/morat.jpg','/audio/Morat - No Se Va.mp3',26),
(540,'Otras Se Pierden ','/imagenes/morat.jpg','/audio/Morat - Otras Se Pierden (Live) _ Vevo X.mp3',26),
(541,'Punto Y Aparte.mp3','/imagenes/morat.jpg','/audio/Morat - Punto Y Aparte.mp3',26),
(542,'Yo Más Te Adoro ','/imagenes/morat.jpg','/audio/Morat - Yo Más Te Adoro (Video Oficial).mp3',26),
(543,'Yo No Merezco Volver.mp3','/imagenes/morat.jpg','/audio/Morat - Yo No Merezco Volver.mp3',26),
(544,'Causa Perdida.mp3','/imagenes/morat.jpg','/audio/morat Causa Perdida.mp3',26),
(545,'Consejo de Amor.mp3','/imagenes/morat.jpg','/audio/morat Consejo de Amor.mp3',26),
(546,'Gente de Zona - Tan Buena .mp3','/imagenes/morat.jpg','/audio/morat Gente de Zona - Tan Buena .mp3',26),
(547,'Manuel Turizo - Aleluya.mp3','/imagenes/morat.jpg','/audio/morat Manuel Turizo - Aleluya.mp3',26),
(548,'Mi Suerte.mp3','/imagenes/morat.jpg','/audio/morat Mi Suerte.mp3',26),
(549,'Robarte un Beso .mp3','/imagenes/morat.jpg','/audio/morat Sebastian Yatra - Robarte un Beso .mp3',26),
(550,'Un Año.mp3','/imagenes/morat.jpg','/audio/morat Sebastianes - Un Año.mp3',26),
(551,'Presiento','/imagenes/morat.jpg','/audio/Morat, Aitana - Presiento (Letra).mp3',26),
(552,'Besos En Guerra','/imagenes/morat.jpg','/audio/Morat, Juanes - Besos En Guerra (Video Oficial).mp3',26),
(553,'La Noche Octavia.mp3','/imagenes/octavia.jpg','/audio/La Noche Octavia.mp3',27),
(554,'OCTAVIA','/imagenes/octavia.jpg','/audio/OCTAVIA  - DIME QUE HAGO.mp3',27),
(555,'Calamaro - Flaca.mp3','/imagenes/octavia.jpg','/audio/Octavia  Calamaro - Flaca.mp3',27),
(556,'decadentes - Loco tu forma de ser.mp3','/imagenes/octavia.jpg','/audio/Octavia  decadentes - Loco tu forma de ser.mp3',27),
(557,'Después de Ti (Live).mp3','/imagenes/octavia.jpg','/audio/OCTAVIA - Después de Ti (Live).mp3',27),
(558,'Despues de ti.mp3','/imagenes/octavia.jpg','/audio/Octavia - Despues de ti.mp3',27),
(559,'En tus labios.mp3','/imagenes/octavia.jpg','/audio/Octavia - En tus labios.mp3',27);





INSERT INTO `cancion` (`idCancion`, `titulo`, `imgCancion`, `audio`, `idAlbum`) VALUES
(560,'ETERNIDAD (Videoclip Oficial).mp3','/imagenes/octavia.jpg','/audio/OCTAVIA - ETERNIDAD (Videoclip Oficial).mp3',27),
(561,'sere tu musica.mp3','/imagenes/octavia.jpg','/audio/octavia - sere tu musica.mp3',27),
(562,'ULTIMA ESCENA (Videoclip Oficial).mp3','/imagenes/octavia.jpg','/audio/OCTAVIA - ULTIMA ESCENA (Videoclip Oficial).mp3',27),
(563,'Bacilos - Caraluna.mp3','/imagenes/octavia.jpg','/audio/Octavia Bacilos - Caraluna.mp3',27),
(564,'Verdades Inéditas.mp3','/imagenes/octavia.jpg','/audio/Octavia CODA 3 - Verdades Inéditas.mp3',27),
(565,'La Guitarra.mp3','/imagenes/octavia.jpg','/audio/Octavia Decadentes - La Guitarra.mp3',27),
(566,'Deszaire por esa mujer.mp3','/imagenes/octavia.jpg','/audio/Octavia Deszaire por esa mujer.mp3',27),
(567,'Discolipstick Octavia.mp3','/imagenes/octavia.jpg','/audio/Octavia Discolipstick Octavia.mp3',27),
(568,'Jade - Secreto Amor.mp3','/imagenes/octavia.jpg','/audio/Octavia Jade - Secreto Amor.mp3',27),
(569,'Lamento Boliviano.mp3','/imagenes/octavia.jpg','/audio/Octavia Lamento Boliviano.mp3',27),
(570,'Lapsus - Mi Love.mp3','/imagenes/octavia.jpg','/audio/Octavia Lapsus - Mi Love.mp3',27),
(571,'Escrupula.mp3','/imagenes/octavia.jpg','/audio/Octavia Loukass - Escrupula.mp3',27);





INSERT INTO `cancion` (`idCancion`, `titulo`, `imgCancion`, `audio`, `idAlbum`) VALUES
(572,'No le Reces al Sol.mp3','/imagenes/octavia.jpg','/audio/Octavia Loukass - No le Reces al Sol.mp3',27),
(573,'QUIRQUIÑA -CLAUSURA.mp3','/imagenes/octavia.jpg','/audio/Octavia QUIRQUIÑA -CLAUSURA.mp3',27),
(574,'RANCHEROS.mp3','/imagenes/octavia.jpg','/audio/Octavia RANCHEROS.mp3',27),
(575,'Mujer amante.mp3','/imagenes/octavia.jpg','/audio/Octavia Rata Blanca - Mujer amante.mp3',27),
(576,'Soda stereo-De musica Ligera.mp3','/imagenes/octavia.jpg','/audio/Octavia Soda stereo-De musica Ligera.mp3',27),
(577,'T con T - Fue amor.mp3','/imagenes/octavia.jpg','/audio/Octavia T con T - Fue amor.mp3',27),
(578,'t con t - si me vas abandonar.mp3','/imagenes/octavia.jpg','/audio/Octavia t con t - si me vas abandonar.mp3',27),
(579,'Track - Ave Fenix.mp3','/imagenes/octavia.jpg','/audio/Octavia Track - Ave Fenix.mp3',27),
(580,'TU CÁRCEL ','/imagenes/octavia.jpg','/audio/Octavia TU CÁRCEL - Enanitos Verdes.mp3',27),
(581,'Vampiros - Mojada.mp3','/imagenes/octavia.jpg','/audio/Octavia Vampiros - Mojada.mp3',27),
(582,'Vicentico - Paisaje.mp3','/imagenes/piso21.jpg','/audio/Octavia Vicentico - Paisaje.mp3',27),
(583,'Aleluya ','/imagenes/piso21.jpg','/audio/Manuel Turizo - Aleluya (Cover Audio).mp3',28),
(584,'Ozuna - Que Va.mp3','/imagenes/piso21.jpg','/audio/Piso 21  Ozuna - Que Va.mp3',28),
(585,'Besándote ','/imagenes/piso21.jpg','/audio/Piso 21 - Besándote (Video Oficial).mp3',28),
(586,'Déjala Que Vuelva.mp3','/imagenes/piso21.jpg','/audio/Piso 21 - Déjala Que Vuelva.mp3',28),
(587,'La Vida Sin Ti ','/imagenes/piso21.jpg','/audio/Piso 21 - La Vida Sin Ti (Video Oficial).mp3',28),
(588,'Me llamas ','/imagenes/piso21.jpg','/audio/Piso 21 - Me llamas (Feat. Maluma) [Remix].mp3',28),
(589,'Te Vi ','/imagenes/piso21.jpg','/audio/Piso 21 & Micro TDH - Te Vi (Video Oficial).mp3',28),
(590,'Dices Que Te Vas.mp3','/imagenes/piso21.jpg','/audio/Piso 21 Anuel AA - Dices Que Te Vas.mp3',28),
(591,'Manuel Turizo.mp3','/imagenes/piso21.jpg','/audio/Piso 21 Culpable- Manuel Turizo.mp3',28),
(592,'Farruko - Calma.mp3','/imagenes/piso21.jpg','/audio/Piso 21 Farruko - Calma.mp3',28);


INSERT INTO `cancion` (`idCancion`, `titulo`, `imgCancion`, `audio`, `idAlbum`) VALUES
(593,'Te Amo ','/imagenes/piso21.jpg','/audio/Piso 21 Ft Paulo Londra - Te Amo (Video Oficial).mp3',28),
(594,'Suele Suceder.mp3','/imagenes/piso21.jpg','/audio/PISO 21 ft. Nicky Jam - Suele Suceder.mp3',28),
(595,'Tan Buena.mp3','/imagenes/piso21.jpg','/audio/Piso 21 Gente de Zona - Tan Buena.mp3',28),
(596,'Con Altura .mp3','/imagenes/piso21.jpg','/audio/Piso 21 J Balvin - Con Altura .mp3',28),
(597,'Maluma ','/imagenes/piso21.jpg','/audio/Piso 21 Maluma - 11 PM .mp3',28),
(598,'Maluma Amigos ','/imagenes/piso21.jpg','/audio/Piso 21 Maluma - Amigos Con Derechos.mp3',28),
(599,'Maluma Créeme','/imagenes/piso21.jpg','/audio/Piso 21 Maluma - Créeme (Letras).mp3',28),
(600,'Maluma HP.mp3','/imagenes/piso21.jpg','/audio/Piso 21 Maluma - HP.mp3',28);





-- aqui me quede


INSERT INTO `cancion` (`idCancion`, `titulo`, `imgCancion`, `audio`, `idAlbum`) VALUES
(601,'Manuel Turizo - Cúrame .mp3','/imagenes/piso21.jpg','/audio/Piso 21 Manuel Turizo - Cúrame .mp3',28),
(602,'Micro TDH - En El Hood.mp3','/imagenes/piso21.jpg','/audio/Piso 21 Micro TDH - En El Hood.mp3',28),
(603,'Ozuna - Amor Genuino.mp3','/imagenes/piso21.jpg','/audio/Piso 21 Ozuna - Amor Genuino.mp3',28),
(604,'Ozuna - Te Soñe De Nuevo .mp3','/imagenes/piso21.jpg','/audio/Piso 21 Ozuna - Te Soñe De Nuevo .mp3',28),
(605,'Reik - Me Niego .mp3','/imagenes/piso21.jpg','/audio/Piso 21 Reik - Me Niego .mp3',28),
(606,'Sebastianes - Un Año.mp3','/imagenes/piso21.jpg','/audio/Piso 21 Sebastianes - Un Año.mp3',28),
(607,'Te Robaré','/imagenes/piso21.jpg','/audio/Piso 21 Te Robaré - Nicky Jam .mp3',28),
(608,'Romeo ','/imagenes/piso21.jpg','/audio/Piso 21 Yandel, Romeo Santos .mp3',28),
(609,'Con Calma.mp3','/imagenes/piso21.jpg','/audio/Piso 21 Yankee & Snow - Con Calma.mp3',28),
(610,'Robarte un Beso.mp3','/imagenes/piso21.jpg','/audio/Piso 21 Yatra - Robarte un Beso.mp3',28),
(611,'Puntos Suspensivos','/imagenes/piso21.jpg','/audio/Puntos Suspensivos- Piso 21-  letra.mp3',28),
(612,'Lo Aprendí de Ti .mp3','/imagenes/reik.jpg','/audio/Reik  Lo Aprendí de Ti .mp3',29),
(613,'Cúrame.mp3','/imagenes/reik.jpg','/audio/Reik  Turizo - Cúrame.mp3',29),
(614,'Cómo Mirarte.mp3','/imagenes/reik.jpg','/audio/Reik  Yatra - Cómo Mirarte.mp3',29),
(615,'Devuélveme El Corazón.mp3','/imagenes/reik.jpg','/audio/Reik  Yatra - Devuélveme El Corazón.mp3',29),
(616,'No Hay Nadie Más.mp3','/imagenes/reik.jpg','/audio/Reik  Yatra - No Hay Nadie Más.mp3',29),
(617,'Robarte un Beso.mp3','/imagenes/reik.jpg','/audio/Reik  Yatra - Robarte un Beso.mp3',29),
(618,'Mau Y Ricky - Ya No Tiene Novio.mp3','/imagenes/reik.jpg','/audio/Reik  Yatra, Mau Y Ricky - Ya No Tiene Novio.mp3',29),
(619,'Reik - Un Año.mp3','/imagenes/reik.jpg','/audio/Reik  Yatra, Reik - Un Año.mp3',29);




INSERT INTO `cancion` (`idCancion`, `titulo`, `imgCancion`, `audio`, `idAlbum`) VALUES
(620,'Creo en Ti (Video Oficial).mp3','/imagenes/reik.jpg','/audio/Reik - Creo en Ti (Video Oficial).mp3',29),
(621,'Eres Tú .mp3','/imagenes/reik.jpg','/audio/Reik - Eres Tú .mp3',29),
(622,'Maldita Despedida (Cover Audio).mp3','/imagenes/reik.jpg','/audio/Reik - Maldita Despedida (Cover Audio).mp3',29),
(623,'Me duele amarte  letra.mp3','/imagenes/reik.jpg','/audio/Reik - Me duele amarte  letra.mp3',29),
(624,'Me Niego ft. Ozuna, Wisin.mp3','/imagenes/reik.jpg','/audio/Reik - Me Niego ft. Ozuna, Wisin.mp3',29),
(625,'Noviembre Sin Ti  (Video Oficial).mp3','/imagenes/reik.jpg','/audio/Reik - Noviembre Sin Ti  (Video Oficial).mp3',29),
(626,'Sabes (Letra) Te la dedico.mp3','/imagenes/reik.jpg','/audio/Reik - Sabes (Letra) Te la dedico.mp3',29),
(627,'Te Fuiste de Aquí (Video Oficial).mp3','/imagenes/reik.jpg','/audio/Reik - Te Fuiste de Aquí (Video Oficial).mp3',29),
(628,'Un Amor de Verdad (Video Oficial).mp3','/imagenes/reik.jpg','/audio/Reik - Un Amor de Verdad (Video Oficial).mp3',29),
(629,'Voy a Olvidarte (Video Oficial).mp3','/imagenes/reik.jpg','/audio/Reik - Voy a Olvidarte (Video Oficial).mp3',29),
(630,'Ya Me Enteré (Video Oficial).mp3','/imagenes/reik.jpg','/audio/Reik - Ya Me Enteré (Video Oficial).mp3',29),
(631,'Yo Quisiera  (Video Oficial).mp3','/imagenes/reik.jpg','/audio/Reik - Yo Quisiera  (Video Oficial).mp3',29),
(632,'Dices Que Te Vas.mp3','/imagenes/reik.jpg','/audio/Reik Anuel AA - Dices Que Te Vas.mp3',29),
(633,'Manuel Turizo.mp3','/imagenes/reik.jpg','/audio/Reik Culpable- Manuel Turizo.mp3',29),
(634,'  Amigos Con Derechos.mp3','/imagenes/reik.jpg','/audio/Reik Maluma - Amigos Con Derechos.mp3',29),
(635,'HP.mp3','/imagenes/reik.jpg','/audio/Reik Maluma - HP.mp3',29),
(636,'Aleluya (Cover Audio).mp3','/imagenes/reik.jpg','/audio/Reik Manuel Turizo - Aleluya (Cover Audio).mp3',29),
(637,'En Cero.mp3','/imagenes/reik.jpg','/audio/Reik Manuel Turizo - En Cero.mp3',29),
(638,'Destino o Casualidad.mp3','/imagenes/reik.jpg','/audio/Reik Melendi - Destino o Casualidad.mp3',29),
(639,'Amor Genuino.mp3','/imagenes/reik.jpg','/audio/Reik Ozuna - Amor Genuino.mp3',29),
(640,'Aunque No Deba (Cover Audio).mp3','/imagenes/reik.jpg','/audio/Reik Tommy Torres - Aunque No Deba (Cover Audio).mp3',29),
(641,'Reik, Manuel Turizo - Aleluyamp3','/imagenes/rioroma.jpg','/audio/Reik, Manuel Turizo - Aleluyamp3',30),
(642,'Arjona - Fuiste tú  Gaby Moreno.mp3','/imagenes/rioroma.jpg','/audio/Rio roma  Arjona - Fuiste tú  Gaby Moreno.mp3',30),
(643,'Iglesias - El Perdedor.mp3','/imagenes/rioroma.jpg','/audio/Rio roma  Iglesias - El Perdedor.mp3',30),
(644,'intención amarte  - Río Roma.mp3','/imagenes/rioroma.jpg','/audio/Rio roma  intención amarte  - Río Roma.mp3',30),
(645,'Nunca Te Dije- Río Roma.mp3','/imagenes/rioroma.jpg','/audio/Rio roma  Nunca Te Dije- Río Roma.mp3',30);


INSERT INTO `cancion` (`idCancion`, `titulo`, `imgCancion`, `audio`, `idAlbum`) VALUES
(646,'Al Fin Te Encontré (Video).mp3','/imagenes/rioroma.jpg','/audio/Río Roma - Al Fin Te Encontré (Video).mp3',30),
(647,'Así Me Decías (Perdedor).mp3','/imagenes/rioroma.jpg','/audio/Río Roma - Así Me Decías (Perdedor).mp3',30),
(648,'Caminar de Tu Mano.mp3','/imagenes/rioroma.jpg','/audio/Río Roma - Caminar de Tu Mano.mp3',30),
(649,'Contigo (Official Video).mp3','/imagenes/rioroma.jpg','/audio/Río Roma - Contigo (Official Video).mp3',30),
(650,'Correcta en el Momento Equivocado.mp3','/imagenes/rioroma.jpg','/audio/Río Roma - Correcta en el Momento Equivocado.mp3',30),
(651,'Deberías Estar Aquí (Lyric Video).mp3','/imagenes/rioroma.jpg','/audio/Río Roma - Deberías Estar Aquí (Lyric Video).mp3',30),
(652,'Hoy Es un Buen Día.mp3','/imagenes/rioroma.jpg','/audio/Río Roma - Hoy Es un Buen Día.mp3',30),
(653,'Me Arrepiento.mp3','/imagenes/rioroma.jpg','/audio/Río Roma - Me Arrepiento.mp3',30);




INSERT INTO `cancion` (`idCancion`, `titulo`, `imgCancion`, `audio`, `idAlbum`) VALUES
(654,'Me Cambiaste la Vida (Videoclip).mp3','/imagenes/rioroma.jpg','/audio/Río Roma - Me Cambiaste la Vida (Videoclip).mp3',30),
(655,'Mi Persona Favorita (Lyric Video).mp3','/imagenes/rioroma.jpg','/audio/Río Roma - Mi Persona Favorita (Lyric Video).mp3',30),
(656,'No Lo Beses (Video).mp3','/imagenes/rioroma.jpg','/audio/Río Roma - No Lo Beses (Video).mp3',30),
(657,'Odio la Distancia.mp3','/imagenes/rioroma.jpg','/audio/Río Roma - Odio la Distancia.mp3',30),
(658,'Por Eso Te Amo.mp3','/imagenes/rioroma.jpg','/audio/Río Roma - Por Eso Te Amo.mp3',30),
(659,'Princesa ft. CNCO .mp3','/imagenes/rioroma.jpg','/audio/Río Roma - Princesa ft. CNCO .mp3',30),
(660,'Te Quiero Mucho.mp3','/imagenes/rioroma.jpg','/audio/Río Roma - Te Quiero Mucho.mp3',30),
(661,'Todavía No Te Olvido.mp3','/imagenes/rioroma.jpg','/audio/Río Roma - Todavía No Te Olvido.mp3',30),
(662,'Tonto.mp3','/imagenes/rioroma.jpg','/audio/Rio roma - Tonto.mp3',30),
(663,'enamorarme así de ti ','/imagenes/rioroma.jpg','/audio/Rio roma enamorarme así de ti  Río Roma.mp3',30),
(664,'Lo Aprendí de Ti.mp3','/imagenes/rioroma.jpg','/audio/Rio roma HA-ASH - Lo Aprendí de Ti.mp3',30),
(665,'Destino o Casualidad.mp3','/imagenes/rioroma.jpg','/audio/Rio roma Melendi - Destino o Casualidad.mp3',30),
(666,'RRobarte un Beso .mp3','/imagenes/rioroma.jpg','/audio/Rio roma Sebastian Yatra - Robarte un Beso .mp3',30),
(667,'Un Año.mp3','/imagenes/rioroma.jpg','/audio/Sebastián Yatra, Reik - Un Año.mp3',30),
(668,'Tu me caíste del cielo','/imagenes/rioroma.jpg','/audio/Tu me caíste del cielo - Rio Roma ¡letra!.mp3',30),
(669,'Vive tu vida conmigo','/imagenes/rioroma.jpg','/audio/Vive tu vida conmigo [letra] Rio Roma [2016].mp3',30);




INSERT INTO `cancion` (`idCancion`, `titulo`, `imgCancion`, `audio`, `idAlbum`) VALUES
(670,'LOVE','/imagenes/sebastianyatra.jpg','/audio/Gianluca Vacchi Sebastián Yatra - LOVE.mp3',31),
(671,'A Partir De Hoy.mp3','/imagenes/sebastianyatra.jpg','/audio/Sebastián Yatra - A Partir De Hoy.mp3',31),
(672,'Alguien Robó','/imagenes/sebastianyatra.jpg','/audio/Sebastián Yatra - Alguien Robó ft. Wisin, Nacho.mp3',31),
(673,'Aquí Estaré.mp3','/imagenes/sebastianyatra.jpg','/audio/Sebastián Yatra - Aquí Estaré.mp3',31),
(674,'Cómo Mirarte','/imagenes/sebastianyatra.jpg','/audio/Sebastián Yatra - Cómo Mirarte _ Video Oficial.mp3',31),
(675,'Contigo Siempre.mp3','/imagenes/sebastianyatra.jpg','/audio/Sebastián Yatra - Contigo Siempre.mp3',31),
(676,'Cristina.mp3','/imagenes/sebastianyatra.jpg','/audio/Sebastián Yatra - Cristina.mp3',31),
(677,'Devuélveme El Corazón.mp3','/imagenes/sebastianyatra.jpg','/audio/Sebastián Yatra - Devuélveme El Corazón.mp3',31),
(678,'Elena (Animated Video).mp3','/imagenes/sebastianyatra.jpg','/audio/Sebastián Yatra - Elena (Animated Video).mp3',31),
(679,'En Cero.mp3','/imagenes/sebastianyatra.jpg','/audio/Sebastián Yatra - En Cero.mp3',31),
(680,'Esta Noche.mp3','/imagenes/sebastianyatra.jpg','/audio/Sebastián Yatra - Esta Noche.mp3',31),
(681,'Falta Amor','/imagenes/sebastianyatra.jpg','/audio/Sebastián Yatra - Falta Amor (Animated Video).mp3',31),
(682,'Fantasía.mp3','/imagenes/sebastianyatra.jpg','/audio/Sebastián Yatra - Fantasía.mp3',31);




INSERT INTO `cancion` (`idCancion`, `titulo`, `imgCancion`, `audio`, `idAlbum`) VALUES
(683,'No Hay Nadie Más.mp3','/imagenes/sebastianyatra.jpg','/audio/Sebastián Yatra - No Hay Nadie Más.mp3',31),
(684,'Por Perro ft. Luis Figueroa, Lary Over.mp3','/imagenes/sebastianyatra.jpg','/audio/Sebastián Yatra - Por Perro ft. Luis Figueroa, Lary Over.mp3',31),
(685,'Quiero Decirte.mp3','/imagenes/sebastianyatra.jpg','/audio/Sebastián Yatra - Quiero Decirte.mp3',31),
(686,'Quiero Volver.mp3','/imagenes/sebastianyatra.jpg','/audio/Sebastián Yatra - Quiero Volver.mp3',31),
(687,'Respiro (Animated Video).mp3','/imagenes/sebastianyatra.jpg','/audio/Sebastián Yatra - Respiro (Animated Video).mp3',31),
(688,'Robarte un Beso .mp3','/imagenes/sebastianyatra.jpg','/audio/Sebastian Yatra - Robarte un Beso .mp3',31),
(689,'Suena El Dembow.mp3','/imagenes/sebastianyatra.jpg','/audio/Sebastián Yatra - Suena El Dembow.mp3',31),
(690,'SUTRA ft. Dalmata.mp3','/imagenes/sebastianyatra.jpg','/audio/Sebastián Yatra - SUTRA ft. Dalmata.mp3',31),
(691,'Traicionera.mp3','/imagenes/sebastianyatra.jpg','/audio/Sebastián Yatra - Traicionera.mp3',31),
(692,'Yo Te Extraño (Animated Video).mp3','/imagenes/sebastianyatra.jpg','/audio/Sebastián Yatra - Yo Te Extraño (Animated Video).mp3',31),
(693,'Beret - Vuelve.mp3','/imagenes/sebastianyatra.jpg','/audio/Sebastián Yatra Beret - Vuelve.mp3',31),
(694,'Camilo - En Guerra.mp3','/imagenes/sebastianyatra.jpg','/audio/Sebastián Yatra Camilo - En Guerra.mp3',31),
(695,'Nicky Jam - Date La Vuelta.mp3','/imagenes/sebastianyatra.jpg','/audio/Sebastián Yatra Nicky Jam - Date La Vuelta.mp3',31),
(696,'Reik - Un Año.mp3','/imagenes/sebastianyatra.jpg','/audio/Sebastián Yatra Reik - Un Año.mp3',31),
(697,'Ya No Tiene Novio.mp3','/imagenes/sebastianyatra.jpg','/audio/Sebastián Yatra Ya No Tiene Novio.mp3',31),
(698,'Déjate Querer .mp3','/imagenes/sebastianyatra.jpg','/audio/Sebastián Yatra Yera - Déjate Querer .mp3',31),
(699,'Me Estoy Enamorando.mp3','/imagenes/sebastianyatra.jpg','/audio/Yatra - Me Estoy Enamorando.mp3',31),
(700,'A ti - Sin Bandera .mp3','/imagenes/sinbandera.jpg','/audio/A ti - Sin Bandera .mp3',32);





INSERT INTO `cancion` (`idCancion`, `titulo`, `imgCancion`, `audio`, `idAlbum`) VALUES
(701,'Amor Real - Sin Banderas.mp3','/imagenes/sinbandera.jpg','/audio/Amor Real - Sin Banderas.mp3',32),
(702,'Cuando Ya no te esperaba','/imagenes/sinbandera.jpg','/audio/Cuando Ya no te esperaba - Sin Bandera.mp3',32),
(703,'Un Año.mp3','/imagenes/sinbandera.jpg','/audio/Sin Bandera  - Un Año.mp3',32),
(704,'Fuiste tú feate.mp3','/imagenes/sinbandera.jpg','/audio/Sin Bandera  Arjona - Fuiste tú feate.mp3',32),
(705,'El Perdedor .mp3','/imagenes/sinbandera.jpg','/audio/Sin Bandera  Iglesias - El Perdedor .mp3',32),
(706,'En Ésta No .mp3','/imagenes/sinbandera.jpg','/audio/Sin Bandera - En Ésta No .mp3',32),
(707,'Entra En Mi Vida.mp3','/imagenes/sinbandera.jpg','/audio/Sin Bandera - Entra En Mi Vida.mp3',32),
(708,'Kilometros.mp3','/imagenes/sinbandera.jpg','/audio/Sin Bandera - Kilometros.mp3',32),
(709,'Que Lloro (Video).mp3','/imagenes/sinbandera.jpg','/audio/Sin Bandera - Que Lloro (Video).mp3',32),
(710,'Que Me Alcance La Vida','/imagenes/sinbandera.jpg','/audio/Sin Bandera - Que Me Alcance La Vida (Video).mp3',32),
(711,'Será.mp3','/imagenes/sinbandera.jpg','/audio/Sin Bandera - Será.mp3',32),
(712,'Si Tu No Estas.mp3','/imagenes/sinbandera.jpg','/audio/Sin Bandera - Si Tu No Estas.mp3',32),
(713,'Suelta Mi Mano.mp3','/imagenes/sinbandera.jpg','/audio/Sin Bandera - Suelta Mi Mano.mp3',32),
(714,'Te vi Venir Letra.mp3','/imagenes/sinbandera.jpg','/audio/Sin Bandera - Te vi Venir Letra.mp3',32),
(715,'Ves.mp3','/imagenes/sinbandera.jpg','/audio/Sin Bandera - Ves.mp3',32),
(716,'Llegaste Tú.mp3','/imagenes/sinbandera.jpg','/audio/Sin Bandera - Y Llegaste Tú.mp3',32),
(717,'Sin Bandera Aléjate de mi','/imagenes/sinbandera.jpg','/audio/Sin Bandera Aléjate de mi - Camila.mp3',32),
(718,'De que me sirve la vida.mp3','/imagenes/sinbandera.jpg','/audio/Sin Bandera Camila - De que me sirve la vida.mp3',32),
(719,'Mientes.mp3','/imagenes/sinbandera.jpg','/audio/Sin Bandera Camila - Mientes.mp3',32),
(720,'Lo Aprendí de Ti.mp3','/imagenes/sinbandera.jpg','/audio/Sin Bandera HA-ASH - Lo Aprendí de Ti.mp3',32),
(721,'Corre.mp3','/imagenes/sinbandera.jpg','/audio/Sin Bandera Jesse&Joy - Corre.mp3',32),
(722,'Querer Mejor.mp3','/imagenes/sinbandera.jpg','/audio/Sin Bandera Juanes - Querer Mejor.mp3',32),
(723,'Aleluya.mp3','/imagenes/sinbandera.jpg','/audio/Sin Bandera Manuel Turizo - Aleluya.mp3',32),
(724,'Destino o Casualidad.mp3','/imagenes/sinbandera.jpg','/audio/Sin Bandera Melendi - Destino o Casualidad.mp3',32),
(725,'mientes tan bien - justin.mp3','/imagenes/sinbandera.jpg','/audio/Sin Bandera mientes tan bien - justin.mp3',32),
(726,'POR AMARTE ASÍ .mp3','/imagenes/sinbandera.jpg','/audio/Sin Bandera POR AMARTE ASÍ .mp3',32),
(727,'Ya me enteré.mp3','/imagenes/sinbandera.jpg','/audio/Sin Bandera Reik - Ya me enteré.mp3',32),
(728,'Puro Dolor (Video).mp3','/imagenes/sinbandera.jpg','/audio/Son By Four - A Puro Dolor (Video).mp3',32),
(729,'BIEN SABES QUE TE QUIERO   TUPAY.mp3','/imagenes/tupay.jpg','/audio/BIEN SABES QUE TE QUIERO   TUPAY.mp3',33),
(730,'CHOLITA-TUPAY-ZAMPOÑA.mp3','/imagenes/tupay.jpg','/audio/CHOLITA-TUPAY-ZAMPOÑA.mp3',33),
(731,'CUECA LA CARAQUEÑA','/imagenes/tupay.jpg','/audio/CUECA LA CARAQUEÑA - TUPAY.mp3',33),
(732,'JUAN EL SOLITARIO','/imagenes/tupay.jpg','/audio/JUAN EL SOLITARIO - TUPAY.mp3',33);





INSERT INTO `cancion` (`idCancion`, `titulo`, `imgCancion`, `audio`, `idAlbum`) VALUES
(733,'Luz de mi camino','/imagenes/tupay.jpg','/audio/Luz de mi camino - Tupay .mp3',33),
(734,'ME HACE FALTA','/imagenes/tupay.jpg','/audio/ME HACE FALTA - TUPAY.mp3',33),
(735,'SAYA NEGRA TUPAY.mp3','/imagenes/tupay.jpg','/audio/SAYA NEGRA TUPAY.mp3',33),
(736,'Mal Acostumbrado HQ.mp3','/imagenes/tupay.jpg','/audio/Tupay   Mal Acostumbrado HQ.mp3',33),
(737,'Amor Prohibido UHD.mp3','/imagenes/tupay.jpg','/audio/TUPAY  Amor Prohibido UHD.mp3',33),
(738,'Eleonora Cardona.mp3','/imagenes/tupay.jpg','/audio/tupay  Eleonora Cardona.mp3',33),
(739,'La Puñalada (Taquirari).mp3','/imagenes/tupay.jpg','/audio/TUPAY - La Puñalada (Taquirari).mp3',33),
(740,'Nunca Tuve Suerte En El Amor.mp3','/imagenes/tupay.jpg','/audio/Tupay - Nunca Tuve Suerte En El Amor.mp3',33),
(741,'Tú Eres Mi Negra.mp3','/imagenes/tupay.jpg','/audio/Tupay - Tú Eres Mi Negra.mp3',33),
(742,'urpilay.mp3','/imagenes/tupay.jpg','/audio/tupay - urpilay.mp3',33),
(743,'Veneno.mp3','/imagenes/tupay.jpg','/audio/Tupay - Veneno.mp3',33),
(744,'DE BOLIVIA- ROSAS HD 2016.mp3','/imagenes/tupay.jpg','/audio/TUPAY DE BOLIVIA- ROSAS HD 2016.mp3',33),
(745,'Enriqueta Ulloa - La Bandeñita.mp3','/imagenes/tupay.jpg','/audio/tupay Enriqueta Ulloa - La Bandeñita.mp3',33),
(746,'Kjarkas - Cara Bonita.mp3','/imagenes/tupay.jpg','/audio/tupay Kjarkas - Cara Bonita.mp3',33),
(747,'Kjarkas - Jilguero flores .mp3','/imagenes/tupay.jpg','/audio/tupay Kjarkas - Jilguero flores .mp3',33),
(748,'Kjarkas - Munasquechay.mp3','/imagenes/tupay.jpg','/audio/tupay Kjarkas - Munasquechay.mp3',33),
(749,'Kjarkas - Tuna Papita.mp3','/imagenes/tupay.jpg','/audio/tupay Kjarkas - Tuna Papita.mp3',33),
(750,'Kjarkas - Yo No He Nacido Para Sufrir.mp3','/imagenes/tupay.jpg','/audio/tupay Kjarkas - Yo No He Nacido Para Sufrir.mp3',33),
(751,'Los Kjarkas & Tupay - Sayas-Mix.mp3','/imagenes/tupay.jpg','/audio/tupay Los Kjarkas & Tupay - Sayas-Mix.mp3',33),
(752,'Los Kjarkas Llorando Se Fue.mp3','/imagenes/tupay.jpg','/audio/tupay Los Kjarkas Llorando Se Fue.mp3',33),
(753,'Sangre Española .mp3','/imagenes/tupay.jpg','/audio/tupay Sangre Española .mp3',33),
(754,'Son tantas noches que no dormí','/imagenes/tupay.jpg','/audio/tupay Son tantas noches que no dormí.mp3',33),
(755,'Paceñita','/imagenes/tupay.jpg','/audio/tupay YARA - Paceñita (Cullaguada).mp3',33),
(756,'TUPAY-NO ME PERTENECES.mp3','/imagenes/tupay.jpg','/audio/TUPAY-NO ME PERTENECES.mp3',33),
(757,'YA NO QUIERO SER TU AMOR','/imagenes/tupay.jpg','/audio/YA NO QUIERO SER TU AMOR - TUPAY.mp3',33);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `album`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`generoId`);

--
-- Indices de la tabla `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`idAlbum`),
  ADD KEY `idArtista` (`idArtista`),
  ADD KEY `generoId` (`generoId`);

--
-- Indices de la tabla `artista`
--
ALTER TABLE `artista`
  ADD PRIMARY KEY (`idArtista`);

--
-- Indices de la tabla `cancion`
--
ALTER TABLE `cancion`
  ADD PRIMARY KEY (`idCancion`),
  ADD KEY `idAlbum` (`idAlbum`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `generoId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;


--
-- AUTO_INCREMENT de la tabla `album`
--
ALTER TABLE `album`
  MODIFY `idAlbum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `artista`
--
ALTER TABLE `artista`
  MODIFY `idArtista` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `cancion`
--
ALTER TABLE `cancion`
  MODIFY `idCancion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `album_ibfk_1` FOREIGN KEY (`idArtista`) REFERENCES `artista` (`idArtista`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `album_ibfk_2` FOREIGN KEY (`generoId`) REFERENCES `genero` (`generoId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cancion`
--
ALTER TABLE `cancion`
  ADD CONSTRAINT `cancion_ibfk_1` FOREIGN KEY (`idAlbum`) REFERENCES `album` (`idAlbum`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
