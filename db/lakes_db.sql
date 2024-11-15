-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 15 2024 г., 09:02
-- Версия сервера: 8.0.24
-- Версия PHP: 8.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `lakes_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `continents`
--

CREATE TABLE `continents` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `continents`
--

INSERT INTO `continents` (`id`, `name`) VALUES
(1, 'Австралия'),
(2, 'Азия'),
(3, 'Африка'),
(4, 'Европа'),
(5, 'Северная Америка'),
(6, 'Южная Америка');

-- --------------------------------------------------------

--
-- Структура таблицы `lakes`
--

CREATE TABLE `lakes` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `area` decimal(10,0) NOT NULL,
  `max_depth` decimal(10,0) NOT NULL,
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `continent_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `lakes`
--

INSERT INTO `lakes` (`id`, `name`, `area`, `max_depth`, `description`, `continent_id`) VALUES
(1, 'Байкал', '31722', '1642', 'озеро тектонического происхождения в южной части Восточной Сибири, самое глубокое озеро на планете, крупнейший природный резервуар пресной воды и самое большое по площади пресноводное озеро Евразии. Озеро и прибрежные территории являются уникальным биогеоценозом, бо́льшая часть видов животных которых эндемична. Озеро имеет сток — реку Ангара.', 2),
(2, 'Эйр', '9500', '15', 'самое большое озеро Австралии, расположенное в центральной части континента. Оно является солёным озером и часто пересыхает, превращаясь в солончак.', 1),
(3, 'Аргайл', '800', '41', 'крупнейшее пресноводное водохранилище страны, находится в западной части Австралии. Это искусственное озеро, созданное для водоснабжения и орошения.', 1),
(4, 'Балхаш', '18428', '27', 'одно из крупнейших озёр Азии, расположенное в восточной части Казахстана.', 2),
(5, 'Виктория', '68000', '80', 'крупнейшее озеро Африки и второе по величине пресноводное озеро в мире.', 3),
(6, 'Киву', '2700', '496', 'одно из великих африканских озёр, расположенное на границе Руанды и Демократической Республики Конго.', 3),
(7, 'Ладожское озеро', '18300', '233', 'крупнейшее пресноводное озеро в Европе, расположенное в северо-западной части России, в Карелии и Ленинградской области.', 4),
(8, 'Балатон', '592', '13', 'крупнейшее озеро Венгрии и одно из самых популярных туристических направлений в стране. Оно расположено в западной части Венгрии, недалеко от столицы Будапешта.', 4),
(9, 'Верхнее озеро', '82100', '406', 'крупнейшее по площади пресноводное озеро в мире, входящее в систему Великих озёр Северной Америки.', 5),
(10, 'Гурон', '59600', '229', 'второе по величине озеро системы Великих озёр Северной Америки, расположенное на границе США и Канады.', 5),
(11, 'Титикака', '8372', '284', 'крупнейшее озеро по объему пресной воды в Южной Америке, расположенное на границе Перу и Боливии. Оно известно своей высотой над уровнем моря (около 3800 м) и культурной значимостью для местных народов.', 6),
(12, 'Патус', '10140', '10', 'самое большое лагунное озеро Бразилии, простирающееся вдоль побережья Атлантического океана.', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `lakes_pages`
--

CREATE TABLE `lakes_pages` (
  `id` int NOT NULL,
  `lake_id` int NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `lakes_pages`
--

INSERT INTO `lakes_pages` (`id`, `lake_id`, `slug`, `title`, `content`) VALUES
(1, 1, 'baykal', 'Байкал', '<div class=\"paragraph\">             <!-- Первый абзац -->             Озеро Байкал – самое глубокое пресное озеро в мире, расположенное в южной части Сибири, Россия. Его глубина достигает 1642 метров, а объем воды составляет около 23 тысяч кубических километров. Байкал содержит примерно пятую часть всех запасов пресной воды на планете. Он имеет уникальный состав воды, который делает его особенно ценным источником для исследования биологического разнообразия.         </div>         <div class=\"paragraph\">             <!-- Второй абзац -->             Байкал известен своей необычной формой и кристально чистой водой. Его берега изобилуют различными ландшафтами, от горных хребтов до степных равнин. Вокруг озера расположены национальные парки и заповедники, где охраняются уникальные виды флоры и фауны. Среди них можно отметить знаменитые байкальские нерпы, которые обитают только в этом регионе.         </div>         <div class=\"paragraph\">             <!-- Третий абзац -->             Экологическая значимость Байкала огромна. Озеро служит важным источником водоснабжения для населения и промышленности. Оно также играет ключевую роль в поддержании биологического разнообразия региона. Однако, несмотря на свое природное богатство, Байкал сталкивается с серьезными экологическими проблемами, такими как загрязнение вод промышленными стоками и вырубка лесов вдоль его берегов.         </div>'),
(2, 2, 'eyre', 'Эйр', '<div class=\"paragraph\">Озеро Эйр - соленое озеро, которое часто пересыхает, превращаясь в солончак. Площадь озера составляет около 9500 квадратных километров при полном заполнении, однако оно редко достигает таких размеров из-за своего расположения в одном из самых засушливых регионов страны. Когда озеро наполнено водой, оно становится временной средой обитания различных видов птиц, включая пеликанов.</div>\r\n\r\n<div class=\"paragraph\">Название озера происходит от имени британского исследователя Эдварда Джона Эйра, который первым описал эту местность в 1840 году. В сухой период озеро превращается в огромную плоскую равнину, покрытую солью, которая отражает небо, создавая уникальные оптические эффекты. Местные аборигены называют озеро \"Кати-Танда\", что означает \"место, где вода никогда не стоит\".</div>\r\n\r\n<div class=\"paragraph\">Озеро Эйр играет важную роль в экосистеме региона. Во время редких наводнений сюда прилетают тысячи водоплавающих птиц, включая пеликанов, уток и чаек. Эти птицы откладывают яйца и выращивают потомство до тех пор, пока уровень воды не начнет снижаться. После этого они покидают озеро, оставляя за собой следы своей жизнедеятельности, которые обогащают почву и способствуют росту растений.</div>'),
(3, 3, 'argyle', 'Аргайл', '<div class=\"paragraph\">Озеро Аргайл — крупнейший пресноводный резервуар Австралии, расположенный в западной части страны. Это искусственное озеро было создано путем строительства плотины реки Орд в 1970-х годах. С объемом более 10,7 кубических километра, оно содержит больше воды, чем Сиднейская гавань, почти в 18 раз. Озеро поддерживает разнообразную экосистему, включающую многочисленные виды рыб и значительную популяцию пресноводных крокодилов.</div>\r\n\r\n<div class=\"paragraph\">Название озера происходит от района Аргайл-Даунс, где оно находится. Водохранилище служит важным источником воды для орошения сельскохозяйственных земель в регионе Кимберли. Благодаря своему размеру и обилию рыбы, озеро Аргайл стало популярным местом для рыбалки и водных видов спорта. Здесь также обитает множество видов птиц, привлекаемых богатой водной флорой и фауной.</div>\r\n\r\n<div class=\"paragraph\">Окрестности озера Аргайл известны своими живописными пейзажами и уникальной природой. Туристы могут насладиться круизами по озеру, посетить национальные парки вокруг него и увидеть древние наскальные рисунки аборигенов. Озеро Аргайл — это не только важный водный ресурс, но и популярная туристическая достопримечательность, привлекающая посетителей со всего мира.</div>'),
(4, 4, 'balhash', 'Балхаш', '<div class=\"paragraph\">Озеро Балхаш — бессточное озеро. Оно уникально тем, что его западная часть состоит из пресной воды, а восточная — из солёной. Общая площадь озера составляет около 16 400 квадратных километров, а максимальная длина — около 600 километров. Балхаш является важной частью экосистемы региона и привлекает внимание учёных и туристов благодаря своей необычной гидрологии.</div>\n\n<div class=\"paragraph\">Название \"Балхаш\" происходит от тюркского слова, означающего \"болото\" или \"мелководье\". Озеро питается реками Или, Каратал, Аксу и Лепсы, которые приносят пресную воду. Из-за различий в составе воды, флора и фауна западной и восточной частей озера отличаются друг от друга. В озере обитает более 20 видов рыб, некоторые из которых эндемичны, то есть встречаются только в этом озере.</div>\n\n<div class=\"paragraph\">Балхаш играет важную роль в экономике и культуре Казахстана. На его берегах расположены города и посёлки, жители которых занимаются рыболовством, сельским хозяйством и туризмом. Озеро также используется для судоходства и производства электроэнергии. Однако, как и многие другие озёра, Балхаш сталкивается с проблемами загрязнения и изменения уровня воды, что требует внимания и усилий по сохранению этой уникальной природной достопримечательности.</div>'),
(5, 5, 'victoria', 'Виктория', '<div class=\"paragraph\">Озеро Виктория расположено на территории трёх стран: Уганды, Кении и Танзании. Площадь озера составляет около 68 тысяч квадратных километров, а максимальная глубина достигает 80 метров. Виктория является главным источником воды для реки Нил, одной из самых длинных рек в мире.</div>\r\n\r\n<div class=\"paragraph\">Название \"Виктория\" дано в честь королевы Виктории, правившей Великобританией в XIX веке. Озеро было открыто европейскими исследователями в середине XIX века, и его исследование сыграло важную роль в изучении географии Африки. Сегодня озеро Виктория является важным источником воды и пищи для миллионов людей, живущих вдоль его берегов. Здесь развито рыболовство, сельское хозяйство и туризм.</div>\r\n\r\n<div class=\"paragraph\">Экосистема озера Виктория чрезвычайно богата и разнообразна. Здесь обитает более 200 видов рыб, многие из которых эндемичны, то есть встречаются только в этом озере. Однако, как и многие другие природные объекты, озеро Виктория сталкивается с проблемами загрязнения и изменения уровня воды, что требует внимания и усилий по сохранению этой уникальной природной достопримечательности.</div>'),
(6, 6, 'kivu', 'Киву', '<div class=\"paragraph\">Озеро Киву знаменито тем, что под его дном находятся огромные запасы метана и углекислого газа, что делает его потенциально опасным для окружающей среды и населения.</div>\r\n\r\n<div class=\"paragraph\">Название \"Киву\" происходит от местного языка и означает \"большая вода\". Озеро питается несколькими реками, среди которых самая крупная — Рузизи. Вода в озере пресная, что позволяет развивать рыболовство и сельское хозяйство в прилегающих районах. Киву также является важным источником питьевой воды для жителей близлежащих городов и деревень.</div>\r\n\r\n<div class=\"paragraph\">Однако, наличие больших запасов газов под дном озера представляет серьёзную угрозу. Если эти газы внезапно вырвутся наружу, это может привести к катастрофическим последствиям, таким как выброс токсичных веществ в атмосферу и даже взрыв. Поэтому учёные и специалисты работают над проектами по извлечению метана из озера и использованию его в качестве источника энергии, чтобы предотвратить возможные катастрофы и одновременно обеспечить регион чистым топливом.</div>'),
(7, 7, 'ladoga', 'Ладожское озеро', '<div class=\"paragraph\">Ладожское озеро — крупнейшее пресноводное озеро в Европе, расположенное в северо-западной части России. Его площадь составляет около 17,6 тысяч квадратных километров, а максимальная глубина достигает 230 метров. Ладога известна своими живописными берегами, многочисленными островами и чистой водой, что делает её популярной среди туристов и любителей природы.</div>\r\n\r\n<div class=\"paragraph\">Название \"Ладога\" происходит от древнего финно-угорского слова, означающего \"низменное место\" или \"болото\". История озера тесно связана с историей Руси, так как через него проходил знаменитый торговый путь \"из варяг в греки\". В средние века Ладога была важным стратегическим объектом, защищавшим северные границы Русского государства. Сегодня озеро остаётся важным транспортным узлом и источником пресной воды для региона.</div>\r\n\r\n<div class=\"paragraph\">Флора и фауна Ладоги очень разнообразны. Здесь обитает более 50 видов рыб, включая такие ценные породы, как лосось и форель. Берега озера покрыты густыми лесами, в которых можно встретить медведей, волков, лисиц и других диких животных. Однако, как и многие другие природные объекты, Ладога сталкивается с проблемами загрязнения и изменения климата, что требует внимания и усилий по сохранению этой уникальной природной достопримечательности.</div>'),
(8, 8, 'balaton', 'Балатон', '<div class=\"paragraph\">Балатон — крупнейшее озеро Венгрии и одно из самых популярных туристических направлений в стране. Оно расположено в западной части Венгрии, недалеко от столицы Будапешта. Площадь озера составляет около 592 квадратных километров, а максимальная глубина — всего 12,5 метров, что делает его мелким по сравнению с другими крупными озёрами Европы. Тем не менее, Балатон славится своими красивыми пляжами, тёплой водой и живописными окрестностями.</div>\r\n\r\n<div class=\"paragraph\">Название \"Балатон\" происходит от славянского слова, означающего \"болото\" или \"топкое место\". История озера уходит корнями в далёкое прошлое, когда оно было важным торговым путём и местом отдыха для древних римлян. В средние века Балатон стал центром винодельческой культуры, и сегодня здесь производят одни из лучших венгерских вин. Окружающие озеро виноградники и исторические замки привлекают туристов со всего мира.</div>\r\n\r\n<div class=\"paragraph\">Экосистема Балатона весьма разнообразна. Здесь обитает более 30 видов рыб, включая карпа, щуку и сома. Берега озера покрыты густыми лесами и лугами, где можно встретить разнообразные виды птиц и млекопитающих. Однако, как и многие другие природные объекты, Балатон сталкивается с проблемами загрязнения и изменения климата, что требует внимания и усилий по сохранению этой уникальной природной достопримечательности.</div>'),
(9, 9, 'superior', 'Верхнее озеро', '<div class=\"paragraph\">Верхнее озеро расположено на границе США и Канады, и его площадь составляет около 82 100 квадратных километров. Максимальная глубина озера достигает 406 метров, что делает его одним из самых глубоких озёр на континенте. Верхнее озеро известно своими холодными водами, суровыми зимами и живописными берегами.</div>\r\n\r\n<div class=\"paragraph\">Название \"Верхнее\" связано с его географическим положением относительно других Великих озёр. Верхнее озеро является самым северным и самым высоким из всей группы. История озера тесно связана с историей коренных народов Северной Америки, а также с развитием торговли и промышленности в регионе. Сегодня озеро остаётся важным транспортным узлом и источником пресной воды для региона.</div>\r\n\r\n<div class=\"paragraph\">Флора и фауна Верхнего озера очень разнообразны. Здесь обитает более 70 видов рыб, включая такие ценные породы, как лосось и форель. Берега озера покрыты густыми лесами, в которых можно встретить медведей, волков, лисиц и других диких животных. Однако, как и многие другие природные объекты, Верхнее озеро сталкивается с проблемами загрязнения и изменения климата, что требует внимания и усилий по сохранению этой уникальной природной достопримечательности.</div>'),
(10, 10, 'huron', 'Гурон', '<div class=\"paragraph\">Озеро Гурон — второе по величине озеро системы Великих озёр Северной Америки. Его площадь составляет около 59 600 квадратных километров, а максимальная глубина достигает 229 метров. Гурон известно своими живописными берегами, многочисленными островами и чистотой своих вод, что делает его популярным среди туристов и любителей природы.</div>\r\n\r\n<div class=\"paragraph\">Название \"Гурон\" происходит от племени гуронов, одного из коренных народов Северной Америки, населявших этот регион до прихода европейских колонизаторов. История озера тесно связана с историей освоения континента, так как через него проходили важные торговые пути. Сегодня озеро остаётся важным транспортным узлом и источником пресной воды для региона.</div>\r\n\r\n<div class=\"paragraph\">Флора и фауна озера Гурон очень разнообразны. Здесь обитает более 60 видов рыб, включая такие ценные породы, как лосось и форель. Берега озера покрыты густыми лесами, в которых можно встретить медведей, волков, лисиц и других диких животных. Однако, как и многие другие природные объекты, Гурон сталкивается с проблемами загрязнения и изменения климата, что требует внимания и усилий по сохранению этой уникальной природной достопримечательности.</div>'),
(11, 11, 'titicaca', 'Титикака', '<div class=\"paragraph\">Озеро Титикака — крупнейшее по объему пресной воды озеро в Южной Америке, расположенное на высоте около 3812 метров над уровнем моря на границе Перу и Боливии. Его площадь составляет около 8372 квадратных километров, а максимальная глубина достигает 284 метров. Титикака известно своей культурной значимостью для местных народов, а также уникальной флорой и фауной, приспособленной к жизни на большой высоте.</div>\r\n\r\n<div class=\"paragraph\">Название \"Титикака\" происходит из языков кечуа и аймара, и переводится как \"каменная пума\". Согласно легендам, именно на острове Солнца в центре озера зародилось государство инков. Сегодня озеро остается важным культурным и экономическим центром для народов, проживающих на его берегах. Здесь развито рыболовство, сельское хозяйство и туризм.</div>\r\n\r\n<div class=\"paragraph\">Экосистема Титикаки включает в себя более 530 видов растений и 300 видов животных, многие из которых эндемичны, то есть встречаются только в этом озере. Среди наиболее известных обитателей озера — гигантские лягушки титикаканские свистуны и редкие виды птиц. Однако, как и многие другие природные объекты, Титикака сталкивается с проблемами загрязнения и изменения климата, что требует внимания и усилий по сохранению этой уникальной природной достопримечательности.</div>'),
(12, 12, 'patos', 'Патус', '<div class=\"paragraph\">Озеро Патус — крупнейшее лагунное озеро в Бразилии, простирающееся вдоль побережья Атлантического океана. Его площадь составляет около 10140 квадратных километров, а максимальная глубина достигает 10 метров. Патус известно своими живописными берегами, мангровыми зарослями и богатым биоразнообразием, что делает его привлекательным для экологического туризма и научных исследований.</div>\r\n\r\n<div class=\"paragraph\">Название \"Патус\" происходит из португальского языка и означает \"утка\". История озера тесно связана с историей колонизации Бразилии, так как через него проходили важные торговые пути. Сегодня озеро остаётся важным источником пресной воды для региона и играет ключевую роль в поддержании местной экосистемы.</div>\r\n\r\n<div class=\"paragraph\">Флора и фауна озера Патус очень разнообразны. Здесь обитает более 150 видов рыб, включая такие ценные породы, как морской окунь и сардины. Берега озера покрыты густыми мангровыми зарослями, в которых можно встретить разнообразных птиц, рептилий и млекопитающих. Однако, как и многие другие природные объекты, Патус сталкивается с проблемами загрязнения и изменения климата, что требует внимания и усилий по сохранению этой уникальной природной достопримечательности.</div>');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `continents`
--
ALTER TABLE `continents`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `lakes`
--
ALTER TABLE `lakes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `continent_id` (`continent_id`);

--
-- Индексы таблицы `lakes_pages`
--
ALTER TABLE `lakes_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lake_id` (`lake_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `continents`
--
ALTER TABLE `continents`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `lakes`
--
ALTER TABLE `lakes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `lakes_pages`
--
ALTER TABLE `lakes_pages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `lakes`
--
ALTER TABLE `lakes`
  ADD CONSTRAINT `lakes_ibfk_1` FOREIGN KEY (`continent_id`) REFERENCES `continents` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `lakes_pages`
--
ALTER TABLE `lakes_pages`
  ADD CONSTRAINT `lakes_pages_ibfk_1` FOREIGN KEY (`lake_id`) REFERENCES `lakes` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
