-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2021 at 08:35 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mylibrary`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publisher` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_of_requests` int(11) NOT NULL,
  `publication_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `created_at`, `updated_at`, `name`, `author`, `publisher`, `number_of_requests`, `publication_date`, `language`, `description`, `image`) VALUES
(20, '2021-02-19 22:24:34', '2021-02-19 22:24:34', 'Give and Take: Why Helping Others Drives Our Success', 'Adam Grant', 'Penguin Books', 0, 'March 25, 2014', 'English', 'A groundbreaking look at why our interactions with others hold the key to success, from the bestselling author of Originals\n\nFor generations, we have focused on the individual drivers of success: passion, hard work, talent, and luck. But in today’s dramatically reconfigured world, success is increasingly dependent on how we interact with others. In Give and Take, Adam Grant, an award-winning researcher and Wharton’s highest-rated professor, examines the surprising forces that shape why some people rise to the top of the success ladder while others sink to the bottom. Praised by social scientists, business theorists, and corporate leaders, Give and Take opens up an approach to work, interactions, and productivity that is nothing short of revolutionary.', '1613798674.jpeg'),
(21, '2021-02-19 22:26:07', '2021-02-19 22:26:07', 'Originals: How Non-Conformists Move the World', 'Adam Grant', 'Penguin Books', 1, 'February 2, 2016', 'English', 'The #1 New York Times bestseller that examines how people can champion new ideas in their careers and everyday life—and how leaders can fight groupthink, from the author of Think Again and co-author of Option B\n\n“Filled with fresh insights on a broad array of topics that are important to our personal and professional lives.”—The New York Times DealBook\n\n“Originals is one of the most important and captivating books I have ever read, full of surprising and powerful ideas. It will not only change the way you see the world; it might just change the way you live your life. And it could very well inspire you to change your world.” —Sheryl Sandberg, COO of Facebook and author of Lean In\n\nWith Give and Take, Adam Grant not only introduced a landmark new paradigm for success but also established himself as one of his generation’s most compelling and provocative thought leaders. In Originals he again addresses the challenge of improving the world, but now from the perspective of becoming original: choosing to champion novel ideas and values that go against the grain, battle conformity, and buck outdated traditions. How can we originate new ideas, policies, and practices without risking it all?', '1613798767.jpeg'),
(22, '2021-02-20 05:00:18', '2021-02-20 05:00:18', 'A Court of Silver Flames (A Court of Thorns and Roses)', 'Sarah J. Maas', 'Bloomsbury Publishing', 0, 'February 16, 2021', 'English', 'With bits of Buffy, Game Of Thrones and Outlander, this is a glorious series of total joy - Stylist\n\nSarah J. Maas\'s sexy, richly imagined Court of Thorns and Roses series continues with the journey of Feyre\'s fiery sister, Nesta\n\nNesta Archeron has always been prickly – proud, swift to anger and slow to forgive. And since the war – since being made High Fae against her will – she\'s struggled to forget the horrors she endured and find a place for herself within the strange and deadly Night Court.\nThe person who ignites her temper more than any other is Cassian, the battle-scarred, winged warrior who is there at Nesta\'s every turn. But her temper isn\'t the only thing Cassian ignites. And when they are forced to train in battle together, sparks become flame.\nAs the threat of war casts its shadow over them once again, Nesta and Cassian must fight monsters from within and without if they are to stand a chance of halting the enemies of their court. But the ultimate risk will be searching for acceptance – and healing – in each other\'s arms.', '1613822418.jpeg'),
(23, '2021-02-20 05:03:39', '2021-02-20 05:03:39', 'A Court of Thorns and Roses', 'Sarah J. Maas', 'Bloomsbury Publishing', 0, 'May 5, 2015', 'English', 'With bits of Buffy, Game Of Thrones and Outlander, this is a glorious series of total joy - Stylist\n\nThe tantalising start to a seductive fantasy series from global #1 bestselling author Sarah J. Maas\n\nFeyre is a huntress. And when she sees a deer in the forest being pursued by a wolf, she kills the predator and takes its prey to feed herself and her family. But the wolf was not what it seemed, and Feyre cannot predict the high price she will have to pay for its death ...\nDragged away from her family for the murder of a faerie, Feyre discovers that her captor, his face obscured by a jewelled mask, is hiding even more than his piercing green eyes suggest. As Feyre\'s feelings for Tamlin turn from hostility to passion, she learns that the faerie lands are a far more dangerous place than she realized. And Feyre must fight to break an ancient curse, or she will lose him forever.\n\nSarah J. Maas\'s books have sold millions of copies worldwide and have been translated into 37 languages. Discover the sweeping romantic fantasy for yourself.', '1613822619.jpeg'),
(24, '2021-02-20 05:05:56', '2021-02-20 05:05:56', 'A Court of Frost and Starlight', 'Sarah J. Maas', 'Bloomsbury Publishing', 0, 'May 1, 2018', 'English', 'A gorgeously written tale as lush and romantic as it is ferocious ... Absolutely spellbinding - New York Times bestselling author Alexandra Bracken\n\nIn this companion tale to the bestselling A Court of Thorns and Roses series, Feyre, Rhys and their friends are working to rebuild the Night Court and the vastly changed world beyond after the events of A Court of Wings and Ruin.\nBut Winter Solstice is finally near, and with it a hard-earned reprieve. Yet even the festive atmosphere can\'t keep the shadows of the past from looming. As Feyre navigates her first Winter Solstice as High Lady, she finds that those dearest to her have more wounds than she anticipated – scars that will have a far-reaching impact on the future of their court.\n\nSarah J. Maas is a global #1 bestselling author. Her books have sold more than nine million copies and been translated into 37 languages. Discover the sweeping romantic fantasy for yourself.', '1613822756.jpeg'),
(25, '2021-02-20 05:08:16', '2021-02-20 05:08:16', 'A Court of Mist and Fury', 'Sarah J. Maas', 'Bloomsbury Publishing', 0, 'May 3, 2016', 'English', 'Feyre survived Amarantha\'s clutches to return to the Spring Court – but at a steep cost. Though she now possesses the powers of the High Fae, her heart remains human, and it can\'t forget the terrible deeds she performed to save Tamlin\'s people.\n\nNor has Feyre forgotten her bargain with Rhysand, the mesmerising High Lord of the feared Night Court. As Feyre navigates his dark web of political games and tantalising promises, a greater evil looms – and she might be key to stopping it. But only if she can step into her growing power, heal her fractured soul and have the courage to shape her own future – and the future of a world cloven in two.\n\nSarah J. Maas is a global #1 bestselling author. Her books have sold more than nine million copies and been translated into 37 languages. Discover the sweeping romantic fantasy for yourself.', '1613822896.jpeg'),
(26, '2021-02-20 05:11:57', '2021-02-20 05:11:57', 'A Court of Wings and Ruin', 'Sarah J. Maas', 'Bloomsbury Publishing', 0, 'May 2, 2017', 'English', 'Feyre has returned to the Spring Court, determined to gather information on Tamlin\'s manoeuvrings and the invading king threatening to bring her land to its knees. But to do so she must play a deadly game of deceit – and one slip may spell doom not only for Feyre, but for her world as well.\n\nAs war bears down upon them all, Feyre must decide who to trust amongst the dazzling and lethal High Lords and hunt for allies in unexpected places. And her heart will face the ultimate test as she and her mate are forced to question whether they can truly trust each other.\n\nSarah J. Maas is a global #1 bestselling author. Her books have sold more than nine million copies and been translated into 37 languages. Discover the sweeping romantic fantasy for yourself.', '1613823117.jpeg'),
(27, '2021-02-20 05:13:56', '2021-02-20 05:13:56', 'Throne of Glass', 'Sarah J. Maas', 'Bloomsbury YA', 2, 'October 23, 2018', 'English', 'The book that started the phenomenon. Sarah J. Maas\'s global #1 bestselling THRONE OF GLASS series has taken the world by storm.\n\nMeet Celaena Sardothien.\nBeautiful. Deadly. Destined for greatness.\n\nIn the dark, filthy salt mines of Endovier, an eighteen-year-old girl is serving a life sentence. She is a trained assassin, the best of her kind, but she made a fatal mistake. She got caught.\n\nYoung Captain Westfall offers her a deal: her freedom in return for one huge sacrifice. Celaena must represent the prince in a to-the-death tournament - fighting the most gifted thieves and assassins in the land. Live or die, Celaena will be free. Win or lose, she is about to discover her true destiny. But will her assassin\'s heart be melted?', '1613823236.jpeg'),
(28, '2021-02-20 05:24:59', '2021-02-20 05:24:59', 'The Four Winds: A Novel', 'Kristin Hannah', 'St. Martin\'s Press', 0, 'February 2, 2021', 'English', '#1 NEW YORK TIMES BESTSELLER\n#1 USA TODAY BESTSELLER\n#1 WALL STREET JOURNAL BESTSELLER\n#1 INDIE BESTSELLER\n\n\"The Four Winds seems eerily prescient in 2021 . . . Its message is galvanizing and hopeful: We are a nation of scrappy survivors. We’ve been in dire straits before; we will be again. Hold your people close.”—The New York Times\n\n\"A spectacular tour de force that shines a spotlight on the indispensable but often overlooked role of Greatest Generation women.\"—People\n\n\"Through one woman’s survival during the harsh and haunting Dust Bowl, master storyteller, Kristin Hannah, reminds us that the human heart and our Earth are as tough, yet as fragile, as a change in the wind.\" —Delia Owens, author of Where the Crawdads Sing', '1613823899.jpeg'),
(29, '2021-02-20 05:25:57', '2021-02-20 05:25:57', 'Firefly Lane: A Novel', 'Kristin Hannah', 'St. Martin\'s Press', 0, 'February 5, 2008', 'English', 'From the New York Times bestselling author of On Mystic Lake comes a powerful novel of love, loss, and the magic of friendship. . . .\n\nIn the turbulent summer of 1974, Kate Mularkey has accepted her place at the bottom of the eighth-grade social food chain. Then, to her amazement, the \"coolest girl in the world\" moves in across the street and wants to be her friend. Tully Hart seems to have it all---beauty, brains, ambition. On the surface they are as opposite as two people can be: Kate, doomed to be forever uncool, with a loving family who mortifies her at every turn. Tully, steeped in glamour and mystery, but with a secret that is destroying her. They make a pact to be best friends forever; by summer\'s end they\'ve become TullyandKate. Inseparable.\n\nSo begins Kristin Hannah\'s magnificent new novel. Spanning more than three decades and playing out across the ever-changing face of the Pacific Northwest, Firefly Lane is the poignant, powerful story of two women and the friendship that becomes the bulkhead of their lives.', '1613823957.jpeg'),
(30, '2021-02-20 05:27:08', '2021-02-20 05:27:08', 'Fly Away: A Novel (Firefly Lane Book 2)', 'Kristin Hannah', 'St. Martin\'s Press', 0, 'April 23, 2013', 'English', 'The #1 New York Times bestselling author returns to the characters in Firefly Lane in her next blockbuster novel, Fly Away.\n\nOnce, a long time ago, I walked down a night-darkened road called Firefly Lane, all alone, on the worst night of my life, and I found a kindred spirit. That was our beginning. More than thirty years ago. TullyandKate. You and me against the world. Best friends forever. But stories end, don\'t they? You lose the people you love and you have to find a way to go on. . . .\n\nTully Hart has always been larger than life, a woman fueled by big dreams and driven by memories of a painful past. She thinks she can overcome anything until her best friend, Kate Ryan, dies. Tully tries to fulfill her deathbed promise to Kate---to be there for Kate\'s children---but Tully knows nothing about family or motherhood or taking care of people.\n\nSixteen-year-old Marah Ryan is devastated by her mother\'s death. Her father, Johnny, strives to hold the family together, but even with his best efforts, Marah becomes unreachable in her grief. Nothing and no one seems to matter to her . . . until she falls in love with a young man who makes her smile again and leads her into his dangerous, shadowy world.', '1613824027.jpeg'),
(31, '2021-02-20 05:28:47', '2021-02-20 05:28:47', 'The Body: A Guide for Occupants', 'Bill Bryson', 'Anchor', 0, 'October 15, 2019', 'English', 'Bill Bryson, bestselling author of A Short History of Nearly Everything, takes us on a head-to-toe tour of the marvel that is the human body—with a new afterword for the Vintage paperback.\n\nBill Bryson once again proves himself to be an incomparable companion as he guides us through the human body—how it functions, its remarkable ability to heal itself, and (unfortunately) the ways it can fail. Full of extraordinary facts (your body made a million red blood cells since you started reading this) and irresistible Brysonesque anecdotes, The Body will lead you to a deeper understanding of the miracle that is life in general and you in particular.\n\nAs Bill Bryson writes, “We pass our existence within this wobble of flesh and yet take it almost entirely for granted.” The Body will cure that indifference with generous doses of wondrous, compulsively readable facts and information. As addictive as it is comprehensive, this is Bryson at his very best, a must-read owner’s manual for every body.\n\nONE OF THE BEST BOOKS OF THE YEAR:\nTHE WASHINGTON POST • FINANCIAL TIMES • THE DALLAS MORNING NEWS • BOOKPAGE • THE BOSTON GLOBE', '1613824127.jpeg'),
(32, '2021-02-20 05:30:04', '2021-02-20 05:30:04', 'A Short History of Nearly Everything: Special Illustrated Edition', 'Bill Bryson', 'Crown', 0, 'November 30, 2010', 'English', 'This new edition of the acclaimed bestseller is lavishly illustrated to convey, in pictures as in words, Bill Bryson’s exciting, informative journey into the world of science.\n\nIn A Short History of Nearly Everything, the bestselling author of A Walk in the Woods and The Body, confronts his greatest challenge yet: to understand—and, if possible, answer—the oldest, biggest questions we have posed about the universe and ourselves. Taking as his territory everything from the Big Bang to the rise of civilization, Bryson seeks to understand how we got from there being nothing at all to there being us. The result is a sometimes profound, sometimes funny, and always supremely clear and entertaining adventure in the realms of human knowledge, as only Bill Bryson can render it.\n\nNow, in this handsome new edition, Bill Bryson’s words are supplemented by full-color artwork that explains in visual terms the concepts and wonder of science, at the same time giving face to the major players in the world of scientific study. Eloquently and entertainingly described, as well as richly illustrated, science has never been more involving or entertaining.', '1613824204.jpeg'),
(33, '2021-02-20 05:31:57', '2021-02-20 05:31:57', 'The Life and Times of the Thunderbolt Kid: A Memoir', 'Bill Bryson', 'Crown', 0, 'October 17, 2006', 'English', 'From one of the world\'s most beloved writers and New York Times bestselling author of A Walk in the Woods and The Body, a vivid, nostalgic, and utterly hilarious memoir of growing up in the 1950s.\n\nBill Bryson was born in the middle of the American century—1951—in the middle of the United States—Des Moines, Iowa—in the middle of the largest generation in American history—the baby boomers. As one of the best and funniest writers alive, he is perfectly positioned to mine his memories of a totally all-American childhood for 24-carat memoir gold. Like millions of his generational peers, Bill Bryson grew up with a rich fantasy life as a superhero. In his case, he ran around his house and neighborhood with an old football jersey with a thunderbolt on it and a towel about his neck that served as his cape, leaping tall buildings in a single bound and vanquishing awful evildoers (and morons)—in his head—as \"The Thunderbolt Kid.\"', '1613824317.jpeg'),
(34, '2021-02-20 21:46:17', '2021-02-20 21:46:17', 'Que Ton Regne Vienne: Volume 1 (French Edition)', 'Gregory Toussaint', 'LABOR ET FIDES', 0, 'December 28, 2020', 'French', '\"Que Ton Règne Vienne\" est une série de dévotions qui vous aidera à mieux comprendre le plan de Dieu pour sa création, nous qui sommes citoyens du royaume céleste. Le plan de Dieu pour nous est de faire avancer l\'agenda de Son royaume en tant qu\'ambassadeurs du ciel sur terre. Comment? Vous pouvez vous demander. En vivant comme Lui.', '1613882777.jpeg'),
(35, '2021-02-20 21:50:54', '2021-02-20 21:50:54', 'Minna No Nihongo: Beginner 1, 2nd Edition', 'Collectif', '3A CORPORATION', 0, 'March 16, 1998', 'Japanese', 'Seconde édition du Manuel de Niveau 1 (débutant) du Minna No Nihongo. Cette méthode est l\'une des plus utilisée en Europe et est considérée comme un standard pour l\'apprentissage de la langue japonaise.', '1613883054.jpeg'),
(36, '2021-02-20 21:53:27', '2021-02-20 21:53:27', 'Think and Get Rich .: New Translation, Based On The Original Version 1937.', 'Napoleon Hill', 'Spanishon', 0, 'July 30, 2016', 'Spanish', 'Think & Grow Rich requires no introduction. Maybe just say that there is some reason - or many - why this book is among the ten best sellers in history, in all languages. The first is the Bible. Dozens of millions of copies have been sold around the world. And millions are those who confess that they read, they thought AND THEY BECAME RICH But what is the secret? It may not be so obvious. I have read the book several times in my life, and I know that what it says is also said by others. Not the same or in that order, but, I have not found hidden formulas yet. Although the content is indisputably good, I believe that what is magical is not only what it says, but some force or energy impregnated between its pages, paragraphs and letters, that make no one who reads it can stop feeling something ...', '1613883207.jpeg'),
(37, '2021-02-21 23:13:59', '2021-02-21 23:14:50', 'Apóstol para las naciones: La vida y los tiempos de Pablo de Tarso', 'Cesar Vidal', 'B&H Español', 5, 'February 1, 2021', 'Spanish', 'Pablo es el autor más prolífero de la Biblia. Escribió 13 piezas literarias propias y fue el apóstol que visitó más países como misionero y plantador de iglesias. En esta biografía, el reconocido autor Cesar Vidal, ofrece un enfoque histórico de la vida y ministerio de Pablo, incluyendo la profundidad de su mente teológica, que transformó a su propia generación y a muchas por venir incluso hasta la fecha.\n\nPaul is the most prolific author of the Bible, writing 13 literary pieces of his own. He was also the apostle that visited most countries as a missionary and church planter. In this biography, renowned author Cesar Vidal offers a historical approach to his life and ministry, including his deep theological mind that transformed his own generation and the ones to come for many centuries even to date.', '1613974439.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `book_copy`
--

CREATE TABLE `book_copy` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `requested_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/',
  `return_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_copy`
--

INSERT INTO `book_copy` (`id`, `created_at`, `updated_at`, `book_id`, `requested_date`, `return_date`, `status`) VALUES
(42, NULL, NULL, 21, '/', '/', 'Available'),
(43, NULL, NULL, 27, 'Feb 20, 2021', 'Feb 29, 2021', 'Unavailable'),
(44, NULL, NULL, 27, 'Feb 20, 2021', 'Feb 29, 2021', 'Unavailable'),
(45, NULL, NULL, 36, '/', '/', 'Available'),
(46, NULL, NULL, 37, 'Oct 12, 2020', 'Oct 16, 2020', 'Unavailable'),
(47, NULL, NULL, 37, '/', '/', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `book_request`
--

CREATE TABLE `book_request` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `book_copy_id` bigint(20) UNSIGNED NOT NULL,
  `requested_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/',
  `return_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Unreturned'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_request`
--

INSERT INTO `book_request` (`id`, `created_at`, `updated_at`, `book_copy_id`, `requested_date`, `return_date`, `status`) VALUES
(39, NULL, NULL, 44, 'Feb 20, 2021', 'Feb 29, 2021', 'Overdue'),
(40, NULL, NULL, 43, 'Feb 20, 2021', 'Feb 29, 2021', 'Unreturned'),
(41, NULL, NULL, 46, 'Oct 12, 2020', 'Oct 16, 2020', 'Returned'),
(42, NULL, NULL, 46, 'Oct 12, 2020', 'Oct 16, 2020', 'Returned'),
(43, NULL, NULL, 46, 'Oct 12, 2020', 'Oct 16, 2020', 'Returned'),
(44, NULL, NULL, 46, 'Oct 12, 2020', 'Oct 16, 2020', 'Returned'),
(45, NULL, NULL, 46, 'Oct 12, 2020', 'Oct 16, 2020', 'Unreturned');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_02_16_125640_create_books_table', 1),
(5, '2021_02_16_133249_alter_book_table', 2),
(6, '2021_02_16_133505_create_books_table', 3),
(7, '2021_02_17_094630_add_publication_date_to_book_table', 4),
(8, '2021_02_17_110028_add_language_and_description_to_book_table', 5),
(9, '2021_02_17_165059_add_image_name_image_path_to_books_table', 6),
(12, '2021_02_18_022813_create_book_copy_table', 7),
(13, '2021_02_18_080838_create_book_request_table', 8),
(14, '2021_02_19_162200_add_image_to_books_table', 9),
(15, '2021_02_20_083152_add_on_delete_cascade_book_copy_table', 10),
(16, '2021_02_20_083819_add_on_delete_cascade_book_request', 11),
(17, '2019_12_14_000001_create_personal_access_tokens_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'token', 'dc594084aac5f1400c7bd97fcc40484d2fa4a73483e1d78b3d93f2eba8efebd1', '[\"*\"]', '2021-02-21 03:45:26', '2021-02-21 03:43:08', '2021-02-21 03:45:26'),
(2, 'App\\Models\\User', 1, 'token', '35a060dae27a77cbb8adac40b14c9b5fdad89788470cbf15821f6fa7b74310ef', '[\"*\"]', NULL, '2021-02-21 04:29:25', '2021-02-21 04:29:25'),
(3, 'App\\Models\\User', 1, 'token', 'd92c75fdcf2bd5aa4da3c8669db1b626a455dba0e46996c42bb9b5e3c05a5b41', '[\"*\"]', NULL, '2021-02-21 04:31:58', '2021-02-21 04:31:58'),
(4, 'App\\Models\\User', 1, 'token', '79b5c54c35e29f0001cc59b1ab68ae0dc6abd4f33b3cb672f2ca361b77b361fb', '[\"*\"]', NULL, '2021-02-21 04:34:17', '2021-02-21 04:34:17'),
(5, 'App\\Models\\User', 1, 'token', '3e28b2852ae5ac7312da0cc8de8116b522d4080931c097874b14842789c6d688', '[\"*\"]', NULL, '2021-02-21 04:34:41', '2021-02-21 04:34:41'),
(6, 'App\\Models\\User', 1, 'token', '543d8e336ae2a13494c8718e715e14c802a4da7be1041329c8d819688b5c765d', '[\"*\"]', NULL, '2021-02-21 04:35:50', '2021-02-21 04:35:50'),
(7, 'App\\Models\\User', 1, 'token', 'caebabf7ea947ba8208ffda4d5bbb41c3ea32e4311b86cc835b7928b0b73dd91', '[\"*\"]', NULL, '2021-02-21 04:36:46', '2021-02-21 04:36:46'),
(8, 'App\\Models\\User', 1, 'token', 'fff3b1627fe556b45df56aeafe303a5c22f0bfefdddc91e348c4efb6517151d1', '[\"*\"]', NULL, '2021-02-21 04:41:38', '2021-02-21 04:41:38'),
(9, 'App\\Models\\User', 1, 'token', '4c12f9f1d92c932ad867054e22bdda232a3696375b2bba6c76048e059c88b080', '[\"*\"]', NULL, '2021-02-21 04:44:48', '2021-02-21 04:44:48'),
(10, 'App\\Models\\User', 1, 'token', 'bc244c287496872255f546991c866a94e2a88f2275cc92f1af95ed7b3b0ee2f9', '[\"*\"]', NULL, '2021-02-21 04:45:35', '2021-02-21 04:45:35'),
(11, 'App\\Models\\User', 1, 'token', '4d35cbcb4f888e51bbc57402877b89090b3b2aff9d6e6ecc421e86d91a703b01', '[\"*\"]', NULL, '2021-02-21 04:46:20', '2021-02-21 04:46:20'),
(12, 'App\\Models\\User', 1, 'token', '95432a84287ebf24a89020953c6c67b202812f8bfd61e771a3d58a7ba485714b', '[\"*\"]', NULL, '2021-02-21 04:47:10', '2021-02-21 04:47:10'),
(13, 'App\\Models\\User', 1, 'token', 'c79e371fed3fda279236602535f9bc73845340f96829693c824b81ce2b3034c2', '[\"*\"]', '2021-02-21 06:32:11', '2021-02-21 04:54:51', '2021-02-21 06:32:11'),
(14, 'App\\Models\\User', 1, 'token', '47fdc418d7056dc88e2ca66bb84035ac853037aeb17e0578754cabc4a5a8315c', '[\"*\"]', NULL, '2021-02-21 06:39:13', '2021-02-21 06:39:13'),
(15, 'App\\Models\\User', 1, 'token', '0b486c205edfd36f432fdc02ca381ac574b2337bc66ef56dd4d53577abb97b59', '[\"*\"]', NULL, '2021-02-21 06:44:59', '2021-02-21 06:44:59'),
(16, 'App\\Models\\User', 1, 'token', '80770dfb7f8181b6ccd8693dbc69794fbd3b98846c2507c5fb12a66afc18b558', '[\"*\"]', NULL, '2021-02-21 06:46:10', '2021-02-21 06:46:10'),
(17, 'App\\Models\\User', 1, 'token', 'f7cf4cdd8aeb21027593bee7816323744ea7a8f3e1f16e3e425cd18f23f6c0c9', '[\"*\"]', NULL, '2021-02-21 06:46:13', '2021-02-21 06:46:13'),
(18, 'App\\Models\\User', 1, 'token', '5398eefd574a834e6ed91833a69c36ed623e5ae2ae411ec1f7d4ffe40d459ab5', '[\"*\"]', NULL, '2021-02-21 06:50:49', '2021-02-21 06:50:49'),
(19, 'App\\Models\\User', 1, 'token', '5aadd3a14b4d4807fad407bc30ea4a3f4c39b16457fa91feaa66d4d08b179387', '[\"*\"]', NULL, '2021-02-21 06:50:57', '2021-02-21 06:50:57'),
(20, 'App\\Models\\User', 1, 'token', 'ac77e23fb7639e6ffa0562dd57cc4fb9cae4bf3e6e4f1f8a2fa42dcb6eb2f0be', '[\"*\"]', '2021-02-21 06:59:44', '2021-02-21 06:54:24', '2021-02-21 06:59:44'),
(21, 'App\\Models\\User', 1, 'token', '109e5e24c0111da5df7a458d593896d671d95e571801b46ed65d5820f8a6f156', '[\"*\"]', '2021-02-21 07:02:04', '2021-02-21 06:59:58', '2021-02-21 07:02:04'),
(22, 'App\\Models\\User', 1, 'token', 'e52929d19b6326e7f65a38937dd99a187d565357ffad67fa8004984e2858b040', '[\"*\"]', NULL, '2021-02-21 07:02:56', '2021-02-21 07:02:56'),
(23, 'App\\Models\\User', 1, 'token', 'b486d71302d1ea7489f138c96b4ba4ce4e15847be5efe69d18c4cd1e8e9d9b9b', '[\"*\"]', NULL, '2021-02-21 07:04:17', '2021-02-21 07:04:17'),
(24, 'App\\Models\\User', 1, 'token', '77f946bc012218434ee6dffa3cb3ac851d40f176d03c394cecfa26dee97c75af', '[\"*\"]', '2021-02-21 07:05:21', '2021-02-21 07:04:30', '2021-02-21 07:05:21'),
(25, 'App\\Models\\User', 1, 'token', 'b9c5777cc9606f032c4f54ca27aeac4987b89a7e6c20163e86fd62cea02fd01e', '[\"*\"]', '2021-02-21 07:08:03', '2021-02-21 07:05:28', '2021-02-21 07:08:03'),
(26, 'App\\Models\\User', 1, 'token', '87f2f1581e45f84c3721c33651949ad8b54adf650bbcb10e11caf006e31f8b3b', '[\"*\"]', '2021-02-21 07:13:02', '2021-02-21 07:12:54', '2021-02-21 07:13:02'),
(27, 'App\\Models\\User', 1, 'token', '7b68148c266e74585865cc40fa8d86ee380fea18d5dfa5dc12475c29f1e9820a', '[\"*\"]', NULL, '2021-02-21 07:16:54', '2021-02-21 07:16:54'),
(28, 'App\\Models\\User', 1, 'token', '488571af1c499a421ec62869db3e00f46f9c0ec9163d92adbe5bbe9005e20103', '[\"*\"]', '2021-02-21 07:19:34', '2021-02-21 07:17:21', '2021-02-21 07:19:34'),
(29, 'App\\Models\\User', 1, 'token', '3bb7b37e00f4c04a6d088c410c8e42538f0d660c74024352b26b1c2837686282', '[\"*\"]', NULL, '2021-02-21 07:19:41', '2021-02-21 07:19:41'),
(30, 'App\\Models\\User', 1, 'token', '73f61a76c54e4ffa0322a80becdaa42f681efdbbd7c56d7498765ed08efa7115', '[\"*\"]', NULL, '2021-02-21 07:23:34', '2021-02-21 07:23:34'),
(31, 'App\\Models\\User', 1, 'token', 'ebd61c1875da887694a3b3bc24a083f54768a0c329b87fc8558985682f1f0c09', '[\"*\"]', NULL, '2021-02-21 07:24:17', '2021-02-21 07:24:17'),
(32, 'App\\Models\\User', 1, 'token', 'b7f743642643616b64f3ad192fd3892203642d73c1fcddaf2f66373a2567f681', '[\"*\"]', NULL, '2021-02-21 07:24:49', '2021-02-21 07:24:49'),
(33, 'App\\Models\\User', 1, 'token', '0534536f54b6b946ee32512116cd63c7bc0342777483ccbf961333f6c20e20b1', '[\"*\"]', NULL, '2021-02-21 07:29:15', '2021-02-21 07:29:15'),
(34, 'App\\Models\\User', 1, 'token', 'd87acb328053bc085a9308c8cbbf5deb636140732af960b3ece95603d3e5b39d', '[\"*\"]', NULL, '2021-02-21 07:29:48', '2021-02-21 07:29:48'),
(35, 'App\\Models\\User', 1, 'token', '756d9960d25ea6adc3ac0df700213d700ec90f93e21fe2724460dd81300f89c1', '[\"*\"]', NULL, '2021-02-21 07:36:53', '2021-02-21 07:36:53'),
(36, 'App\\Models\\User', 1, 'token', '9e0450e52b27496b3f1949321f860b3d0e7be8b4edd85673d7277b17ca67281d', '[\"*\"]', '2021-02-21 07:53:06', '2021-02-21 07:52:27', '2021-02-21 07:53:06'),
(37, 'App\\Models\\User', 1, 'token', '75c745770a0aa9af06962140e9d162a6b2e1634a35dc2850ffb4129c66dfebcc', '[\"*\"]', NULL, '2021-02-21 07:54:56', '2021-02-21 07:54:56'),
(38, 'App\\Models\\User', 1, 'token', '94995d3fa87a4616625e4472ee82a135721b7bc7300f352a3fb9073852340887', '[\"*\"]', '2021-02-21 07:55:37', '2021-02-21 07:55:26', '2021-02-21 07:55:37'),
(39, 'App\\Models\\User', 1, 'token', 'e5ebd4e92bd4d919ee338f4937a57668a5e0d10e0f8e1c67ce5105e77f533a68', '[\"*\"]', NULL, '2021-02-21 08:16:45', '2021-02-21 08:16:45'),
(40, 'App\\Models\\User', 1, 'token', '465734bad763317567ac94e9ad5136a943e54cce4a45b182dc116d6d491d1003', '[\"*\"]', NULL, '2021-02-21 08:17:18', '2021-02-21 08:17:18'),
(41, 'App\\Models\\User', 1, 'token', '21d3b71b7e229b0bbec24981b47c539cdcf3108a758908c369b1a8dfd3172f92', '[\"*\"]', NULL, '2021-02-21 08:20:03', '2021-02-21 08:20:03'),
(42, 'App\\Models\\User', 1, 'token', '3c7120a28e66815ba5a90d07af713dee7d9522f4f4bfdf956db85fd13c5a8ffd', '[\"*\"]', '2021-02-21 08:48:23', '2021-02-21 08:47:30', '2021-02-21 08:48:23'),
(43, 'App\\Models\\User', 1, 'token', '723f12ffab23c3ef844a8c29083bcf6c3069c9d53e2fdbb690088f2fe89c663e', '[\"*\"]', '2021-02-21 23:16:26', '2021-02-21 23:12:11', '2021-02-21 23:16:26'),
(44, 'App\\Models\\User', 1, 'token', '65926f592b8512b79a0dbac63d8b808bf09253242f2cbddce8c9ffad8ecdfa2b', '[\"*\"]', '2021-02-21 23:21:34', '2021-02-21 23:19:31', '2021-02-21 23:21:34'),
(45, 'App\\Models\\User', 1, 'token', '47577fb9d68be0e64f2a58cec5b3d1197256841769ca461153b2eae8a58dd27b', '[\"*\"]', '2021-02-22 00:13:23', '2021-02-22 00:11:36', '2021-02-22 00:13:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin1', 'admin1@gmail.com', NULL, '$2y$10$1Jddt/ioeMhn1A5CSIdAIeWDZ/EvTlt6snwi5Y5zfBUH0c7SkUGiS', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_copy`
--
ALTER TABLE `book_copy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_copy_book_id_foreign` (`book_id`);

--
-- Indexes for table `book_request`
--
ALTER TABLE `book_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_request_book_copy_id_foreign` (`book_copy_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `book_copy`
--
ALTER TABLE `book_copy`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `book_request`
--
ALTER TABLE `book_request`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book_copy`
--
ALTER TABLE `book_copy`
  ADD CONSTRAINT `book_copy_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `book_request`
--
ALTER TABLE `book_request`
  ADD CONSTRAINT `book_request_book_copy_id_foreign` FOREIGN KEY (`book_copy_id`) REFERENCES `book_copy` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
