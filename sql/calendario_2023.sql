-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 08-12-2022 a las 09:33:46
-- Versión del servidor: 5.7.38
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `calendario_calendario2023`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `posicion` int(11) DEFAULT '99' COMMENT 'Visualización: posiicon del registro en el menú. ',
  `titulo` varchar(64) DEFAULT NULL,
  `detalles` varchar(1052) DEFAULT NULL,
  `subCat` tinyint(1) DEFAULT '0',
  `color` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `posicion`, `titulo`, `detalles`, `subCat`, `color`) VALUES
(1, 1, 'Curso lectivo y períodos', 'En esta sección se encuentra información correspondiente al inicio y cierre del curso lectivo, rango de fechas de cada periodo según modalidad educativa así como otras a considerar.', 0, '#E62176'),
(5, 5, 'Educación Abierta', 'Los programas de educación abierta constituyen una alternativa educativa para quienes no ingresan o concluyen los diferentes ciclos educativos en el sistema formal. En este espacio encontrará información respecto a la inscripción y aplicación de pruebas de:\n- Segundo Ciclo de la Educación General Básica Abierta (II Ciclo EGBA).\n- Tercer Ciclo de la Educación General Básica Abierta (III Ciclo EGBA).\n- Bachillerato de la Educación Diversificada a Distancia (EDAD).\n- Bachillerato por Madurez Suficiente.', 0, '#A8B70B'),
(6, 6, 'Otras efemérides y conmemoraciones', 'En este apartado se encuentran de manera informativa fechas o acontecimientos que apoyan el currículum escolar y que el personal docente podría utilizar como insumo para el desarrollo de su mediación pedagógica en el aula. ', 0, '#F08700'),
(2, 2, 'Pruebas', 'En esta sección se encuentran las fechas de las Pruebas Nacionales Saber en la Educación General Básica y la Educación Diversificada Académica diurna, nocturna y técnica del sistema educativo costarricense, pruebas de dominio lingüístico y otras de interés para la comunidad educativa.', 1, '#6B488D'),
(3, 3, 'Educación de Personas Jóvenes y Adultas', 'En esta sección se encuentran fechas de importancia para la Educación de Personas Jóvenes y Adultas, en sus diferentes modalidades CINDEA, IPEC, Colegios Académicos Nocturnos, Escuelas Nocturnas, CONED.', 0, '#0094DA'),
(4, 4, 'Estrategias de promoción', 'En esta sección se muestran las fechas de las estrategias de promoción o pruebas de ampliación.', 0, '#01A1A2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `rango` varchar(512) DEFAULT NULL,
  `descripcion` varchar(1024) DEFAULT NULL,
  `link` varchar(256) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id`, `fecha`, `rango`, `descripcion`, `link`, `activo`) VALUES
(1, '2023-01-02', '02 de enero ', 'Publicación de resultados del Programa del Diploma del Bachillerato Internacional (PDBI) 2022.', 'null', 1),
(2, '2023-01-23', '23 de enero ', 'Entrega del plan regional para la promoción de la Ley N°10080 y el reglamento Decreto Ejecutivo N°38808 - MEP población estudiantil con alto potencial alta dotación y talentos.', 'http://www.pgrweb.go.cr/scij/Busqueda/Normativa/Normas/nrm_texto_completo.aspx?param1=NRTC&param2=1&nValor1=1&nValor2=96035&nValor3=128345&strTipM=TC&lResultado=2&nValor4=1&strSelect=sel', 1),
(3, '2023-01-30', 'Del 30 de enero al 10 de febrero', 'Ratificación del equipo de la PERMANENCIA en el centro educativo y, calendarización de reuniones.', 'https://www.mep.go.cr/unidad-permanencia', 1),
(4, '2023-02-01', 'Del 01 de febrero al 31 de marzo ', 'Inscripción Olimpiada Costarricense de Química (OLCOQUIM).', 'null', 1),
(5, '2023-02-06', 'Del 06 al 10 de febrero', 'Semana de adaptación e integración para estudiantes y comunidad educativa.', 'https://www.mep.go.cr/unidad-permanencia', 1),
(6, '2023-02-06', 'Del 06 al 10 de febrero', 'Ratificación del equipo de PERMANENCIA en Direcciones Regionales de Educación y calendarización de reuniones.', 'https://www.mep.go.cr/unidad-permanencia', 1),
(7, '2023-02-06', 'Del 06 al 17 de febrero ', 'Proceso de inducción dirigida a la cohesión e inclusión de la  población estudiantil por parte del profesor/a guía o maestra/o de grado y otros actores educativos en coordinación con la persona profesional en Orientación del centro educativo.', 'https://www.mep.go.cr/sites/default/files/labor-como-docente-guia-docente-grado.pdf', 1),
(8, '2023-02-06', 'Del 06 de febrero al 24 de marzo ', 'Orientación Educativa y Vocacional. Fase de asesoramiento a profesores guías en secundaria y docentes de grupo en preescolar y primaria por parte de la persona profesional en Orientación.', 'https://www.mep.go.cr/sites/default/files/labor-como-docente-guia-docente-grado.pdf', 1),
(9, '2023-02-06', 'Del 06 de febrero al 31 de marzo  ', 'Desarrollo de los aprendizajes esperados según la distribución establecida y valoración del desarrollo de los niños y niñas de Educación Preescolar. ', '', 1),
(10, '2023-02-13', 'Del 13 al 17 de febrero', 'Inicio del Proceso Político Electoral Estudiantil: Elección de las Directivas de Sección.', 'null', 1),
(11, '2023-02-13', 'Del 13 de febrero al 03 de marzo ', 'Asesoramientos virtuales: Reglamento del Festival Estudiantil de las Artes.', 'null', 1),
(12, '2023-02-13', 'Del 13 de febrero al 31 de marzo ', 'Inscripción Olimpiada Costarricense de Ciencias OLCOCI 2023.', 'null', 1),
(13, '2023-02-20', 'Del 20 al 24 de febrero', 'Designación de integrantes del Equipo de Servicio Comunal Estudiantil.', 'null', 1),
(14, '2023-02-21', '21 de febrero ', 'La Batalla de Coto: Conmemoración de los Caídos de la Batalla de Coto de 1921 (Decreto N° 9613).', 'http://www.pgrweb.go.cr/scij/Busqueda/Normativa/Normas/nrm_texto_completo.aspx?param1=NRTC&nValor1=1&nValor2=87959', 1),
(15, '2023-02-27', 'Del 27 de febrero al 03 de marzo', 'Proceso Político Electoral Estudiantil. Integración de la Asamblea de Representantes de cada centro educativo.', 'null', 1),
(16, '2023-02-27', 'Del 27 de febrero al 17 de marzo', 'Inicio del proceso de asesoramiento a los equipos regionales y equipos institucionales de los CE priorizados de permanencia estudiantil.', 'https://www.mep.go.cr/unidad-permanencia', 1),
(17, '2023-02-27', 'Del 27 de febrero al 31 de marzo', 'Aprobación de los temas y proyectos de aprendizaje en Servicio por parte del Equipo de Servicio Comunal Estudiantil.', 'null', 1),
(18, '2023-02-27', 'Del 27 de febrero al 19 de mayo ', 'Inicio programa Érase una vez territorio.', 'https://www.mep.go.cr/programas-y-proyectos/erase-una-vez', 1),
(19, '2023-02-28', '28 de febrero', 'Inicio del Proyecto de los Juegos Virtuales Estudiantiles y del Programa Juegos Deportivos Estudiantiles. ', 'https://juegosdeportivosestudiantiles.com/', 1),
(20, '2023-03-01', 'Del 01 al 30 de marzo ', 'Inscripción XVI Olimpiada Costarricense de Ciencias Biológicas 2023', '', 1),
(21, '2023-03-01', 'Del 01 de marzo al 26 de mayo ', 'Definición de los mapas de ruta correspondientes a la Estrategia Nacional de Educación STEAM por parte de los centros educativos. ', 'null', 1),
(22, '2023-03-01', 'Del 01 de marzo al 31 de mayo ', 'Aplicación de instrumentos de investigación para la prospección de la modalidad dual en la Educación Técnica Profesional.', 'null', 1),
(23, '2023-03-08', '08 de marzo', 'Día Nacional de la Servidora de Comedores Escolares (Decreto Ejecutivo N°27063)', 'http://www.pgrweb.go.cr/scij/Busqueda/Normativa/Normas/nrm_norma.aspx?param1=NRM&nValor1=1&nValor2=40325&nValor3=42496&strTipM=FN', 1),
(24, '2023-03-13', 'Del 13 al 17 de marzo', 'Proceso Político Electoral Estudiantil. Nombramiento e inicio de funciones del Tribunal Electoral Estudiantil.', 'null', 1),
(25, '2023-03-13', 'Del 13 al 17 de marzo', 'Conformación del grupo de Convivencia en los centros educativos.', 'null', 1),
(26, '2023-03-13', 'Del 13 al 24 de marzo ', 'Taller para la presentación del proyecto de  Emprendimiento Cooperativo dirigido a escuelas con cooperativa escolar.', '', 1),
(27, '2023-03-17', '17 de marzo ', 'Entrega Formulario Vinculación con la Empresa y la Comunidad 1 (FVEC-1)  por parte de los centros educativos que imparten educación técnica profesional. ', '', 1),
(28, '2023-03-17', '17 de marzo ', 'Colegios Técnicos Profesionales entregan en formato digital plan anual de trabajo de las unidades didácticas, didácticas productivas y productivas. ', 'null', 1),
(29, '2023-03-17', '17 de marzo ', 'Entrega de la fórmula OR-1 desde las Asesorías Regionales de Orientación al Departamento de Orientación Educativa y Vocacional.', 'null', 1),
(30, '2023-03-20', '20 de marzo ', 'Batalla de Santa Rosa: Enfrentamiento bélico en 1856 en la Hacienda Santa Rosa, Guanacaste y tuvo como resultado la expulsión del ejército filibustero comandado por William Walker del territorio costarricense. (Decreto Nº 32609).', 'http://www.pgrweb.go.cr/scij/Busqueda/Normativa/Normas/nrm_texto_completo.aspx?nValor1=1&nValor2=55455', 1),
(31, '2023-03-20', 'Del 20 al 24 de marzo ', 'Taller  virtual dirigido a docentes técnicos de colegios técnicos profesionales  sobre la metodología  para el desarrollo de emprendimiento Junior Achievement-Ministerio de Educación Pública (JA-MEP).', 'null', 1),
(32, '2023-03-20', 'Del 20 al 24 de marzo', 'Inducción a centros educativos que ingresan a la Estrategia Nacional de Educación STEAM.', '', 1),
(33, '2023-03-21', 'Del 21 de marzo al 30 de noviembre ', 'Temporada de encuentros y diálogos estudiantiles: Espacios con representantes y líderes estudiantiles para la promoción de habilidades para mejorar la participación en los centros educativos.', 'null', 1),
(34, '2023-03-24', '24 de marzo ', 'Celebración del Día Nacional del Deporte  en centros educativos. (Ley N°4430 señala que el último domingo del mes de marzo se celebraría el Día del Deporte en Costa Rica).', 'http://www.pgrweb.go.cr/scij/Busqueda/Normativa/Normas/nrm_texto_completo.aspx?param1=NRTC&param2=1&nValor1=1&nValor2=6961&nValor3=7434&strTipM=TC&lResultado=3&nValor4=1&strSelect=sel', 1),
(35, '2023-03-26', '26 de marzo ', 'Día Nacional del Deporte. Se busca potenciar el aprecio hacia el deporte, como herramienta para enseñar valores, mejorar la salud y promover la sana competencia. (Ley N°4430)', 'http://www.pgrweb.go.cr/scij/Busqueda/Normativa/Normas/nrm_texto_completo.aspx?param1=NRTC&param2=1&nValor1=1&nValor2=6961&nValor3=7434&strTipM=TC&lResultado=3&nValor4=1&strSelect=sel', 1),
(36, '2023-03-27', 'Del 27 al 31 de marzo ', 'Lineamientos de las ferias estudiantiles de Educación Técnica (Expojovem, Expoingeniería, Líderes Estudiantiles).', 'null', 1),
(37, '2023-03-27', 'Del 27 al 31 de marzo ', 'Taller virtual para la entrega de lineamientos para la gestión administrativa de las cooperativas escolares a docentes con recargo y/o lecciones de cooperativismo.', '', 1),
(38, '2023-03-27', 'Del 27 al 31 de marzo ', 'I Asamblea  del  Consejo Regional de Vinculación con la Empresa y la Comunidad (CORVEC).', 'null', 1),
(39, '2023-03-27', 'Del 27 de marzo al 28 de julio ', 'Orientación Educativa y Vocacional. Fase de acompañamiento técnico a la labor del docente guía y  docentes de grupo en preescolar y primaria.', 'https://www.mep.go.cr/sites/default/files/labor-como-docente-guia-docente-grado.pdf', 1),
(40, '2023-03-31', '31 de marzo ', 'Entrega Formulario Vinculación con la Empresa y la Comunidad  FVEC-2 y   por parte de los centros educativos que imparten educación técnica profesional.', 'null', 1),
(41, '2023-03-31', '31 de marzo ', 'Entrega Formulario  Vinculación con la Empresa y la Comunidad FVEC-3  por parte de los centros educativos que imparten educación técnica profesional. ', '', 1),
(42, '2023-04-10', 'Del 10 al 14 de abril ', 'Semana Nacional de la Salud', 'null', 1),
(43, '2023-04-10', '10 de abril ', 'Día de la Identidad en Sarapiquí y Batalla de Sardinal. Conflicto armado acontecido el 10 de abril de 1856 en el pueblo de Sardinal, en Sarapiquí, Costa Rica. Fue la segunda batalla de la Campaña Nacional de 1856-1857 que enfrentó al Ejército de Costa Rica contra los filibusteros de William Walker, luego de la Batalla de Santa Rosa, el 20 de marzo de 1856 en Guanacaste. (Decreto Ejecutivo N° 38322-MEP).', 'http://www.pgrweb.go.cr/scij/Busqueda/Normativa/Normas/nrm_texto_completo.aspx?param1=NRTC&nValor1=1&nValor2=76948&nValor3=96239&strTipM=TC', 1),
(44, '2023-04-10', '10 de abril ', 'Día de la Identidad en Sarapiquí. Acciones afirmativas para el rescate de la Identidad regional (Decreto Ejecutivo Nº 38322-MEP)', 'https://bit.ly/3ea6nAU', 0),
(45, '2023-04-10', '10 de abril', 'Proceso Político Electoral Estudiantil. Inicio de la organización e inscripción de Partidos Políticos Estudiantiles.', 'null', 1),
(46, '2023-04-10', 'Del 10 al 14 de abril', 'Inducción a la Comunidad Educativa sobre el proceso de Servicio Comunal Estudiantil.', 'null', 1),
(47, '2023-04-10', 'Del 10 al 21 abril', 'Proceso de análisis de los resultados de la aplicación del Censo Inicial por parte de la UPRE.', 'https://www.mep.go.cr/unidad-permanencia', 1),
(48, '2023-04-11', '11 de abril ', 'Batalla de Rivas y del Acto Heroico de Juan Santamaría: Se realiza en 1856, fue el primer paso estaba dado, pero la guerra no había terminado. Bajo las órdenes de los generales José María Cañas y José Joaquín Mora, los patrióticos soldados se internan en territorio nicaragüense con objetivo de expulsar a los filibusteros de Centroamérica. (Decreto. Nº 32609).', 'http://www.pgrweb.go.cr/scij/Busqueda/Normativa/Normas/nrm_texto_completo.aspx?param1=NRTC&nValor1=1&nValor2=55455&nValor3=116155&strTipM=TC', 1),
(49, '2023-04-13', '13 de abril ', 'Lanzamiento del Concurso Nacional Mi Cuento Fantástico 2023.', 'https://micuentofantastico.cr/', 1),
(50, '2023-04-14', '14 de abril ', 'Entrega Formulario Vinculación con la Empresa y la Comunidad 5 (FVEC-5)  por parte de los centros educativos que imparten educación técnica profesional. ', '', 1),
(51, '2023-04-14', '14 de abril ', 'Fecha límite para recibir solicitudes de oferta educativa de los Colegios Técnicos, Instituto de Educación Comunitaria (IPEC ) y Centros Integrados de Educación de Adultos (CINDEA) que imparten especialidades técnicas.', 'null', 1),
(52, '2023-04-17', 'Del 17 al 21 de abril  ', 'Semana Nacional del Cooperativismo.', 'null', 1),
(53, '2023-04-17', 'Del 17 al 28 de abril', 'Servicio Comunal Estudiantil. Las personas estudiantes se inscriben, seleccionan o formulan proyectos de acuerdo a sus necesidades e intereses.', 'null', 1),
(54, '2023-04-17', 'Del 17 de abril al 29 de setiembre ', 'Encuentros Vocacionales Regionales liderados por el Servicio Nacional de Orientación.', 'null', 1),
(55, '2023-04-17', 'Del 17 de abril al 30 de noviembre ', 'Inicio del programa Ruta de museos.', 'https://www.mep.go.cr/programas-y-proyectos/ruta-museos', 1),
(56, '2023-04-21', '21 de abril  ', 'Día Mundial de la Creatividad y la Innovación: celebración que permite promover el pensamiento creativo multidisciplinar (Decreto Ejecutivo N°41984-MEP).', 'http://www.pgrweb.go.cr/scij/Busqueda/Normativa/Normas/nrm_texto_completo.aspx?param1=NRTC&nValor1=1&nValor2=90192&nValor3=118685&strTipM=TC ', 1),
(57, '2023-04-21', '21 de abril', 'Encuentro virtual Academy Day  dirigido a docentes técnicos de la especialidad de informática. ', 'null', 1),
(58, '2023-04-22', 'Del 22 al 26 de abril', 'Semana de Vacunación en las Américas.', 'null', 1),
(59, '2023-04-22', '22 de abril ', 'Día Nacional del Cooperativismo (Decreto N°17502-P-T).', 'https://www.pgrweb.go.cr/scij/Busqueda/Normativa/Normas/nrm_texto_completo.aspx?param1=NRTC&nValor1=1&nValor2=14544&nValor3=15613&strTipM=TC', 1),
(60, '2023-04-23', '23 de abril ', 'Día Mundial del Libro y del Derecho de Autor  (Decreto N°32609).', 'http://www.pgrweb.go.cr/scij/Busqueda/Normativa/Normas/nrm_texto_completo.aspx?param1=NRTC&nValor1=1&nValor2=55455&nValor3=116155&strTipM=TC', 1),
(61, '2023-04-24', 'Del 24 al 28 de abril ', 'Semana de Salud Ocupacional en Costa Rica (Decreto Ejecutivo N°39357-MTSS).', 'http://www.pgrweb.go.cr/scij/Busqueda/Normativa/Normas/nrm_texto_completo.aspx?param1=NRTC&nValor1=1&nValor2=80928&nValor3=102975&strTipM=TC#:~:text=Art%C3%ADculo%202%C2%BA%2DLa%20Semana%20de,podr%C3%A1%20realizar%20en%20la%20semana%2C', 1),
(62, '2023-04-24', 'Del 24 al 28 de abril ', 'Semana de la Seguridad Social.', 'null', 1),
(63, '2023-04-24', 'Del 24 de abril al 05 de mayo ', 'Periodo de inscripción a la IX Edición de la Olimpiada Costarricense de Matemática para Educación Primaria OLCOMEP, 2023.', '', 1),
(64, '2023-04-24', 'Del 24 de abril al 05 de mayo', 'Segundo proceso de asesoramiento y acompañamiento a los equipos regionales y equipos institucionales de los CE priorizados de permanencia estudiantil posterior a semana santa y de acuerdo a los resultados del Censo Inicial.', 'https://www.mep.go.cr/unidad-permanencia', 1),
(65, '2023-04-25', '25 de abril', 'Foros Regionales de Educación Cooperativa.', 'null', 1),
(66, '2023-04-27', '27  de abril ', 'Encuentro virtual Girls in ICT day.', '', 1),
(67, '2023-04-28', '28 de abril', 'Proceso Político Electoral Estudiantil. Cierra el periodo de inscripción de Partidos Políticos Estudiantiles.', 'null', 1),
(68, '2023-05-01', '01 de mayo ', 'Día Internacional de las Personas Trabajadoras.', 'https://bit.ly/3yJSYXB', 1),
(69, '2023-05-01', 'Del 01 al 05 de mayo', 'Semana  de la sensibilización contra el Bullying y ciberbullying.', 'null', 1),
(70, '2023-05-02', '02 de mayo', 'Servicio Comunal Estudiantil. Inicia la ejecución de los proyectos.', 'null', 1),
(71, '2023-05-02', 'Del 02 al 06 de mayo ', 'Proceso Político Electoral Estudiantil. El Tribunal Electoral Estudiantil exhibe el Padrón Electoral y publica el calendario de la Semana de Elecciones Estudiantiles.', 'null', 1),
(72, '2023-05-02', 'Del 02 al 12 de mayo', 'Inscripción para la etapa inicial presencial Festival Estudiantil de las Artes.', 'null', 1),
(73, '2023-05-02', 'Del 02 de mayo al 01 de diciembre', 'Ejecución del Festival Estudiantil de las Artes en la modalidad virtual.', 'null', 1),
(74, '2023-05-04', '04 de mayo ', 'Inicia inscripción Concurso Nacional Mi Cuento Fantástico.', 'https://micuentofantastico.cr/', 1),
(75, '2023-05-07', '07 de mayo ', 'Día Nacional del Calipso Costarricense (Ley N°9612).', 'http://www.pgrweb.go.cr/scij/Busqueda/Normativa/Normas/nrm_texto_completo.aspx?param1=NRTC&nValor1=1&nValor2=87958', 1),
(76, '2023-05-07', 'Del 07 al 13 de mayo ', 'Semana Nacional de la Familia (Ley N°9026)', 'http://www.pgrweb.go.cr/scij/Busqueda/Normativa/Normas/nrm_texto_completo.aspx?param1=NRTC&nValor1=1&nValor2=72162&nValor3=87903&strTipM=TC', 1),
(77, '2023-05-08', 'Del 08 al 12 de mayo', 'Proceso Político Electoral Estudiantil. Los Partidos Políticos presentan el plan de campaña política para su aprobación.', 'null', 1),
(78, '2023-05-08', 'Del 08 al 12 de mayo', 'Taller virtual  sobre  Modelos y Planes de Negocios dirigido  a docentes con  proyectos de emprendimiento . ', 'null', 1),
(79, '2023-05-08', 'Del 08 al 19 de mayo ', 'Análisis de los resultados de los dos primeros asesoramientos y acompañamientos a los equipo regionales y equipo institucionales de los CE priorizados de permanencia estudiantil.', 'https://www.mep.go.cr/unidad-permanencia', 1),
(80, '2023-05-15', '15 de mayo ', 'Inclusión de Adecuaciones Programa de Bachillerato Internacional (PDBI).', 'null', 1),
(81, '2023-05-15', '15 de mayo ', 'Día de la Persona Agricultora: conmemoración a las personas que trabajan la tierra y proporcionan, el alimento;  quienes desempeñan un papel muy importante para la alimentación, la economía y el progreso del país. (Ley N°4096).', 'http://www.pgrweb.go.cr/scij/Busqueda/Normativa/Normas/nrm_texto_completo.aspx?param1=NRTC&nValor1=1&nValor2=34325&nValor3=36190&param2=1&strTipM=TC&lResultado=2&strSim=simp', 1),
(82, '2023-05-15', '15 de mayo', 'Proceso Político Electoral Estudiantil. El Tribunal Electoral Estudiantil presenta  los partidos políticos.', 'null', 1),
(83, '2023-05-15', 'Del 15 al 18 de mayo', 'Proceso Político Electoral Estudiantil. Los Partidos Políticos realizan la campaña política.', 'null', 1),
(84, '2023-05-15', 'Del 15 al 19  de mayo ', 'Semana Nacional de la Nutrición.', 'null', 1),
(85, '2023-05-15', 'Del 15 al 26 de mayo', 'Taller  sobre emprendimiento escolar cooperativo.', 'null', 1),
(86, '2023-05-15', 'Del 15 de mayo al 24 de noviembre ', 'Proceso de transición y enlace entre ciclos y modalidades educativas liderado por la persona profesional en Orientación del centro educativo.', 'null', 1),
(87, '2023-05-16', '16 de mayo', 'Examen eliminatorio (virtual) XVI Olimpiada Costarricense de Ciencias Biológicas 2023.', 'null', 1),
(88, '2023-05-18', '18 de mayo', 'Proceso Político Electoral Estudiantil. Realización del debate público.', 'null', 1),
(89, '2023-05-19', '19 de mayo', 'Proceso Político Electoral Estudiantil. Día de las elecciones estudiantiles para la elección del Comité Ejecutivo.', 'null', 1),
(90, '2023-05-20', '20 de mayo', 'Día del y la Conserje de la Educación Pública: fecha para destacar la labor de las personas conserjes que constituyen un apoyo considerable en el proceso educativo, al ser responsables de mantener la limpieza y el orden en cada centro educativo. (Decreto 19587-MEP).', 'http://www.pgrweb.go.cr/SCIJ/Busqueda/Normativa/Normas/nrm_texto_completo.aspx?param1=NRTC&nValor1=1&nValor2=13886&nValor3=14915&strTipM=TC', 1),
(91, '2023-05-22', 'Del 22 al 26 de mayo ', 'Primera Orientación Inicial PDBI.', 'null', 1),
(92, '2023-05-22', 'Del 22 de mayo al 23 de junio', 'Festival Estudiantil de las Artes. Ejecución etapa inicial presencial.', 'null', 1),
(93, '2023-05-22', 'Del 22 de mayo al 30 de junio', 'Planificación, coordinación y diseño de acciones y estrategias para la mitigación de los factores de riesgos detectados y asociados a la exclusión educativa de cara al II periodo lectivo. ', 'https://www.mep.go.cr/unidad-permanencia', 1),
(94, '2023-05-23', '23 de mayo', 'Proceso Político Electoral Estudiantil. Declaratoria oficial de las elecciones.  Se anuncia por parte del TEE el Comité Ejecutivo electo.', 'null', 1),
(95, '2023-05-24', 'Del 24 al 28 de mayo ', 'Semana campaña de educación y detección temprana del cáncer infantil.', 'https://www.paho.org/es/temas/cancer-ninez-adolescencia', 1),
(96, '2023-05-25', '25 de mayo', 'Día de la alfabetización preventiva en materia Penal Juvenil (Decreto Ejecutivo N°. 43014-MEP-MPJ-MNA)', 'https://www.mep.go.cr/sites/default/files/decreto-43014-declaracion-dia-alfabetizacion.pdf', 1),
(97, '2023-05-26', '26 de mayo ', 'Eventos deportivos para personas con discapacidad en territorios indígenas.', 'null', 1),
(98, '2023-05-29', '29 de mayo ', 'Examen final XVI Olimpiada Costarricense de Ciencias Biológicas 2023.', 'null', 1),
(99, '2023-05-29', 'Del 29 de mayo al 08 de diciembre', 'Inicio programa Érase una vez sala.', 'https://www.mep.go.cr/programas-y-proyectos/erase-una-vez', 1),
(100, '2023-06-01', '01 de junio', 'Clasificaciones regionales Olimpiadas Especiales.', 'null', 1),
(101, '2023-06-01', 'Del 01 de junio al 31 de julio ', 'Ferias Institucionales de Ciencia y Tecnología.', 'http://bitly.ws/v884', 1),
(102, '2023-06-01', 'Del 01 de junio al 31 de octubre ', 'Concurso de lettering.', 'null', 1),
(103, '2023-06-01', 'Del 01 de junio al 30 de noviembre ', 'Concurso Nacional de pintura y dibujo Jimenez & Tanzi y Certamen Internacional Osaka Japón.', 'https://www.mep.go.cr/concursos', 1),
(104, '2023-06-04', 'Del 04 al 10 de junio ', 'Semana Nacional de Educación Religiosa.', 'null', 1),
(105, '2023-06-05', 'Del 05 al 09 de junio ', 'Semana Nacional de la Salud Mental.', 'https://www.who.int/es/news-room/fact-sheets/detail/mental-health-strengthening-our-response', 1),
(106, '2023-06-05', 'Del 05 al 09 de junio ', 'La Dirección de Educación Técnica y Capacidades Emprendedoras(DETCE) remite oficios de aprobación de  oferta educativa 2024 a Colegios Técnicos, Instituto de Educación Comunitaria (IPEC) y  Centros Integrados de Educación de Adultos(CINDEA) que imparten especialidades técnicas.', 'null', 1),
(107, '2023-06-05', 'Del 05 al 09  de junio', 'Proceso Político Electoral Estudiantil. Ceremonia de traspaso de poderes del Comité Ejecutivo, a cargo de la Dirección del Centro Educativo.', 'null', 1),
(108, '2023-06-07', 'Del 07 al 09 de junio ', 'I Eliminatoria de Olimpiadas Costarricenses de Matemática, OLCOMA (Secundaria).', 'null', 1),
(109, '2023-06-12', '12 de junio ', 'Inauguración oficial de la XLIII Semana Nacional de Orientación.', 'null', 1),
(110, '2023-06-12', 'Del 12 al 16 de junio ', 'Semana Nacional Ambiente en los Recursos Naturales.', 'null', 1),
(111, '2023-06-12', 'Del 12 al 16 de junio ', 'Festival Institucional de Inglés 2023.', 'null', 1),
(112, '2023-06-12', 'Del 12 al 16 de junio ', 'XLIII Semana Nacional de Orientación.', 'https://www.mep.go.cr/proyectos-programas/orientacion-vocacional', 1),
(113, '2023-06-12', 'Del 12 al 30 de junio', 'Proceso Político Electoral Estudiantil. Centros educativos completan formulario digital sobre resultados electorales', '', 1),
(114, '2023-06-15', '15 de junio', 'Día del Árbol: recordatorio de la importancia de proteger los bosques, por el beneficio que recibimos todos los seres vivos con los árboles. (Decreto. Nº 32609).', 'http://www.pgrweb.go.cr/scij/Busqueda/Normativa/Normas/nrm_texto_completo.aspx?param1=NRTC&nValor1=1&nValor2=55455&nValor3=116155&strTipM=TC', 1),
(115, '2023-06-15', '15 de junio', 'Día mundial de la toma de conciencia del abuso y maltrato a la vejez: celebración para reflexionar, identificar y oponerse ante los abusos y los sufrimientos infligidos a las personas adultas mayores.', 'https://www.mep.go.cr/sites/default/files/preguntafrecuente/documentos/iiiconvencioncolectivatrabajo.pdf', 1),
(116, '2023-06-16', '16 de junio ', 'Examen eliminatorio OLCOQUIM (virtual).', 'null', 1),
(117, '2023-06-18', '18 de junio', 'Día del Padre: festividad que se celebra en honor a los padres en Costa Rica.', '', 1),
(118, '2023-06-18', 'Del 18 al 25 de junio ', 'Semana Nacional de Seguridad Vial (Decreto Ejecutivo N° 18824 - MOPT).', 'http://repositorio.mopt.go.cr:8080/xmlui/bitstream/handle/123456789/3822/D-18824.pdf?sequence=1&isAllowed=y', 1),
(119, '2023-06-19', 'Del 19 al 23 de junio ', 'I Etapa clasificatoria de la IX Edición de la Olimpiada Costarricense de Matemática para Educación Primaria OLCOMEP- 2023.', 'https://recursos.mep.go.cr/olimpiadas_matematicas/ ', 1),
(120, '2023-06-19', 'Del 19 al 23 de junio ', 'Semana Nacional de la Salud Buco-Dental.', 'null', 1),
(121, '2023-06-19', 'Del 19 al 30 de junio ', 'Periodo de actividades de repaso y reforzamiento del I periodo, como parte del andamiaje de los aprendizajes y la continuidad educativa para el siguiente periodo lectivo.', 'null', 1),
(122, '2023-06-20', 'Del 20 al 24 de junio', 'Semana de prevención del fenómeno droga en los centros educativos. (26 de junio Día Internacional contra el Tráfico Ilícito y Abuso de Drogas).', 'null', 1),
(123, '2023-06-23', '23 de junio ', 'Examen clasificatorio Olimpiada Costarricense de Ciencias OLCOCI 2023', '', 1),
(124, '2023-06-26', '26 de junio ', 'Entrega del primer informe del Plan Regional para la Promoción de la Ley N°10080 y  el reglamento  Decreto Ejecutivo N°38808 - MEP población estudiantil con alto potencial alta dotación y talentos.', 'null', 1),
(125, '2023-06-26', 'Del 26 al 30 de junio ', 'Entrega Formulario de Vinculación con la Empresa y la Comunidad (FVEC-6) por parte de los centros educativos que imparten educación técnica profesional. ', 'null', 1),
(126, '2023-06-26', 'Del 26 al 30 de junio', 'Primer avance de implementación de la estrategia de Convivencia en los centros educativos.', 'null', 1),
(127, '2023-06-26', 'Del 26 al 30 de junio', 'Festival Estudiantil de las Artes. Inscripción etapa circuital presencial.', 'null', 1),
(128, '2023-06-30', '30 de junio ', 'Finaliza inscripción Concurso Nacional Mi Cuento Fantástico.', 'https://micuentofantastico.cr/', 1),
(129, '2023-07-17', 'Del 17 al 31 de julio', 'Revisión y ajuste de las acciones incorporadas en los POA/PAT 2024 en las áreas de exclusión educativa, reincorporación, permanencia y éxito educativa. ', 'https://www.mep.go.cr/unidad-permanencia', 0),
(130, '2023-07-03', 'Del 03 al 21 de julio', 'Campaña de comunicación para motivar el regreso al proceso educativo despúés de vacaciones y con énfasis en las modalidades de personas jóvenes y adultas para la reincorporación educativa. ', 'https://www.mep.go.cr/unidad-permanencia', 1),
(131, '2023-07-04', '04 de julio', 'Celebración del Día de Pablo Presbere: El Cacique Pablo Presbere o Suinsi, destaca su papel, en la rebelión indígena de 1710, de héroe nacional al oponerse a la sumisión y destrucción de la cultura indígena por parte de los conquistadores españoles. (Decreto N°32609)', 'http://www.pgrweb.go.cr/scij/Busqueda/Normativa/Normas/nrm_texto_completo.aspx?param1=NRTC&nValor1=1&nValor2=55455&nValor3=116155&strTipM=TC', 1),
(132, '2023-07-17', 'Del 17 al 21 de julio', 'Semana de recibimiento para estudiantes y comunidad educativa.', 'https://www.mep.go.cr/unidad-permanencia', 1),
(133, '2023-07-17', 'Del 17 de julio al 30 de noviembre ', 'Concurso Shoa & Derechos Humanos.', 'https://www.mep.go.cr/concursos', 1),
(134, '2023-07-24', '24 de julio ', 'Día de la Guanacastequidad. Valoración de la identidad de la persona guanacasteca (Decreto N°33000-MEP)', 'http://www.pgrweb.go.cr/scij/Busqueda/Normativa/Normas/nrm_texto_completo.aspx?param1=NRTC&nValor1=1&nValor2=56855&nValor3=62355&param2=1&strTipM=TC&lResultado=4&strSim=simp', 1),
(135, '2023-07-25', '25 de julio ', 'Incorporación del Partido de Nicoya a Costa Rica (Decreto N°32609)', 'http://www.pgrweb.go.cr/scij/Busqueda/Normativa/Normas/nrm_texto_completo.aspx?param1=NRTC&nValor1=1&nValor2=55455&nValor3=116155&strTipM=TC', 1),
(136, '2023-07-24', 'Del 24 de julio al 31 de octubre ', 'Conversatorios técnicos regionales del Servicio de Orientación.', 'null', 1),
(137, '2023-07-28', '28 de julio ', 'Entrega I Informe Económico Ley 7372 por parte de los centros educativos que imparten educación técnica profesional. ', '', 1),
(138, '2023-07-28', '28  de julio ', 'Entrega I Informe Económico de las Unidades Didácticas Productivas por parte de los centros educativos que imparten educación técnica profesional. ', '', 1),
(139, '2023-07-28', 'Del 28 al 31 de julio ', 'Entrega de Informes Descriptivos de Logros. I semestre.', '', 1),
(140, '2023-07-29', '29 de julio', 'Día del Agente de Seguridad y Vigilancia del MEP (Decreto Nº 37439-MEP)', 'http://www.pgrweb.go.cr/scij/Busqueda/Normativa/Normas/nrm_texto_completo.aspx?param1=NRTC&nValor1=1&nValor2=73955&nValor3=90966&strTipM=TC', 1),
(141, '2023-07-31', 'Del 31 de julio al 04 de agosto ', 'Periodo para la evaluación a los gerentes de  proyectos de emprendimiento Junior Achievement-Ministerio de Educación Pública.', '', 1),
(142, '2023-07-31', 'Del 31 de julio al 18 de agosto', 'Festival Estudiantil de las Artes. Ejecución etapa circuital presencial.', 'null', 1),
(143, '2023-08-01', 'Del 01 al 31 de agosto ', 'Ferias Circuitales de Ciencia y Tecnología.', 'http://bitly.ws/v884', 1),
(144, '2023-08-01', 'Todo el mes', 'Revisión y ajuste de las acciones incorporadas en los POA/PAT 2024 en las áreas de exclusión educativa, reincorporación, permanencia y éxito educativa. ', 'https://www.mep.go.cr/unidad-permanencia ', 0),
(145, '2023-08-01', 'Del 01 al 04 de agosto ', 'Semana Mundial de la Lactancia Materna ', 'null', 1),
(146, '2023-08-02', '02 de agosto', 'Día de la Virgen de los Ángeles: celebración del día de la Patrona de Costa Rica. (Ley N°2)', 'http://www.pgrweb.go.cr/scij/Busqueda/Normativa/Normas/nrm_texto_completo.aspx?param1=NRTC&nValor1=1&nValor2=38249&nValor3=40324&strTipM=TC', 1),
(147, '2023-08-04', '04 de agosto ', 'Fecha límite para recibir  las  solicitudes de oferta educativa  de talleres y tecnologías de colegios académicos diurnos, colegios con orientación tecnológica y liceos experimentales bilingües.', '', 1),
(148, '2023-08-07', '07 de agosto ', 'Día de la Paz firme y duradera: fecha para crear conciencia cívica sobre la significación de la paz firme y duradera para la identidad costarricense y la hermandad centroamericana (Ley N°9598).', 'http://www.pgrweb.go.cr/scij/Busqueda/Normativa/Normas/nrm_texto_completo.aspx?param1=NRTC&nValor1=1&nValor2=87975&nValor3=114720&strTipM=TC', 1),
(149, '2023-08-07', 'Del 07 al 11 de agosto ', 'Proceso de pre-matrícula de Educación Preescolar, Primaria y Secundaria.', 'null', 1),
(150, '2023-08-07', 'Del 07 al 11 de agosto', 'Encuentro de docentes de primaria  y secundaria que atienden las cooperativas escolares. ', 'null', 1),
(151, '2023-08-07', 'Del 07 al 30 de agosto ', 'Ferias estudiantiles de educación técnica a nivel institucional (Expojovem, Expoingeniería, Lideres Estudiantiles).', '', 1),
(152, '2023-08-07', 'Del 07 de agosto al 24 de noviembre ', 'Orientación Educativa y Vocacional. Fase de cierre y definición de estrategias 2023 con docentes guías y  docentes de grupo en preescolar y primaria.', 'https://www.mep.go.cr/sites/default/files/labor-como-docente-guia-docente-grado.pdf', 1),
(153, '2023-08-11', '11 de agosto ', 'Examen final OLCOQUIM (presencial, sedes).', 'null', 1),
(154, '2023-08-12', '12 de agosto', 'Día de las Juventudes: conmemoración para conocer y generar conciencia sobre los derechos de las personas jóvenes (Decreto N°40515-MP-MCJ-MEP).', 'http://pgrweb.go.cr/scij/Busqueda/Normativa/Normas/nrm_texto_completo.aspx?param1=NRTC&nValor1=1&nValor2=84623&nValor3=109265&strTipM=TC', 1),
(155, '2023-08-14', 'Del 14 de agosto al 01 de setiembre ', 'Servicio Comunal Estudiantil. La Dirección de Vida Estudiantil remite encuesta digital sobre el tipo de proyectos que desarrolla la población estudiantil.', '', 1),
(156, '2023-08-15', '15 de agosto', 'Día de la Madre: festividad que se celebra en honor de las madres en Costa Rica.', '', 1),
(157, '2023-08-18', '18 de agosto ', 'Acto de clausura y premiación XVI Olimpiada Costarricense de Ciencias Biológicas 2023.', 'null', 1),
(158, '2023-08-19', '19 y 26 de agosto', 'Ferias estudiantiles \"Producto desarrollados\" en coordinación con Junior Achievement.', 'null', 1),
(159, '2023-08-20', 'Del 20 al 26 de agosto ', 'Semana de Integración Familiar.', 'http://www.pgrweb.go.cr/scij/Busqueda/Normativa/Normas/nrm_norma.aspx?param1=NRM&nValor1=1&nValor2=21550&nValor3=22879&strTipM=FN', 1),
(160, '2023-08-21', 'Del 21 al 31 de agosto', 'Festival Estudiantil de las Artes. Inscripción etapa regional.', 'null', 1),
(161, '2023-08-23', '23 de agosto ', 'Examen final Olimpiadas Costarricense de Ciencias OLCOCI 2023.', 'null', 1),
(162, '2023-08-24', '24 de agosto ', 'STEM Inspiring: Las ingenieras que el mundo necesita.', '', 1),
(163, '2023-08-25', '25 de agosto ', 'Entrega de Planes de Desarrollo Quinquenal por parte de los centros educativos que imparten educación técnica profesional. ', '', 1),
(164, '2023-08-25', '25 de agosto', 'Encuentro Colegial de Escritores.', 'null', 1),
(165, '2023-08-28', 'Del 28 al 31 de agosto', 'Proceso de análisis de los resultados de la aplicación del Censo Intermedio por parte del Equipo UPRE.', 'https://www.mep.go.cr/unidad-permanencia', 1),
(166, '2023-08-28', 'Del 28 al 31 de agosto ', 'Apelaciones examen final OLCOCI 2023.', 'null', 1),
(167, '2023-08-28', 'Del 28 al 31 de agosto ', 'II Etapa clasificatoria de la IX Edición de la Olimpiada Costarricense de Matemática para Educación Primaria OLCOMEP- 2023.', 'https://recursos.mep.go.cr/olimpiadas_matematicas/ ', 1),
(168, '2023-08-30', 'Del 30 de agosto al 01 de setiembre ', 'II Eliminatoria de Olimpiadas Costarricenses de Matemática, OLCOMA (Secundaria).', 'null', 1),
(169, '2023-08-31', '31 de agosto', 'Día de la Cultura Afrocostarricense: Originalmente esta fecha se decretó como Día del Negro y la Cultura Afrocostarricense, la creación de esta conmemoración tiene el fin de visibilizar a través del quehacer educativo el aporte de la población afrocostarricense. (Ley N°9526)', 'http://www.pgrweb.go.cr/scij/Busqueda/Normativa/Normas/nrm_texto_completo.aspx?param1=NRTC&nValor1=1&nValor2=86358&nValor3=112014&strTipM=TC', 1),
(170, '2023-08-31', '31 de agosto', 'Celebración de la Fundación de la República: En el gobierno de Dr. José María Castro Madriz, se rompe cualquier ligamen, formal e informal, con el proyecto de la República Centroamericana, declarando la República de Costa Rica, de manera independiente, y superando así la forma de organizativa de Estado.', '', 0),
(171, '2023-08-31', '31 de agosto ', 'Entrega de  modificación de  planes de desarrollo quinquenal por parte de los centros educativos que imparten educación técnica profesional. ', '', 1),
(172, '2023-09-01', 'Del 01 al 29 de setiembre ', 'Ferias Regionales de Ciencia y Tecnología.', 'http://bitly.ws/v884', 1),
(173, '2023-09-01', 'Del 01 de setiembre al 20 de octubre', 'Festival Estudiantil de las Artes. Ejecución etapa regional presencial.', 'null', 1),
(174, '2023-09-02', 'Del 02 al 08 de setiembre ', 'Semana Nacional de la Biblia.', 'http://www.pgrweb.go.cr/scij/Busqueda/Normativa/Normas/nrm_norma.aspx?param1=NRM&nValor1=1&nValor2=39122&nValor3=41241&strTipM=FN', 1),
(175, '2023-09-04', 'Del 04 al 08 de setiembre ', 'Semana de Educación para personas jóvenes y Adultas.', 'null', 1),
(176, '2023-09-04', 'Del 04 al 08 de setiembre', 'Proceso Político Electoral Estudiantil. El Comité Ejecutivo del Gobierno Estudiantil entrega el 1° informe de rendición de cuentas a la Asamblea de Representantes.', '', 1),
(177, '2023-09-08', '08 de setiembre ', 'Examen de laboratorio OLCOQUIM (presencial).', 'null', 1),
(178, '2023-09-11', 'Del 11 al 15 de setiembre ', 'SEMANA CÍVICA. Conmemoración de las Fiestas de la Patria.', 'https://bit.ly/3ErEcIq', 1),
(179, '2023-09-14', '14 de setiembre', 'Desfile de faroles. Recorrido de la Antorcha de la Libertad Centroamericana en todo el territorio nacional.', 'null', 1),
(180, '2023-09-15', '15 de setiembre', 'Aniversario de la Independencia Nacional.', 'null', 1),
(181, '2023-09-18', 'Del 18 al 29 de setiembre ', 'Ferias Regionales  de Emprendimiento Cooperativo en primaria.', '', 1),
(182, '2023-09-18', 'Del 18 al 29 de setiembre', 'Tercer proceso de asesoramiento y acompañamiento a los equipos regionales y equipos institucionales de los CE priorizados de permanencia estudiantil.', 'https://www.mep.go.cr/unidad-permanencia', 1),
(183, '2023-09-23', '23 de setiembre ', 'Pasantía Olimpiada Costarricense de Ciencias OLCOCI 2023.', 'null', 1),
(184, '2023-09-24', 'Del 24 al 29 de setiembre', 'Semana Nacional del Bienestar.', 'null', 1),
(185, '2023-09-25', 'Del 25 al 29 de setiembre ', 'Final nacional de la IX Edición de la Olimpiada Costarricense de Matemática para Educación Primaria OLCOMEP- 2023.', 'https://recursos.mep.go.cr/olimpiadas_matematicas/ ', 1),
(186, '2023-09-26', '26 de setiembre ', 'Evento deportivo fútbol sin barreras.', 'null', 1),
(187, '2023-09-29', '29 de setiembre ', 'Entrega Formulario  Vinculación con la Empresa y la Comunidad ( FVEC-4) por parte de los centros educativos que imparten educación técnica profesional.  ', '', 1),
(188, '2023-09-30', '30 de setiembre ', 'Clausura del mes de la Patria Conmemoración de las Fiestas de la Patria.', 'null', 1),
(189, '2023-10-01', '01 de octubre', 'Día Nacional e Internacional de las Personas Adultas Mayores: fecha para visibilizar e informar sobre la vejez y el envejecimiento así como difundir los derechos de las personas adultas mayores.', 'null', 1),
(190, '2023-09-18', 'Del 18 al 22 de setiembre', 'Semana de Educación y Cultura Fiscal.', 'null', 1),
(191, '2023-10-02', 'Del 02 al 31 de octubre', 'Seguimiento e implementación de acciones y estrategias para  la transición y articulación de ciclos así como las actividades pertinentes para el cierre del curso lectivo.', 'https://www.mep.go.cr/unidad-permanencia', 1),
(192, '2023-10-09', 'Del 09 al 13 de octubre ', 'Segunda Orientación Inicial PDBI.', 'null', 1),
(193, '2023-10-09', 'Del 09 al 13 de octubre', 'Encuentro Vocacional Virtual Nacional.', 'https://orienta2.mep.go.cr/encuentro-vocacional-virtual/', 1),
(194, '2023-10-09', 'Del 09 octubre al 01 de diciembre ', 'Inicio y finalización de la práctica profesional o proyecto final del último nivel de la educación técnica.', '', 1),
(195, '2023-10-09', 'Del 09 al 12 de octubre ', 'Ferias estudiantiles de educación técnica, etapa regional (Expojovem, Expoingeniería, Líderes Estudiantiles).', 'null', 1),
(196, '2023-10-10', '10 de octubre', 'Día Mundial de la Salud Mental: fecha para recordar que la salud de cada personas es la sólida base para la construcción de vidas plenas y satisfactorias. \n(Decreto Ejecutivo N° 41345-S-MTSS-MCJ-MEP-MIDEPOR)', 'https://www.imprentanacional.go.cr/pub/2018/11/26/COMP_26_11_2018.html', 1),
(197, '2023-10-12', '12 de octubre ', 'Día de las culturas: conmemoración para enaltecer el carácter pluricultural y multiétnico del pueblo costarricense. (Ley N°7426). ', 'https://bit.ly/3CGu4dL  ', 1),
(198, '2023-10-13', '13 de octubre ', 'Ceremonia de Clausura OLCOQUIM 2023.', 'null', 1),
(199, '2023-10-13', '13 de octubre ', 'Encuentro de Empresas de Práctica Labor@.', 'null', 1),
(200, '2023-10-17', 'Del 17 al 20 de octubre ', 'II Asamblea del Consejo Regional de Vinculación con la Empresa y la Comunidad (CORVEC).    ', 'null', 1),
(201, '2023-10-23', 'Del 23 al 27 de octubre', 'Festival Estudiantil de las Artes. Inscripción para los Encuentros Nacionales (etapa nacional).', 'null', 1),
(202, '2023-10-24', '24 de octubre ', 'Acto de Clausura Olimpiada Costarricense de Ciencias OLCOCI 2023.', 'null', 1),
(203, '2023-10-26', '26 de octubre  ', 'IV Encuentro virtual de mujeres en ciencia y tecnología.', 'https://orienta2.mep.go.cr/plataformachicasteam/', 1),
(204, '2023-10-26', '26 de octubre ', 'Programa de Entrenamiento de Actividades Motoras (MATP).', 'null', 1),
(205, '2023-11-01', 'Del 01 al 10 de noviembre ', 'Feria Nacional de Ciencia y Tecnología.', 'http://bitly.ws/v884', 1),
(206, '2023-11-01', 'Del 01 al 30 de noviembre', 'Festival Estudiantil de las Artes. Encuentros nacionales.', 'null', 1),
(207, '2023-11-01', 'Del 01 al 30 de noviembre', 'Verificación de prematricula al curso lectivo 2024,  de estudiantes en riesgo de exclusión y personas REINCORPORADAS durante año 2023.', 'https://www.mep.go.cr/unidad-permanencia ', 1),
(208, '2023-11-06', 'Del 06 al 24 de noviembre', 'Cuarto proceso de asesoramiento y acompañamiento a los equipos regionales y equipos institucionales de los CE priorizados de permanencia estudiantil. ', 'https://www.mep.go.cr/unidad-permanencia ', 1),
(209, '2023-11-06', 'Del 06 al 17 de noviembre ', 'Ferias  estudiantiles de educación técnica, etapa nacional (Expojovem, Expoingeniería, Líderes Estudiantiles).', 'null', 1),
(210, '2023-11-07', '07 de noviembre', 'Día de la Democracia Costarricense: celebración con el propósito de honrar a las personas costarricenses que salieron con armas a defender el proceso electoral de 1889. (Decreto N°18).', 'https://www.tse.go.cr/pdf/normativa/diadelademocracia.pdf', 1),
(211, '2023-11-07', '07 de noviembre', 'Día de la Constitución Política: se conmemora la creación de la Constitución Política de 1949 y sus reformas (Decreto N°32609).', 'http://www.pgrweb.go.cr/scij/Busqueda/Normativa/Normas/nrm_texto_completo.aspx?param1=NRTC&nValor1=1&nValor2=55455&nValor3=116155&strTipM=TC', 1),
(212, '2023-11-06', 'Del 06  al 10 de noviembre ', 'Semana nacional de los derechos de las personas con discapacidad.', 'http://www.pgrweb.go.cr/scij/Busqueda/Normativa/Normas/nrm_texto_completo.aspx?param1=NRTC&nValor1=1&nValor2=20895&nValor3=84917&param2=1&strTipM=TC&lResultado=2&strSim=simp', 1),
(213, '2023-11-10', '10 de noviembre ', 'Entrega de planes de inversión 2023 de Ley 7372, por parte de los centros educativos que imparten educación técnica profesional. ', '', 1),
(214, '2023-11-10', 'Del 10 al 12 de noviembre ', 'Quimicamp, Campamento de vocaciones científicas.', 'null', 1),
(215, '2023-11-11', 'Del 11 al 13 de noviembre ', 'Quimicamp (Sede por Definir)', '', 0),
(216, '2023-11-13', 'Del 13 al 15 de noviembre ', 'Etapa final Olimpiadas Costarricenses de Matemática, OLCOMA (Secundaria).', 'null', 1),
(217, '2023-11-13', 'Del 13 al 24 de noviembre ', 'Finaliza periodo para la ejecución de los proyectos de Servicio Comunal Estudiantil.', 'null', 1),
(218, '2023-11-15', '15 de noviembre ', 'Premiación Concurso Nacional Mi Cuento Fantástico.', 'https://micuentofantastico.cr/', 1),
(219, '2023-11-19', '19 de noviembre', 'Día de Alajuela Ciudad Palabra (Ley 10005).', 'http://www.pgrweb.go.cr/scij/Busqueda/Normativa/Normas/nrm_texto_completo.aspx?param1=NRTC&nValor1=1&nValor2=95298&nValor3=127191&param2=1&strTipM=TC&lResultado=1&strSim=simp', 1),
(220, '2023-11-20', '20 de noviembre ', 'Entrega del informe final del Plan Regional para la Promoción de la Ley N°10080 y  el reglamento  Decreto Ejecutivo N°38808 - MEP población estudinatil con alto potencial alta dotación y talentos.', 'null', 1),
(221, '2023-11-20', 'Del 20 de noviembre al 15 de diciembre ', 'Evaluación de Cooperativas Escolares a nivel nacional.', '', 1),
(222, '2023-11-21', 'Del 21 al 30 de noviembre ', 'Desarrollo del periodo de actividades de repaso y reforzamiento del II periodo, como parte del andamiaje de los aprendizajes para las personas estudiantes de sexto y noveno año de la EGB y undécimo año Educación Diversificada Académica o sus equivalentes en modalidades EPJA.', '', 1),
(223, '2023-11-22', '22 de noviembre', 'Día del maestro y la maestra costarricense.', '', 1),
(224, '2023-11-23', 'Del 23 de noviembre al 08 de diciembre ', 'Desarrollo del periodo de sensibilización, acompañamiento y reforzamiento del II periodo lectivo para todos los niveles educativos, excepto sexto y noveno año de la EGB y undécimo año Educación Diversificada Académica o su equivalente en modalidades EPJA.', 'null', 1),
(225, '2023-11-24', '24 de noviembre ', 'Premiación de la XI OLCOMEP-2023.', 'null', 1),
(226, '2023-11-27', 'Del 27 al 30 de noviembre', 'Encuentro intrainstitucional de buenas prácticas  que inciden en la reducción de la exclusión educativa.', 'https://www.mep.go.cr/unidad-permanencia', 1),
(227, '2023-11-27', 'Del 27 de noviembre al 01 de diciembre', 'Elaboración del acta de conclusión del Servicio Comunal Estudiantil.', '', 1),
(228, '2023-11-28', 'Del 28 de noviembre al 01 de diciembre ', 'Final de los Juegos Nacionales de Olimpiadas Especiales.', 'null', 1),
(229, '2023-11-29', '29 y 30 de noviembre', 'Entrega del Informe de Notas del II periodo lectivo, sexto y noveno año de la EGB y undécimo año Educación Diversificada Académica o su equivalente en modalidades EPJA.', 'null', 1),
(230, '2023-11-29', '29 de noviembre', 'Inspira STEAM 2023.', 'null', 1),
(231, '2023-11-30', '30 de noviembre ', 'Día Nacional de la Marimba Costarricense: Declaración de la marimba como símbolo nacional de la cultura y el folclore costarricense (Ley N°9419).', 'http://www.pgrweb.go.cr/scij/Busqueda/Normativa/Normas/nrm_texto_completo.aspx?param1=NRTC&nValor1=1&nValor2=83730&nValor3=107736&param2=1&strTipM=TC&lResultado=1&strSim=simp', 1),
(232, '2023-11-30', '30 de noviembre', 'Encuentro de experiencias BEYCRA Somos Desarrollo Sostenible 2023.', '', 1),
(233, '2023-12-01', '01 de diciembre', 'Día de la Abolición del Ejército: La abolición del ejército de Costa Rica se refiere a la supresión de todas las fuerzas armadas de Costa Rica, llevada a cabo el 1° de diciembre de 1948, tras darse por finalizada la Guerra civil de Costa Rica de 1948. (Decreto N°41444-MCJ-MEP).', 'https://bit.ly/3CEkMif ', 1),
(234, '2023-12-01', 'Del 01 al 23 de diciembre', 'Elaboración del Informe final de resultados de los resultados en cumplimiento a las metas planteadas en el POA 2023  relacionado  a la permanencia, reincorporación y reducción de la exclusión educativa.', 'https://www.mep.go.cr/unidad-permanencia', 1),
(235, '2023-11-30', '30 de noviembre', 'Finalización del Proyecto de los Juegos Virtuales Estudiantiles y del Programa Juegos Deportivos Estudiantiles.', 'null', 1),
(236, '2023-12-04', 'Del 04 al 08 de diciembre ', 'Proceso de ratificación matrícula de Educación Preescolar, Primaria y Secundaria.', '', 1),
(237, '2023-12-04', 'Del 04 al 08 de diciembre', 'Proceso Político Electoral Estudiantil. El Comité Ejecutivo del Gobierno Estudiantil entrega el 2° informe de rendición de cuentas a la Asamblea de Representantes.', '', 1),
(238, '2023-12-05', '05 de diciembre ', 'Encuentro regional para la población estudiantil \"Ideas talentosas y creativas\".', 'null', 1),
(239, '2023-12-08', '08 de diciembre ', 'Entrega informe anual  de labores Unidades Didácticas - Productivas por parte de los centros educativos que imparten educación técnica profesional. ', '', 1),
(240, '2023-12-08', '08 de diciembre ', 'Entrega II Informe Económico de las Unidades Didácticas Productivas por parte de los centros educativos que imparten educación técnica profesional. ', '', 1),
(241, '2023-12-08', '08 de diciembre ', 'Entrega II Informe Económico Ley 7372, por parte de los centros educativos que imparten educación técnica profesional. ', '', 1),
(242, '2023-12-11', '11 y 12 de diciembre ', 'Entrega de Informes Descriptivos de Logros. II semestre.', 'null', 1),
(243, '2023-12-22', '22 de diciembre', 'Batalla de la Trinidad: Una vez reanudada la Campaña Nacional, el Ejército Expedicionario fue dividido en dos unidades: la primera conformada por 700 hombres a cargo del general José María Cañas, y la segunda llamada División de Vanguardia y formada por 200 soldados, lo hizo por las llanuras de San Carlos hacia el río San Juan. (Nº 42707-MCJ-MEP).', 'http://www.pgrweb.go.cr/scij/Busqueda/Normativa/Normas/nrm_texto_completo.aspx?param1=NRTC&param2=1&nValor1=1&nValor2=93015&nValor3=123312&strTipM=TC&lResultado=1&nValor4=1&strSelect=sel', 1),
(244, '2024-01-18', 'Del 18 al 19 de enero 2024', 'VII CONVI-BIOXVI Olimpiada Costarricense de Ciencias Biológicas 2023.', 'null', 1),
(245, '2023-09-10', '10 de setiembre', 'Conmemoración del nacimiento de Nicolás Aguilar Murillo (Ley N° 9178 y su reglamento Nº 40620-C-MEP).\n', 'http://www.pgrweb.go.cr/scij/Busqueda/Normativa/Normas/nrm_texto_completo.aspx?param1=NRTC&nValor1=1&nValor2=84926&nValor3=109730&param2=1&strTipM=TC&lResultado=2&strSim=simp', 1),
(246, '2023-01-30', 'Del 30 de enero al 10 de febrero', 'Ratificación del equipo de la PERMANENCIA en el centro educativo y, calendarización de reuniones.', 'null', 0),
(247, '2023-11-14', 'Del 14 al 16 de noviembre ', 'LIV Asamblea Nacional Ordinaria del Sindicato de Trabajadoras y Trabajadores de la Educación Costarricense (SEC)', 'null', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotos`
--

CREATE TABLE `fotos` (
  `id` int(11) NOT NULL,
  `idMes` int(11) DEFAULT NULL,
  `titulo` varchar(512) DEFAULT NULL,
  `descripcion` varchar(512) DEFAULT NULL,
  `imagen` varchar(256) DEFAULT NULL,
  `activo` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `fotos`
--

INSERT INTO `fotos` (`id`, `idMes`, `titulo`, `descripcion`, `imagen`, `activo`) VALUES
(1, 1, 'Pinceladas de diversión', 'Llegar a la Escuela de Sarchí Norte es toda una aventura. Los pasillos de esta institución se adornan en sus pisos con flores, rayuelas y caminos que evocan al juego y al aprendizaje. Es imposible pasar por uno de esos pabellones sin jugar a la rayuela.\n\nLas destrezas artísticas de las maestras hacen que los estudiantes a diario despierten su imaginación, sonrisas y conversaciones. | https://www.mep.go.cr/noticias/docentes-dan-pinceladas-diversion \n', 'enero.jpg', 1),
(2, 2, 'Mochilas locas', 'Crear un salveque muy particular para portar los útiles escolares en un día lectivo cualquiera, mochilas locas, cargadas de color, creatividad e ingenio alegran a los niños y niñas. \nEsta iniciativa permite fortalecer la empatía y el sentido de pertenencia hacia el centro educativo permitiendo coleccionar recuerdos positivos y agradables en la mente de los estudiantes. | https://www.mep.go.cr/noticias/divertidas-actividades-impulsan-estudiantes-ir-clases-ilusion\n', 'febrero.jpg', 1),
(3, 3, 'Innovación a favor de la comunidad', 'Solventar la contaminación de las aguas de pozos y nacientes con arsénico y que está generando enfermedades; llevó a un grupo de estudiantes del Colegio Técnico Profesional de Atenas a ganar en el año 2022 el máximo galardón de la competencia regional Solve for Tomorrow (SFT) que promueve el uso de la ciencia y tecnología para resolver problemas comunitarios.  | https://www.mep.go.cr/noticias/costa-rica-se-titulo-campeon-regional-concurso-solve-tomorrow', 'marzo.jpg', 1),
(4, 4, 'El bolso viajero de lecturas', 'Una bibliotecóloga con el afán de fomentar la lectura en los estudiantes, hace que los libros visiten los hogares de estudiantes de I ciclo. Es así que 12 bolsos cargados de aventuras y diversión llevan la lectura a 12 hogares durante una semana; pues deben rotar para llegar a otras familias. | https://www.mep.go.cr/noticias/bolsos-viajeros-lectura-recorren-hatillo', 'abril.jpg', 1),
(5, 5, 'Espacio radial', '“EDUCÁNDONOS” así se denomina el espacio radial que dispone la comunidad educativa turrialbeña, donde se promueven temas de interés educativo como la orientación vocacional y experiencias exitosas laborales, educativas e inspiradoras. | https://www.mep.go.cr/noticias/espacio-radial-turrialbeno-abre-puertas-conocimiento', 'mayo.jpg', 1),
(6, 6, 'Tierra prometida', 'Niños y niñas desarrollan proyectos ambientales. A través del reciclaje se ha logrado que ninguna de las aulas cuente con basurero. La alimentación es más saludable y la mayoría de lo que se consume es totalmente orgánico y producido por ellos mismos. | https://www.mep.go.cr/noticias/%E2%80%9Ctierra-prometida%E2%80%9D-permite-estudiantes-construir-su-propio-aprendizaje-traves-naturaleza', 'junio.jpg', 1),
(7, 7, 'Sala de exhibición de productos', 'La idea de la sala nació gracias a una Junta de Educación, como opción para que los estudiantes muestren y ofrezcan sus productos y artesanías hechas a mano. Con las ventas de los productos, se compra más material para que las personas estudiantes sigan desarrollando habilidades para la vida. | https://www.mep.go.cr/noticias/estudiantes-tienen-sala-exhibicion-productos-hechos-mano', 'julio.jpg', 1),
(8, 8, 'Periódico estudiantil', 'El periódico se ha convertido en un importante apoyo institucional para la cobertura y difusión de actividades, así como de proyección a la comunidad. Este medio de comunicación estudiantil, se ha convertido en un estímulo para la permanencia de los estudiantes en el sistema educativo y cada vez son más los interesados en incorporarse al equipo periodístico del centro educativo. |https://www.mep.go.cr/noticias/periodico-estudiantil-parte-adn-institucion-guanacasteca', 'agosto.jpg', 1),
(9, 9, 'Promoción del voluntariado', '“Somos Aguirre” busca que personas voluntarias se solidaricen con centros educativos vecinos y que aporten con trabajo voluntario una mano amiga para resolver las situaciones que les aquejan. La Escuela Las Mesas de Parrita ha sido una beneficiada, voluntarios colaboraron con su  embellecimiento mediante la pintura de diferentes áreas, donación de material didáctico y mantenimiento de zonas verdes. | https://www.mep.go.cr/noticias/direccion-regional-educacion-promueve-voluntariado-centros-educativos-aguirre', 'setiembre.jpg', 1),
(10, 10, 'Rally de matemática', '“Hacer vivir las matemáticas”, es el lema del rally de matemáticas, para que los estudiantes que participan vivencian la matemática de manera atractiva y lúdica, resolviendo situaciones o problemas cotidianos que pueden enfrentar en la vida real.\n\nLos estudiantes con este tipo de actividades fortalecen valores como el trabajo en equipo, la sana competencia, el razonamiento lógico, entre otros.  | https://www.mep.go.cr/noticias/rally-matematica-experiencia-entretenida-numeros-razonamiento\n', 'octubre.jpg', 1),
(11, 11, 'Antorcha de conocimientos', 'Antorcha fue un concurso de conocimiento que reunía a estudiantes de diferentes instituciones para poner a brillar conocimientos y destrezas en las materias de matemática, español, inglés, ciencias y cívica en el caso de secundaria.\nEste tipo de actividades buscan promover la formación académica de una manera diferente, divertida y en equipo. | https://www.mep.go.cr/noticias/antorcha-enciende-emociones-ninos-jovenes-0 \n', 'noviembre.jpg', 1),
(12, 12, 'Cuidar la salud mental', 'Convivios, campeonatos de futbol, caminatas, juegos tradicionales son parte de las actividades para fortalecer las habilidades socioemocionales de sus estudiantes, profesores y personal de las instituciones educativas.\n\nEste tipo de actividades evitan el aislamiento social y fortalecen la confianza necesaria para los aprendizajes. | https://www.mep.go.cr/noticias/institucion-cartaginesa-promueve-actividades-cuidar-salud-mental-su-comunidad-educativa\n', 'diciembre.jpg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informacion_subcategorias`
--

CREATE TABLE `informacion_subcategorias` (
  `id` int(11) NOT NULL,
  `idSubcategoria` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `rango` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `activo` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `informacion_subcategorias`
--

INSERT INTO `informacion_subcategorias` (`id`, `idSubcategoria`, `fecha`, `rango`, `descripcion`, `link`, `activo`) VALUES
(1, 1, '2023-02-06', 'Del 06 de febrero al 03 de marzo ', 'Matrícula extraordinaria para postulantes rezagados de la prueba extraordinaria de Especialidades Técnicas.', '', 1),
(2, 1, '2023-02-20', 'Del 20 de febrero al 25 de abril ', 'Período de matrícula para Pruebas de Dominio Lingüístico  convocatoria 01-2023 y convocatoria 02-2023  se incluye la matrícula con apoyos educativos.\n* Matrícula para las población estudiantil que realizan la PDL y que finalizan la Educación Diversificada en el primer semestre 2023 y estudiantes de duodécimo año de Colegios Técnicos que finalizan la Educación Diversificada en el segundo semestre 2023.\n* Matrícula para la población estudiantil que finalizan la Educación Diversificada en el segundo semestre 2023: programa de Bachillerato Internacional  colegios académicos (diurnos  nocturnos  CONED y CNVMTS   CINDEA e IPEC).', '', 1),
(3, 1, '2023-04-16', '16  22 y 23 de abril ', 'Período de aplicación de pruebas del Programa de Bachillerato Educación Diversificada a Distancia (Pruebas de bachillerato) Contenidos de las pruebas N° 1 y N° 2 juntos. Convocatoria 00-2023.', '', 1),
(4, 1, '2023-04-16', '16  22 y 23 de abril ', 'Período de aplicación de pruebas del Programa de Bachillerato por Madurez Suficiente  convocatoria 01-2023.', '', 1),
(5, 1, '2023-05-14', '14  20 y 21 de mayo ', 'Período de aplicación de pruebas del Programa de III Ciclo de la EGBA convocatoria 01-2023.', '', 1),
(6, 1, '2023-05-22', 'Del 22 de mayo al 09 de junio ', 'Proceso de aplicación de Prueba de Dominio Lingüístico (PDL) convocatoria 01-2023  para la población estudiantil que realizan la PDL y que finalizan la Educación Diversificada en el primer semestre 2023. ', '', 1),
(7, 1, '2023-06-01', 'Del 01 de junio al 04 de agosto ', 'Matrícula ordinaria  y apoyos educativos de Especialidades Técnicas:\n* Matrícula ordinaria para estudiantes regulares del curso lectivo 2023  postulantes rezagados del 2022 o anteriores.\n* Matrícula de los apoyos educativos para toda la población estudiantil de Especialidades Técnicas.', '', 1),
(8, 1, '2023-06-04', '04 de junio ', 'Período de aplicación de pruebas del Programa de Naturalización   convocatoria 01-2023.', '', 1),
(9, 1, '2023-06-25', '25 de junio  01 y 02 de julio  ', 'Período de aplicación de pruebas del Programa de I y II Ciclo de la EGBA convocatoria 01-2023.', '', 1),
(10, 1, '2023-06-25', '25 de junio  01 y 02 de julio  ', 'Período de aplicación de pruebas del Programa  Bachillerato Educación Diversificada a Distancia ( Convocatorias ordinarias) Prueba N° 1.', '', 1),
(11, 1, '2023-09-04', 'Del 04 de setiembre al 13 de octubre ', 'Aplicación de la convocatoria de Prueba de Dominio Lingüístico 02-2023.\n* para la población estudiantil de duodécimo año de Colegios Técnicos que finalizan la Educación Diversificada en el segundo semestre 2023.\n* para la población estudiantil que finalizan la Educación Diversificada en el segundo semestre 2023: programa de Bachillerato Internacional, colegios académicos (diurnos  nocturnos  CONED y CNVMTS   CINDEA e IPEC).', '', 1),
(12, 1, '2023-09-09', '09 de setiembre ', 'Aplicación de la prueba de admisión para los Liceos Experimentales Bilingües y Secciones Bilingües Publicas.', '', 1),
(13, 1, '2023-09-24', '24 y 30 de setiembre y 01 de octubre ', 'Período de aplicación de pruebas del Programa de Bachillerato por Madurez Suficiente convocatoria 02-2023.', '', 1),
(14, 1, '2023-09-24', '24 y 30 de setiembre y 01 de octubre ', 'Período de aplicación de pruebas del Programa de Bachillerato Educación Diversificada a Distancia (Convocatorias ordinarias)  Prueba N° 2.', '', 1),
(15, 1, '2023-10-02', 'Del 02 al 06 de octubre ', 'Aplicación de Prueba de Dominio Lingüístico Primaria', '', 1),
(16, 1, '2023-10-05', '05 de octubre ', 'Aplicación de la prueba escrita comprensiva estandarizada del último nivel de la educación técnica.', '', 1),
(17, 1, '2023-10-20', 'Del 20 de octubre al 10 de noviembre ', 'Convocatoria de exámenes del PDBI', 'https://www.ibo.org/es ', 1),
(18, 1, '2023-10-22', '22  28 y 29 de octubre ', 'Período de aplicación de pruebas del Programa de  III Ciclo de la EGBA convocatoria 02-2023.', '', 1),
(19, 1, '2023-11-06', 'Del 06 al 17 de noviembre ', 'Aplicación de reprogramación de la convocatoria de Prueba de Dominio Lingüístico (PDL) 2023.\n* para toda la población estudiantil que por motivos normados en el Reglamento de Evaluación de los Aprendizajes no hayan realizado la prueba de PDL 2023.', '', 1),
(20, 1, '2023-11-25', '26 de noviembre ', 'Período de aplicación de pruebas del Programa de Naturalización   convocatoria 02-2023.', '', 1),
(21, 1, '2023-12-09', '9  10 y 17 de diciembre ', 'Período de aplicación de pruebas del Programa de I y II Ciclo de la EGBA convocatoria 02-2023.', '', 1),
(22, 1, '2023-12-09', '9  10 y 17 de diciembre ', 'Período de aplicación de pruebas del Programa  Bachillerato Educación Diversificada a Distancia (Pruebas Comprensivas) Contenidos de las pruebas a N° 1 y N° 2 juntos. ', '', 1),
(23, 1, '2023-12-09', '9  10 y 17 de diciembre ', 'Período de aplicación de pruebas del Programa  Bachillerato Educación Diversificada a Distancia (Pruebas de Bachillerato) Contenidos de las pruebas a N° 1 y N° 2 juntos.  Convocatoria 03-2023.', '', 1),
(24, 1, '2023-10-16', 'Del 16 al 20 de octubre', 'Pruebas Nacionales Saber para Primaria', '', 1),
(25, 1, '2023-09-25', 'Del 25 al 29 de setiembre', 'Pruebas Nacionales Saber para Secundaria', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `limites`
--

CREATE TABLE `limites` (
  `id` int(1) NOT NULL,
  `inferior` int(11) DEFAULT NULL,
  `superior` int(11) DEFAULT NULL,
  `comentario` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `limites`
--

INSERT INTO `limites` (`id`, `inferior`, `superior`, `comentario`) VALUES
(1, 1, 14, 'limites de 1 - 12: meses del año 2023 / del 13 en adelante corresponden al 2024');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `meses`
--

CREATE TABLE `meses` (
  `id` int(2) NOT NULL,
  `renderMes` varchar(16) NOT NULL,
  `titulo` varchar(32) DEFAULT NULL,
  `inicio` int(1) DEFAULT NULL,
  `maximo` int(2) DEFAULT NULL,
  `colorEncabezado` varchar(16) NOT NULL,
  `colorBarraLateral` varchar(16) NOT NULL,
  `colorAlbum` varchar(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `meses`
--

INSERT INTO `meses` (`id`, `renderMes`, `titulo`, `inicio`, `maximo`, `colorEncabezado`, `colorBarraLateral`, `colorAlbum`) VALUES
(1, '2023-01-', 'ENERO 2023', 0, 31, '#F9B000', '#E6E7E8', '#C75160'),
(2, '2023-02-', 'FEBRERO 2023', 3, 28, '#F08700', '#E6E7E8', '#746AB0'),
(3, '2023-03-', 'MARZO 2023', 3, 31, '#EE7354', '#E6E7E8', '#C877B1'),
(4, '2023-04-', 'ABRIL 2023', 6, 30, '#E62176', '#E6E7E8', '#8C8E92'),
(5, '2023-05-', 'MAYO 2023', 1, 31, '#A01881', '#E6E7E8', '#5B8275'),
(6, '2023-06-', 'JUNIO 2023', 4, 30, '#6B488D', '#E6E7E8', '#1A2E78'),
(7, '2023-07-', 'JULIO 2023', 6, 31, '#0056A4', '#E6E7E8', '#D5C02C'),
(8, '2023-08-', 'AGOSTO 2023', 2, 31, '#0094DA', '#E6E7E8', '#82B190'),
(9, '2023-09-', 'SETIEMBRE 2023', 5, 30, '#00807F', '#E6E7E8', '#D1D2D4'),
(10, '2023-10-', 'OCTUBRE 2023', 0, 31, '#00743C', '#E6E7E8', '#2E788F'),
(11, '2023-11-', 'NOVIEMBRE 2023', 3, 30, '#3E993A', '#E6E7E8', '#F88CD1'),
(12, '2023-12-', 'DICIEMBRE 2023', 5, 31, '#A8B70B', '#E6E7E8', '#A0C7DF'),
(13, '2024-01-', 'ENERO 2024', 1, 31, '#F9B000', '#E6E7E8', '#D98EAD'),
(14, '2024-02-', 'FEBRERO 2024', 4, 28, '#F08700', '#E6E7E8', '#D98EAD'),
(15, '2024-03-', 'MARZO 2024', 4, 31, '#EE7354', '#E6E7E8', '#D98EAD');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `otras_fechas`
--

CREATE TABLE `otras_fechas` (
  `id` int(1) NOT NULL,
  `fecha` date NOT NULL,
  `rango` varchar(64) DEFAULT NULL,
  `descripcion` varchar(1024) DEFAULT NULL,
  `idCategoria` int(1) DEFAULT NULL,
  `link` varchar(256) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `otras_fechas`
--

INSERT INTO `otras_fechas` (`id`, `fecha`, `rango`, `descripcion`, `idCategoria`, `link`, `activo`) VALUES
(1, '2023-02-06', 'Todo el año', 'Implementación de los protocolos UPRE y de la estrategia Alerta Temprana para la prevención del riesgo exclusión educativa.', 1, 'https://www.mep.go.cr/unidad-permanencia', 1),
(2, '2023-02-06', '06 de febrero ', 'Inicio del curso lectivo 2023.', 1, 'null', 1),
(3, '2023-02-06', 'Del 06 al 17 de febrero ', 'Desarrollo del proceso de evaluación diagnóstica inicial. ', 1, '', 1),
(4, '2023-02-06', 'Del 06 de febrero al 26 de mayo ', 'I periodo lectivo del último nivel de la Educación Técnica.', 1, 'null', 1),
(5, '2023-02-06', 'Del 06 de febrero al 30 de junio', 'I periodo lectivo para personas estudiantes que cursan: \n• Educación General Básica.\n• Décimo y undécimo año de la Educación Diversificada Académica y Técnica.\n• I periodo para las asignaturas semestrales (Artes industriales y Educación para el Hogar).\n• CINDEA e IPEC.', 1, '', 1),
(6, '2023-03-06', 'Del 06 de marzo al 30 de setiembre ', 'Curso lectivo para el estudiantado del III Ciclo de la Educación General Básica Abierta y Bachillerato por Madurez  en sedes y proyectos de Educación Abierta y Educación Abierta para el sector empresarial e institucional.', 1, '', 1),
(7, '2023-03-06', 'Del 06 de marzo al 31 de octubre ', 'Curso lectivo para el estudiantado del I y II Ciclos de la Educación General Básica Abierta  en sedes y proyectos de Educación Abierta y Educación Abierta para el sector empresarial e institucional.', 1, 'null', 1),
(8, '2023-03-29', '29 y 30 marzo ', 'Actos de graduación de estudiantes que cursaron el Programa del Bachillerato Internacional en el año lectivo 2022.', 1, 'null', 1),
(9, '2023-04-03', 'Del 03 al 07 de abril ', 'Semana Santa.', 1, 'null', 1),
(10, '2023-05-25', '25 y 26 de mayo ', 'Entrega del Informe de Notas del I periodo  del último nivel de la Educación Técnica. ', 1, 'null', 1),
(11, '2023-05-25', 'Del 29 de mayo al 14 de setiembre ', 'II periodo lectivo del último nivel de la Educación Técnica. ', 1, 'null', 1),
(12, '2023-07-03', 'Del 03 al 14 de julio ', 'Vacaciones de medio año.', 1, '', 1),
(13, '2023-07-03', 'Del 17 al 21 de julio ', 'Desarrollo del proceso diagnóstico del inicio del II periodo.', 1, '', 1),
(14, '2023-07-17', 'Del 17 de julio al 12 de diciembre ', 'II periodo lectivo para personas estudiantes que cursan:\n• Educación General Básica.\n• Décimo y undécimo año de la Educación Diversificada.\n• II periodo para las asignaturas semestrales (Artes industriales y Educación para el Hogar).\n• CINDEA  IPEC y CONED.', 1, '', 1),
(15, '2023-07-28', '28 y 31 de julio ', 'Entrega del Informe Cualitativo de Desempeño o del Informe de Notas del I periodo  según corresponda.', 1, '', 1),
(16, '2023-09-13', '13 y 14 de setiembre ', 'Entrega del Informe de Notas del II periodo  del último nivel de la Educación Técnica. ', 1, 'null', 1),
(17, '2023-12-11', '11 y 12 de diciembre ', 'Entrega del Informe Cualitativo de Desempeño o del Informe de Notas del II periodo  según corresponda  excepto sexto y noveno año de la EGB y undécimo año Educación Diversificada Académica o sus equivalentes en modalidades EPJA.', 1, '', 1),
(18, '2023-12-12', '12 de diciembre ', 'Finaliza curso lectivo 2023.', 1, 'null', 1),
(19, '2023-12-13', '13 y 14 de diciembre ', 'Actos de graduación.', 1, 'null', 1),
(20, '2023-02-01', 'Del 01 al 03 de febrero ', 'Proceso de matrícula y reconocimiento para personas estudiantes de primer ingreso y ratificación de matrícula para el estudiantado regular en IPEC y CINDEA  así como el estudiantado de las Escuelas Nocturnas y Colegios Académicos Nocturnos  para el I periodo lectivo 2023.', 3, 'null', 1),
(21, '2023-02-06', 'Del 06 al 12 de febrero ', 'Proceso de inducción al estudiando CONED.', 3, 'null', 1),
(22, '2023-02-06', 'Del 06 de febrero al 07 de marzo ', 'Primera aplicación de pruebas por suficiencia para estudiantes de IPEC,  CINDEA, Colegios Académicos Nocturnos y Escuelas Nocturnas solicitadas en el tiempo reglamentado.', 3, 'null', 1),
(23, '2023-02-06', 'Del 06 de febrero al 02 de julio ', 'I periodo lectivo CONED.', 1, 'null', 1),
(24, '2023-02-13', '13 de febrero ', 'Inicio de abordaje de los nuevos aprendizajes  excepto para el CONED.', 3, '', 1),
(25, '2023-06-19', 'Del 19 al 30 de junio ', 'Solicitud formal de pruebas por suficiencia para el II periodo lectivo 2023 para estudiantes de IPEC y CINDEA.', 3, 'null', 1),
(26, '2023-06-26', 'Del 26 de junio al 02 de julio ', 'Proceso de matrícula y reconocimiento para las personas estudiantes de primer ingreso y ratificación de matrícula para el estudiantado regular en las modalidades educativas CONED  para el segundo periodo del 2023.', 3, 'null', 1),
(27, '2023-06-17', 'Del 17 de julio al 17 agosto ', 'Segunda aplicación de pruebas por suficiencia para estudiantes de IPEC y  CINDEA  solicitadas en el tiempo reglamentado.', 3, '', 1),
(28, '2023-08-14', 'Del 14 al 18 de agosto ', 'Graduación del I periodo lectivo para el estudiantado que concluye el I, II o III Nivel de IPEC y CINDEA y el CONED  según corresponda.', 3, 'null', 1),
(29, '2023-11-27', 'Del 27 de noviembre al 12 de diciembre ', 'Solicitud formal de pruebas por suficiencia para el I periodo lectivo 2024 para estudiantes de IPEC, CINDEA, Escuelas Nocturnas y Colegios Académicos Nocturnos.', 3, 'null', 1),
(30, '2023-12-04', 'Del 04 al 12 de diciembre ', 'Proceso de matrícula y reconocimiento para personas estudiantes de primer ingreso y ratificación de matrícula para el estudiantado regular en IPEC y CINDEA  así como el estudiantado de las Escuelas Nocturnas y Colegios Académicos Nocturnos  para el I período lectivo 2024.', 3, 'null', 1),
(31, '2023-02-06', 'Del 06 al 14 de febrero ', 'Aplicación de la II prueba de ampliación  para todos los niveles educativos  excepto sexto y noveno año de la Educación General Básica y el último año de la Educación Diversificada  o sus equivalentes en modalidades EPJA  del curso lectivo 2022. ', 4, 'null', 1),
(32, '2023-03-06', 'Del 06 de marzo al 28 de abril ', 'Práctica supervisada o proyecto de graduación para estudiantes rezagados de último nivel de la educación técnica profesional. ', 4, '', 1),
(33, '2023-05-13', '15 de mayo ', 'Matrícula de Exámenes del Programa de Bachillerato Internacional (PDBI) para  Convocatoria Noviembre 2023.', 4, 'https://www.ibo.org/es', 1),
(34, '2023-06-19', 'Del 19 al 23 de junio ', 'Aplicación de la actividad de recuperación del I periodo según lo indicado en los artículos 45 y 46 del Reglamento de Evaluación de los Aprendizajes. ', 4, 'null', 1),
(35, '2023-06-26', 'Del 26 al 30 junio ', 'Aplicación de la I prueba de ampliación para las asignaturas  módulos y cursos con promoción semestral. ', 4, '', 1),
(36, '2023-07-24', 'Del 24 al 28 de julio ', 'Aplicación de la II prueba de ampliación para las asignaturas  módulos y cursos con promoción semestral  excepto el I y II Ciclo de la Educación General Básica (Artes Industriales y Educación para el Hogar).', 4, '', 1),
(37, '2023-09-18', 'Del 18 al 26 de setiembre de 2022', 'Aplicación de la I prueba de ampliación II periodo lectivo del último nivel de la Educación Técnica. ', 4, 'null', 1),
(38, '2023-10-09', 'Del 09 de octubre al 01 de diciembre ', 'Práctica supervisada o proyecto de graduación para estudiantes de último nivel de la Educación Técnica Profesional. ', 4, 'null', 1),
(39, '2023-11-13', 'Del 13 al 21 de noviembre ', 'Aplicación de la I prueba de ampliación  sexto y noveno año de la Educación General Básica y undécimo año Educación Diversificada Académica o sus equivalentes en modalidades EPJA.', 4, 'null', 1),
(40, '2023-11-23', 'Del 23 al 29 de noviembre ', 'Aplicación de la actividad de recuperación del II periodo  según lo indicado en los artículos 45 y 46 del Reglamento de Evaluación de los Aprendizajes. ', 4, '', 1),
(41, '2023-12-01', 'Del 01 al 08 de diciembre ', 'Aplicación de la II prueba de ampliación  sexto y noveno año de la Educación General Básica y el último  año Educación Diversificada o su equivalente en modalidades EPJA.', 4, 'null', 1),
(42, '2023-12-01', 'Del 01 al 11 de diciembre ', 'Aplicación de la I prueba de ampliación  para todos los niveles educativos  excepto sexto y noveno año de la EGB y el último año Educación Diversificada o  sus equivalentes en modalidades EPJA.', 4, '', 1),
(43, '2023-01-09', 'Del 09 al 15 de enero', 'Período de inscripción del Programa de Bachillerato por Madurez Suficiente convocatoria 01-2023.', 5, '', 1),
(44, '2023-02-03', '03 de febrero', 'Publicación de inscripción del Programa Bachillerato Educación Diversificada a Distancia (Pruebas de Bachillerato) Contenidos de las Pruebas N° 1 y N° 2 juntos. Convocatoria 00-2023.', 5, '', 1),
(45, '2023-02-13', '13 al 19 de febrero', 'Período de inscripción del Programa Bachillerato  Educación Diversificada a Distancia  (Pruebas de Bachillerato) Contenidos de las Pruebas N° 1 y N° 2 juntos. Convocatoria 00-2023.', 5, '', 1),
(46, '2023-02-17', '17 de febrero', 'Publicación de inscripción del Programa III Ciclo de la EGBA convocatoria 01-2023.', 5, 'null', 1),
(47, '2023-02-27', 'Del 27 de febrero al 05 de marzo', 'Período de inscripción del Programa III Ciclo de la EGBA convocatoria 01-2023.', 5, '', 1),
(48, '2023-03-06', 'Del 06 de marzo al 30 de setiembre ', 'Curso lectivo para el estudiantado del III Ciclo de la Educación General Básica Abierta y Bachillerato por Madurez  en sedes y proyectos de Educación Abierta y Educación Abierta para el sector empresarial e institucional.', 1, '', 0),
(49, '2023-03-06', 'Del 06 de marzo al 31 de octubre ', 'Curso lectivo para el estudiantado del I y II Ciclos de la Educación General Básica Abierta  en sedes y proyectos de Educación Abierta y Educación Abierta para el sector empresarial e institucional.', 1, '', 0),
(50, '2023-03-10', '10 de marzo ', 'Publicación de inscripción del Programa Naturalización convocatoria 01-2023.', 5, '', 1),
(51, '2023-03-20', 'Del 20 al 26 de marzo', 'Período de inscripción del Programa Naturalización convocatoria 01-2023.', 5, 'null', 1),
(52, '2023-03-31', '31 de marzo', 'Publicación de sedes del Programa de Bachillerato por Madurez Suficiente convocatoria 01-2023.', 5, '', 1),
(53, '2023-03-31', '31 de marzo', 'Publicación de sedes del Programa Bachillerato de Educación Diversificada a Distancia  (Pruebas de Bachillerato) Contenidos de las pruebas N° 1 y N° 2 juntos. Convocatoria 00-2023.', 5, '', 1),
(54, '2023-03-31', '31 de marzo', 'Publicación de inscripción del Programa I y II Ciclo de la EGBA convocatoria 01-2023.', 5, '', 1),
(55, '2023-04-10', 'Del 10 al 16 de abril', 'Período de inscripción del Programa I y II Ciclo de la EGBA convocatoria 01-2023.', 5, '', 1),
(56, '2023-05-05', '05 de mayo ', 'Publicación de sedes del Programa de III Ciclo de la EGBA convocatoria 01-2023.', 5, '', 1),
(57, '2023-06-09', '09 de junio ', 'Publicación de inscripción del Programa Bachillerato por Madurez Suficiente  convocatoria 02-2023.', 5, '', 1),
(58, '2023-07-07', '07 de julio ', 'Publicación de inscripción del Programa Bachillerato Educación Diversificada a Distancia (Convocatorias ordinarias) Prueba N° 2.', 5, 'null', 1),
(59, '2023-08-07', 'Del 07 al 13 de agosto  ', 'Período de inscripción del Programa III Ciclo del la EGBA convocatoria 02-2023.', 5, '', 1),
(60, '2023-09-08', '08 de setiembre ', 'Publicación de inscripción del Programa de Naturalización convocatoria 02-2023.', 5, '', 1),
(61, '2023-10-06', '06 de octubre ', 'Publicación de inscripción del Programa Bachillerato Educación Diversificada a Distancia(Pruebas comprensivas)  Contenidos de las pruebas N° 1 y N° 2 juntos.', 5, '', 1),
(62, '2023-10-06', '06 de octubre ', 'Publicación de inscripción  del Programa Bachillerato  Educación Diversificada a Distancia (Pruebas de Bachillerato) Contenidos de las pruebas N° 1 y N° 2 juntos. Convocatoria 03-2023.', 5, '', 1),
(63, '2023-04-14', '14 de abril ', 'Publicación de inscripción del Programa de Bachillerato Educación Diversificada a Distancia (Convocatorias ordinarias)  Prueba N° 1.', 5, '', 1),
(64, '2023-04-26', 'Del 26 de abril al 03 de mayo ', 'Inscripción del Programa Bachillerato Educación Diversificada a Distancia (Convocatorias ordinarias) Prueba N° 1.', 5, '', 1),
(65, '2023-05-26', '26 de mayo', 'Publicación de sedes del Programa de Naturalización convocatoria 01-2023.', 5, '', 1),
(66, '2023-06-16', '16 de junio ', 'Publicación de sedes del Programa de I y II Ciclo de la EGBA convocatoria 01-2023.', 5, '', 1),
(67, '2023-06-16', '16 de junio ', 'Publicación de sedes del Programa  Bachillerato Educación Diversificada a Distancia (Convocatoria ordinarias) Prueba N° 1 .', 5, '', 1),
(68, '2023-06-19', '19 al 25 de junio ', 'Período de inscripción del Programa de Bachillerato por Madurez Suficiente convocatoria 02-2023.', 5, '', 1),
(69, '2023-07-17', '17 al 23 de julio ', 'Período de inscripción  del Programa Bachillerato de Educación Diversificada a Distancia (Convocatorias ordinarias) Prueba N° 2.', 5, '', 1),
(70, '2023-07-28', '28 de julio ', 'Publicación de inscripción del Programa III Ciclo del la EGBA convocatoria 02-2023.', 5, '', 1),
(71, '2023-08-18', '18 de agosto ', 'Publicación de inscripción del Programa I y II Ciclo del la EGBA convocatoria 02-2023.', 5, '', 1),
(72, '2023-08-28', 'Del 28 de agosto al 03 de setiembre ', 'Período de inscripción del Programa I y II Ciclo de la EGBA convocatoria 02-2023.', 5, '', 1),
(73, '2023-09-14', '14 de setiembre ', 'Publicación de sedes del Programa de Bachillerato por Madurez Suficiente  convocatoria 02-2023.', 5, '', 1),
(74, '2023-09-14', '14 de setiembre ', 'Publicación de sedes del Programa Bachillerato de Educación Diversificada a Distancia (Convocatorias ordinarias) Prueba N° 2.', 5, '', 1),
(75, '2023-09-18', 'Del 18 al 24 de setiembre ', 'Período de inscripción del Programa Naturalización convocatoria 02-2023.', 5, 'null', 1),
(76, '2023-10-13', '13 de octubre ', 'Publicación de sedes del Programa de III Ciclo de la EGBA convocatoria 02-2023.', 5, '', 1),
(77, '2023-10-16', 'Del 16 al 22 de octubre ', 'Período de inscripción del Programa Bachillerato Educación Diversificada a Distancia  (Pruebas comprensivas) Contenidos de las pruebas N° 1 y N°2 juntas.', 5, '', 1),
(78, '2023-10-16', 'Del 16 al 22 de octubre ', 'Período de inscripción del Programa Bachillerato Educación Diversificada a Distancia  (Pruebas de bachillerato) Contenidos de las pruebas N° 1 y N°2 juntas. Convocatoria 03-2023.', 5, '', 1),
(79, '2023-11-16', '16 de noviembre ', 'Publicación de sedes del Programa de Naturalización. Convocatoria 02-2023.', 5, 'null', 1),
(80, '2023-11-30', '30 de noviembre ', 'Publicación de sedes del Programa de I y II Ciclo de la EGBA convocatoria 02-2023.', 5, 'null', 1),
(81, '2023-11-30', '30 de noviembre ', 'Publicación de sedes del Programa  Bachillerato Educación Diversificada a Distancia (Pruebas comprensivas) Contenidos de las pruebas N°1 y N°2 juntos.', 5, '', 1),
(82, '2023-11-30', '30 de noviembre ', 'Publicación de sedes del Programa  Bachillerato Educación Diversificada a Distancia (Pruebas de bachillerato) Contenidos de las pruebas N°1 y N° 2 juntas. Convocatoria 03-2023.', 5, 'null', 1),
(83, '2023-01-16', '16 de enero ', 'Declaración del PCI  (Patrimonio Cultural Inmaterial) Baile popular Swing Criollo', 6, 'http://www.pgrweb.go.cr/scij/Busqueda/Normativa/Normas/nrm_texto_completo.aspx?param1=NRTC&nValor1=1&nValor2=72417&nValor3=88333&strTipM=TC', 1),
(84, '2023-01-26', '26 de enero', 'Día Mundial de la Educación Ambiental', 6, '', 1),
(85, '2023-01-31', '31 de enero', 'Día Nacional de la Poesía ', 6, '', 1),
(86, '2023-02-11', '11 de febrero', 'Día Internacional de la Mujer y la Niña en la Ciencia: celebración que promueve la participación de las mujeres y las niñas en campo de la ciencia y la tecnología.', 6, '', 1),
(87, '2023-02-11', '11 de febrero', 'Día Nacional de profesionales en Sociología', 6, 'null', 1),
(88, '2023-02-12', '12 de febrero', 'Día Mundial de los Humedales', 6, '', 1),
(89, '2023-02-21', '21 de febrero', 'Día Internacional de la Lengua Materna', 6, '', 1),
(90, '2023-02-25', '23 de febrero', 'Día Mundial de la Esterilización Animal', 6, '', 1),
(91, '2023-02-25', '25 de febrero', 'Día Internacional del implante coclear', 6, 'null', 1),
(92, '2023-03-03', '03 de marzo', 'Día Mundial de la Vida Silvestre', 6, '', 1),
(93, '2023-03-03', '03 de marzo', 'Día Mundial de Salud Auditiva', 6, '', 1),
(94, '2023-03-05', '05 de marzo', 'Día Mundial por la Eficiencia Energética', 6, '', 1),
(95, '2023-03-08', '08 de marzo ', 'Declaratoria Benemérita de la Patria Francisca \"Pancha\" Carrasco Jiménez.', 6, 'http://www.pgrweb.go.cr/scij/Busqueda/Normativa/Normas/nrm_texto_completo.aspx?param1=NRTC&nValor1=1&nValor2=23648&nValor3=25043&param2=1&strTipM=TC&lResultado=2&strSim=simp', 1),
(96, '2023-03-08', '08 de marzo', 'Día Internacional de la Mujer', 6, '', 1),
(97, '2023-03-13', '13 de marzo', 'Día del glaucoma', 6, '', 1),
(98, '2023-03-14', '14 de marzo', 'Día Mundial de la Acción en Defensa de los Ríos', 6, '', 1),
(99, '2023-03-17', '17 de marzo', 'Día Mundial del Mar', 6, '', 1),
(100, '2023-03-19', '19 de marzo', 'Día del profesional en bibliotecología', 6, 'null', 1),
(101, '2023-03-20', '20  de marzo ', 'Fiesta Internacional de la Francofonia', 6, 'https://www.francophonie.org/ ', 1),
(102, '2023-03-21', '21 de marzo', 'Día Internacional de los Bosques', 6, '', 1),
(103, '2023-03-21', '21 de marzo', 'Día Mundial de la persona con Síndrome de Down', 6, 'null', 1),
(104, '2023-03-21', '21 de marzo', 'Día Mundial de la Poesía', 6, '', 1),
(105, '2023-03-22', '22 de marzo', 'Día Mundial del Agua', 6, '', 1),
(106, '2023-03-27', '27 de marzo', 'Día Mundial del Teatro', 6, '', 1),
(107, '2023-04-02', '02 de abril', 'Día Nacional del Transtorno del Espectro Autista (TEA)', 6, '', 1),
(108, '2023-04-02', '02 de abril', 'Día Mundial del Libro Infantil', 6, '', 1),
(109, '2023-04-06', '06 de abril', 'Día Mundial de la Actividad Física', 6, '', 1),
(110, '2023-04-07', '07 de abril', 'Día Mundial de la Salud', 6, '', 1),
(111, '2023-04-08', '08 de abril', 'Gesto histórico del Indígena Esteban Yapiri-Tsipirí.', 6, 'null', 1),
(112, '2023-04-10', '10 de abril', 'Día Mundial del Juego Limpio', 6, '', 1),
(113, '2023-04-13', '06 de abril ', 'Día Mundial de la Actividad Física ', 6, 'null', 1),
(114, '2023-04-15', '15 de abril ', 'Conmemoración de la firma del tratado de límites entre Costa Rica y Nicaragua: Tratado Cañas-Jerez', 6, 'https://bit.ly/3RHy5mg ', 1),
(115, '2023-04-15', '15 de abril ', 'Día Mundial del Arte', 6, '', 1),
(116, '2023-04-16', '16 de abril ', 'Día Mundial del Emprendimiento', 6, 'null', 1),
(117, '2023-04-19', '19 de abril ', 'Día del Aborigen Costarricense', 6, 'http://www.pgrweb.go.cr/scij/Busqueda/Normativa/Normas/nrm_texto_completo.aspx?param1=NRTC&nValor1=1&nValor2=22069&nValor3=107547&param2=1&strTipM=TC&lResultado=5&strSim=simp', 1),
(118, '2023-04-20', '20 de abril', 'Día del Rock Nacional', 6, '', 1),
(119, '2023-04-22', '22 de abril', 'Día Internacional de la Madre Tierra', 6, '', 1),
(120, '2023-04-24', '24 de abril', 'Día Internacional del Animal de Laboratorio', 6, '', 1),
(121, '2023-04-27', '27de abril ', 'Día Internacional de la Persona Profesional en Orientación', 6, '', 1),
(122, '2023-04-28', '28 de abril ', 'Día Mundial de la Seguridad y la Salud en el Trabajo', 6, 'https://bit.ly/3ry12Xa ', 1),
(123, '2023-04-29', '29 de abril', 'Día Internacional de la Danza', 6, '', 1),
(124, '2023-05-01', '01 de mayo ', 'Celebración del tratado Echandi Montero -Fernández Jaen', 6, 'https://bit.ly/3RBAeQw', 1),
(125, '2023-05-01', '01 de mayo ', 'Rendición de William Walker', 6, '', 1),
(126, '2023-05-04', '04 de mayo', 'Día Internacional del Combatiente de Incendios Forestales', 6, '', 1),
(127, '2023-05-05', '05 de mayo', 'Salve Vidas: Límpiese las Manos', 6, '', 1),
(128, '2023-05-12', '12 de mayo', 'Día de la Alimentación Saludable', 6, 'null', 1),
(129, '2023-05-15', '15 de mayo', 'Día Internacional de las Familias', 6, '', 1),
(130, '2023-05-16', '16 de mayo', 'Día Mundial de la Luz', 6, '', 1),
(131, '2023-05-16', '16 de mayo', 'Día Internacional de la Convivencia en Paz', 6, 'null', 1),
(132, '2023-05-17', '17 de mayo', 'Día Nacional contra la Homofobia', 6, '', 1),
(133, '2023-05-17', '17 de mayo', 'Día Mundial del Reciclaje', 6, '', 1),
(134, '2023-05-21', '21 de mayo', 'Día Mundial de la Diversidad Cultural para el diálogo y el desarrollo (ONU)', 6, 'null', 1),
(135, '2023-06-11', '11 de junio', 'Día de la creación de la música del Himno Nacional', 6, 'https://bit.ly/3Mf00c9', 1),
(136, '2023-05-22', '22 de mayo', 'Día Internacional de la Diversidad Biológica', 6, '', 1),
(137, '2023-05-22', 'Del 22 al 26 de mayo', 'Semana Internacional de la Educación  Artística ', 6, '', 1),
(138, '2023-05-26', '26 de mayo', 'Día Nacional de la Persona Chiricana', 6, '', 1),
(139, '2023-05-28', '28 de mayo', 'Día Internacional de Acción por la Salud de las Mujeres (OPS/OMS)', 6, 'null', 1),
(140, '2023-05-28', '28 de mayo', 'Día Internacional del Juego', 6, 'null', 1),
(141, '2023-05-29', '29 de mayo', 'Día Nacional de las personas con discapacidad y entrada en vigor de la Ley 7600', 6, 'null', 1),
(142, '2023-05-31', '31 de mayo', 'Día Mundial Sin Tabaco', 6, '', 1),
(143, '2023-05-31', '31 de mayo', 'Día del compositor costarricense', 6, 'null', 1),
(144, '2023-06-01', '01 de junio', 'Día Nacional de la Salud Masculina', 6, '', 1),
(145, '2023-06-03', '03 de junio', 'Día Mundial de la Bicicleta decretado por la ONU en 2018', 6, '', 1),
(146, '2023-06-05', '05 de junio', 'Día Mundial del Medio Ambiente', 6, '', 1),
(147, '2023-06-07', '07 de junio', 'Dia Mundial de la Seguridad Alimentaria', 6, '', 1),
(148, '2023-06-08', '08 de junio', 'Día Mundial de los Océanos', 6, '', 1),
(149, '2023-06-12', '12 de junio', 'Día Mundial Contra el Trabajo Infantil', 6, '', 1),
(151, '2023-06-16', '17 de junio ', 'Celebración del Día de la Persona Profesional en Orientación', 6, '', 1),
(152, '2023-06-17', '17 de junio', 'Día Mundial de Lucha contra la Desertificación y la Sequía', 6, '', 1),
(153, '2023-06-20', '20 de junio', 'Día Nacional de la Persona Refugiada', 6, '', 1),
(154, '2023-06-20', '20 de junio ', 'Fiesta de la República Italiana', 6, 'null', 1),
(155, '2023-06-21', '21 de junio ', 'Día Internacional de la Música', 6, '', 1),
(156, '2023-06-26', '26 de junio', 'Día Internacional de la Lucha contra el Uso Indebido y el Tráfico Ilícito de Drogas', 6, '', 1),
(157, '2023-06-27', '27 de junio', 'Día Internacional de la sordoceguera', 6, 'null', 1),
(158, '2023-06-28', '28 de junio', 'Día Internacional del Orgullo LGBT', 6, '', 1),
(159, '2023-07-04', '04 de julio', 'Día Internacional de la Vida Silvestre', 6, '', 1),
(160, '2023-07-07', '07 de julio', 'Día Internacional de la Conservación del suelo', 6, '', 1),
(161, '2023-07-14', '14 de julio ', 'Conmemoración de la toma de la Bastille', 6, 'https://es.ambafrance.org/14-de-julio-Fiesta-Nacional-francesa#:~:text=La%20toma%20de%20la%20Bastilla,hace%20m%C3%A1s%20de%20un%20siglo.&text=En%20los%20primeros%20meses%20de,transformado%20en%20Asamblea%20Nacional%20Constituyente.', 1),
(162, '2023-07-15', '15 de julio ', 'Día de la educación técnica y formación profesional', 6, '', 1),
(163, '2023-07-19', '19 de julio', 'Día de la Lengua de Señas Costarricense (LESCO)', 6, '', 1),
(164, '2023-07-20', '20 de julio', 'Día del Oficial de Tránsito', 6, 'null', 1),
(165, '2023-07-25', '25 de julio ', 'Día Internacional de la mujer afrodescendiente', 6, '', 1),
(166, '2023-07-26', '26 de julio', 'Día Internacional de Conservación del Ecosistema de Manglares', 6, '', 1),
(167, '2023-07-30', '30 de julio', 'Día Mundial contra la trata de personas', 6, '', 1),
(168, '2023-07-31', '31 de julio', 'Día Mundial de los Guardaparques', 6, '', 1),
(169, '2023-08-01', '01 de agosto', 'Día Nacional de la Ciencia y la Tecnología', 6, '', 1),
(170, '2023-08-01', '01 de agosto', 'Día de la Tierra o Pachamama', 6, '', 1),
(171, '2023-08-05', '05 de agosto', 'Día Mundial de los Docentes', 6, '', 1),
(172, '2023-08-09', '09 de agosto', 'Día Internacional para la erradicación del trabajo infantil', 6, '', 1),
(173, '2023-08-09', '09 de agosto', 'Día Internacional de los Pueblos Indígenas del Mundo', 6, '', 1),
(174, '2023-08-12', '12 de agosto ', 'Día de las juventudes', 6, 'https://bit.ly/3yp1haV ', 1),
(175, '2023-08-15', '15 de agosto ', 'Día de la Madre', 6, 'null', 1),
(176, '2023-08-17', '17 de agosto ', 'Conmemoración del Nacimiento de Marcus Garvey', 6, 'https://bit.ly/3SKGMgW ', 1),
(177, '2023-08-17', '17 de agosto', 'Día Mundial del Peatón  promovido por la OMS ', 6, '', 1),
(178, '2023-08-20', '20 de agosto', 'Día del Artista Nacional', 6, '', 1),
(179, '2023-08-21', '21 de agosto ', 'Declaración del PCI (Patrimonio Cultural Inmaterial) Maíz: usos y tradiciones', 6, 'https://bit.ly/3fRYz7e', 1),
(180, '2023-08-24', '24 de agosto', 'Día Mundial de los Parques Nacionales', 6, '', 1),
(181, '2023-09-05', '05 de setiembre', 'Día Internacional de la mujer indígena', 6, '', 1),
(182, '2023-09-08', '08 de setiembre', 'Día Mundial de la Alfabetización', 6, '', 1),
(183, '2023-09-09', '09 de setiembre', 'Día de la Niñez y la Adolescencia', 6, '', 1),
(184, '2023-09-10', '10 de setiembre', 'Día Mundial para la Prevención del Suicidio', 6, '', 1),
(185, '2023-09-10', '10 de setiembre ', 'Nacimiento de Nicolas Aguilar Murillo', 6, 'https://bit.ly/3T0HINV ', 0),
(186, '2023-09-14', '14 de setiembre', 'Declaración de la radición artesanal de manufactura de objetos cerámicos con motivos chorotegas como PCI (Patrimonio Cultural Inmaterial)', 6, 'https://bit.ly/3fQ9ZZp', 1),
(187, '2023-09-16', '16 de setiembre', 'Día Internacional de la Preservación de la Capa de Ozono.', 6, '', 1),
(188, '2023-09-21', '21 de setiembre', 'Día Nacional de la comunidad de personas sordas de Costa Rica', 6, 'null', 1),
(189, '2023-09-21', '21 de setiembre', 'Día Internacional de la Paz', 6, '', 1),
(190, '2023-09-21', '21 de setiembre ', 'Día Internacional del Artista Plástico', 6, 'null', 1),
(191, '2023-09-23', '23 de setiembre', 'Día Internacional contra la erradicación de la explotación en personas menores de edad y trata de personas.', 6, '', 1),
(192, '2023-09-24', '24 de setiembre', 'Día Nacional del Manatí', 6, '', 1),
(193, '2023-09-26', '26 de setiembre', 'Día del bastón verde', 6, '', 1),
(194, '2023-09-26', '26 de setiembre', 'Día Mundial para la Prevención del Embarazo en Adolescentes', 6, '', 1),
(195, '2024-09-29', '29 de setiembre', 'Día Mundial del Corazón ', 6, '', 1),
(196, '2023-09-29', '29 de setiembre', 'Día Internacional de Concientización de la Reducción de las Pérdidas y Desperdicios de Alimentos', 6, '', 1),
(197, '2023-09-30', '30 de setiembre', 'Día Internacional contra la Explotación sexual y el tráfico de mujeres  niñas y niños.', 6, '', 1),
(198, '2023-09-29', '29 de setiembre ', 'Día Mundial del Corazón ', 6, '', 1),
(199, '2023-09-30', '30 de setiembre ', 'Aniversario de la muerte de los Próceres Juan Rafael Mora Porras y José María Cañas: Reflexión sobre las implicaciones del fusilamiento.', 6, 'https://bit.ly/3ebbBfI', 1),
(200, '2023-10-01', '01 de octubre', 'Día de la Persona Jubilada del Magisterio Nacional', 6, '', 1),
(201, '2023-10-02', '02 de octubre', 'Día de la Convivencia Pacífica ', 6, '', 1),
(202, '2023-10-04', '04 de octubre ', 'Celebración de la lengua italiana', 6, '', 1),
(203, '2023-10-08', '08 de octubre', 'Día internacional de la dislexia', 6, '', 1),
(204, '2023-10-11', '11 de octubre', 'Día Mundial de la Visión', 6, '', 1),
(205, '2023-10-11', '11 de octubre', 'Día Internacional de la niña (ONU)', 6, '', 1),
(206, '2023-10-13', '13 de octubre', 'Día Internacional para la Reducción de Desastres', 6, '', 1),
(207, '2023-10-14', '14 de octubre ', 'Día internacional de la prevención y mitigación de los desastres naturales', 6, 'https://bit.ly/3Eo784f ', 1),
(208, '2023-10-15', '15 de octubre', 'Día Mundial del Lavado de Manos', 6, '', 1),
(209, '2023-10-15', '15 de octubre', 'Día nacional de las personas ciegas', 6, '', 1),
(210, '2023-10-16', '16 de octubre', 'Día Mundial de la Alimentación', 6, '', 1),
(211, '2023-10-19', '19 de octubre', 'Día del Administrador Educativo y Administradora Educativa', 6, '', 1),
(212, '2023-10-21', '21 de octubre', 'Día Mundial del Ahorro de Energía', 6, '', 1),
(213, '2023-10-24', '24 de octubre', 'Día Mundial Contra el Cambio Climático', 6, '', 1),
(214, '2023-10-26', '26 de octubre', 'Día Internacional de la prevención de quemaduras', 6, '', 1),
(215, '2023-10-29', '29 de octubre ', 'Aniversario de la firma y juramentación de la Independencia Patria', 6, 'null', 1),
(216, '2023-10-31', '31 de octubre', 'Día de la Mascarada Tradicional Costarricense.', 6, '', 1),
(217, '2023-11-02', '02 de noviembre', 'Día Internacional contra la Violencia y el Acoso en la Escuela  incluido el Ciberacoso', 6, '', 1),
(218, '2023-11-10', '10 de noviembre ', 'Día de la Escuela Costarricense', 6, '', 1),
(219, '2023-11-12', '12 de noviembre ', 'Día del Pabellón Nacional', 6, '', 1),
(220, '2023-11-14', '14 de noviembre', 'Día Mundial de la Diabetes', 6, '', 1),
(221, '2023-11-19', '19 de noviembre', 'Día Mundial del Aire Puro', 6, '', 1),
(222, '2023-11-19', '19 de noviembre', 'Día Mundial de la Prevención del Abuso Infantil', 6, '', 1),
(223, '2023-11-20', '20 de noviembre', 'Día mundial de la Infancia.', 6, '', 1),
(224, '2023-11-23', '23 de noviembre', 'Día del Músico Costarricense', 6, '', 1),
(225, '2023-11-25', '25 de noviembre', 'Día Internacional de la Eliminación de la Violencia contra la Mujer', 6, '', 1),
(226, '2023-11-28', '28 de noviembre', 'Día Mundial del Docente de Francés ', 6, '', 1),
(227, '2023-12-01', '01 de diciembre ', 'Firma del Pacto de Concordia', 6, '', 1),
(228, '2023-12-01', '01 de diciembre ', 'Día Mundial del VIH/Sida', 6, '', 1),
(229, '2023-12-01', '01 de diciembre ', 'Día del Motociclista', 6, '', 1),
(230, '2023-12-03', '03 de diciembre', 'Día Internacional de las Personas con Discapacidad.', 6, '', 1),
(231, '2023-12-05', '05 de diciembre', 'Día Nacional de los Arrecifes de Coral', 6, '', 1),
(232, '2023-12-05', '05 de diciembre', 'Día Mundial del Suelo', 6, '', 1),
(233, '2023-12-05', '05 de diciembre', 'Día Internacional de las Legumbres', 6, '', 1),
(234, '2023-12-10', '10 de diciembre', 'Día Mundial de los Derechos Humanos', 6, '', 1),
(235, '2023-12-12', '12 de diciembre ', 'Declaración del PCI (Patrimonio Cultural Inmaterial) Baile Popular Calipso', 6, '', 1),
(236, '2023-12-18', '18 de diciembre', 'Día Internacional del Migrante', 6, '', 1),
(237, '2023-08-31', '31 de agosto', 'Celebración de la Fundación de la República: En el gobierno de Dr. José María Castro Madriz, se rompe cualquier ligamen, formal e informal, con el proyecto de la República Centroamericana, declarando la República de Costa Rica, de manera independiente, y superando así la forma de organizativa de Estado.', 6, 'null', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategorias`
--

CREATE TABLE `subcategorias` (
  `id` int(2) NOT NULL,
  `nombre` varchar(256) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `descripcion` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `poblacion` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `idCategoria` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `subcategorias`
--

INSERT INTO `subcategorias` (`id`, `nombre`, `descripcion`, `poblacion`, `idCategoria`) VALUES
(1, 'Pruebas (General)', 'Información referente a las pruebas en general.', '', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fotos`
--
ALTER TABLE `fotos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `informacion_subcategorias`
--
ALTER TABLE `informacion_subcategorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `limites`
--
ALTER TABLE `limites`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `meses`
--
ALTER TABLE `meses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `otras_fechas`
--
ALTER TABLE `otras_fechas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT de la tabla `fotos`
--
ALTER TABLE `fotos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `informacion_subcategorias`
--
ALTER TABLE `informacion_subcategorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `limites`
--
ALTER TABLE `limites`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `meses`
--
ALTER TABLE `meses`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `otras_fechas`
--
ALTER TABLE `otras_fechas`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;

--
-- AUTO_INCREMENT de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
