-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Янв 27 2018 г., 13:08
-- Версия сервера: 10.1.22-MariaDB
-- Версия PHP: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `recipe-box`
--

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_10_16_182811_create_recipes_table', 1),
(4, '2017_10_16_182856_create_recipe_ingredients_table', 1),
(5, '2017_10_16_182929_create_recipe_directions_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `recipes`
--

CREATE TABLE `recipes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `recipes`
--

INSERT INTO `recipes` (`id`, `user_id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 15, '1 Nobis vitae omnis velit rerum.', '1 Eos veniam iste molestiae quaerat soluta. Recusandae et repudiandae dolorem consequatur laudantium. Magnam modi est mollitia sed laboriosam. Non est sunt voluptates fugit.', 'afzhATaM07qriaVxE7X40cCwjOnN5AaA.jpeg', '2017-10-17 04:07:08', '2017-11-13 07:58:02'),
(2, 2, 'At ut autem tempore nam possimus.', 'Veritatis voluptate assumenda maiores quo unde consequatur consequuntur sint. Beatae in ipsa sit eos. Sed modi eum eos. Recusandae animi neque non rerum molestias. Veritatis blanditiis earum laboriosam aspernatur quia dolore. Repudiandae quo itaque vel non sint eos. Cupiditate quaerat eum qui iure impedit maxime quaerat. Praesentium quam ipsam id nesciunt architecto.', 'afzhATaM07qriaVxE7X40cCwjOnN5AaA.jpeg', '2017-10-17 04:07:08', '2017-10-17 04:07:08'),
(3, 3, 'Modi unde voluptas cumque sapiente ut reiciendis qui.', 'Libero qui consequatur veritatis voluptas vitae natus. Aliquam deserunt atque adipisci illo. Dolores totam non ad commodi distinctio doloremque. Impedit adipisci aperiam eveniet quia. Voluptas aut esse architecto est non aut dignissimos. Temporibus repellendus earum doloribus repudiandae fugiat et provident assumenda. Modi eos soluta qui modi corporis voluptatum qui. Sed commodi et aut aperiam velit. Omnis deleniti quia nihil molestiae. Repudiandae iure esse adipisci voluptatem unde deserunt. Fugit aliquam itaque fuga laudantium vitae sint eum. Quia repudiandae ab ad aut quam voluptate. Magni magni placeat quis quod eveniet. Dolores aperiam eum corporis et eligendi tempore ad. Sit sit aut et qui voluptatem magnam illum. Nemo officiis optio sed non facilis sunt. Dolorem vitae doloribus aut atque nisi.', 'afzhATaM07qriaVxE7X40cCwjOnN5AaA.jpeg', '2017-10-17 04:07:09', '2017-10-17 04:07:09'),
(4, 4, 'Iure aspernatur voluptas sequi aut.', 'Sed corrupti sequi est facere quis dolores tempora. Qui nobis dolorum et accusantium velit optio ut. Iste quo quaerat quasi sequi debitis in aliquam voluptates. Vero dolores vel ea ipsum cumque dolorum enim. Dolorem rem sint est fugiat adipisci voluptatibus. Dolorum adipisci sequi et sed. Cumque ut et autem eveniet mollitia laboriosam architecto. Exercitationem magnam eum dolorem velit magnam cum vero. Culpa tempora iure autem culpa corrupti ut animi.', 'afzhATaM07qriaVxE7X40cCwjOnN5AaA.jpeg', '2017-10-17 04:07:10', '2017-10-17 04:07:10'),
(5, 5, 'Saepe a eum modi cumque officia consequatur excepturi rerum.', 'Ratione et architecto culpa dolor. Rerum ut hic doloribus quam optio assumenda quisquam. Provident sapiente vel asperiores. Dolore recusandae amet sit placeat. Alias libero eveniet expedita ad explicabo. Rerum suscipit sequi dolorem minus expedita.', 'afzhATaM07qriaVxE7X40cCwjOnN5AaA.jpeg', '2017-10-17 04:07:10', '2017-10-17 04:07:10'),
(6, 6, 'Eius deserunt quos enim iusto.', 'Omnis dolor et dicta officia quaerat illo dolores. Est labore sint consequatur similique ea. Dolores ratione repudiandae est laudantium minima illum. Tempora sint voluptates qui error sunt. Itaque in ut eos vel rerum aliquid. Neque aut possimus quia aut nostrum recusandae. Consequuntur assumenda et error delectus fugit. Dolorum perferendis sunt sit. Eius reiciendis qui eum corporis commodi voluptas. Omnis non eius sequi. Necessitatibus provident ipsa ratione voluptatem sint praesentium.', 'afzhATaM07qriaVxE7X40cCwjOnN5AaA.jpeg', '2017-10-17 04:07:11', '2017-10-17 04:07:11'),
(7, 7, 'Aliquam quo tempore optio reiciendis vitae velit.', 'Quia nulla a sequi et. Tempore hic id quod dolore ut. Rerum enim pariatur et rem placeat alias ut debitis. Blanditiis aperiam quis quam delectus quia. Eum est corporis et pariatur. Quo saepe doloribus quia alias rem et optio. Eos autem voluptatem quod voluptatem vitae. Repudiandae magni vitae expedita pariatur. Possimus occaecati cum placeat et quidem qui in et. Nemo sed laudantium doloribus a accusamus.', 'afzhATaM07qriaVxE7X40cCwjOnN5AaA.jpeg', '2017-10-17 04:07:12', '2017-10-17 04:07:12'),
(8, 8, 'Possimus enim voluptate architecto quaerat assumenda reprehenderit quia est.', 'Et reiciendis qui possimus omnis. Deserunt cum ab iure et maiores. Molestias qui expedita ducimus quia voluptatem. Quisquam aspernatur officia est molestias voluptate vel consectetur. Nostrum sed soluta quam perferendis aspernatur iste. Facilis aut quae dolorem sit voluptas sint. Eligendi reiciendis accusamus voluptatum. Commodi mollitia ab repellendus aspernatur error. Est maiores voluptatem exercitationem consequatur corrupti ullam omnis. Laboriosam praesentium praesentium quisquam adipisci natus quidem. Aut commodi saepe excepturi non. Velit culpa blanditiis ea sint dolorem voluptas recusandae. Totam neque molestias dolorem ratione odit eos facere. Ut qui assumenda molestiae recusandae ullam rem. Dolorem sequi similique fugiat corporis qui iusto quasi accusamus.', 'afzhATaM07qriaVxE7X40cCwjOnN5AaA.jpeg', '2017-10-17 04:07:12', '2017-10-17 04:07:12'),
(9, 9, 'Laudantium omnis eius eum asperiores rerum est doloribus.', 'Sed temporibus aspernatur ab minima. Voluptatem quisquam quidem deleniti et quasi enim omnis. Laudantium enim iusto culpa possimus. Laudantium dolorum sed eum aut aut ut quis. Provident aliquid a omnis. Ab possimus qui consequatur ut. Rem dicta ut enim doloremque. Aut similique veniam deleniti asperiores quia culpa occaecati qui. Quo culpa at eos. Deserunt harum hic consequatur nesciunt ut eius. Impedit aliquid doloremque alias tempore. Aut reiciendis facere doloremque impedit est. Quia aut quia ad adipisci. Eos tempora dignissimos vitae et et facilis alias voluptas. Placeat veniam dolorum voluptas ad laudantium sed.', 'afzhATaM07qriaVxE7X40cCwjOnN5AaA.jpeg', '2017-10-17 04:07:13', '2017-10-17 04:07:13'),
(10, 15, 'Sunt aliquam ut debitis ratione non nulla.', 'Hic inventore ea minus et ea harum consequatur. Et consectetur expedita et ullam quo. Beatae laudantium enim hic consequatur atque temporibus quia. Dolores atque fuga laborum. Et veritatis dolorum modi quidem eveniet minus et eligendi. Nisi eligendi quo dolores voluptatem adipisci est illum. Modi quos sunt ex ullam est. Libero facilis vel et aliquam modi temporibus. Ut omnis nesciunt et est unde repudiandae. Quam quia excepturi cum voluptatem laborum veniam. Sequi quasi velit molestiae est debitis qui eaque.', 'afzhATaM07qriaVxE7X40cCwjOnN5AaA.jpeg', '2017-10-17 04:07:13', '2017-10-17 04:07:13'),
(11, 15, 'name', 'desc', '1Xbmf1K49TZ1jjsAjFozjua6yN4Eb1Lu.jpeg', '2017-11-13 08:20:22', '2017-11-13 08:20:22');

-- --------------------------------------------------------

--
-- Структура таблицы `recipe_directions`
--

CREATE TABLE `recipe_directions` (
  `id` int(10) UNSIGNED NOT NULL,
  `recipe_id` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `recipe_directions`
--

INSERT INTO `recipe_directions` (`id`, `recipe_id`, `description`) VALUES
(1, 1, '1 Et veritatis est modi eos deserunt facilis enim.'),
(5, 1, '1 Aut exercitationem est odit incidunt.'),
(7, 2, 'Aperiam atque repudiandae nobis reprehenderit rerum animi fugit quia.'),
(8, 2, 'Illo adipisci voluptatem deserunt beatae.'),
(9, 2, 'Natus maiores maiores inventore deserunt nemo veritatis ratione.'),
(10, 2, 'Aspernatur et unde omnis error distinctio.'),
(11, 2, 'Atque quidem illum asperiores fugiat blanditiis repellendus quia.'),
(12, 3, 'Earum dolorem voluptatem vel.'),
(13, 3, 'Est aspernatur dolore dolores tempore similique consequuntur explicabo autem.'),
(14, 3, 'Et recusandae velit enim iure nobis suscipit.'),
(15, 3, 'Et aliquam autem quod.'),
(16, 3, 'Quis totam optio adipisci eos.'),
(17, 3, 'Provident ratione similique odio est modi.'),
(18, 3, 'Dolorem minima sint praesentium eius quod ullam ullam.'),
(19, 3, 'Ut aut aliquam aut cupiditate qui quia.'),
(20, 3, 'Laudantium suscipit repellendus aut maiores autem veritatis sed aliquam.'),
(21, 3, 'Et qui maiores voluptas aut doloribus.'),
(22, 4, 'Corporis nam vitae ipsam dolorem.'),
(23, 4, 'Possimus aut sapiente suscipit eligendi atque eligendi.'),
(24, 4, 'In non consequatur cupiditate tenetur.'),
(25, 4, 'Voluptatem vero et perspiciatis molestiae voluptatibus maiores.'),
(26, 4, 'Mollitia beatae qui vel qui voluptatibus officiis.'),
(27, 5, 'Aut omnis sunt impedit a libero.'),
(28, 5, 'Qui dicta architecto illum dolorem tempore.'),
(29, 5, 'Ipsum facilis consequuntur iusto magni aliquid quis nostrum nam.'),
(30, 5, 'Praesentium facere error non sint unde sapiente alias.'),
(31, 5, 'Labore tempore placeat excepturi veritatis repellat est exercitationem quia.'),
(32, 5, 'Repellendus nobis adipisci dicta consectetur autem adipisci natus.'),
(33, 5, 'Velit aut odio nemo accusantium sunt.'),
(34, 5, 'Eum dignissimos dolorum consequatur quia dignissimos sit doloribus.'),
(35, 5, 'Iste vitae molestiae aut aut voluptas qui.'),
(36, 5, 'Veniam rerum aliquam aut accusantium et mollitia.'),
(37, 5, 'Voluptatum consectetur impedit numquam temporibus nam.'),
(38, 5, 'Consectetur harum vel possimus nesciunt occaecati aut quia.'),
(39, 6, 'Mollitia omnis dolores repudiandae non eius voluptas consequatur molestiae.'),
(40, 6, 'Non aut aliquid beatae dolor quo enim illo.'),
(41, 6, 'Officiis recusandae veritatis est dolorem sint.'),
(42, 6, 'Iure eos molestias est quasi dolores et.'),
(43, 6, 'Perspiciatis architecto dignissimos quas maiores reiciendis aut nobis.'),
(44, 6, 'Aut velit sit vitae.'),
(45, 6, 'Maiores dolor facere facilis totam ad quas sunt.'),
(46, 6, 'Doloribus dolore rerum saepe soluta est.'),
(47, 6, 'Facilis eius enim sed.'),
(48, 6, 'Quasi nihil modi delectus eveniet nihil ipsa laboriosam.'),
(49, 7, 'Repellendus est velit error nesciunt dolor.'),
(50, 7, 'Ducimus aut inventore veniam.'),
(51, 7, 'Saepe labore voluptates est nam harum iure vero tenetur.'),
(52, 7, 'Ab ut sunt consequatur tempora iste totam quos.'),
(53, 7, 'Repellat dolor qui assumenda non vel quaerat.'),
(54, 7, 'Fugiat voluptas hic molestiae dolores ipsum.'),
(55, 8, 'Eos rerum quam temporibus qui ut in consequatur nulla.'),
(56, 8, 'Cum ipsa exercitationem libero nostrum qui sint.'),
(57, 8, 'Esse tempora non dignissimos nemo iusto voluptates.'),
(58, 8, 'Molestias quisquam nemo quaerat voluptas.'),
(59, 8, 'Voluptatem totam omnis et et dignissimos.'),
(60, 9, 'Et qui at architecto.'),
(61, 9, 'Enim et vel quia corporis.'),
(62, 9, 'Dolor nulla minima sed aspernatur.'),
(63, 9, 'Voluptatem explicabo odio sequi beatae nisi laboriosam.'),
(64, 9, 'Voluptatem quo nostrum consectetur qui officia voluptatem.'),
(65, 9, 'Neque magni minima quidem.'),
(66, 9, 'Dolorem numquam qui molestiae.'),
(67, 10, 'Quas sint nam asperiores deserunt voluptas voluptatibus.'),
(68, 10, 'Enim minima iusto velit magnam nihil doloremque est.'),
(69, 10, 'Eius aliquid aperiam harum enim dolorum.'),
(70, 10, 'Sequi et accusantium sequi ipsum odit.'),
(71, 10, 'Commodi architecto consequatur dolores veritatis aperiam iste.'),
(72, 10, 'Et qui aut magnam eum.'),
(73, 10, 'Laudantium nobis vel non.'),
(74, 1, 'qqq'),
(75, 11, 'kill');

-- --------------------------------------------------------

--
-- Структура таблицы `recipe_ingredients`
--

CREATE TABLE `recipe_ingredients` (
  `id` int(10) UNSIGNED NOT NULL,
  `recipe_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `recipe_ingredients`
--

INSERT INTO `recipe_ingredients` (`id`, `recipe_id`, `name`, `qty`) VALUES
(1, 1, 'aut', '1 Kg'),
(2, 1, 'voluptatem', '11 Kg'),
(4, 2, 'quos', '10 Kg'),
(5, 2, 'sit', '6 Kg'),
(6, 2, 'aut', '9 Kg'),
(7, 2, 'eius', '3 Kg'),
(8, 2, 'consectetur', '6 Kg'),
(9, 2, 'alias', '5 Kg'),
(10, 2, 'et', '8 Kg'),
(11, 2, 'dolor', '5 Kg'),
(12, 2, 'in', '11 Kg'),
(13, 2, 'perspiciatis', '12 Kg'),
(14, 2, 'cum', '4 Kg'),
(15, 3, 'harum', '12 Kg'),
(16, 3, 'aut', '12 Kg'),
(17, 3, 'expedita', '4 Kg'),
(18, 3, 'laborum', '9 Kg'),
(19, 3, 'hic', '4 Kg'),
(20, 4, 'quod', '5 Kg'),
(21, 4, 'voluptatem', '7 Kg'),
(22, 4, 'odio', '8 Kg'),
(23, 4, 'et', '1 Kg'),
(24, 4, 'pariatur', '6 Kg'),
(25, 5, 'qui', '11 Kg'),
(26, 5, 'veniam', '6 Kg'),
(27, 5, 'est', '11 Kg'),
(28, 5, 'ut', '12 Kg'),
(29, 5, 'ut', '1 Kg'),
(30, 5, 'et', '11 Kg'),
(31, 5, 'omnis', '12 Kg'),
(32, 5, 'ipsa', '8 Kg'),
(33, 5, 'nesciunt', '3 Kg'),
(34, 5, 'ex', '2 Kg'),
(35, 5, 'sunt', '7 Kg'),
(36, 5, 'culpa', '12 Kg'),
(37, 6, 'non', '4 Kg'),
(38, 6, 'aut', '12 Kg'),
(39, 6, 'natus', '6 Kg'),
(40, 6, 'expedita', '5 Kg'),
(41, 6, 'porro', '10 Kg'),
(42, 6, 'veritatis', '4 Kg'),
(43, 6, 'non', '7 Kg'),
(44, 6, 'fugit', '8 Kg'),
(45, 7, 'deleniti', '2 Kg'),
(46, 7, 'tenetur', '9 Kg'),
(47, 7, 'et', '5 Kg'),
(48, 7, 'aspernatur', '1 Kg'),
(49, 7, 'est', '10 Kg'),
(50, 7, 'deserunt', '10 Kg'),
(51, 7, 'voluptas', '8 Kg'),
(52, 7, 'consectetur', '7 Kg'),
(53, 7, 'commodi', '6 Kg'),
(54, 7, 'a', '12 Kg'),
(55, 7, 'placeat', '10 Kg'),
(56, 7, 'quidem', '1 Kg'),
(57, 8, 'quos', '3 Kg'),
(58, 8, 'sequi', '9 Kg'),
(59, 8, 'dicta', '12 Kg'),
(60, 8, 'tempore', '7 Kg'),
(61, 8, 'rerum', '7 Kg'),
(62, 8, 'atque', '12 Kg'),
(63, 8, 'nihil', '5 Kg'),
(64, 8, 'nemo', '9 Kg'),
(65, 8, 'non', '1 Kg'),
(66, 8, 'tenetur', '3 Kg'),
(67, 8, 'aut', '5 Kg'),
(68, 8, 'autem', '10 Kg'),
(69, 9, 'quaerat', '9 Kg'),
(70, 9, 'eaque', '12 Kg'),
(71, 9, 'molestiae', '6 Kg'),
(72, 9, 'dolores', '5 Kg'),
(73, 9, 'unde', '4 Kg'),
(74, 9, 'excepturi', '4 Kg'),
(75, 10, 'consequatur', '4 Kg'),
(76, 10, 'velit', '10 Kg'),
(77, 10, 'molestiae', '7 Kg'),
(78, 10, 'voluptas', '8 Kg'),
(79, 10, 'odio', '11 Kg'),
(80, 10, 'harum', '2 Kg'),
(81, 10, 'beatae', '11 Kg'),
(82, 10, 'id', '1 Kg'),
(83, 10, 'dignissimos', '6 Kg'),
(84, 10, 'dolor', '10 Kg'),
(85, 1, 'qq', '1 q'),
(86, 11, 'sugar', '1 kg');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `api_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Misael Tillman', 'vcorwin@bernhard.com', '$2y$10$LYUf12UgRp2CTGXVQFi46epU3/.miZ1d84rvWe/9zWBShXc3g7oyq', 'd6u6HEXvgV97PGDgnsaD94unzQBRctLLBibENLgo0I6FSL2AEGduXosK0z8S', NULL, '2017-10-17 04:07:06', '2017-10-17 04:07:06'),
(2, 'Harmon Marvin', 'kaya03@hotmail.com', '$2y$10$KUIUQZ0ztGhJsWk7YgdzWeR3crujpqL3Ancfm/MqL4WAgPvXB6rZm', 'CLJ3UnLfl8vEYICi4o3qshbF41KkuHDgFLZMfympP4XR8N4JWai1xrZZPr2C', NULL, '2017-10-17 04:07:06', '2017-10-17 04:07:06'),
(3, 'Dr. Manuela Cormier III', 'volkman.kiel@kuhn.com', '$2y$10$.TE1ejebSfomwey.LtaYkuu1531wkXK6LB7t/cGCoh8JGooJR0R3W', 'BfK5V5djwoaH02S1OP9PGtCMt0l3hxTaLYC7yalWzpkIKpMc0vfNjrtwlT39', NULL, '2017-10-17 04:07:06', '2017-10-17 04:07:06'),
(4, 'Maynard Jakubowski', 'waelchi.martina@hotmail.com', '$2y$10$AJ5JGCEpp9cTp1ZKiVP1pefdW6r6lfpdxQ8R.Kl1f6LbBFfcAQRdu', 'kKHEncpsPu91imSlOvUDU78Eudobm8ClcFHiwjMMPeRq4uiSlC9ZY2PmDWLG', NULL, '2017-10-17 04:07:06', '2017-10-17 04:07:06'),
(5, 'Dr. Clair Jenkins II', 'grady.willie@yahoo.com', '$2y$10$j.LrFisdQzToDC.lpEwqtuKLJFyHXvD2UmU3ve4IlHF6JPbcKJRVe', 'sfaylDmBdSzzZ8AH2ih11oiXIMhpUh9f1QzcfDvRhFDctiwJaoWjVXeY8ONf', NULL, '2017-10-17 04:07:06', '2017-10-17 04:07:06'),
(6, 'Sanford Hodkiewicz', 'madisyn.jenkins@lynch.info', '$2y$10$wOwSSV4d4FwQMxfuvcF9N.1QHlYl2LDaP3nnI87xhiox0LWMWEQVG', '1lOMJA45YkVfi8Tp2MWFee1vugLgW3ejLcCJPAyvPHSlLUtrwUNA4e4iF53X', NULL, '2017-10-17 04:07:06', '2017-10-17 04:07:06'),
(7, 'Noah Corkery', 'xnikolaus@wolf.com', '$2y$10$cjEZ8U3QthTe1oaxmo.Gd.bBu.82SfFHfVIYpqqbM9tKpE1MeR8ke', 'd2objrbI46POM5iYDpbl8u1c6mR2wGNgBvvK1acO4f3X14iM9gpN2NYQOKXa', NULL, '2017-10-17 04:07:07', '2017-10-17 04:07:07'),
(8, 'Dr. Juwan Keeling DDS', 'paula81@yahoo.com', '$2y$10$uKqO0unWtJ9g8qwsBnde8uWQghdPoZpG5htNrd.O0rAo020g6SiE6', '6SONpCCefdK2Pfpd9nH3RpxmZgr1ER5mMP39uWpjjEO8qBuyFxlYtot1DzJ3', NULL, '2017-10-17 04:07:07', '2017-10-17 04:07:07'),
(9, 'Laverna Schinner', 'twest@gmail.com', '$2y$10$kkRfC.4exUUSrJnT1PxYAucU6CDkQRFVRMrIa7POc8CPcGeBatn9.', 'w4I2nCbwx7D8IbtE3xI3sVt34pCzOZFZt0JBvpRdwcuel0Q9xmhAekWtMxsC', NULL, '2017-10-17 04:07:07', '2017-10-17 04:07:07'),
(10, 'Geovany Altenwerth', 'friesen.noe@gmail.com', '$2y$10$9dMDHHaCeFvw1lcArt0RleDadZy2sn89GJBZhY2JoIaETdyLn6bfW', 'szTl2RICkXzzMFLUFnicGvP7mvWmwJNKHuLYa9Az34IVLcE2EXEc0Urq0QBR', NULL, '2017-10-17 04:07:07', '2017-10-17 04:07:07'),
(11, 'WATA', 'hell@ukr.net', '$2y$10$1AO3GZM9d18HGnuWiPhTuux3/og7xiRYfZNqmOAWzFyyZWbcBxIV.', NULL, NULL, '2017-10-21 16:58:39', '2017-10-21 16:58:39'),
(12, 'test2', 'hello@ukr.net', '$2y$10$kHv8PAJS8s6hLHAq0U.g3uxv.ZAqvLlv3gVqZWszHPp/FySTvgzVa', NULL, NULL, '2017-10-21 17:29:25', '2017-10-21 17:29:25'),
(13, 'test3', 'test3@k.url', '$2y$10$dYF5e1dQFfIP9VRRe7ddn.wzL/U5pU9yiLFF8QbqUQe36HJMcEoaS', NULL, NULL, '2017-10-21 17:29:49', '2017-10-21 17:29:49'),
(14, 'helloMatherHelloFather', 'aa@sw.e', '$2y$10$HzNGUILws5NQgJtOeYISC.h.dY8NBif9FpwypS9uDx267xSn64oc2', 'pIln67koW1CMh37mBmcC0knoosw9GmmOvJMOocTj2mBAawgIEUqxyKDoXkCH', NULL, '2017-10-31 05:34:59', '2017-10-31 05:39:04'),
(15, 'ery', 'ery@ukr.net', '$2y$10$KOx3stMGkt5QdBtxkRkqeu2jCgM1j3cZAac3Qq3ZCYA93zslijuai', 'KB6NzBPucinUVu0inWl7o5G8qRJ6YJkeTzKkCl20MLbAJTYW8EMeyLMAj7Da', NULL, '2017-10-31 07:56:03', '2017-12-01 14:00:01');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `recipe_directions`
--
ALTER TABLE `recipe_directions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `recipe_ingredients`
--
ALTER TABLE `recipe_ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT для таблицы `recipe_directions`
--
ALTER TABLE `recipe_directions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT для таблицы `recipe_ingredients`
--
ALTER TABLE `recipe_ingredients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
