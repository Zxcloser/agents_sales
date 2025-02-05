-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 27 2025 г., 15:57
-- Версия сервера: 8.0.29
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `sales`
--

-- --------------------------------------------------------

--
-- Структура таблицы `agents`
--

CREATE TABLE `agents` (
  `id` int NOT NULL,
  `Title` varchar(150) NOT NULL,
  `type_id` int NOT NULL,
  `Address` varchar(300) NOT NULL,
  `INN` varchar(12) NOT NULL,
  `KPP` varchar(9) NOT NULL,
  `DirectorName` varchar(100) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Logo` varchar(100) NOT NULL,
  `Priority` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `agents`
--

INSERT INTO `agents` (`id`, `Title`, `type_id`, `Address`, `INN`, `KPP`, `DirectorName`, `Phone`, `Email`, `Logo`, `Priority`) VALUES
(401, 'БухФлотФинансСнаб', 43, '035823, Смоленская область, город Одинцово, проезд Будапештсткая, 61', '4591032477', '290155423', 'Ираклий Максимович Титова', '8-800-121-66-81', 'elvira07@sysoeva.org', 'agentsagent_93.png', 338),
(402, 'ЛифтТомскСофтЦентр', 44, '280811, Омская область, город Балашиха, пер. Сталина, 15', '3908099185', '747184361', 'Виноградоваа Вера Александровна', '(812) 267-19-59', 'izolda.vorontov@lytkina.ru', 'agentsagent_116.png', 76),
(403, 'Транс', 43, '508299, Кемеровская область, город Кашира, пер. Гагарина, 42', '9604275878', '951258069', 'Евсеева Болеслав Сергеевич', '+7 (922) 467-93-83', 'artem.fadeev@polykov.com', 'agentsagent_66.png', 38),
(404, 'CибОмскМорЦентр', 45, '371407, Рязанская область, город Шатура, пл. Чехова, 48', '3626169571', '300062579', 'Гавриил Сергеевич Игнатьев', '8-800-317-35-79', 'fedotov.platon@pavlov.ru', 'agentsagent_96.png', 68),
(405, 'ОрионТомскТех', 44, '738763, Курская область, город Егорьевск, спуск Чехова, 66', '9351493429', '583041591', 'Георгий Александрович Лукин', '+7 (922) 851-23-23', 'faina.tikonova@veselov.com', 'agentsagent_58.png', 73),
(406, 'КрепОрионСофтПром', 46, '351666, Ульяновская область, город Луховицы, въезд Косиора, 07', '3776671267', '642177246', 'Алина Борисовна Потаповаа', '(495) 931-29-26', 'viktoriy.belozerova@isaev.net', 'нет', 38),
(407, 'ПивРадиоВектор', 45, '330228, Ивановская область, город Ногинск, ул. Славы, 42', '7447864518', '211697866', 'Изабелла Борисовна Архиповаа', '(495) 445-61-43', 'nazarov.polina@voronova.ru', 'agentsagent_108.png', 245),
(408, 'БашкирИнфоЭлектро', 43, '584771, Брянская область, город Раменское, наб. Славы, 53', '9037040523', '803529530', 'Дорофеева Зинаида Борисовна', '8-800-232-56-37', 'lebedeva.larisa@lavrentev.net', 'agentsagent_97.png', 289),
(409, 'Компания CибМоторКазань', 45, '887741, Тульская область, город Пушкино, пр. Чехова, 77', '6221520857', '758155852', 'Тетерина Георгий Сергеевич', '(495) 713-51-83', 'tamara22@pavlova.com', 'agentsagent_100.png', 136),
(410, 'Компания Газ', 45, '310403, Кировская область, город Солнечногорск, пл. Балканская, 76', '2262431140', '247369527', 'Давид Андреевич Фадеев', '(812) 823-93-42', 'alina56@zdanov.com', 'agentsagent_59.png', 445),
(411, 'СантехБашкир', 43, '180288, Тверская область, город Одинцово, ул. Бухарестская, 37', '4159215346', '639267493', 'Виктор Иванович Молчанов', '8-800-582-39-19', 'nikodim81@kiseleva.com', 'agentsagent_38.png', 369),
(412, 'ОрионГлав', 44, '729639, Магаданская область, город Талдом, въезд Будапештсткая, 98', '9032455179', '763045792', 'Тимофеева Григорий Андреевич', '(35222) 96-19-26', 'sermakova@sarova.net', 'agentsagent_45.png', 482),
(413, 'Мобайл', 47, '606703, Амурская область, город Чехов, пл. Будапештсткая, 91', '7803888520', '885703265', 'Екатерина Сергеевна Бобылёва', '8-800-511-43-61', 'dsiryev@dementeva.com', 'agentsagent_46.png', 464),
(414, 'Компания ТомскХоз', 45, '861543, Томская область, город Истра, бульвар Славы, 42', '8430391035', '961540858', 'Лазарева Аркадий Сергеевич', '(495) 893-71-17', 'nelli11@gureva.ru', 'agentsagent_54.png', 464),
(415, 'ЛенХозРем', 44, '946112, Волгоградская область, город Шаховская, пл. Сталина, 98', '4318970454', '389962934', 'Носов Михаил Андреевич', '(35222) 73-44-19', 'tdrozdov@ersova.ru', 'agentsagent_78.png', 3),
(416, 'Строй', 45, '426305, Калининградская область, город Чехов, пл. Ломоносова, 00', '7687851800', '470221602', 'Люся Владимировна Фёдороваа', '+7 (922) 233-27-68', 'wsamsonov@martynov.ru', 'agentsagent_76.png', 258),
(417, 'ЭлектроТранс', 47, '434616, Калининградская область, город Павловский Посад, пл. Ладыгина, 83', '6019144874', '450629885', 'Сава Александрович Титова', '(495) 688-28-59', 'boleslav.zukova@nikiforova.com', 'agentsagent_30.png', 129),
(418, 'Флот', 46, '505562, Тюменская область, город Наро-Фоминск, пр. Косиора, 11', '1112170258', '382584255', 'Василий Андреевич Ковалёв', '8-800-538-41-77', 'gerasim.makarov@kornilov.ru', 'не указано', 473),
(419, 'ОмскЛифтРадио', 46, '146093, Белгородская область, город Можайск, пл. Ломоносова, 94', '8325114917', '356835763', 'Горбунов Назар Сергеевич', '(495) 452-58-94', 'kanisimov@nikolaev.ru', 'agentsagent_92.png', 373),
(420, 'ВостокНефть', 45, '171297, Оренбургская область, город Зарайск, проезд Сталина, 17', '3532367439', '788413794', 'Данила Александрович Кириллов', '+7 (922) 596-14-53', 'stanislav.zykov@volkova.net', 'agentsagent_120.png', 49),
(421, 'СервисХмельМонтаж', 46, '928260, Нижегородская область, город Балашиха, пл. Косиора, 44', '3459886235', '356196105', 'Анжелика Дмитриевна Горбунова', '(35222) 39-28-95', 'galina31@melnikov.ru', 'agentsagent_31.png', 124),
(422, 'АсбоцементЛифтРеч-H', 44, '599158, Ростовская область, город Озёры, ул. Космонавтов, 05', '6567878928', '560960507', 'Кондратьева Таисия Андреевна', '(495) 284-69-37', 'vladlena58@seliverstova.ru', 'agentsagent_44.png', 407),
(423, 'БухМоторТомск', 47, '936264, Ростовская область, город Ногинск, проезд Славы, 52', '5630128011', '571438707', 'Игорь Львович Щукина', '(812) 132-93-75', 'dmitrii05@zukov.ru', 'agentsagent_95.png', 65),
(424, 'Глав', 46, '077760, Ленинградская область, город Сергиев Посад, спуск Славы, 05', '6433380154', '715096638', 'Герман Иванович Гусева', '(812) 524-87-16', 'albert57@burova.ru', 'отсутствует', 35),
(425, 'Тяж', 44, '395435, Мурманская область, город Красногорск, шоссе Косиора, 47', '3302080044', '733101773', 'Бронислав Владимирович Ефимов', '(812) 976-77-15', 'vladlen06@melnikov.net', 'agentsagent_106.png', 402),
(426, 'ТелекомГор', 47, '210024, Белгородская область, город Сергиев Посад, наб. Ломоносова, 43', '3748947224', '766431901', 'Ксения Андреевна Михайлова', '8-800-752-71-45', 'gorskov.larisa@kalinin.com', 'agentsagent_37.png', 255),
(427, 'ОрионХмельCиб', 47, '266126, Ленинградская область, город Сергиев Посад, шоссе Чехова, 31', '9895514594', '587685742', 'Воробьёва Родион Максимович', '(35222) 85-24-18', 'pstepanova@siryev.com', 'agentsagent_105.png', 173),
(428, 'РадиоСевер', 47, '491360, Московская область, город Одинцово, въезд Ленина, 19', '5889206249', '372789083', 'Карпов Иосиф Максимович', '(495) 374-21-79', 'maiy.belov@rogov.ru', 'agentsagent_62.png', 431),
(429, 'CибСервисСевер', 45, '711370, Курская область, город Истра, пр. Будапештсткая, 89', '1719781819', '742676221', 'Чернов Геннадий Алексеевич', '+7 (922) 248-79-98', 'faina02@muraveva.com', 'agentsagent_74.png', 385),
(430, 'СофтРосБух', 46, '747695, Амурская область, город Сергиев Посад, въезд Бухарестская, 46', '8321561226', '807803984', 'Белова Полина Владимировна', '+7 (922) 947-11-99', 'ivanova.antonin@rodionov.ru', 'agentsagent_63.png', 69),
(431, 'Компания СервисТелеМотор', 45, '625988, Вологодская область, город Озёры, пр. Гоголя, 18', '3248454160', '138472695', 'Фролова Эдуард Борисович', '(35222) 13-15-63', 'veronika.egorov@bespalova.com', 'agentsagent_41.png', 81),
(432, 'КрепФлот', 47, '357783, Рязанская область, город Павловский Посад, наб. Домодедовская, 44', '2795067090', '967021779', 'Злата Романовна Корнилова', '8-800-753-27-68', 'danila.birykov@stepanov.ru', 'agentsagent_90.png', 349),
(433, 'ГаражФорсаж', 47, '294596, Мурманская область, город Шаховская, пр. Домодедовская, 88', '2816939574', '754741128', 'Клавдия Фёдоровна Кудряшова', '(495) 277-77-59', 'lydmila.belyeva@karpov.ru', 'agentsagent_47.png', 335),
(434, 'ГлавРечФлот', 43, '116028, Челябинская область, город Балашиха, шоссе Космонавтов, 69', '5299346323', '214239563', 'Шубина Валерия Евгеньевна', '8-800-933-48-75', 'emysnikov@kiselev.net', 'agentsagent_85.png', 283),
(435, 'МикроБашкирГор', 46, '437208, Астраханская область, город Озёры, спуск Славы, 45', '5774378274', '352728364', 'Нонна Владимировна Горбунова', '(35222) 41-81-98', 'ybragina@odintov.org', 'agentsagent_86.png', 427),
(436, 'ХозЮпитер', 47, '038182, Курганская область, город Москва, спуск Космонавтов, 16', '6667635058', '380592865', 'Максимоваа Вера Фёдоровна', '(495) 178-61-32', 'jisakova@nazarova.com', 'agentsagent_53.png', 375),
(437, 'Дизайн', 48, '243999, Орловская область, город Можайск, пер. Домодедовская, 77', '9646693050', '201876935', 'Мельниковаа Федосья Борисовна', '+7 (922) 349-67-96', 'viktoriy73@kalinina.org', 'agentsagent_71.png', 330),
(438, 'ЛифтАлмазТех', 47, '925700, Нижегородская область, город Зарайск, шоссе Гоголя, 35', '3950510936', '240396350', 'Воронова Альберт Александрович', '(495) 834-12-97', 'donat.gerasimov@rogova.ru', 'agentsagent_77.png', 497),
(439, 'Вод', 46, '964386, Оренбургская область, город Чехов, пл. Косиора, 80', '1296063939', '447430051', 'Зоя Романовна Селезнёва', '(495) 811-36-55', 'savva86@zaiteva.ru', 'agentsagent_68.png', 359),
(440, 'CибГаз', 48, '365674, Архангельская область, город Серебряные Пруды, пр. Ленина, 29', '6483417250', '455013058', 'Вячеслав Романович Третьякова', '8-800-567-79-81', 'inna.sarova@panfilov.ru', 'agentsagent_42.png', 488),
(441, 'МеталСервисМор', 44, '293265, Иркутская область, город Клин, пр. Славы, 12', '6922817841', '580142825', 'Коновалова Кирилл Львович', '8-800-427-61-43', 'xdanilov@titov.ru', 'agentsagent_23.png', 475),
(442, 'МоторБашкирИнфоЭкспедиция', 44, '352034, Сахалинская область, город Домодедово, пр. Балканская, 97', '6542240791', '928029129', 'Тимофеева Регина Львовна', '(35222) 86-94-61', 'egorov.zanna@maslova.ru', 'agentsagent_88.png', 68),
(443, 'Пив', 44, '306012, Ростовская область, город Талдом, пл. Сталина, 01', '3936600214', '873471159', 'Макар Романович Савельев', '(812) 465-97-96', 'klavdiy50@nazarov.com', 'agentsagent_118.png', 198),
(444, 'Компания КазМеталКазань', 45, '532703, Пензенская область, город Чехов, наб. Чехова, 81', '4598939812', '303467543', 'Валерий Владимирович Хохлова', '(495) 683-76-57', 'mmoiseev@teterin.ru', 'agentsagent_69.png', 252),
(445, 'Компания Орион', 45, '661101, Оренбургская область, город Волоколамск, въезд Чехова, 16', '8698706801', '251899316', 'Елисееваа Эмилия Андреевна', '+7 (922) 916-34-31', 'msorokina@andreeva.ru', 'agentsagent_70.png', 227),
(446, 'ИнфоАлмазГлав', 46, '937201, Самарская область, город Воскресенск, въезд Космонавтов, 10', '8990745795', '517528851', 'Вишняков Гордей Владимирович', '+7 (922) 627-96-25', 'valentin23@sitnikov.net', 'agentsagent_112.png', 133),
(447, 'ТяжРадиоУралПроф', 47, '521087, Орловская область, город Егорьевск, шоссе Ладыгина, 14', '5688533246', '401535045', 'София Алексеевна Мухина', '+7 (922) 635-97-19', 'liliy62@grisina.ru', 'agentsagent_27.png', 278),
(448, 'РемМетиз', 45, '837800, Псковская область, город Солнечногорск, ул. Сталина, 67', '2129059967', '287016575', 'Жанна Евгеньевна Гришинаа', '(495) 698-56-86', 'mdavydov@blokin.org', 'agentsagent_111.png', 296),
(449, 'Гараж', 43, '585758, Самарская область, город Красногорск, бульвар Балканская, 13', '2638464552', '746822723', 'Панфилов Константин Максимович', '8-800-297-69-48', 'antonin51@korolev.com', 'не указано', 107),
(450, 'Компания МикроГлавУралЭкспедиция', 45, '225511, Новосибирская область, город Можайск, наб. Ладыгина, 82', '5555957575', '680301577', 'Зайцева Лада Дмитриевна', '(495) 484-42-65', 'nonna23@nesterova.ru', 'agentsagent_109.png', 387),
(451, 'БашкирРечТомск', 44, '136886, Амурская область, город Видное, въезд Космонавтов, 39', '7027724917', '823811460', 'Назарова Вера Андреевна', '+7 (922) 437-38-91', 'aleksandra77@karpov.com', 'agentsagent_39.png', 84),
(452, 'Орион', 44, '049104, Новгородская область, город Павловский Посад, бульвар Ладыгина, 58', '7387259022', '875652541', 'Клим Сергеевич Аксёнова', '(35222) 77-98-59', 'donat05@sokolova.com', 'agentsagent_104.png', 412),
(453, 'МетизСтрой', 48, '254238, Нижегородская область, город Павловский Посад, проезд Балканская, 23', '4024742936', '295608432', 'Ева Борисовна Беспалова', '(35222) 77-46-44', 'kristina.pakomov@burova.ru', 'agentsagent_33.png', 374),
(454, 'ЦементКрепТех-М', 46, '263764, Свердловская область, город Раменское, пер. Косиора, 28', '5359981084', '680416300', 'Сергеев Владлен Александрович', '(812) 413-91-32', 'yna.evdokimov@gordeeva.ru', 'agentsagent_21.png', 189),
(455, 'РемВод', 47, '449723, Смоленская область, город Наро-Фоминск, пер. Ломоносова, 94', '3986603105', '811373078', 'Медведеваа Ярослава Фёдоровна', '(812) 766-11-88', 'komarov.elizaveta@agafonova.ru', 'agentsagent_65.png', 1),
(456, 'БашкирМотор', 47, '073468, Читинская область, город Шаховская, наб. Косиора, 99', '6032171116', '180861585', 'Денисов Владимир Андреевич', '(812) 176-77-77', 'kseniy80@rusakov.net', 'agentsagent_117.png', 91),
(457, 'Компания МоторТелекомЦемент-М', 45, '021293, Амурская область, город Наро-Фоминск, шоссе Славы, 40', '7326832482', '440199498', 'Иван Евгеньевич Белоусова', '(812) 131-84-24', 'larisa44@silin.org', 'agentsagent_57.png', 237),
(458, 'ЦементСантехФинансЛизинг', 47, '165429, Курганская область, город Озёры, въезд Балканская, 17', '6290983121', '136566390', 'Даниил Фёдорович Григорьева', '+7 (922) 877-12-28', 'anfisa07@semenova.com', 'agentsagent_101.png', 70),
(459, 'Компания ВодАлмазIT', 45, '302100, Нижегородская область, город Мытищи, пер. 1905 года, 63', '2345297765', '908449277', 'Гуляев Егор Евгеньевич', '8-800-595-91-99', 'zakar37@nikolaeva.ru', 'agentsagent_50.png', 31),
(460, 'Компания БашкирСтрой', 45, '152450, Брянская область, город Серебряные Пруды, наб. 1905 года, 56', '1660486169', '253830866', 'Яна Дмитриевна Моисееваа', '(35222) 89-74-97', 'bgromov@tretykov.org', 'agentsagent_80.png', 92),
(461, 'ТелеРечДизайн', 47, '063695, Новгородская область, город Можайск, шоссе Гагарина, 39', '6369492130', '115604622', 'Виктория Романовна Королёваа', '(812) 731-79-52', 'kazakova.yroslava@silina.net', 'agentsagent_82.png', 226),
(462, 'ГазГлавПивЛизинг', 47, '899084, Амурская область, город Талдом, спуск Балканская, 34', '5309136217', '170258253', 'Злата Сергеевна Архипова', '(495) 744-37-11', 'sysoeva.evgenii@kolesnikova.ru', 'agentsagent_91.png', 52),
(463, 'Софт', 47, '453714, Смоленская область, город Одинцово, спуск Косиора, 84', '3889910123', '952047511', 'Петухова Прохор Фёдорович', '(35222) 15-35-92', 'jterentev@ersov.com', 'agentsagent_61.png', 292),
(464, 'Инфо', 47, '100469, Рязанская область, город Ногинск, шоссе Гагарина, 57', '6549468639', '718386757', 'Баранова Виктор Романович', '(35222) 28-33-28', 'arsenii.mikailova@prokorov.com', 'agentsagent_28.png', 304),
(465, 'ЭлектроШум', 47, '975616, Вологодская область, город Клин, пер. Косиора, 57', '3124748557', '525403940', 'Игнатьеваа Флорентина Фёдоровна', '(35222) 28-59-34', 'nataly89@kulakov.ru', 'agentsagent_103.png', 109),
(466, 'РыбВостокCибСнаб', 46, '990758, Челябинская область, город Серпухов, въезд Космонавтов, 57', '2412503891', '711642010', 'Степанова Фаина Львовна', '8-800-486-84-47', 'filipp93@polykov.ru', 'agentsagent_94.png', 496),
(467, 'СервисПивВектор', 44, '669558, Омская область, город Шаховская, шоссе Гагарина, 55', '4098988911', '952390693', 'Олег Евгеньевич Журавлёв', '(812) 564-46-65', 'wersov@molcanova.com', 'agentsagent_87.png', 267),
(468, 'Бух', 44, '481744, Амурская область, город Щёлково, пл. Сталина, 48', '2320989197', '359282667', 'Тарасов Болеслав Александрович', '(35222) 99-92-42', 'valentina.bolsakova@aksenova.ru', 'agentsagent_43.png', 327),
(469, 'МеталТекстильЛифтТрест', 48, '786287, Свердловская область, город Волоколамск, пер. Будапештсткая, 72', '2971553297', '821859486', 'Одинцов Назар Борисович', '8-800-736-36-73', 'muravev.trofim@sazonov.net', 'agentsagent_25.png', 425),
(470, 'ВостокЛен', 43, '546530, Тульская область, город Видное, наб. Гагарина, 63', '1697025997', '931878289', 'Лыткинаа Люся Дмитриевна', '(495) 971-71-24', 'dmitrii90@zaitev.ru', 'agentsagent_114.png', 246),
(471, 'АлмазАсбоцементБухКомплекс', 44, '794964, Мурманская область, город Озёры, ул. 1905 года, 56', '8996890877', '349709983', 'Зыков Никита Александрович', '(812) 752-53-41', 'akoseleva@dementeva.ru', 'agentsagent_119.png', 39),
(472, 'ТверьМонтажОмск', 44, '761751, Амурская область, город Балашиха, шоссе Гоголя, 02', '2421347164', '157370604', 'Матвей Романович Большакова', '(35222) 92-87-52', 'dteterina@selezneva.ru', 'agentsagent_67.png', 272),
(473, 'ТверьХозМорСбыт', 48, '252101, Ростовская область, город Дорохово, пер. Ленина, 85', '6681338084', '460530907', 'Аким Львович Субботина', '(35222) 72-93-38', 'marina58@koroleva.com', 'agentsagent_56.png', 207),
(474, 'МорТехТелекомСнаб', 47, '239247, Архангельская область, город Лотошино, бульвар Ломоносова, 28', '4354676693', '631235170', 'Беспалова Ева Романовна', '8-800-359-95-29', 'garri.rybakov@ermakova.com', 'agentsagent_98.png', 149),
(475, 'Лифт', 45, '479565, Курганская область, город Клин, пл. Ленина, 54', '6169713039', '848972934', 'Вера Евгеньевна Денисоваа', '(812) 887-59-97', 'zinaida01@bespalova.ru', 'agentsagent_40.png', 92),
(476, 'МясХмельФлот', 48, '252826, Костромская область, город Солнечногорск, проезд Ленина, 75', '3019787650', '974897634', 'Гавриил Львович Зуева', '8-800-548-11-53', 'anna48@alekseev.ru', 'agentsagent_72.png', 372),
(477, 'Компания МобайлЮпитерМобайл', 45, '697880, Тюменская область, город Егорьевск, проезд Домодедовская, 82', '3824054933', '715845254', 'Рожкова Аркадий Владимирович', '(812) 941-35-96', 'klara.gavrilov@nosova.com', 'agentsagent_75.png', 31),
(478, 'Компания Инж', 45, '475644, Ивановская область, город Луховицы, въезд Будапештсткая, 43', '6730622378', '201657751', 'Чернова Инесса Сергеевна', '8-800-765-67-46', 'osilova@muravev.ru', 'agentsagent_99.png', 179),
(479, 'АсбоцементТехАвто', 43, '304975, Пензенская область, город Солнечногорск, шоссе Балканская, 76', '7626076463', '579234124', 'Сидорова Любовь Ивановна', '(495) 676-81-98', 'matveev.yliy@kiseleva.ru', 'agentsagent_49.png', 247),
(480, 'Cиб', 45, '194134, Омская область, город Волоколамск, пер. Косиора, 79', '7892739766', '524021828', 'Беспалова Мирослав Владимирович', '(812) 373-27-64', 'anfisa50@krykova.org', 'agentsagent_83.png', 174),
(481, 'СервисТомск', 43, '194903, Амурская область, город Ногинск, ул. Бухарестская, 45', '8538379073', '761935124', 'Егор Сергеевич Филиппов', '(35222) 66-31-65', 'mukin.lev@komarov.ru', 'agentsagent_79.png', 475),
(482, 'ТверьМетизУралСнос', 45, '880551, Ленинградская область, город Красногорск, ул. Гоголя, 61', '1076095397', '947828491', 'Зоя Андреевна Соболева', '+7 (922) 497-22-19', 'rlazareva@novikov.ru', 'agentsagent_48.png', 165),
(483, 'Электро', 47, '966815, Новгородская область, город Одинцово, пр. Космонавтов, 19', '7896029866', '786038848', 'Шарапова Елена Дмитриевна', '(812) 264-41-75', 'likacev.makar@antonov.ru', 'agentsagent_32.png', 366),
(484, 'Компания Алмаз', 45, '016215, Воронежская область, город Зарайск, ул. Косиора, 48', '6698862694', '662876919', 'Фоминаа Лариса Романовна', '+7 (922) 167-89-39', 'akalinina@zaitev.ru', 'agentsagent_60.png', 259),
(485, 'ПивЛенТверь', 46, '783238, Тюменская область, город Серебряные Пруды, проезд 1905 года, 67', '9476119404', '365311390', 'Костин Савва Романович', '(812) 653-19-26', 'dnikitina@antonova.ru', 'agentsagent_110.png', 190),
(486, 'МетизБухРем', 47, '318328, Кемеровская область, город Павловский Посад, спуск 1905 года, 92', '1449531554', '124871353', 'Нонна Фёдоровна Федотова', '+7 (922) 852-73-43', 'koselev.anfisa@selezneva.ru', 'нет', 112),
(487, 'ITСтройАлмаз', 47, '361730, Костромская область, город Волоколамск, шоссе Славы, 36', '7689065648', '456612755', 'Алексеева Валериан Андреевич', '(35222) 46-33-91', 'fokin.eduard@samoilov.com', 'не указано', 159),
(488, 'МонтажОрионУрал', 48, '027573, Тамбовская область, город Коломна, ул. Ленина, 20', '1692286718', '181380912', 'Давыдоваа Нина Евгеньевна', '8-800-916-27-93', 'pzaitev@blokin.org', 'agentsagent_35.png', 50),
(489, 'ВодГор', 47, '265653, Калужская область, город Ступино, шоссе Гоголя, 89', '4463113470', '899603778', 'Фаина Фёдоровна Филиппова', '(35222) 61-58-74', 'tvetkova.robert@sorokin.com', 'agentsagent_64.png', 72),
(490, 'ВостокКазРыб', 43, '059565, Оренбургская область, город Истра, шоссе Домодедовская, 27', '7411284960', '176779733', 'Самсонов Родион Романович', '+7 (922) 263-93-51', 'flukin@misin.org', 'agentsagent_51.png', 361),
(491, 'ЛифтРыб', 45, '076703, Саратовская область, город Одинцово, ул. Косиора, 01', '3997121859', '970823018', 'Субботин Анатолий Евгеньевич', '+7 (922) 298-45-48', 'maksim86@fokina.ru', 'отсутствует', 445),
(492, 'УралСтройХмель', 46, '462632, Костромская область, город Шаховская, шоссе Сталина, 92', '8773558039', '402502867', 'Август Борисович Красильникова', '(812) 986-94-47', 'aleksandr95@kolobova.ru', 'agentsagent_52.png', 372),
(493, 'ГаражРосВекторПроф', 48, '828207, Тверская область, город Щёлково, наб. Ленина, 70', '1092776106', '164232266', 'Абрам Фёдорович Дроздов', '8-800-595-65-86', 'adrian61@guseva.ru', 'agentsagent_81.png', 189),
(494, 'Каз', 48, '432454, Ленинградская область, город Луховицы, пр. Косиора, 88', '1036132639', '918316432', 'Святослав Андреевич Моисеева', '(495) 829-15-77', 'jsafonov@molcanov.com', 'agentsagent_115.png', 291),
(495, 'КрепМетал', 45, '103296, Иркутская область, город Солнечногорск, пл. 1905 года, 59', '1689100612', '671073273', 'Андрей Сергеевич Лобанов', '+7 (922) 537-88-64', 'nika.kalasnikov@maslova.ru', 'не указано', 471),
(496, 'Компания ЖелДорТверьМонтаж', 45, '152424, Рязанская область, город Сергиев Посад, ул. 1905 года, 27', '3325722996', '665766347', 'Нестор Максимович Гуляев', '(495) 168-53-94', 'burova.zlata@zueva.ru', 'agentsagent_24.png', 2),
(497, 'ОрионСофтВодСнос', 46, '577227, Калужская область, город Павловский Посад, наб. Чехова, 35', '1522348613', '977738715', 'Мухина Ян Фёдорович', '8-800-187-56-96', 'isukanov@sobolev.com', 'agentsagent_36.png', 361),
(498, 'БухМясМоторПром', 47, '677498, Костромская область, город Зарайск, спуск Славы, 59', '7377410338', '592041317', 'Нина Дмитриевна Черноваа', '(35222) 73-81-81', 'varvara49@savin.ru', 'нет', 158),
(499, 'ГлавБашкирМоторБанк', 44, '258285, Ульяновская область, город Ступино, пл. Ладыгина, 83', '9101293748', '531950230', 'Стефан Алексеевич Андреев', '(495) 134-27-72', 'xaksenova@kazakov.ru', 'нет', 98),
(500, 'Рем', 44, '373761, Псковская область, город Наро-Фоминск, наб. Гагарина, 03', '9006569852', '152177100', 'Альбина Александровна Романова', '(812) 111-67-11', 'rafail96@sukin.ru', 'agentsagent_55.png', 88);

-- --------------------------------------------------------

--
-- Структура таблицы `agenttype`
--

CREATE TABLE `agenttype` (
  `id` int NOT NULL,
  `title` varchar(50) NOT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `agenttype`
--

INSERT INTO `agenttype` (`id`, `title`, `image`) VALUES
(43, 'МФО', NULL),
(44, 'ПАО', NULL),
(45, 'ООО', NULL),
(46, 'ЗАО', NULL),
(47, 'ОАО', NULL),
(48, 'МКК', NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_type` (`type_id`);

--
-- Индексы таблицы `agenttype`
--
ALTER TABLE `agenttype`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `agents`
--
ALTER TABLE `agents`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=601;

--
-- AUTO_INCREMENT для таблицы `agenttype`
--
ALTER TABLE `agenttype`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `agents`
--
ALTER TABLE `agents`
  ADD CONSTRAINT `fk_type` FOREIGN KEY (`type_id`) REFERENCES `agenttype` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
