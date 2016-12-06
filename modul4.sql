-- --------------------------------------------------------
-- Сервер:                       127.0.0.1
-- Версія сервера:               10.1.13-MariaDB - mariadb.org binary distribution
-- ОС сервера:                   Win32
-- HeidiSQL Версія:              9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for таблиця modul4.articles
DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `text` longtext NOT NULL,
  `published` tinyint(1) unsigned zerofill NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `vip` tinyint(1) unsigned zerofill NOT NULL DEFAULT '0',
  `hits` int(15) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

-- Dumping data for table modul4.articles: ~81 rows (приблизно)
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` (`id`, `title`, `text`, `published`, `created_at`, `updated_at`, `vip`, `hits`) VALUES
	(1, 'Lorem ipsum article', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n\r\n<p><img class="center-block" src="http://lorempixel.com/output/business-q-g-750-200-6.jpg" /></p>\r\n\r\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', 1, '2016-12-02 20:04:36', '2016-12-05 21:24:41', 0, 132),
	(2, 'Lorem ipsum article', 'Lorem ipsum text', 1, '2016-12-02 20:05:11', '2016-12-03 18:32:38', 0, 1),
	(3, 'Lorem ipsum article', 'Lorem ipsum text', 1, '2016-12-02 20:05:13', '2016-12-02 20:05:13', 0, 0),
	(4, 'Lorem ipsum article', 'Lorem ipsum text', 1, '2016-12-02 20:05:14', '2016-12-02 20:05:14', 0, 0),
	(5, 'Lorem ipsum article', 'Lorem ipsum text', 1, '2016-12-02 20:05:15', '2016-12-02 20:05:15', 0, 0),
	(6, 'Lorem ipsum article', 'Lorem ipsum text', 1, '2016-12-02 20:05:16', '2016-12-02 20:05:16', 0, 0),
	(7, 'Lorem ipsum article', 'Lorem ipsum text', 1, '2016-12-02 20:05:18', '2016-12-02 20:05:18', 0, 0),
	(8, 'Lorem ipsum article', 'Lorem ipsum text', 1, '2016-12-02 20:05:19', '2016-12-02 20:05:19', 0, 0),
	(9, 'Lorem ipsum article', 'Lorem ipsum text', 1, '2016-12-02 20:05:20', '2016-12-02 20:05:20', 0, 0),
	(10, 'Lorem ipsum article', 'Lorem ipsum text', 1, '2016-12-02 20:05:20', '2016-12-02 20:05:20', 0, 0),
	(11, 'Lorem ipsum article', 'Lorem ipsum text', 1, '2016-12-02 20:05:21', '2016-12-02 20:05:21', 0, 0),
	(12, 'Lorem ipsum article', 'Lorem ipsum text', 1, '2016-12-02 20:05:22', '2016-12-02 20:05:22', 0, 0),
	(13, 'Beatles will be live forever', 'Who is John Lennon?', 1, '2016-12-02 21:28:14', '2016-12-02 21:28:14', 0, 0),
	(14, '55 Beatles will be live forever', 'Who is John Lennon?', 1, '2016-12-02 21:31:48', '2016-12-02 21:31:48', 0, 0),
	(15, '16 Beatles will be live forever', 'Who is John Lennon?', 1, '2016-12-02 21:33:33', '2016-12-06 02:08:23', 0, 4),
	(16, '79 Beatles will be live forever', 'Who is John Lennon?', 1, '2016-12-02 21:33:41', '2016-12-06 02:07:57', 0, 2),
	(17, '16 Beatles will be live forever', 'Who is John Lennon?', 1, '2016-12-02 21:33:51', '2016-12-06 02:08:40', 0, 2),
	(18, '92 Beatles will be live forever', 'Who is John Lennon?', 1, '2016-12-02 21:33:52', '2016-12-06 02:06:57', 0, 6),
	(19, '13 Trump param pam pam WIN!', 'Who is you daddy?', 1, '2016-12-02 21:34:47', '2016-12-02 21:34:47', 0, 0),
	(20, '91 Trump param pam pam WIN!', 'Who is you daddy?', 1, '2016-12-02 21:34:48', '2016-12-02 21:34:48', 0, 0),
	(21, '55 Trump param pam pam WIN!', 'Who is you daddy?', 1, '2016-12-02 21:34:48', '2016-12-02 21:34:48', 0, 0),
	(22, '42 Trump param pam pam WIN!', 'Who is you daddy?', 1, '2016-12-02 21:34:49', '2016-12-02 21:34:49', 0, 0),
	(23, '21 Trump param pam pam WIN!', 'Who is you daddy?', 1, '2016-12-02 21:34:50', '2016-12-05 21:24:03', 1, 1),
	(24, '60 Trump param pam pam WIN!', 'Who is you daddy?', 1, '2016-12-02 21:34:51', '2016-12-02 21:34:51', 0, 0),
	(25, '3 Trump param pam pam WIN!', 'Who is you daddy?', 1, '2016-12-02 21:34:52', '2016-12-02 21:34:52', 0, 0),
	(26, '79 Trump param pam pam WIN!', 'Who is you daddy?', 1, '2016-12-02 21:34:52', '2016-12-06 02:30:06', 0, 3),
	(27, '76 Trump param pam pam WIN!', 'Who is you daddy?', 1, '2016-12-02 21:34:53', '2016-12-05 21:28:40', 0, 14),
	(28, '31Stephen William Hawking has opened secret of black hole!', 'Are you want to fly to space?', 1, '2016-12-02 21:39:13', '2016-12-02 21:39:13', 0, 0),
	(29, '72Stephen William Hawking has opened secret of black hole!', 'Are you want to fly to space?', 1, '2016-12-02 21:39:36', '2016-12-02 21:39:36', 0, 0),
	(30, '22Stephen William Hawking has opened secret of black hole!', 'Are you want to fly to space?', 1, '2016-12-02 21:39:36', '2016-12-02 21:39:36', 0, 0),
	(31, '60Stephen William Hawking has opened secret of black hole!', 'Are you want to fly to space?', 1, '2016-12-02 21:39:37', '2016-12-02 21:39:37', 0, 0),
	(32, '2Stephen William Hawking has opened secret of black hole!', 'Are you want to fly to space?', 1, '2016-12-02 21:39:37', '2016-12-02 21:39:37', 0, 0),
	(33, '18Stephen William Hawking has opened secret of black hole!', 'Are you want to fly to space?', 1, '2016-12-02 21:39:38', '2016-12-02 21:39:38', 0, 0),
	(34, '46Stephen William Hawking has opened secret of black hole!', 'Are you want to fly to space?', 1, '2016-12-02 21:39:39', '2016-12-02 21:39:39', 0, 0),
	(35, '8Stephen William Hawking has opened secret of black hole!', 'Are you want to fly to space?', 1, '2016-12-02 21:39:39', '2016-12-02 21:39:39', 0, 0),
	(36, '21Stephen William Hawking has opened secret of black hole!', 'Are you want to fly to space?', 1, '2016-12-02 21:39:39', '2016-12-02 21:39:39', 0, 0),
	(37, '53Stephen William Hawking has opened secret of black hole!', 'Are you want to fly to space?', 1, '2016-12-02 21:59:40', '2016-12-02 21:59:40', 0, 0),
	(38, '63 Stephen William Hawking has opened secret of black hole!', 'Are you want to fly to space?', 1, '2016-12-03 12:18:43', '2016-12-03 12:18:43', 0, 0),
	(39, '86 Stephen William Hawking has opened secret of black hole!', 'Are you want to fly to space?', 1, '2016-12-03 12:18:46', '2016-12-03 12:18:46', 0, 0),
	(40, '88 Stephen William Hawking has opened secret of black hole!', 'Are you want to fly to space?', 1, '2016-12-03 12:18:47', '2016-12-03 12:18:47', 0, 0),
	(41, '42 Stephen William Hawking has opened secret of black hole!', 'Are you want to fly to space?', 1, '2016-12-03 12:18:47', '2016-12-03 12:18:47', 0, 0),
	(42, '99 Stephen William Hawking has opened secret of black hole!', 'Are you want to fly to space?', 1, '2016-12-03 12:18:48', '2016-12-03 12:18:48', 0, 0),
	(43, '58 Stephen William Hawking has opened secret of black hole!', 'Are you want to fly to space?', 1, '2016-12-03 12:18:49', '2016-12-03 12:18:49', 0, 0),
	(44, '79 Stephen William Hawking has opened secret of black hole!', 'Are you want to fly to space?', 1, '2016-12-03 12:18:49', '2016-12-03 12:18:49', 0, 0),
	(45, '58 Stephen William Hawking has opened secret of black hole!', 'Are you want to fly to space?', 1, '2016-12-03 12:18:50', '2016-12-03 12:18:50', 0, 0),
	(46, '12 Stephen William Hawking has opened secret of black hole!', 'Are you want to fly to space?', 1, '2016-12-03 12:18:51', '2016-12-03 12:18:51', 0, 0),
	(47, '24 Stephen William Hawking has opened secret of black hole!', 'Are you want to fly to space?', 1, '2016-12-03 12:18:52', '2016-12-03 12:18:52', 0, 0),
	(48, '52 Stephen William Hawking has opened secret of black hole!', 'Are you want to fly to space?', 1, '2016-12-03 12:18:52', '2016-12-03 12:18:52', 0, 0),
	(49, '78 Stephen William Hawking has opened secret of black hole!', 'Are you want to fly to space?', 1, '2016-12-03 12:18:53', '2016-12-03 12:18:53', 0, 0),
	(50, '0 Stephen William Hawking has opened secret of black hole!', 'Are you want to fly to space?', 1, '2016-12-03 12:18:53', '2016-12-03 12:18:53', 0, 0),
	(51, '45 Stephen William Hawking has opened secret of black hole!', 'Are you want to fly to space?', 1, '2016-12-03 12:18:54', '2016-12-03 12:18:54', 0, 0),
	(52, '81 Stephen William Hawking has opened secret of black hole!', 'Are you want to fly to space?', 1, '2016-12-03 12:18:54', '2016-12-03 12:18:54', 0, 0),
	(53, '38 Stephen William Hawking has opened secret of black hole!', 'Are you want to fly to space?', 1, '2016-12-03 12:18:55', '2016-12-03 12:18:55', 0, 0),
	(54, '11 Stephen William Hawking has opened secret of black hole!', 'Are you want to fly to space?', 1, '2016-12-03 12:18:55', '2016-12-03 12:18:55', 0, 0),
	(55, '28 Stephen William Hawking has opened secret of black hole!', 'Are you want to fly to space?', 1, '2016-12-03 12:18:56', '2016-12-03 12:18:56', 0, 0),
	(56, '85 Stephen William Hawking has opened secret of black hole!', 'Are you want to fly to space?', 1, '2016-12-03 12:18:56', '2016-12-03 12:18:56', 0, 0),
	(57, '21 Stephen William Hawking has opened secret of black hole!', 'Are you want to fly to space?', 1, '2016-12-03 12:18:57', '2016-12-03 12:18:57', 0, 0),
	(58, '40 Stephen William Hawking has opened secret of black hole!', 'Are you want to fly to space?', 1, '2016-12-03 12:18:58', '2016-12-03 12:18:58', 0, 0),
	(59, '34 Stephen William Hawking has opened secret of black hole!', 'Are you want to fly to space?', 1, '2016-12-03 12:18:59', '2016-12-03 12:18:59', 0, 0),
	(60, '37 Stephen William Hawking has opened secret of black hole!', 'Are you want to fly to space?', 1, '2016-12-03 12:18:59', '2016-12-03 18:34:46', 0, 4),
	(61, '64 Stephen William Hawking has opened secret of black hole!', 'Are you want to fly to space?', 1, '2016-12-03 12:19:00', '2016-12-03 12:19:00', 0, 0),
	(62, '34 Stephen William Hawking has opened secret of black hole!', 'Are you want to fly to space?', 1, '2016-12-03 12:19:00', '2016-12-03 12:19:00', 0, 0),
	(63, '71 Stephen William Hawking has opened secret of black hole!', 'Are you want to fly to space?', 1, '2016-12-03 12:19:00', '2016-12-03 12:19:00', 0, 0),
	(64, '60 Stephen William Hawking has opened secret of black hole!', 'Are you want to fly to space?', 1, '2016-12-03 12:19:01', '2016-12-03 12:19:01', 0, 0),
	(65, '49 Stephen William Hawking has opened secret of black hole!', 'Are you want to fly to space?', 1, '2016-12-03 12:19:02', '2016-12-03 12:19:02', 0, 0),
	(66, '91 Stephen William Hawking has opened secret of black hole!', 'Are you want to fly to space?', 1, '2016-12-03 12:21:33', '2016-12-03 12:21:33', 0, 0),
	(67, '100 Stephen William Hawking has opened secret of black hole!', 'Are you want to fly to space?', 1, '2016-12-03 12:21:34', '2016-12-03 12:21:34', 0, 0),
	(68, '25 Stephen William Hawking has opened secret of black hole!', 'Are you want to fly to space?', 1, '2016-12-03 12:21:35', '2016-12-03 12:21:35', 0, 0),
	(69, 'Stephen William Hawking VIP !', '<span class="h3-ttl h3-ttl_with-logo"><a href="http://obozrevatel.com/"><img src="http://cdn.oboz.ua/css/i/oboz-big-logo.png" width="160" height="30"></a><b>/</b><a href="http://obozrevatel.com/abroad/">Мир</a></span><h1>Повстанцы сбили в Алеппо самолет сирийских ВВС - СМИ</h1><div class="add-info"><div class="right"><a class="print-ico ico png24" href="#"></a></div><time>03 декабря 2016, 19:25</time><span class="views display-inline_block"><span class="ico viewsfield">8.8т</span></span><span class="update-info"><span class="ico png24">обновлено от 17:38</span></span><a href="http://ukr.obozrevatel.com/abroad/90271-zmi-diznalisya-pro-katastrofu-litaka-sirijskih-vps-v-aleppo.htm" class="change-lang ua">Читати українською</a><div class="clr"></div></div><div class="like-blk-top like-blk2"><div class="b-share__container"><a class="b-share__element b-share__element_vk" href="http://vk.com/share.php?url=http://obozrevatel.com/abroad/51430-smi-uznali-o-krushenii-samoleta-sirijskih-vvs-v-aleppo.htm"><p class="b-share__link b-share__link_vk"></p><p class="b-share__counter b-share__counter_vk">Поделиться</p></a><a class="b-share__element b-share__element_fb" href="http://www.facebook.com/sharer.php?u=http://obozrevatel.com/abroad/51430-smi-uznali-o-krushenii-samoleta-sirijskih-vvs-v-aleppo.htm"><p class="b-share__link b-share__link_fb"></p><p class="b-share__counter b-share__counter_fb">11</p></a><a class="b-share__element b-share__element_ok" href="http://www.odnoklassniki.ru/dk?st.cmd=addShare&amp;st.s=1&amp;st._surl=http://obozrevatel.com/abroad/51430-smi-uznali-o-krushenii-samoleta-sirijskih-vvs-v-aleppo.htm"><p class="b-share__link b-share__link_ok"></p><p class="b-share__counter b-share__counter_ok">5</p></a><a class="b-share__element b-share__element_tw" href="https://twitter.com/intent/tweet?url=http://obozrevatel.com/abroad/51430-smi-uznali-o-krushenii-samoleta-sirijskih-vvs-v-aleppo.htm"><p class="b-share__link b-share__link_tw"></p><p class="b-share__counter b-share__counter_tw">Поделиться</p></a></div><a class="mistake">Заметили ошибку?<div class="mist-blk"><div class="wrap">Выделите ее и нажмите Ctrl+Enter, чтобы сообщить об этом редакции.<div class="tria ico png24"></div></div></div></a><div class="clr"></div></div><div class="not-for-print" id="content1480789560081"></div><div class="article-txt"><div class="article-full_big-photo"><img src="http://i.obozrevatel.com/v2/8/2/337/238/samolet_vvs_sirii.jpg" alt="Самолет ВВС Сирии" title="Самолет ВВС Сирии"><div class="article-full_photo-desc">Иллюстрация</div><div class="article-full_photo-desc">© ТВ Центр</div></div><span class="req-init" data-type="artcile_fancy"></span><p>В Сирии повстанцы сбили реактивный самолет правительственных военно-воздушных сил.</p><p>Об этом информирует портал <a href="https://www.almasdarnews.com/article/breaking-two-syrian-pilots-killed-rebels-shoot-jet-eastern-aleppo/" target="_blank">Al-Masdar News</a>.</p><p>Издание уточняет, что самолет типа L-Aero 39 Albatros авиации сил президента Сирии Башара Асада был сбит во время боевых вылетов над восточным районом Алеппо в ночь на 3 декабря.</p><p>Сами повстанцы заявили, что в результате погибли двое пилотов самолета, которые не смогли вовремя катапультироваться.</p><div class="read-link"><div class="lbl"><a href="http://obozrevatel.com"></a>Читайте:</div><div class="ttl"><a href="http://obozrevatel.com/crime/93401-peredachka-iz-sirii-rossiya-mogla-dostavit-v-kryim-himicheskoe-oruzhie.htm" target="_blank">"Передачка" из Сирии: Россия могла доставить в Крым химическое оружие</a></div></div><p>Официального подтверждения информации пока нет.</p><p>Как сообщал "Обозреватель", в начале ноября террористы из группировки "Исламское государство" <a href="http://obozrevatel.com/abroad/16893-v-sirii-terroristyi-igil-sbili-rossijskij-vertolet-smi.htm" target="_blank">сбили российский военный вертолет</a> в Сирии.</p><p class="italic">Подписывайся на "Обозреватель" в Facebook Messenger, чтобы быть в курсе главных событий Украины и мира <a href="http://m.me/obozrevatel" target="_blank">http://m.me/obozrevatel</a></p></div><div class="details"><div class="tags-blk"><div class="lbl"><span class="theme-ico ico png24"></span><span class="lbl-txt">Тема:</span></div><div class="descr"><ul class="tags-lst"><li><a href="http://obozrevatel.com/topic/konflikt-v-sirii/">Конфликт в Сирии</a></li></ul></div><div class="clr"></div></div><div class="tags-blk"><div class="lbl"><span class="place-ico ico png24"></span><span class="lbl-txt">Место:</span></div><div class="descr"><ul class="tags-lst"><li><a href="http://obozrevatel.com/location/siriya/">Сирия</a></li><li><a href="http://obozrevatel.com/location/siriya/aleppo/">Алеппо</a></li></ul></div><div class="clr"></div></div></div><div class="clr10"></div><div class="like-blk2"><div style="float:right;margin-left:-30px" class="fb-save fb_iframe_widget" data-lang="ru_RU" data-uri="http://obozrevatel.com/abroad/51430-smi-uznali-o-krushenii-samoleta-sirijskih-vvs-v-aleppo.htm" data-size="small" fb-xfbml-state="rendered" fb-iframe-plugin-query="app_id=236629479701279&amp;container_width=0&amp;locale=ru_RU&amp;sdk=joey&amp;size=small&amp;uri=http%3A%2F%2Fobozrevatel.com%2Fabroad%2F51430-smi-uznali-o-krushenii-samoleta-sirijskih-vvs-v-aleppo.htm"><span style="vertical-align: bottom; width: 159px; height: 20px;"><iframe name="f41aea44375efc" width="1000px" height="1000px" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" title="fb:save Facebook Social Plugin" src="https://www.facebook.com/plugins/save.php?app_id=236629479701279&amp;channel=http%3A%2F%2Fstaticxx.facebook.com%2Fconnect%2Fxd_arbiter%2Fr%2FfTmIQU3LxvB.js%3Fversion%3D42%23cb%3Df3b7e75e7babebc%26domain%3Dobozrevatel.com%26origin%3Dhttp%253A%252F%252Fobozrevatel.com%252Ff3516b28eb73e9%26relation%3Dparent.parent&amp;container_width=0&amp;locale=ru_RU&amp;sdk=joey&amp;size=small&amp;uri=http%3A%2F%2Fobozrevatel.com%2Fabroad%2F51430-smi-uznali-o-krushenii-samoleta-sirijskih-vvs-v-aleppo.htm" style="border: none; visibility: visible; width: 159px; height: 20px;" class=""></iframe></span></div><div class="b-share__container"><a class="b-share__element b-share__element_vk" href="http://vk.com/share.php?url=http://obozrevatel.com/abroad/51430-smi-uznali-o-krushenii-samoleta-sirijskih-vvs-v-aleppo.htm"><p class="b-share__link b-share__link_vk"></p><p class="b-share__counter b-share__counter_vk">Поделиться</p></a><a class="b-share__element b-share__element_fb" href="http://www.facebook.com/sharer.php?u=http://obozrevatel.com/abroad/51430-smi-uznali-o-krushenii-samoleta-sirijskih-vvs-v-aleppo.htm"><p class="b-share__link b-share__link_fb"></p><p class="b-share__counter b-share__counter_fb">11</p></a><a class="b-share__element b-share__element_ok" href="http://www.odnoklassniki.ru/dk?st.cmd=addShare&amp;st.s=1&amp;st._surl=http://obozrevatel.com/abroad/51430-smi-uznali-o-krushenii-samoleta-sirijskih-vvs-v-aleppo.htm"><p class="b-share__link b-share__link_ok"></p><p class="b-share__counter b-share__counter_ok">5</p></a><a class="b-share__element b-share__element_tw" href="https://twitter.com/intent/tweet?url=http://obozrevatel.com/abroad/51430-smi-uznali-o-krushenii-samoleta-sirijskih-vvs-v-aleppo.htm"><p class="b-share__link b-share__link_tw"></p><p class="b-share__counter b-share__counter_tw">Поделиться</p></a></div> <a class="mistake">Заметили ошибку?<div class="mist-blk"><div class="wrap">Выделите ее и нажмите Ctrl+Enter, чтобы сообщить об этом редакции.<div class="tria ico png24"></div></div></div></a><div class="clr"></div></div><div class="open-comments" style="margin:10px 0 0">Показать комментарии (4)</div>', 1, '2016-12-03 12:21:36', '2016-12-03 18:27:07', 0, 2),
	(70, '57 Stephen William Hawking has opened secret of black hole!', 'Are you want to fly to space?', 1, '2016-12-03 12:21:36', '2016-12-03 12:21:36', 0, 0),
	(71, '29 Stephen William Hawking has opened secret of black hole!', 'Are you want to fly to space?', 1, '2016-12-03 12:21:37', '2016-12-06 02:06:44', 0, 3),
	(72, '54 Stephen William Hawking has opened secret of black hole!', 'Are you want to fly to space?', 1, '2016-12-03 12:21:38', '2016-12-03 12:21:38', 0, 0),
	(73, '35 Stephen William Hawking has opened secret of black hole!', 'Are you want to fly to space?', 1, '2016-12-03 12:21:39', '2016-12-03 12:21:39', 0, 0),
	(74, '29 Stephen William Hawking has opened secret of black hole!', 'Are you want to fly to space?', 1, '2016-12-03 12:21:39', '2016-12-05 21:23:56', 1, 0),
	(75, '11 Stephen William Hawking has opened secret of black hole!', 'Are you want to fly to space?', 0, '2016-12-03 18:18:40', '2016-12-03 18:18:40', 0, 0),
	(76, '11 Stephen William Hawking has opened secret of black hole!', 'Are you want to fly to space?', 0, '2016-12-03 18:19:23', '2016-12-03 18:19:23', 0, 0),
	(77, '11 Stephen William Hawking has opened secret of black hole!', 'Are you want to fly to space?sfdgsdfgsdfg', 0, '2016-12-03 18:19:28', '2016-12-05 20:40:50', 0, 2),
	(78, '11 Stephen William Hawking has opened secret of black hole!', 'Are you want to fly to space?', 0, '2016-12-03 18:19:58', '2016-12-05 21:23:40', 1, 0),
	(79, '11 Stephen William Hawking has opened secret of black hole!', 'Are you want to fly to space?trgyhtry', 0, '2016-12-03 18:20:21', '2016-12-05 21:35:48', 0, 2),
	(80, '♥ Stephen William Hawking has opened secret of black hole!', '<h2 style="text-align:justify">Brief Biography</h2>\r\n\r\n<p style="text-align:justify"><a href="http://www.hawking.org.uk/uploads/1/2/2/1/12210141/9158058_orig.jpg" onclick="if (!lightboxLoaded) return false"><img alt="Picture" src="http://www.hawking.org.uk/uploads/1/2/2/1/12210141/9158058.jpg" style="float:left; margin:20px" /></a></p>\r\n\r\n<p style="text-align:justify"><strong><em>Stephen William Hawking</em></strong> was born on 8 January 1942 (300 years after the death&nbsp;of Galileo) in Oxford, England. His parents&#39; house was in north London, but&nbsp;during the second world war, Oxford was considered a safer place to have babies.&nbsp;When he was eight, his family moved to St. Albans, a town about 20 miles&nbsp;north of London. At the age of eleven, Stephen went to St. Albans School and then on to University College, Oxford; his father&#39;s old college. Stephen&nbsp;wanted to study Mathematics, although his father would have preferred medicine. Mathematics was not available at University College, so he pursued Physics&nbsp;instead. After three years and not very much work, he was awarded a first&nbsp; class honours degree in Natural Science.&nbsp;<br />\r\n<br />\r\nStephen then went on to Cambridge to do research in Cosmology, there being no&nbsp;one working in that area in Oxford at the time. His supervisor was Denis Sciama,&nbsp;although he had hoped to get Fred Hoyle who was working in Cambridge. After&nbsp;gaining his Ph.D. he became first a Research Fellow and later on a Professorial&nbsp;Fellow at Gonville and Caius College. After leaving the Institute of Astronomy&nbsp;in 1973, Stephen came to the Department of Applied Mathematics and Theoretical&nbsp;Physics in 1979, and held the post of Lucasian Professor of Mathematics from&nbsp;1979 until 2009. The chair was founded in 1663 with money left in the will of&nbsp;the Reverend Henry Lucas who had been the Member of Parliament for the University. It was first held by Isaac Barrow and then in 1669 by Isaac&nbsp;Newton.&nbsp;&nbsp;Stephen is still an active part of Cambridge University and&nbsp;retains an office at the&nbsp;<a href="http://www.damtp.cam.ac.uk/">Department for Applied Maths and Theoretical Physics</a>.&nbsp;His title is now the&nbsp;Dennis Stanton Avery and Sally Tsui Wong-Avery&nbsp;Director of Research at the Department of Applied Mathematics and Theoretical Physics.&nbsp;<br />\r\n<br />\r\nStephen Hawking has worked on the basic laws which govern the universe. With&nbsp;Roger Penrose he showed that Einstein&#39;s General Theory of Relativity implied space and time would have a beginning in the Big Bang and an end in black holes.&nbsp;These results indicated that it was necessary to unify General Relativity with Quantum Theory, the other great Scientific development of the first half of&nbsp;the 20th Century. One consequence of such a unification that he discovered was that black holes should not be completely black, but rather should emit&nbsp;radiation and eventually evaporate and disappear. Another conjecture is that the universe has no edge or boundary in imaginary time. This would imply that&nbsp;the way the universe began was completely determined by the laws of science.<br />\r\n<br />\r\nHis many publications include The Large Scale Structure of Spacetime with G F&nbsp;R Ellis, General Relativity: An Einstein Centenary Survey, with W Israel, and 300 Years of Gravity, with W Israel. Among the popular books Stephen Hawking has published are his best seller A Brief History of Time, Black Holes and Baby Universes and Other Essays, The Universe in a Nutshell, The Grand Design and My Brief History.&nbsp;<br />\r\n<br />\r\nProfessor Hawking has twelve honorary degrees. He was awarded the CBE in&nbsp;1982, and was made a Companion of Honour in 1989. He is the recipient of many awards, medals and prizes, is a Fellow of The Royal Society and a Member of&nbsp;the US National Academy of Sciences.&nbsp;<br />\r\n<br />\r\nStephen was diagnosed with ALS, a form of Motor Neurone Disease, shortly after&nbsp;his 21st birthday. In spite of being wheelchair bound and dependent on a computerised voice system for communication Stephen Hawking continues to&nbsp;combine family life (he has three children and three grandchildren), and his research into theoretical physics together with an extensive programme of travel&nbsp;and public lectures. He still hopes to make it into space one day.</p>\r\n', 0, '2016-12-03 18:20:40', '2016-12-06 02:31:39', 1, 36),
	(81, '    1', '', 0, '2016-12-03 18:57:37', '2016-12-03 18:59:50', 0, 0);
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;


-- Dumping structure for таблиця modul4.article_category
DROP TABLE IF EXISTS `article_category`;
CREATE TABLE IF NOT EXISTS `article_category` (
  `article_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`article_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table modul4.article_category: ~64 rows (приблизно)
/*!40000 ALTER TABLE `article_category` DISABLE KEYS */;
INSERT INTO `article_category` (`article_id`, `category_id`) VALUES
	(1, 1),
	(2, 1),
	(2, 2),
	(8, 1),
	(15, 2),
	(16, 2),
	(17, 2),
	(18, 2),
	(19, 1),
	(20, 1),
	(21, 1),
	(22, 1),
	(23, 1),
	(24, 1),
	(25, 1),
	(26, 1),
	(27, 1),
	(28, 3),
	(29, 3),
	(30, 3),
	(31, 3),
	(32, 3),
	(33, 3),
	(34, 3),
	(35, 3),
	(36, 3),
	(37, 3),
	(38, 3),
	(39, 3),
	(40, 3),
	(41, 3),
	(42, 3),
	(43, 3),
	(44, 3),
	(45, 3),
	(46, 3),
	(47, 3),
	(48, 3),
	(49, 3),
	(50, 3),
	(51, 3),
	(52, 3),
	(53, 3),
	(54, 3),
	(55, 3),
	(56, 3),
	(57, 3),
	(58, 3),
	(59, 3),
	(60, 3),
	(61, 3),
	(62, 3),
	(63, 3),
	(64, 3),
	(65, 3),
	(66, 3),
	(67, 3),
	(68, 3),
	(69, 3),
	(70, 3),
	(71, 3),
	(72, 3),
	(73, 3),
	(74, 3),
	(80, 2);
/*!40000 ALTER TABLE `article_category` ENABLE KEYS */;


-- Dumping structure for таблиця modul4.article_tag
DROP TABLE IF EXISTS `article_tag`;
CREATE TABLE IF NOT EXISTS `article_tag` (
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`article_id`,`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table modul4.article_tag: ~0 rows (приблизно)
/*!40000 ALTER TABLE `article_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `article_tag` ENABLE KEYS */;


-- Dumping structure for таблиця modul4.categories
DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hide_comments` tinyint(1) unsigned zerofill NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table modul4.categories: ~4 rows (приблизно)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `title`, `created_at`, `updated_at`, `hide_comments`) VALUES
	(1, 'Politics', '2016-12-02 20:12:42', '2016-12-04 14:39:51', 1),
	(2, 'Culture', '2016-12-02 20:13:50', '2016-12-06 02:05:43', 0),
	(3, 'Science', '2016-12-02 20:13:50', '2016-12-02 20:13:50', 0),
	(4, 'Music', '2016-12-04 18:46:43', '2016-12-04 18:46:43', 0);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;


-- Dumping structure for таблиця modul4.comments
DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `sansara` int(11) NOT NULL DEFAULT '0',
  `hidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- Dumping data for table modul4.comments: ~12 rows (приблизно)
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` (`id`, `article_id`, `parent_id`, `user_id`, `text`, `sansara`, `hidden`, `created_at`, `updated_at`) VALUES
	(1, 1, 0, 5, 'dfergrgrtrg', 31, 0, '2016-12-04 10:09:54', '2016-12-06 04:15:20'),
	(2, 1, 0, 5, 'щта?', 37, 0, '2016-12-04 10:09:54', '2016-12-06 04:15:19'),
	(3, 1, 0, 3, '567567567', 17000, 1, '2016-12-04 09:56:15', '2016-12-06 04:14:59'),
	(4, 1, 0, 3, 'Opa opa opapa', 25000, 0, '2016-12-04 11:03:53', '2016-12-06 04:15:00'),
	(5, 1, 0, 3, ' ♥☻☺6854♣♦!!!♥3♥!U♥MM!♣♥!♥MO8', 0, 0, '2016-12-04 14:39:26', '2016-12-06 04:15:00'),
	(6, 1, 0, 4, 'dfgsdfgsdfgdsfgцуйювтцюйд', 0, 1, '2016-12-04 14:39:57', '2016-12-06 04:15:14'),
	(7, 18, 0, 5, 'It\'s cooooool!=)', 0, 0, '2016-12-06 01:56:15', '2016-12-06 04:15:59'),
	(8, 18, 0, 5, 'I\'s coooooool!=)', 0, 0, '2016-12-06 01:57:09', '2016-12-06 04:15:59'),
	(9, 71, 0, 5, 'Trololo!=)', 27, 0, '2016-12-06 02:06:22', '2016-12-06 04:15:59'),
	(10, 15, 0, 5, 'Realy?=)', 18, 0, '2016-12-06 02:07:14', '2016-12-06 04:16:00'),
	(11, 16, 0, 5, 'EEEEEEEEEEEEEEEEEE!=)', 0, 0, '2016-12-06 02:07:57', '2016-12-06 04:16:00'),
	(12, 17, 0, 5, 'mimimimimimiiiiiii^_^', 43, 0, '2016-12-06 02:08:40', '2016-12-06 04:16:00'),
	(13, 1, 0, 1, 'dfergrgrtrg', 31, 0, '2016-12-04 10:09:54', '2016-12-04 09:10:00'),
	(14, 1, 0, 1, 'щта?', 37, 0, '2016-12-04 10:09:54', '2016-12-04 09:16:49'),
	(15, 1, 0, 2, '567567567', 17000, 1, '2016-12-04 09:56:15', '2016-12-04 16:23:07'),
	(16, 1, 0, 2, 'Opa opa opapa', 25000, 0, '2016-12-04 11:03:53', '2016-12-04 13:04:33'),
	(17, 1, 0, 2, ' ♥☻☺6854♣♦!!!♥3♥!U♥MM!♣♥!♥MO8', 0, 0, '2016-12-04 14:39:26', '2016-12-04 14:39:26'),
	(18, 1, 0, 2, 'dfgsdfgsdfgdsfgцуйювтцюйд', 0, 1, '2016-12-04 14:39:57', '2016-12-04 16:44:16'),
	(19, 18, 0, 2, 'It\'s cooooool!=)', 0, 0, '2016-12-06 01:56:15', '2016-12-06 03:59:52'),
	(20, 18, 0, 2, 'I\'s coooooool!=)', 0, 0, '2016-12-06 01:57:09', '2016-12-06 01:57:56'),
	(21, 71, 0, 2, 'Trololo!=)', 27, 0, '2016-12-06 02:06:22', '2016-12-06 02:06:47'),
	(22, 15, 0, 2, 'Realy?=)', 18, 0, '2016-12-06 02:07:14', '2016-12-06 02:07:28'),
	(23, 16, 0, 2, 'EEEEEEEEEEEEEEEEEE!=)', 0, 0, '2016-12-06 02:07:57', '2016-12-06 02:07:57'),
	(24, 17, 0, 2, 'mimimimimimiiiiiii^_^', 43, 0, '2016-12-06 02:08:40', '2016-12-06 02:09:07'),
	(25, 1, 0, 1, 'dfergrgrtrg', 31, 0, '2016-12-04 10:09:54', '2016-12-04 09:10:00'),
	(26, 1, 0, 1, 'щта?', 37, 0, '2016-12-04 10:09:54', '2016-12-04 09:16:49'),
	(27, 1, 0, 2, '567567567', 17000, 1, '2016-12-04 09:56:15', '2016-12-04 16:23:07'),
	(28, 1, 0, 2, 'Opa opa opapa', 25000, 0, '2016-12-04 11:03:53', '2016-12-04 13:04:33'),
	(29, 1, 0, 2, ' ♥☻☺6854♣♦!!!♥3♥!U♥MM!♣♥!♥MO8', 0, 0, '2016-12-04 14:39:26', '2016-12-04 14:39:26'),
	(30, 1, 0, 2, 'dfgsdfgsdfgdsfgцуйювтцюйд', 0, 1, '2016-12-04 14:39:57', '2016-12-04 16:44:16'),
	(31, 18, 0, 2, 'It\'s cooooool!=)', 0, 0, '2016-12-06 01:56:15', '2016-12-06 03:59:52'),
	(32, 18, 0, 2, 'I\'s coooooool!=)', 0, 0, '2016-12-06 01:57:09', '2016-12-06 01:57:56'),
	(33, 71, 0, 2, 'Trololo!=)', 27, 0, '2016-12-06 02:06:22', '2016-12-06 02:06:47'),
	(34, 15, 0, 2, 'Realy?=)', 18, 0, '2016-12-06 02:07:14', '2016-12-06 02:07:28'),
	(35, 16, 0, 2, 'EEEEEEEEEEEEEEEEEE!=)', 0, 0, '2016-12-06 02:07:57', '2016-12-06 02:07:57'),
	(36, 17, 0, 2, 'mimimimimimiiiiiii^_^', 43, 0, '2016-12-06 02:08:40', '2016-12-06 02:09:07');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;


-- Dumping structure for таблиця modul4.images
DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) DEFAULT NULL,
  `article_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- Dumping data for table modul4.images: ~16 rows (приблизно)
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` (`id`, `path`, `article_id`) VALUES
	(2, NULL, NULL),
	(3, '/storage/d9ba6379d2be4a3e860ce22ca4f5aa64.jpeg', NULL),
	(4, '/storage/d9ba6379d2be4a3e860ce22ca4f5aa64.jpeg', 1),
	(5, '/storage/d9ba6379d2be4a3e860ce22ca4f5aa64.jpeg', 1),
	(6, '/storage/405b0b3c1fd65c65fe97630217232107.jpeg', 80),
	(7, '/storage/1e494b924f157bc25dad344a178238c4.jpeg', 80),
	(8, '/storage/af450571e8d65c55322809cd87dd76af.jpeg', 79),
	(10, '/storage/767a99eff1fc2db9860235fb251407d4.jpeg', 79),
	(11, '/storage/640c8472d1517cb6e8b59587d347c074.jpeg', 79),
	(12, '/storage/557a168a404857d5afe5c6484e112fa8.jpeg', 77),
	(13, '/storage/e2c920635f5d03f0b913743c1ced6849.jpeg', 77),
	(14, '/storage/05ec2a91ae2d9a81633d5d9b9b92cba8.jpeg', 19),
	(15, '/storage/28ba54cc6af1b2fda8585bd9d268f1dd.jpeg', 57),
	(16, '/storage/2ce8ce3c1edb453ab4da5c87d7194874.jpeg', 9),
	(17, '/storage/21e074c31500ea74b127f2d75f7a2b02.jpeg', 73),
	(18, '/storage/77c1a6ec891ab93435d95c2de66ea2d4.jpeg', 63);
/*!40000 ALTER TABLE `images` ENABLE KEYS */;


-- Dumping structure for таблиця modul4.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table modul4.migrations: ~2 rows (приблизно)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(3, '2014_10_12_000000_create_users_table', 1),
	(4, '2014_10_12_100000_create_password_resets_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;


-- Dumping structure for таблиця modul4.password_resets
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table modul4.password_resets: ~0 rows (приблизно)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
	('skillz.nexus@gmail.com', 'eb207da26f28ceb75d42dfb446fa97bdae759244fbfdf318304f5563baadbe01', '2016-12-04 10:05:04');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;


-- Dumping structure for таблиця modul4.subscribers
DROP TABLE IF EXISTS `subscribers`;
CREATE TABLE IF NOT EXISTS `subscribers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table modul4.subscribers: ~2 rows (приблизно)
/*!40000 ALTER TABLE `subscribers` DISABLE KEYS */;
INSERT INTO `subscribers` (`id`, `name`, `email`) VALUES
	(1, 'Alla', 'ellyrockstar@bigmir.net'),
	(2, '', '');
/*!40000 ALTER TABLE `subscribers` ENABLE KEYS */;


-- Dumping structure for таблиця modul4.tags
DROP TABLE IF EXISTS `tags`;
CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table modul4.tags: ~0 rows (приблизно)
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;


-- Dumping structure for таблиця modul4.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `moderator` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table modul4.users: ~2 rows (приблизно)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `moderator`) VALUES
	(1, 'Stephen', 'hawking.thbesofbest@gods.com', '', NULL, NULL, NULL, 0),
	(2, 'Alla', 'ellyrockstar@bigmir.net', '$2y$10$noF9n9s11NdFQnUpHFH7Meif07Mz5e3q3QCbZpR1P/wh5zPQVxtji', 'ENHVubzm5duDh9eW5owIH8yCthvJEInKkpD9MUtmZ9iQHSRuRT4j0bKIiQwm', NULL, '2016-12-04 10:08:02', 1),
	(3, 'Kolyan', 'koljan-kalian@mmm.ru', '', NULL, NULL, NULL, 0),
	(4, 'Vasjok', 'vseok@vseok.gag', '', NULL, NULL, NULL, 0),
	(5, 'T_T', 'plaksa@vmire.net', '', NULL, NULL, NULL, 0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
