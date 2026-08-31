-- Postgres-compatible data load generated from dump.sql
SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET session_replication_role = 'replica';

INSERT INTO "livres_auteur" ("id", "nom", "prenom", "nationalite_id", "anneeNaissance") VALUES
(1, 'Simmons', 'Dan', 3, 1948),
(2, 'Barker', 'Clive', 2, 1952),
(3, 'Brussolo', 'Serge', 1, 1951),
(4, 'King', 'Stephen', 3, 1947),
(5, 'Jan', 'Gabriel', 1, NULL),
(6, 'Honaker', 'Michel', 1, NULL),
(7, 'Dantec', 'Maurice G.', 1, NULL),
(8, 'Pagel', 'Michel', 1, NULL),
(9, 'Berthelot', 'Francis', 1, NULL),
(10, 'Paris', 'Alain', 1, NULL),
(11, 'Houssin', 'Joël', 1, 1953),
(12, 'Chillicothe', 'Zeb', 1, NULL),
(13, 'Ayerdhal', '', 1, 1959),
(14, 'Thomas', 'Gilles', 1, NULL),
(15, 'Passegué', 'Bertrand', 1, NULL),
(16, 'Cryde', 'Th.', 1, NULL),
(17, 'Genefort', 'Laurent', 1, NULL),
(18, 'Lemosquet', 'Marc', 1, NULL),
(19, 'Legay', 'Piet', 1, NULL),
(20, 'Valetti', 'Oscar', 1, NULL),
(21, 'Facon', 'Roger', 1, NULL),
(22, 'Garen', 'Jean-Pierre', 1, NULL),
(23, 'Le Bussy', 'Alain', 8, NULL),
(24, 'Brotot', 'Dominique', 1, NULL),
(25, 'Hérault', 'P.J.', 1, NULL),
(26, 'Essard', 'Manuel', 1, NULL),
(27, 'Debuys', 'Pierre', 1, NULL),
(28, 'Gorka', 'Lucas', 1, NULL),
(29, 'Ligny', 'Jean-Marc', 1, 1956),
(30, 'Anthony', 'Max', 1, NULL),
(31, 'Billy', 'Alain', 1, NULL),
(32, 'Périsset', 'Maurice', 1, NULL),
(33, 'Dunyach', 'Jean-Claude', 1, 1957),
(34, 'Douriaux', 'Hugues', 1, NULL),
(35, 'Deff', 'Red', 1, NULL),
(36, 'Milési', 'Raymond', 1, NULL),
(37, 'Dekk', 'Karel', 1, 1964),
(38, 'Wagner', 'Roland C.', 1, NULL),
(39, 'Pelot', 'Pierre', 1, NULL),
(40, 'Higon', 'Albert', 1, NULL),
(41, 'Morris', 'G.', 1, NULL),
(42, 'Sheridan Le Fanu', 'J.', 2, 1814),
(43, 'Brown', 'Fredric', 3, 1906),
(44, 'Ballard', 'J.G.', 2, 1930),
(45, 'Derleth', 'August', 3, 1909),
(46, 'Lovecraft', 'H.P.', 3, 1890),
(47, 'Bradbury', 'Ray', 3, NULL),
(48, 'Matheson', 'Richard', 3, 1926),
(49, 'Barjavel', 'René', 1, NULL),
(50, 'Galouye', 'Daniel', 3, 1920),
(51, 'Asimov', 'Isaac', 3, NULL),
(52, 'Aldiss', 'Brian', 2, 1925),
(53, 'Wul', 'Stefan', 1, NULL),
(54, 'Boyd', 'John', 3, 1919),
(55, 'Tevis', 'Walter', 3, NULL),
(56, 'Andrevon', 'J.P.', 1, NULL),
(57, 'Dick', 'Philip K.', 3, 1928),
(58, 'Powers', 'Tim', 3, NULL),
(59, 'Gibson', 'William', 3, 1948),
(60, 'Mondoloni', 'Jacques', 1, 1941),
(61, 'Pohl', 'Frederic', 3, NULL),
(62, 'Howard', 'Robert E.', 3, 1906),
(63, 'Vance', 'Jack', 3, 1916),
(64, 'Masterton', 'Graham', 2, 1946),
(65, 'Clarke', 'Arthur C.', 2, 1917),
(66, 'Van Vogt', 'A.E.', 3, 1912),
(67, 'Stolze', 'Pierre', 1, 1952),
(68, 'Sturgeon', 'Th.', 3, 1918),
(69, 'Ray', 'Jean', 8, 1887),
(70, 'Moorcock', 'Michael', 2, 1939),
(71, 'Campbell', 'Ramsey', 3, NULL),
(72, 'Koontz', 'Dean R.', 3, 1945),
(73, 'Monteleone', 'Thomas', 3, NULL),
(74, 'Stableford', 'Brian', 2, 1948),
(75, 'Werber', 'Bernard', 1, 1961),
(76, 'Page', 'Thomas', 3, NULL),
(77, 'Attanasio', 'A.A.', 3, NULL),
(78, 'Flammarion', 'Camille', 1, NULL),
(79, 'Tolkien', 'J.R.R.', 2, NULL),
(80, 'Silverberg', 'Robert', 3, 1935),
(81, 'Curval', 'Philippe', 1, 1929),
(82, 'Christie', 'Agatha', 2, NULL),
(83, 'Exbrayat', '', 1, NULL),
(84, 'Doyle', 'Conan', 2, NULL),
(85, 'Perec', 'Georges', 1, NULL),
(86, 'Frère', 'Maud', 1, NULL),
(87, 'Le Roy', 'Eugène', 1, NULL),
(88, 'Lacretelle (de)', 'Jacques', 1, NULL),
(89, 'Hemingway', 'Ernest', 3, NULL),
(90, 'Aymé', 'Marcel', 1, NULL),
(91, 'London', 'Jack', 3, NULL),
(92, 'Suragne', 'Pierre', 1, NULL),
(93, 'Scheer', 'K.H.', 5, NULL),
(94, 'Wells', 'H.G.', 5, NULL),
(95, 'Foster', 'Alan Dean', 3, NULL),
(96, 'Rice', 'Anne', 3, NULL),
(97, 'Huxley', 'Aldous', 2, 1894),
(98, 'Blankenship', 'William', 3, NULL),
(99, 'Herbert', 'Frank', 3, 1920),
(100, 'Farmer', 'Philip José', 3, NULL),
(101, 'Rusell', 'Eric Frank', 2, 1905),
(102, 'Leiber', 'Fritz', 3, 1910),
(103, 'Kafka', 'Franz', 9, 1883),
(104, 'Anderson', 'Poul', 3, NULL),
(105, 'Spitz', 'Jacques', 1, NULL),
(106, 'Kadrey', 'Richard', 3, 1957),
(107, 'Vian', 'Boris', 1, NULL),
(108, 'Orwell', 'George', 2, 1903),
(109, 'McCammon', 'Robert', 3, 1952),
(110, 'Feist', 'Raymond', 3, 1951),
(111, 'Straub', 'Peter', 3, 1943),
(112, 'Arnaud', 'G.J.', 1, 1928),
(113, 'Lumley', 'Brian', 2, 1937),
(114, 'Bordage', 'Pierre', 1, 1955),
(115, 'Jeury', 'Michel', 1, NULL),
(116, 'Lehman', 'Serge', 1, 1964),
(117, 'Fontana', 'J.P.', 1, NULL),
(118, 'Carsac', 'Francis', 1, 1919),
(119, 'Vonarburg', 'Elisabeth', 1, 1947),
(120, 'Trudel', 'Jean-Louis', 1, 1967),
(121, 'Canal', 'Richard', 1, 1953),
(122, 'Darlton', 'C.', 5, NULL),
(123, 'Nelson', 'Ray', 3, NULL),
(124, 'Spinrad', 'Norman', 3, 1940),
(125, 'Bear', 'Greg', 3, NULL),
(126, 'Wolfe', 'Gene', 3, NULL),
(127, 'Baker', 'Scott', 2, NULL),
(128, 'Wilhelm', 'Kate', 3, NULL),
(129, 'Varley', 'John', 3, NULL),
(130, 'Watson', 'Ian', 3, NULL),
(131, 'Brunner', 'John', 3, NULL),
(132, 'Zelazny', 'Roger', 3, NULL),
(133, 'Vinge', 'Vernor', 3, NULL),
(134, 'Card', 'Orson Scott', 2, NULL),
(135, 'Eddings', 'David', 3, 1931),
(136, 'Hubbard', 'Ron', 3, 1911),
(137, 'Simonay', 'Bernard', 1, NULL),
(138, 'Legrand', 'Benjamin', 1, NULL),
(139, 'Duguël', 'Anne', 1, NULL),
(140, 'Hougron', 'Jean', 1, NULL),
(141, 'Strougatski', 'Arcadi & Boris', 1, NULL),
(142, 'Coney', 'Michael G.', 3, NULL),
(143, 'Delany', 'Samuel R.', 3, NULL),
(144, 'Morrow', 'James', 3, NULL),
(145, 'Reed', 'Robert', 3, NULL),
(146, 'Finney', 'Jack', 3, NULL),
(147, 'Reeves-Stevens', 'Garfield', 3, NULL),
(148, 'Wintrebert', 'Joëlle', 3, NULL),
(149, 'Volodine', 'Antoine', 1, NULL),
(150, 'Ruellan', 'André', 1, NULL),
(151, 'Hubert', 'Jean-Pierre', 1, NULL),
(152, 'Billon', 'Pierre', 1, NULL),
(153, 'Walther', 'Daniel', 1, NULL),
(154, 'Rémy', 'Yves', 1, NULL),
(155, 'Demuth', 'Michel', 1, NULL),
(156, 'Frémion', 'Yves', 1, NULL),
(157, 'Jouanne', 'Emmanuel', 1, NULL),
(158, 'Hambly', 'Barbara', 3, NULL),
(159, 'Donaldson', 'Stephen', 3, NULL),
(160, 'Stith', 'John E.', 3, NULL),
(161, 'Kornbluth', 'C.M.', 3, NULL),
(162, 'Williams', 'Jay', 3, 1914),
(163, 'Knight', 'Damon', 3, 1922),
(164, 'Tenn', 'William', 3, 1920),
(165, 'Koch', 'Howard', 3, 1902),
(166, 'Benford', 'Gregory', 3, 1941),
(167, 'Carr', 'Terry', 3, 1937),
(168, 'Saint-Clair', 'Margaret', 3, 1911),
(169, 'Leinster', 'Murray', 3, 1896),
(170, 'Lafferty', 'Raphael aloysius', 3, 1914),
(171, 'Oliver', 'Chad', 3, 1928),
(172, 'Sheckley', 'Robert', 3, 1928),
(173, 'Kubilius', 'Walter', 3, 1918),
(174, 'Brown', 'Bill', 3, NULL),
(175, 'Anthony', 'John', 3, NULL),
(176, 'Sellings', 'Arthur', 2, 1921),
(177, 'Temple', 'William', 2, 1914),
(178, 'Moore', 'Ward', 3, 1903),
(179, 'Heinlein', 'Robert', 3, 1907),
(180, 'Abernaty', 'Robert', 3, 1924),
(181, 'Wyndham', 'John', 2, 1903),
(182, 'Miller', 'Walter M.', 3, 1923),
(183, 'Coppel', 'Alfred', 3, 1921),
(184, 'Nourse', 'Alan E.', 3, 1928),
(185, 'Merril', 'Judith', 3, 1923),
(186, 'Smith', 'Cordwainer', 3, 1913),
(187, 'Kuttner', 'Henry', 3, 1914),
(188, 'Green', 'Robert M.', 3, NULL),
(189, 'Malzberg', 'Barry N.', 3, 1939),
(190, 'Greenberg', 'Alvin', 3, NULL),
(191, 'Locke', 'David M.', 3, NULL),
(192, 'Piper', 'Beam', 3, 1904),
(193, 'Roberts', 'Keith', 3, 1935),
(194, 'Del Rey', 'Lester', 4, 1915),
(195, 'Malcom', 'Donald', 2, NULL),
(196, 'Williamson', 'Jack', 3, 1908),
(197, 'Bester', 'Alfred', 3, 1913),
(198, 'Compère', 'Gaston', 1, NULL),
(199, 'Siméon', 'Jean-Pierre', 1, NULL),
(200, 'Lamart', 'Michel', 1, NULL),
(201, 'Coisne', 'Gérard', 1, NULL),
(202, 'Sternberg', 'Jacques', 1, NULL),
(203, 'Bours', 'Jean-Pierre', 1, NULL),
(204, 'Dorémieux', 'Alain', 1, NULL),
(205, 'Grimaud', 'Michel', 1, NULL),
(206, 'Barlow', 'W.', 3, NULL),
(207, 'Cousin', 'Philippe', 1, NULL),
(208, 'Karnauch', 'Rémi', 1, NULL),
(209, 'Duvic', 'Patrice', 1, NULL),
(210, 'Greene', 'Sonia', 3, NULL),
(211, 'Heald', 'Hazel', 3, NULL),
(212, 'Eddy', 'C.M.', 3, NULL),
(213, 'Barlow', 'Robert H.', 3, NULL),
(214, 'Lumley', 'William', 3, NULL),
(215, 'Smith', 'C.A.', 3, 1893),
(216, 'Long', 'Frank B.', 3, 1903),
(217, 'Bloch', 'Robert', 3, 1917),
(218, 'Wade', 'James', 3, 1930),
(219, 'Wilson', 'C.', 3, 1931),
(220, 'Tuttle', 'Lisa', 3, NULL),
(221, 'Lee', 'Tanith', 2, 1947),
(222, 'Pratchett', 'Terry', 2, NULL),
(223, 'Brin', 'David', 3, 1950),
(224, 'Sussan', 'René', 1, NULL),
(225, 'Sussan', 'Dona', 1, NULL),
(226, 'Bradley', 'Marion Zimmer', 3, 1930),
(227, 'Denis', 'Sylvie', 1, NULL),
(228, 'Di Rollo', 'Thierry', 1, NULL),
(229, 'Valéry', 'Francis', 1, NULL),
(230, 'Girardot', 'Jean-Jacques', 1, NULL),
(231, 'Ruaud', 'André-François', 1, NULL),
(232, 'Nguyen', 'Jean-Jacques', 1, NULL),
(233, 'Thiberge', 'Guillaume', 1, NULL),
(234, 'Meynard', 'Yves', 1, NULL),
(235, 'Day', 'Thomas', 1, NULL),
(236, 'McAuley', 'Paul J.', 2, 1955),
(237, 'Baxter', 'Stephen', 2, 1957),
(238, 'Newman', 'Kim', 2, 1959),
(239, 'Hamilton', 'Peter F.', 2, NULL),
(240, 'Lackey', 'Mercedes', 3, NULL),
(241, 'Suzuko', 'Akira', 1, 1945),
(242, 'Doom', 'Kitty', 1, NULL),
(243, 'Morlok', 'D', 1, NULL),
(244, 'Le Guin', 'Ursula', 3, 1929),
(245, 'Carroll', 'Jonathan', 3, NULL),
(246, 'Grimbert', 'Pierre', 1, NULL),
(247, 'Kloetzer', 'Laurent', 1, NULL),
(248, 'Gaiman', 'Neil', 2, NULL),
(249, 'Colin', 'Fabrice', 1, NULL),
(250, 'Faivre d''Arcier', 'Jeanne', 1, NULL),
(251, 'Robinson', 'Stanley', 3, NULL),
(252, 'Fowler', 'Christopher', 3, NULL),
(253, 'Stephenson', 'Neal', 3, NULL),
(254, 'Jordan', 'Robert', 3, NULL),
(255, 'Haldelman', 'Joe', 3, 1943),
(256, 'Evangelisti', 'Valerio', 6, 1952),
(257, 'Kress', 'Nancy', 3, 1948),
(258, 'Eschbach', 'Andreas', 5, 1959),
(259, 'Haber', 'Karen', 3, 1955),
(260, 'Priest', 'Christopher', 2, 1943),
(261, 'Ricciardiello', 'Franco', 6, 1961),
(262, 'Eddings', 'Leigh', 3, NULL),
(263, 'Dumas', 'Alexandre (père)', 1, NULL),
(264, 'Wieck', 'Stewart', 3, NULL),
(265, 'Griffin', 'Eric', 3, NULL),
(266, 'Fleming', 'Gherbod', 3, NULL),
(267, 'Ryan', 'Kathleen', 3, NULL),
(268, 'Dansky', 'Richard', 3, NULL),
(269, 'Vinge', 'Joan', 3, 1948),
(270, 'McMaster Bujold', 'Lois', 3, 1949),
(271, 'Cherry', 'C.J.', 3, NULL),
(272, 'Wilson', 'David Niall', 3, NULL),
(273, 'Closterman', 'Pierre', 1, 1921),
(274, 'De Camp', 'Sprague', 3, NULL),
(275, 'Carter', 'Lin', 3, NULL),
(276, 'Niven', 'Larry', 3, 1938),
(277, 'Pevel', 'Pierre', 1, 1968),
(278, 'Achilli', 'Justin', 3, NULL),
(279, 'Pullman', 'Philip', 2, 1946),
(280, 'Wodehouse', 'P.G.', 2, NULL),
(281, 'Follet', 'Ken', 2, NULL),
(282, 'Cook', 'Glen', 2, NULL),
(283, 'Martin', 'George R.R.', 3, NULL),
(284, 'Russo', 'Richard Paul', 3, 1954),
(285, 'Jaworski', 'Jean-Philippe', 1, 1969),
(286, 'Damasio', 'Alain', 1, NULL),
(287, 'Fazi', 'Mélanie', 1, 1976),
(288, 'Duncan', 'Hal', 11, 1971),
(289, 'Wilson', 'Robert Charles', 18, 1953),
(290, 'Brite', 'Poppy Z.', 3, 1967),
(291, 'Celine', 'Louis-Ferdinand', 1, 1894),
(292, 'Salvatore', 'Robert Anthony', 3, 1959),
(293, 'Beauverger', 'Stéphane', 1, 1969),
(512, 'A Debats', 'Jeanne', 1, 1965),
(513, 'Grangé', 'Jean-Christophe', 1, 1961),
(514, 'Sapkowski', 'Andrzej', 13, 1948),
(515, 'Larson', 'Stieg', 14, 1954),
(516, 'Grangé', 'Jean-Christophe', 1, 1961),
(517, 'Bellagamba', 'Hugo', 1, 1972),
(518, 'Chattam', 'Maxime', 1, 1976),
(519, 'Simak', 'Clifford Donald', 3, 1904),
(520, 'Duncan', 'Hal', 2, 1971),
(521, 'Mc Donald', 'Ian', 2, 1960),
(522, 'Kloetzer', 'L.L.', 1, 0),
(523, 'Plusieurs', 'Auteurs', 1, 0),
(524, 'Mauméjean', 'Xavier', 1, 1963),
(525, 'Courtade', 'Henri', 1, 1968),
(526, 'Ferrand', 'Cédric', 1, 1976),
(527, 'WAGNER', 'Karl Edward', 3, 1945),
(528, 'Rothfuss', 'Patrick', 3, 1973),
(529, 'BELL', 'Alden', 3, 0),
(530, 'Duncan', 'Glen', 2, 1965),
(531, 'Depotte', 'Jean-Philippe', 1, 1967),
(532, 'Blacha', 'Leandro Ávalos', 15, 1980),
(533, 'Polansky', 'Daniel', 3, 1970),
(534, 'Galliot', 'Gilles', 1, 1956),
(535, 'McDevitt', 'Jack', 3, 1935),
(536, 'Stoker', 'Bram', 2, 1847),
(537, 'Elroy', 'James', 3, 1948),
(538, 'De Santis', 'Pablo', 15, 1963),
(539, 'Henry', 'Léo', 1, 1979),
(540, 'Robinson', 'Frank Malcolm', 3, 1926),
(541, 'Joyce', 'Graham', 2, 1954),
(542, 'Ness', 'Patrick', 3, 1971),
(543, 'Abercrombie', 'Joe', 2, 1974),
(544, 'Sanderson', 'Brian', 3, 1975),
(545, 'Starobinets', 'Anna', 10, 1978),
(546, 'Millar', 'Martin', 2, 0),
(547, 'Mausservey', 'Dominique', 1, 1960),
(548, 'Rowling', 'J.K.', 2, 1965),
(549, 'Walton', 'Joe', 16, 1964),
(550, 'Gallo', 'Max', 1, 1938),
(551, 'Faye', 'Estelle', 1, 1978),
(552, 'Chiang', 'Ted', 3, 1967),
(553, 'Minier', 'Bernard', 1, 1960),
(554, 'Keyes', 'Daniel', 3, 1927),
(555, 'Cerutti', 'Fabien', 1, 1974),
(556, 'Binet', 'Laurent', 1, 1972),
(557, 'Boudine', 'Jean-Pierre', 1, 1945),
(558, 'Katz', 'Gabriel', 1, 1970),
(559, 'Courtois', 'Grégoire', 1, 1974),
(560, 'Liu', 'Ken', 3, 1976),
(561, 'Georges', 'Karoline', 18, 1970),
(562, 'Nicot', 'Stéphanie', 1, 1952),
(563, 'Suhner', 'Laurence', 7, 1968),
(564, 'Hesse', 'Hermann', 5, 1877),
(565, 'Womack', 'Jack', 3, 1966),
(566, 'Fitzgerald', 'F. Scott', 3, 1896),
(567, 'Davoust', 'Lionel', 1, 1978),
(568, 'Erickson', 'Steven', 18, 1959),
(569, 'Thilliez', 'Franck', 1, 1973),
(570, 'D''Huissier', 'Romain', 1, 1977),
(571, 'Del Socorro', 'Jean-Laurent', 1, 1977),
(572, 'Barbéri', 'Jacques', 1, 1954),
(573, 'Platteau', 'Stéphan', 8, 1975),
(574, 'Truong', 'Jean-Michel', 1, 1950),
(575, 'Liu', 'Cixin', 17, 1963),
(576, 'Harris', 'Thomas', 3, 1940),
(577, 'Perrin', 'Valérie', 1, 1967),
(578, 'Cawdron', 'Peter', 19, 1975),
(579, 'Delplancq', 'Romain', 1, 1983),
(580, 'Scalzi', 'John', 3, 1969),
(581, 'Abeille', 'Jacques', 1, 1942),
(582, 'Soulas', 'Floriane', 1, 1989),
(583, 'Flannery', 'Peter', 2, 1951),
(584, 'Howey', 'Hugh', 3, 1975),
(585, 'Sarkozy', 'Nicolas', 1, 1955),
(586, 'Tchaikovsky', 'Adrian', 2, 1972),
(587, 'Lemaitre', 'Pierre', 1, 1951),
(588, 'Wellestein', 'Aurélie', 1, 1980),
(589, 'Henry', 'Loic', 1, 1971),
(590, 'Dicker', 'Joël', 7, 1985),
(591, 'Bry', 'David', 1, 1973),
(592, 'Garner', 'Lisa', 3, 1972),
(593, 'Tomas', 'Adrien', 1, 1986),
(594, 'Zola', 'Gordon', 1, 1964),
(595, 'Glukhovsky', 'Dmitry', 10, 1979),
(596, 'Bacigalupi', 'Paolo', 3, 1972),
(597, 'Dard', 'Frederic', 1, 1921),
(598, 'Le Guilcher', 'Geoffrey', 1, 1970),
(599, 'San', 'Antonio', 1, 1921),
(600, 'Carell', 'Paul', 5, 1911),
(601, 'Adler-Olsen', 'Jussi', 20, 1950),
(602, 'Villarroel', 'Gilberto', 21, 1964),
(603, 'Latil-Nicolas', 'Thibaut', 1, 1985),
(604, 'Denjean', 'Céline', 1, 1974),
(605, 'Vuklisevic', 'Chris', 1, 1992),
(606, 'Houellebecq', 'Michel', 1, 1956),
(607, 'Dewdney', 'Patrick', 1, 1984),
(608, 'Kristoff', 'Jay', 19, 1973);

INSERT INTO "livres_editeur" ("id", "nom", "adresse") VALUES
(1, 'Le Livre de Poche', '6, rue Pierre-Sarrazin - 75006 PARIS'),
(2, 'J''ai lu', '27, rue Cassette - 75006 PARIS'),
(3, 'Presses Pocket', '12, Avenue d''Italie - 75627 PARIS CEDEX 13'),
(4, 'Denoël - Présence du Fantastique', '19, rue de l''Université - 75017 PARIS'),
(5, 'Denoël - Présence du Futur', '19, rue de l''Université - 75017 PARIS'),
(6, 'Fleuve Noir', '12, Avenue d''Italie - 75627 PARIS - CEDEX 13'),
(7, 'Rivages / Fantasy', '106, Boulevard Saint-Germain - 75006 PARIS'),
(8, 'Denoël', '9, rue du Cherche-Midi - 75006 PARIS'),
(9, 'Denoël - Sueurs froides', '9, rue du Cherche-Midi - 75006 PARIS'),
(10, 'Fleuve Noir / Anticipation', '12, Avenue d''Italie - 75627 PARIS - CEDEX 13'),
(11, 'Gallimard - Série Noire', 'Gallimard'),
(12, 'Plon', 'Plon adr'),
(13, 'Denoël - Présence', '9, rue du Cherche Midi, 75006 PARIS'),
(14, 'Fleuve noir - Le dobermann', 'Fleuve noir'),
(15, 'Editions Gérard de Villiers', ''),
(16, 'Editions J.-C. Lattés - Titres S.F.', 'B.P. 85 - 75262 PARIS CEDEX 06'),
(17, 'J''ai lu - l''aventure mystérieuse', '27, rue Cassette - 75006 PARIS'),
(18, 'Club des masques', '17, rue de Marignan, 75017 PARIS'),
(19, 'Le masque - Librairie des Champs-Elysées', ''),
(20, 'Folio - Gallimard', ''),
(21, 'Fleuve noir - spécial police', ''),
(22, 'Fleuve noir - Super luxe', ''),
(23, 'Patrick Siry Editeur', '83 Avenue Paul-Doumer - 75016 PARIS'),
(24, 'Fleuve noir / Gore', '6, rue Garancière -Paris VIè'),
(25, 'Fleuve noir / Perry Rhodan', '6, rue Garancière -Paris VIè'),
(26, 'Albin Michel', ''),
(27, 'L''imaginaire Gallimard', ''),
(28, 'France Loisirs', '123, boulevard de Grenelle, Paris'),
(29, 'Marabout', ''),
(30, 'Edition de l''Aurore / Futurs', '4 boulevard des Alpes, 38240 MEYLAN'),
(31, 'Penguin books', '27 Wrights Lane, London W8 5TZ, England'),
(32, 'Headline Book', 'Headline House, 79 Great Titchfield Street, London W1P 7FN'),
(33, 'Editions Gérard de Villiers - Serial Killer', ''),
(34, 'Folio - Denoël', ''),
(35, '10/18', ''),
(36, 'Fernand Nathan', ''),
(37, 'Le masque fantastique', ''),
(38, 'Fleuve noir - Les classiques du crime', ''),
(39, 'Presses Pocket Terreur', '12, Avenue d''Italie - 75627 PARIS CEDEX 13'),
(40, 'L''Atalante', ''),
(41, 'Encrage', ''),
(42, 'La découverte', ''),
(43, 'Robert Laffont', ''),
(45, 'Calmann-Levy', ''),
(46, 'Opta', ''),
(47, 'Le Rocher', ''),
(48, 'le Seuil', ''),
(49, 'Philippe Olivier', ''),
(50, 'L''Aurore', ''),
(51, 'Le masque - Science fiction', ''),
(52, 'Fleuve noir - SF Metal', ''),
(53, 'Presses de la cité', ''),
(54, 'Fleuve noir - SF Space', ''),
(55, 'Fleuve Noir - SF Mystère', ''),
(56, 'Fleuve Noir - SF Legend', ''),
(57, 'J''ai lu millénaires', ''),
(58, 'Fleuve noir - Bibliothèque du fantastique', ''),
(59, 'Flammarion', ''),
(60, 'Bayard Jeunesse', ''),
(61, 'Abysses - Libraire des champs-elysées', ''),
(62, 'Mnémos', ''),
(63, 'Presses Pocket - Rendez vous ailleurs', ''),
(64, 'Folio - classique', ''),
(65, 'Hexagonal', ''),
(67, 'Folio - SF', ''),
(68, 'Belial', '77670 Saint Mammès'),
(69, 'Milady', ''),
(76, 'test', 'test'),
(77, 'Quercus', '??'),
(78, 'DAW Books', '---'),
(79, 'Sekoya', 'Besancon'),
(80, 'Ebook', 'ebook'),
(81, 'Hélios', 'bb'),
(82, 'Xo', 'paris'),
(83, 'Alire', 'Canada'),
(84, 'Leha', '41 rue Saint Augustin - 75002 PARIS'),
(85, 'Les moutons electriques', '--'),
(86, 'Babel', 'babel'),
(87, 'Les editions de l''observatoire', 'Paris'),
(88, 'Bragelonne', '1212'),
(89, 'Le léopard démasqué', 'Paris'),
(90, 'Texto', 'ff'),
(91, 'H&o Poche', '...');

INSERT INTO "livres_genre" ("id", "genre") VALUES
(1, 'Fantasy'),
(2, 'Science Fiction'),
(3, 'Policier'),
(4, 'Epouvante'),
(5, 'Fantastique'),
(6, 'Thriller'),
(7, 'Documentaire'),
(8, 'Aventure'),
(9, 'Gore'),
(10, 'Roman'),
(11, 'Delire'),
(12, 'Humour');

INSERT INTO "livres_illustrateur" ("id", "nom", "prenom", "nationalite_id") VALUES
(1, 'Shaw', 'Barclay', 3),
(2, 'Hay', 'Colin', 3),
(3, 'Kervéran', 'Jean-Yves', 1),
(4, 'Ziewe', 'Jürgen', 5),
(5, 'Jozelon', 'Philippe', 1),
(6, 'Foss', '', 12),
(7, 'Boris', '', 12),
(8, 'Moret', 'Pascal', 1),
(9, 'Kirby', 'Josh', 12),
(10, 'Bible Historiale de', 'Guiart des Moulins', 12),
(11, 'Siudmak', '', 3),
(12, 'Caza', '', 1),
(13, 'Manchu', '', 1),
(14, 'Non défini', '', 12),
(15, 'David', 'Bruno', 1),
(16, 'Van Fleet', 'John', 3),
(17, 'Whelan', 'Michael', 3),
(18, 'Faucheux', 'Pierre', 1),
(19, 'Grant', 'Donald', 3),
(20, 'Jamot/Barnole', '', 1),
(21, 'Grant', 'Donald', 3),
(22, 'Maitz', '', 12),
(23, 'Maitz', 'Don', 3),
(24, 'O''Connor', 'William', 3),
(25, 'Bakonyi', 'David', 1),
(26, 'Frot', 'Olivier', 1),
(27, 'Frazetta', '', 6),
(28, 'Francescano', 'G.', 1),
(29, 'Csernus', 'Tibor', 12),
(30, 'Delval', 'Julien', 1),
(32, 'Rerich', 'Nicolaï', 10),
(33, 'Nicollet', '', 1),
(34, 'Scala', 'Eric', 1),
(35, 'Graffet', 'Didier', 1);

INSERT INTO "livres_livres" ("id", "numEdition", "numEditeur_id", "anneePremiereEdition", "titre", "titreVo", "genre_id", "typeLivre_id", "dateSaisie", "collection", "dateDebutLecture", "dateFinLecture", "note", "illustrateur_id", "auteur_id", "image", "description", "commentaires", "serie", "num_serie", "dedicace", "emprunteur") VALUES
(1, 1903, 10, 1977, 'Magie sombre', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, 27, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 1921, 10, 1977, 'Les ratés', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 1925, 10, 1976, 'L''autoroute sauvage', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 1934, 10, 1976, 'La flûte de verre froid', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 1805, 10, 1991, 'Le monde d''en bas - "Troglo-blues" - 1', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 1815, 10, 1991, 'Les maîtres des souterrains - "Troglo-blues" - 2', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 1869, 10, 1992, 'Le monolithe noir', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 1873, 10, 1992, 'Métacentre', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 1336, 10, 1984, 'La nuit des insectes - Le cycle des insectes - 1', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 1356, 10, 1985, 'Osmose - Le cycle des insectes - 2', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 1415, 10, 1985, 'La semaine carnivore - Le cycle des insectes - 3', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 1904, 10, 1993, 'La falaise', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 1909, 10, 1993, 'Rézo', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 1861, 10, 1992, 'Le monde blanc', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 1872, 10, 1992, 'Elaï', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 1884, 10, 1992, 'Les peaux-épaisses', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 1865, 10, 1992, 'Le gymnase de l''ogre', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 1892, 10, 1992, 'Plug-In', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 1928, 10, 1993, 'Cobaye', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 1876, 10, 1992, 'Révélations interdites', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 1888, 10, 1992, 'La mandragore', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 1914, 10, 1993, 'Rawählpurgis', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 1880, 10, 1992, 'Labyrinth-Jungle', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 1896, 10, 1992, 'L''ombre et le fléau', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 1881, 10, 1992, 'Les compagnons de la lune blême', '', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 1885, 10, 1992, 'Deltas', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 1908, 10, 1993, 'Tremblemer', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 1438, 10, 1983, 'Equinoxe de cendre - Khanaor - 2', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 1308, 10, 1984, 'Les bannières de Persh', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 1323, 10, 1984, 'Dernier étage avant la frontière - Les ravisseurs d''éternité - 1', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 1359, 10, 1985, 'Le syndrome Karelmann - Les ravisseurs d''éternité - 2', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 1484, 10, 1986, 'Les hommes lézards - Les ravisseurs d''éternité - 3', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 1235, 10, 1983, 'City', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 1252, 10, 1983, 'Game over', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 1265, 10, 1983, 'Voyeur', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 1215, 10, 1983, 'Le chasseur', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 1088, 10, 1981, 'Angel Felina', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 1106, 10, 1981, 'Le pronostiqueur', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 1126, 10, 1982, 'Le champion des mondes', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 1144, 10, 1982, 'Blue', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 1160, 10, 1982, 'Masque de clown', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 1185, 10, 1982, 'Lilith', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 1466, 10, 1985, 'Les vautours', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 10, 12, 1987, 'Les tourmenteurs - Jag 10', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 8, 12, 1986, 'Les hommes Tritons - Jag 8', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 1845, 10, 1991, 'Demain une oasis', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 1871, 10, 1992, 'Le syndrome des baleines - Le chant du Drille - 1', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 1875, 10, 1992, 'Le mystère Lyphine - Le chant du Drille - 2', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 1886, 10, 1992, 'Cybione', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 1935, 10, 1994, 'Polytan', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 1763, 10, 1990, 'Ylvain, Rêve de vie - La Bohême et l''Ivraie - 1', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 1769, 10, 1990, 'Made, concerto pour Salmen et Bohême -  - La Bohême et l''Ivraie - 2', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 1775, 10, 1990, 'La Naïa, Hors limites - La Bohême et l''Ivraie - 3', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 1781, 10, 1990, 'Ely, L''esprit-miroir - La Bohême et l''Ivraie - 4', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 1183, 10, 1982, 'Les mangeurs de murailles', '', 2, 1, NULL, FALSE, '2008-05-25 00:00:00', '2008-06-01 00:00:00', 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 1190, 10, 1982, 'A l''image du dragon', '', 1, 1, NULL, FALSE, '2008-06-01 00:00:00', '2008-06-09 00:00:00', 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 1225, 10, 1983, 'Le puzzle de chair', '', 2, 1, NULL, FALSE, '2008-06-10 00:00:00', '2008-06-18 00:00:00', 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 1244, 10, 1983, 'Les semeurs d''abîmes', '', 2, 1, NULL, FALSE, '2008-12-07 00:00:00', '2008-12-13 00:00:00', 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 1251, 10, 1983, 'Territoire de fiêvre', '', 2, 1, NULL, FALSE, '2009-05-17 00:00:00', '2009-05-22 00:00:00', 0.0, 14, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 1257, 10, 1983, 'Les lutteurs immobiles', '', 2, 1, NULL, FALSE, '2009-11-04 00:00:00', '2009-11-08 00:00:00', 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 1275, 10, 1984, 'Les bêtes enracinées', '', 2, 1, NULL, FALSE, '2010-01-03 00:00:00', '2010-01-09 00:00:00', 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 1290, 10, 1984, 'Ce qui mordait le ciel...', '', 2, 1, NULL, FALSE, '2010-05-07 00:00:00', '2010-05-21 00:00:00', 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 1315, 10, 1984, 'Crache-Béton', '', 2, 1, NULL, FALSE, '2011-01-07 00:00:00', '2011-01-14 00:00:00', 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 1330, 10, 1984, 'Les foetus d''acier - Les soldats de goudron - 1', '', 2, 1, NULL, FALSE, '2011-03-10 00:00:00', '2011-03-19 00:00:00', 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 1366, 10, 1985, 'Ambulance cannibale non identifiée', NULL, 2, 1, '2026-06-01 00:00:00', TRUE, '2011-08-12 00:00:00', '2011-08-19 00:00:00', 0.0, NULL, 3, '', NULL, NULL, 'Les soldats de goudron', 2, '', NULL),
(70, 1382, 10, 1985, 'Le rire du lance-flamme  - Les soldats de goudron - 3', '', 2, 1, NULL, FALSE, '2011-08-20 00:00:00', '2011-08-29 00:00:00', 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 1399, 10, 1985, 'Rempart des naufrageurs  - Cycle des ouragans - 1', '', 2, 1, NULL, FALSE, '2011-11-20 00:00:00', '2011-12-08 00:00:00', 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 1414, 10, 1985, 'Abattoir - Opera  - Cycle des ouragans - 2', '', 2, 1, NULL, FALSE, '2011-12-08 00:00:00', '2011-12-25 00:00:00', 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 1424, 10, 1986, 'Naufrage sur une chaise électrique   - Cycle des ouragans - 3', '', 2, 1, NULL, FALSE, '2011-12-26 00:00:00', '2012-01-11 00:00:00', 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 1446, 10, 1986, 'Enfer vertical en approche rapide', NULL, 2, 1, '2026-06-05 00:00:00', TRUE, '2026-06-05 00:00:00', '2026-06-07 00:00:00', 3.0, NULL, 3, 'images/enfer_vertical.webp', 'C''était une prison sans barreaux, sans geôliers. On n''y rencontrait qu''un seul interlocuteur : un distributeur de sandwiches blindé comme un coffre-fort et plus intelligent qu''un ordinateur.
Un distributeur de sandwiches qui n''acceptait de vous donner à manger qu''en échange d''un petit sacrifice : recevoir une décharge électrique à travers le corps, par exemple.
C''était une curieuse machine, à la fois dieu et diable, conçue pour vous rendre la vie impossible et la mort insupportable. Une saleté de distributeur, qui finissait par régner en tyran sur ce bagne des plus moderne, et vous forçait à pratiquer l''autopunition à outrance.
Certains décidèrent de lui faire la guerre... Ils ne tardèrent pas à s''en repentir !', 'Roman très court. Des prisonniers sont dans une tour constituées de nombreux étages qui s''enfonce dans la boue au bout d''un certain temps. Les prisonniers doivent bouger pour ne pas finir solidifié dans cette boue ciment. Un distributeur a la fois dieu et totem permet à chacun de se nourrir mais il y un prix à payer : brulure au pouce puis mutilation (une phalange est coupée). David l''antagoniste de cette histoire aura la possibilité d''échapper de cet enfer : Renter dans le sas d''incinération pour y être mis en hibernation jusqu''à etre délivré quand l''épreuve sera terminée. Mais s''agit-il d''un piège ? La fin du roman laisse cette question en suspend, le héros rentrant dans le sas d''incinération. Brussolo a son habitude fait douter le lecteur comme son héros.', NULL, NULL, '', 'Marco'),
(75, 1464, 10, 1986, 'La colère des ténèbres', NULL, 2, 1, '2026-06-07 00:00:00', TRUE, '2026-06-07 00:00:00', '2026-06-14 00:00:00', 3.5, NULL, 3, 'images/la_colere_des_tenebres.webp', 'Jeune infirmier, David est muté dans une étrange clinique perdue au coeur d''une lande hantée par un loup-garou Les légendes les plus folles courent sur ce lieu coupé du monde.
Quel secret cache ce médecin-chef spécialisé dans le traitement de certaines affections psychosomatiques extrêmement rares ? Et qui sont ces malades dont les symptômes défient l''imagination ? Désireux d''en savoir plus, David va explorer la lande interdite... Il ne tardera pas à s''en repentir.', 'Une station balnéaire qui subit un épidémie de fragilité (les victimes se retrouvent avec des os cassant comme du verre. Des étrange sauterelles dures comme l''acier et sautant à la vitesse d''une balle. David sera entrainé dans une histoire de terrorisme avec des parfums surpuissants extraits de sauterelles qui tueront des centaines de riches.', NULL, NULL, '', NULL),
(76, 1475, 10, 1986, 'Danger, parking miné !', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 1491, 10, 1986, 'Catacombes', '', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 1517, 10, 1987, 'Docteur squelette', '', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 1537, 10, 1987, 'Opération "serrures carnivores"', NULL, 2, 1, '2026-06-01 00:00:00', TRUE, '2026-05-31 00:00:00', '2026-06-05 00:00:00', 4.0, NULL, 3, 'images/operation_serrures_carnivores.webp', 'Comment réussir un hold-up quand on s''attaque à un coffre-fort vivant, cannibale et, de surcroît, bâti comme la plus effroyable des machines de guerre ? Un thriller futuriste, biologique et anthropophage par le plus explosif des représentants de la science-fiction française.', 'Roman assez dingue et bien dans le délire et la noirceur de Brussolo.', 'Les soldats de goudron', 4, '', 'Marco'),
(80, 1551, 10, 1987, 'La nuit du venin', '', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 1572, 10, 1987, 'Les animaux funèbres', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 1594, 10, 1987, 'L''ombre des gnomes', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 1615, 10, 1988, 'Le voleur d''iceberg', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 1627, 10, 1988, 'Le tombeau du roi squelette', '', 1, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 1664, 10, 1989, 'Le dragon du roi squelette', '', 1, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 1882, 10, 1992, 'Rhinocérox', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 1894, 10, 1992, 'Capitaine suicide', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 1906, 10, 1993, 'Abîmes', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 1926, 10, 1993, 'De l''autre côté du mur des ténèbres', '', 5, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 1938, 10, 1994, 'Les sentinelles d''Almoha', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 1962, 10, 1995, 'Profession: Cadavre - Les brigades du chaos - 1', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, 841, 10, 1978, 'La légende des niveaux fermés', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 1191, 10, 1982, 'Les cages de Beltem', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 1686, 10, 1977, 'La croix des décastés', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 1710, 10, 1977, 'La mort en billes', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 1782, 10, 1978, 'L''ange aux ailes de lumière', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, 1821, 10, 1979, 'L''ïle brulée', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, 1843, 10, 1979, 'D''un lieu lointain nommé Soltrois', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, 1857, 10, 1979, 'La jungle de pierre', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, 1877, 10, 1980, 'Horlemonde', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 1887, 10, 1980, 'La porte des serpents', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 1919, 10, 1993, 'Déraag', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, 1931, 10, 1993, 'Envercoeur', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, 1889, 10, 1992, 'Penta', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, 1890, 10, 1992, 'Hors normes', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, 1893, 10, 1992, 'Les gardiennes d''espérance', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, 1897, 10, 1992, 'Mascarad city', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, 1898, 10, 1993, 'Aqua', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, 1933, 10, 1993, 'Cyberkiller', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, 1901, 10, 1993, 'Awacs', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, 1915, 10, 1993, 'Achéron', '', 5, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, 1902, 10, 1993, 'Les fruits sataniques', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, 1911, 10, 1973, 'Le visage derrière la nuit', '', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, 1912, 10, 1993, 'Roll over, Amundsen !', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, 1844, 10, 1991, 'Roche-Lalheue', '', 1, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, 1899, 10, 1993, 'Symphonie pastorale', '', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, 1907, 10, 1993, 'Les guerriers de glace', '', 1, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, 1841, 10, 1991, 'Chien bleu couronné', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, 1842, 10, 1991, 'Espion de l''étrange', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 37, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, 1847, 10, 1991, 'Cette crédille qui nous ronge', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, 1698, 10, 1972, 'La septième saison', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, 1732, 10, 1990, 'Le présent du fou - Les raconteurs de nulle part - 1', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, 1737, 10, 1990, 'Les forains du bord du gouffre - Les raconteurs de nulle part - 2', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, 1743, 10, 1990, 'Le ciel sous la pierre - Les raconteurs de nulle part - 3', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, 1750, 10, 1990, 'Les faucheurs du temps - Les raconteurs de nulle part - 4', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, 1840, 10, 1988, 'Les mondes furieux', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, 2555, 2, 1989, 'Le chant de Kali', 'Song of Kali', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, 42, 4, 1992, 'L''échiquier du mal - Tome 1', 'Carrion comfort', 5, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, 1970, 6, 1996, 'Promenade du bistouri - les brigades du chaos - 2', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, 0, 7, 1991, 'Imajica - Tome 1', 'Imajica', 5, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, 43, 4, 1992, 'L''échiquier du mal - Tome 2', 'Carrion comfort', 5, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, 44, 4, 1992, 'L''échiquier du mal - Tome 3', 'Carrion comfort', 5, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, 45, 4, 1992, 'L''échiquier du mal - Tome 4', 'Carrion comfort', 5, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, 0, 8, 1994, 'La moisson d''hiver', '', 6, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(139, 0, 9, 1982, 'Le nuisible', '', 6, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, 1042, 6, 1981, 'Tamkan le paladin', '', 1, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, 1523, 10, 1987, 'Building', '', 5, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(142, 1693, 10, 1989, 'Enfer et purgatoire', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(143, 1723, 10, 1989, 'Bronx Ceremonial - Le Commandeur - 1', '', 5, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(144, 1735, 10, 1990, 'The verb of Life - Le Commandeur - 2', '', 5, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(145, 1748, 10, 1990, 'Return of Emeth - Le Commandeur - 3', '', 5, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(146, 1759, 10, 1990, 'King of Ice - Le Commandeur - 4', '', 5, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, 1771, 10, 1990, 'Secret of Bashamay - Le Commandeur - 5', '', 5, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(148, 1783, 10, 1990, 'Evil Game - Le Commandeur - 6', '', 5, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(149, 1795, 10, 1991, 'Troll - Le Commandeur - 7', '', 5, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, 1810, 10, 1991, 'Apocalypse Junction - Le Commandeur - 8', 'Books of blood', 5, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(151, 1822, 10, 1991, 'Dark Spirit - Le Commandeur - 9', '', 5, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(152, 1835, 10, 1991, 'Le fouilleur d''âmes', '', 5, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(153, 1863, 10, 1992, 'L''oreille absolue', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(154, 2379, 11, 1995, 'Les racines du mal', '', 6, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(155, 1628, 10, 1988, 'Pour une poignée d''helix pomatias', '', 11, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(156, 1687, 10, 1989, 'Sylvana', '', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(157, 1833, 10, 1991, 'Le cimetierre des astronefs', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(158, 1851, 10, 1991, 'Orages en terre de France', '', 5, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(159, 1420, 10, 1983, 'Solstice de fer - Khanaor - 1', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(160, 1855, 10, 1992, 'La chimère infernale', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(161, 1867, 10, 1992, 'Le vaisseau-démon', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(162, 1033, 10, 1980, 'Soucoupes violentes', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 41, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(163, 1864, 10, 1992, 'Psychosphère', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 41, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(164, 0, 13, 1996, 'Ma vie chez les morts', '', 5, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(165, 33, 4, 1960, 'Carmilla', '', 5, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 42, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(166, 2, 5, 1954, 'Une étoile m''a dit', 'Space on my hands', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 43, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(167, 622, 2, 1974, 'La trace de Cthulhu', 'The trail of Cthulhu', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(168, 326, 5, 1981, 'Salut l''Amérique !', 'Hello America', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 44, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(169, 1496, 10, 1986, 'Le rêve du Vorkul', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(170, 1629, 10, 1988, 'Svastika - Le Monde de la Terre Creuse - 1', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(171, 1749, 10, 1990, 'Le dirigeable "certitude" - Le Monde de la Terre Creuse - 5', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(172, 1754, 10, 1990, 'Les fils du miroir fumant  - Le Monde de la Terre Creuse - 6', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(173, 1760, 10, 1990, 'Le peuple pâle - Le Monde de la Terre Creuse - 7', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(174, 1564, 2, 1983, 'La foudre au ralenti', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(175, 1140, 2, 1981, 'Kid Jésus', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(176, 1, 15, 1990, 'Cauchemar à louer', '', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(177, 2, 15, 1990, 'La meute', '', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(178, 3, 15, 1990, 'Crucifix', '', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(179, 4, 15, 1990, 'Les bêtes', '', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(180, 5, 15, 1990, 'L''èpave', '', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(181, 6, 15, 1990, 'Les emmurés', '', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(182, 7, 15, 1991, 'Les rêveurs d''ombre', '', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(183, 8, 15, 1991, 'Les démoniaques', '', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(184, 9, 15, 1991, 'Le vent noir', '', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(185, 10, 15, 1992, 'Les inhumains', '', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(186, 11, 15, 1982, 'Les mangeurs de murailles', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(187, 12, 15, 1992, 'L''armure maudite', '', 1, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(188, 60, 16, 1982, 'Traque-la-mort', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(189, 300, 5, 1980, 'Vue en coupe d''une ville malade', '', 2, 2, NULL, FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(190, 315, 5, 1981, 'Aussi lourd que le vent', '', 2, 2, NULL, FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(191, 334, 5, 1981, 'Sommeil de sang', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(192, 348, 5, 1982, 'Portrait du diable en chapeau melon', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(193, 359, 5, 1983, 'Le carnaval de fer', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(194, 447, 5, 1987, 'Procédure d''évacuation immédiate des musées fantômes', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(195, 453, 5, 1988, 'Le château d''encre', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(196, 501, 5, 1990, 'L''homme aux yeux de napalm', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(197, 526, 5, 1991, 'Le syndrome du scaphandrier', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(198, 2, 4, 1990, 'Boulevard des banquises', '', 5, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(199, 29, 4, 1989, 'La nuit du bombardier', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(200, 4, 5, 1954, 'La couleur tombée du ciel', 'The colour out of space', 4, 2, NULL, FALSE, NULL, NULL, 0.0, NULL, 46, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(201, 5, 5, 1954, 'Dans l''abîme du temps', 'The shadow out of time', 4, 2, NULL, FALSE, NULL, NULL, 0.0, NULL, 46, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(202, 45, 5, 1961, 'Je suis d''ailleurs', 'The outsider', 4, 2, NULL, FALSE, NULL, NULL, 0.0, NULL, 46, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(203, 1, 5, 1955, 'Chroniques martiennes', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 47, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(204, 8, 5, 1955, 'Fahrenheit 451', 'Fahrenheit 451', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 47, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(205, 10, 5, 1954, 'Je suis une légende', 'I am legend', 5, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(206, 18, 5, 1971, 'L''homme qui rétrécit', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(207, 17, 5, 1957, 'Martiens, go home !', 'Martiens, go home !', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 43, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(208, 65, 5, 1963, 'Fantômes et farfafouilles', 'Nightmares and geezenstacks', 2, 2, NULL, FALSE, NULL, NULL, 0.0, NULL, 43, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(209, 33, 5, 1959, 'Le diable l''emporte', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 49, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(210, 68, 5, 1961, 'Le monde aveugle', 'Dark universe', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(211, 74, 5, 1962, 'Le monde englouti', 'The drowned world', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 44, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(212, 98, 5, 1966, 'La forêt de cristal', 'The crystal world', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 44, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(213, 82, 5, 1963, 'Cauchemar à quatre dimensions', 'The four-dimensional nightmare', 2, 2, NULL, FALSE, NULL, NULL, 0.0, NULL, 44, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(214, 89, 5, 1951, 'Fondation', 'Fundation', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(215, 95, 5, 1964, 'Barbe-Grise', 'Grey beard', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(216, 146, 5, 1972, 'Oms en série', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 53, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(217, 147, 5, 1970, 'La ferme aux organes', 'The organ bank farm', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 54, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(218, 171, 5, 1963, 'L''homme tombé du ciel', 'The man who fell to earth', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(219, 297, 5, 1980, 'La guerre olympique', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(220, 310, 5, 1980, 'L''oreille contre les murs (présenté par J.P. Andrevon)', '', 2, 3, NULL, FALSE, NULL, NULL, 0.0, NULL, 198, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(221, 486, 5, 1989, 'Argentine', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(222, 346, 5, 1982, 'Furia!', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(223, 728, 2, 1977, 'Les barreaux de l''Eden', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(224, 773, 2, 1977, 'Delirium Circus', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(225, 1048, 2, 1980, 'Parabellum tango', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(226, 7103, 1, 1966, 'Mensonges et Cie', 'Lies, inc', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(227, 7136, 1, 1991, 'Les pantins cosmiques', 'The cosmic puppets', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(228, 547, 2, 1955, 'Loterie solaire', 'Solar lottery', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(229, 563, 2, 1965, 'Dr. Bloodmoney', 'Doctor Bloodmoney or how we got along after the bomb', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(230, 633, 2, 1969, 'Ubik', 'Ubik', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(231, 774, 2, 1970, 'Au bout du labyrinthe', 'A maze of death', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(232, 879, 2, 1964, 'Les clans de la lune alphane', 'Clans of the alphane moon', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(233, 2011, 2, 1983, 'Les voies d''Anubis', 'The anubis gates', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 58, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(234, 2325, 2, 1984, 'Neuromancien', 'Neuromancer', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(235, 1341, 2, 1982, 'Je suis une herbe', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(236, 1814, 2, 1980, 'Les pilotes de la Grande Porte - Le cycle des Heechees - 2', 'Beyond the blue event horizon', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 61, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(237, 2224, 2, 1967, 'Conan l''usurpateur', 'Conan the usurper', 1, 3, '1999-01-01 00:00:00', FALSE, '2003-10-14 00:00:00', '2003-10-24 00:00:00', 0.0, NULL, 62, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(239, 721, 2, 1968, 'Le Chasch - Cycle de Tschaï - 1', 'City of the Chasch', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 63, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(240, 722, 2, 1969, 'Le Wankh - Cycle de Tschaï - 2', 'Servants of the Wankh', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 63, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(241, 723, 2, 1969, 'Le Dirdir - Cycle de Tschaï - 3', 'The Dirdir', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 63, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(242, 724, 2, 1970, 'Le Pnume - Cycle de Tschaï - 4', 'The Pnume', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 63, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(243, 1304, 2, 1979, 'Les fontaines du paradis', 'The fountains of paradise', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 65, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(244, 830, 2, 1974, 'Avant l''Eden', 'The nine billion names of God', 2, 2, NULL, FALSE, NULL, NULL, 0.0, NULL, 65, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(245, 1047, 2, 1973, 'Rendez-vous avec Rama', 'Rendez-vous with Rama', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 65, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(246, 362, 2, 1945, 'Le monde des A', 'The world of A', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 66, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(247, 381, 2, 1940, 'A la poursuite des Slans', 'Slan', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 66, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(248, 392, 2, 1939, 'La faune de l''espace', 'The voyage of the space beagle', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 66, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(249, 397, 2, 1948, 'Les joueurs du A', 'The players of A', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 66, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(250, 496, 2, 1969, 'Destination univers', 'Destination universe !', 2, 2, NULL, FALSE, NULL, NULL, 0.0, NULL, 66, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(251, 529, 2, 1945, 'Créateur d''univers', 'Universe maker', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 66, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(252, 659, 2, 1974, 'L''homme multiplié', 'The man with a thousand names', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 66, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(253, 813, 2, 1977, 'Invasion galactique', 'Supermind', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 66, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(254, 1082, 2, 1965, 'Les monstres', 'Monsters', 2, 2, NULL, FALSE, NULL, NULL, 0.0, NULL, 66, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(255, 1962, 2, 1986, 'Marilyn Monroe et les samouraïs du père Noël', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 67, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(256, 355, 2, 1953, 'Les plus qu''humains', 'More than human', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 68, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(257, 1677, 2, 1984, 'Malpertuis', '', 5, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 69, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(258, 410, 2, 1941, 'L''affaire Charles Dexter Ward', '', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 46, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(259, 459, 2, 1969, 'Dagon', '', 4, 2, NULL, FALSE, NULL, NULL, 0.0, NULL, 46, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(260, 821, 2, 1957, 'L''ombre venue de l''espace', 'The survivor and others', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(261, 2306, 3, 1975, 'Légendes du mythe de Cthulhu', '', 4, 3, NULL, FALSE, NULL, NULL, 0.0, NULL, 46, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(262, 2259, 3, 1975, 'L''horreur dans le musée', '', 4, 3, NULL, FALSE, NULL, NULL, 0.0, NULL, 46, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(263, 2324, 3, 1958, 'Le masque de Cthulhu', 'The mask of Cthulhu', 4, 2, NULL, FALSE, NULL, NULL, 0.0, NULL, 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(264, 5276, 3, 1972, 'Elric des Dragons', 'Elric of Melniboné', 1, 1, '2026-03-23 00:00:00', TRUE, '2026-03-19 00:00:00', '2026-03-25 00:00:00', 3.0, NULL, 70, 'images/elric_des_dragons.jpg', 'Le récit suit Elric de Melniboné, le dernier empereur de sa race, qui est albinos, physiquement faible et dépendant de drogues pour survivre.  Contrairement à ses compatriotes cruels, Elric possède une nature plus douce et rêve de justice. Face à la menace qui pèse sur son empire, il conclut un pacte avec le Seigneur du Chaos, Arioch. 

Ce pacte le conduit à embarquer sur le Navire des Terres et des Mers vers la cité pestilentielle de Dhozkam.  Là, son destin le pousse à franchir la Porte des Ténèbres, où l''attendent deux épées noires, dont Stormbringer, qui changeront à jamais le cours de son existence et celui du monde', 'Premier tome du cycle d''Elric. Ici Moorcock pose les bases de son cycle : un anti héros tourmenté et manipulé par le destin. Le roman est court, se lit vite mais reste intéressant.', 'Le cycle d''Elric', 1, '', NULL),
(265, 5292, 3, 1976, 'Le navigateur sur les mers du destin', 'The sailor on the seas of fate', 1, 1, '2026-03-29 00:00:00', TRUE, '2026-03-26 00:00:00', '2026-04-06 00:00:00', 3.0, NULL, 70, 'images/Le_navigateur_sur_les_mers_du_destin.jpg', 'Le Navigateur sur les mers du destin, suit le prince albinos exilé qui, pourchassé dans les Jeunes Royaumes, est recueilli par un mystérieux navire voguant sur une mer surnaturelle entre les dimensions.

L''œuvre, structurée en trois novellas distinctes, relate les aventures d''Elric à travers le temps et l''espace :

Cap sur l''avenir : Elric rejoint l''équipage du capitaine aveugle aux côtés de trois autres incarnations du Champion Éternel (Corum, Erekosë et Hawkmoon) pour accomplir une mission dans la cité de Tanelorn et vaincre deux sorciers menaçant le multivers. 
Cap sur le présent : Après sa séparation du groupe, Elric fait la connaissance du comte Smiorgan et affronte diverses épreuves, dont la quête de la porte pourpre le menant vers sa réalité d''origine. 
Cap sur le passé : Le héros voyage vers une cité oubliée pour découvrir les origines de son peuple, Melniboné, y rencontrant des entités anciennes comme le géant de jade et l''Être Condamné à Vivre.', NULL, 'Le cycle d''Elric', 2, '', NULL),
(266, 5170, 3, 1977, 'Elric le nécromancien- Le cycle d''Elric - 3', 'The weird of the white wolf', 1, 1, '2026-04-11 00:00:00', TRUE, '2026-04-07 00:00:00', '2026-04-14 00:00:00', 0.0, NULL, 70, 'images/elric_le_necromancien.jpg', 'Elric le nécromancien (titre original : The Weird of the White Wolf) est un recueil de nouvelles d''heroic fantasy écrit par Michael Moorcock, publié en France en 1977.  Il fait partie du Cycle d''Elric et met en scène Elric de Melniboné, dernier empereur albinos d''un empire sorcier en déclin. 

Le livre contient quatre récits indépendants qui couvrent deux âges du monde :

Le Songe du comte Aubec : Un prologue ne mettant pas en scène Elric, racontant l''exploit de Malador qui marque le début de l''Âge des Hommes et prépare la chute future de Melniboné. 
La Cité qui rêve : Elric mène un raid de pirates sur Imrryr, la capitale de Melniboné.  Cette conquête entraîne la réveil des dragons, la chute de l''Empire et la mort accidentelle de son amour, Cymoril, causée par son épée maudite, Stormbringer.
Tandis que rient les dieux : Elric part à la recherche du Livre des Dieux Morts pour tenter de briser sa malédiction et la dépendance envers Stormbringer. 
La Citadelle qui chante : Elric rencontre pour la première fois les personnages récurrents Theleb K''aarna et Yishana, et affronte une tour du Chaos. 
Ce tome marque un tournant tragique dans la saga, transformant Elric d''un souverain en un vagabond maudit, hanté par le remords et voué à ne jamais trouver la paix.', NULL, NULL, NULL, '', NULL),
(267, 5176, 3, 1977, 'La sorcière dormante- Le cycle d''Elric - 4', 'The sleeping sorceress', 1, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 70, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(268, 5183, 3, 1977, 'L''épée noire- Le cycle d''Elric - 5', 'The bane of the black sword', 1, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 70, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(269, 5185, 3, 1977, 'Stormbringer- Le cycle d''Elric - 6', 'Stormbringer', 1, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 70, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(270, 3203, 2, 1979, 'Marche ou crève', 'The long walk', 6, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(271, 1197, 2, 1977, 'Shining', 'The shining', 5, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(272, 1590, 2, 1981, 'Cujo', 'Cujo', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(273, 2089, 2, 1980, 'Charlie', 'Firestarter', 5, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(274, 2266, 2, 1983, 'Simetierre', 'Pet sematary', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(275, 2326, 2, 1978, 'Le fléau', 'The stand', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(276, 2435, 2, 1984, 'La peau sur les os', 'Thinner', 6, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(277, 2578, 2, 1985, 'Brume - Paranoïa', 'Skeleton crew', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(278, 2579, 2, 1985, 'Brume - La Faucheuse', 'Skeleton crew', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(279, 2892, 2, 1986, 'Ca - Tome 1', 'It', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(280, 2893, 2, 1986, 'Ca - Tome 2', 'It', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(281, 2894, 2, 1986, 'Ca - Tome 3', 'It', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(282, 2974, 2, 1981, 'Chantier', 'Roadwork', 6, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283, 3112, 2, 1987, 'Misery', 'Misery', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(284, 3817, 2, 1991, 'Bazaar - Tome 1', 'Needful things', 5, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(285, 3818, 2, 1991, 'Bazaar - Tome 2', 'Needful things', 5, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(286, 2390, 2, 1986, 'La lune affamée', 'The hungry moon', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(287, 2057, 2, 1984, 'Le rideau de ténèbres', 'Darkfall', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(288, 2166, 2, 1977, 'Le visage de la peur', 'The face of fear', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(289, 3005, 2, 1986, 'Les étrangers', 'Strangers', 5, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(290, 3072, 2, 1987, 'Les yeux foudroyés', 'Twilight eyes', 5, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(291, 2152, 2, 1984, 'L''horreur du métro', 'Night train', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 73, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(292, 3422, 2, 1990, 'Les loups-garous de Londres', 'Werewolves of London', 5, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 74, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(293, 9615, 1, 1991, 'Les fourmis', '', 5, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 75, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(294, 0, 17, 1923, 'Les maisons hantées', '', 5, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 78, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(295, 7022, 1, 1973, 'Les insectes de feu', 'The Hephaestus plague', 5, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 76, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(296, 7086, 1, 1981, 'Radix', 'Radix', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 77, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(297, 3779, 1, 0, 'Histoires d''envahisseurs', '', 2, 3, NULL, FALSE, NULL, NULL, 0.0, NULL, 161, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(298, 3783, 1, 0, 'Histoires de la 4ème dimension', '', 2, 3, NULL, FALSE, NULL, NULL, 0.0, NULL, 47, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(299, 3763, 1, 0, 'Histoires d''extraterrestres', '', 2, 3, NULL, FALSE, NULL, NULL, 0.0, NULL, 68, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(300, 3765, 1, 0, 'Histoires de cosmonautes', '', 2, 3, NULL, FALSE, NULL, NULL, 0.0, NULL, 179, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(301, 3772, 1, 0, 'Histoires de voyages dans le temps', '', 2, 3, NULL, FALSE, NULL, NULL, 0.0, NULL, 161, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(302, 4701, 1, 1966, 'Le seigneur des anneaux - Tome 2', 'The Lord of the rings', 1, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 79, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(303, 4702, 1, 1966, 'Le seigneur des anneaux - Tome 3', 'The Lord of the rings', 1, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 79, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(304, 486, 2, 1937, 'Bilbo le hobbit', 'The hobbit', 1, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 79, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(305, 495, 2, 1969, 'L''homme dans le labyrinthe', 'The man in the maze', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(306, 595, 2, 1975, 'Le ressac de l''espace', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 81, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(307, 117, 18, 1970, 'Mr Parker Pyne', 'Parker Pyne investigates', 3, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 82, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(308, 218, 18, 1973, 'Le secret de chimneys', 'The secret of Chimneys', 3, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 82, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(309, 100, 18, 1932, 'La mystèrieuse affaire de styles', 'The mysterious affair of styles', 3, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 82, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(310, 78, 18, 1952, 'Jeux de glaces', 'They do it with mirrors', 3, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 82, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(311, 402, 18, 1939, 'Dix petits nègres', 'Ten little niggers', 3, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 82, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(312, 9048, 39, 1989, 'Démences', 'Walkers', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 64, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(313, 9003, 39, 1983, 'Le démon des morts', 'The pariah', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 64, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(314, 415, 18, 1926, 'Le meurtre de Roger Ackroyd', 'The murder of Roger Ackroyd', 3, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 82, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(315, 128, 18, 1935, 'La mort dans les nuages', 'Death in the clouds', 3, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 82, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(316, 337, 18, 1934, 'Le crime de l''Orient-Express', 'Murder in the Orient Express', 3, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 82, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(317, 253, 18, 1971, 'Némésis', 'Nemesis', 3, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 82, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(318, 94, 18, 1936, 'Le miroir du mort', 'Dead man''s mirror', 3, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 82, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(319, 44, 18, 1958, 'Le train de 16h50', '4-50 from Paddington', 3, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 82, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(320, 0, 19, 1977, 'Le nez dans la luzerne', '', 3, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 83, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(321, 1630, 1, 1956, 'Le chien des Baskerville', '', 3, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 82, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(322, 2224, 3, 1965, 'Les choses', '', 10, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(323, 417, 20, 1922, 'Silbermann', '', 10, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 88, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(324, 7, 20, 1952, 'Le vieil homme et la mer', '', 8, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 89, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(325, 961, 20, 1943, 'Le passe-muraille', '', 5, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(326, 1, 14, 1984, 'Dix de der', '', 3, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(327, 2, 14, 1984, 'Bille en tête', '', 3, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(328, 3, 14, 1984, 'Comme un rat', '', 3, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(329, 5, 14, 1985, 'Bras de fer', '', 3, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(330, 1725, 21, 1982, 'Le Dobermann et le Cobra', '', 3, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(331, 1, 22, 1974, 'Suicide', '', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(332, 13, 22, 1975, 'Brouillards', '', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 92, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(333, 9093, 39, 1990, 'La nuit des salamandres', '', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 64, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(334, 1635, 10, 1988, 'Seigneur des runes - Le Monde de la Terre Creuse - 2', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(335, 1640, 10, 1988, 'Sur l''épaule du grand dragon - Le Monde de la Terre Creuse - 3', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(336, 1377, 10, 1985, 'Le semeur d''ombres', '', 2, 1, '1997-01-01 00:00:00', FALSE, '2004-11-20 00:00:00', '2004-11-26 00:00:00', 0.0, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(337, 80, 22, 1973, 'La peau de l''orage', '', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 92, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(338, 121, 22, 1973, 'Mecanic jungle', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 92, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(339, 161, 22, 1974, 'Le dieu truqué', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 92, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(340, 6, 23, 1988, 'Une jeune fille au sourire fragile', '', 5, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(341, 2, 24, 1985, 'L''autoroute du massacre', '', 9, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(342, 14, 24, 1985, 'L''écho des suppliciés', '', 9, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(343, 1, 25, 1966, 'Opération astrée', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 93, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(344, 2, 25, 1966, 'La terre a peur', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 93, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(345, 3, 25, 1966, 'La milice des mutants', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 93, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(346, 4, 25, 1966, 'Bases sur Vénus', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 93, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(347, 246, 20, 1959, 'La machine à remonter le temps', 'The time machine', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 94, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(348, 0, 53, 1984, 'Starfighter', 'The last starfighter', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 95, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(349, 9107, 39, 1990, 'Le lien maléfique', 'The witching hour', 5, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 96, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(350, 9031, 39, 1976, 'Entretien avec un vampire', 'Interview with the vampire', 5, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 96, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(351, 9023, 39, 1985, 'Lestat le vampire', 'The vampire Lestat', 5, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 96, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(352, 9076, 39, 1989, 'La momie', 'The mummy', 5, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 96, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(353, 9016, 39, 1975, 'Salem', 'Salem''s lot', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(354, 9072, 39, 1989, 'La part des ténèbres', 'The dark half', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(355, 9030, 39, 1975, 'Manitou', 'The Manitou', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 64, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(356, 9077, 39, 1977, 'Le djinn', 'The djinn', 5, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 64, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(357, 9117, 39, 1990, 'Apparition', 'Apparition', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 64, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(358, 0, 26, 1982, 'Running man', 'Running man', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(359, 215, 27, 1969, 'La disparition', '', 10, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(360, 0, 12, 0, 'Le meilleur des mondes', 'Brave new world', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 97, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(361, 0, 26, 1981, 'Mon ennemi, mon frère', 'Brotherly love', 6, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 98, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(362, 0, 28, 1981, 'L''empereur-dieu de Dune', 'God emperor of Dune', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(363, 0, 3, 1965, 'Dune', 'Dune', 2, 1, '2023-11-12 00:00:00', TRUE, '2023-11-12 00:00:00', '2023-12-12 00:00:00', 4.5, NULL, 99, 'images/dune_t1.jpg', NULL, NULL, NULL, NULL, '', NULL),
(364, 0, 28, 1965, 'Le messie de Dune', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(365, 0, 28, 1976, 'Les enfants de Dune', 'The children of Dune', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(366, 0, 28, 1966, 'Le seigneur des anneaux', 'The Lord of the rings', 1, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 79, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(367, 7151, 1, 1971, 'Le monde du Fleuve', 'To your scattered bodies go', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(368, 7152, 1, 1971, 'Le bateau fabuleux', 'The fabulous riverboat', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(369, 7153, 1, 1977, 'Le noir dessein', 'The dark design', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(370, 7157, 1, 1980, 'Le labyrinthe magique', 'The magic labyrinth', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(371, 7159, 1, 1983, 'Les dieux du fleuve', 'Gods of Riverworld', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(372, 5156, 3, 1957, 'Guêpe', 'Wasp', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 101, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(373, 5194, 3, 1970, 'Epées et démons - Le cycle des épées - 1', 'Swords and deviltry', 1, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 102, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(374, 5204, 3, 1970, 'Epées et mort - Le cycle des épées - 2', 'Swords against death', 1, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 102, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(375, 5213, 3, 1968, 'Epées et brumes - Le cycle des épées - 3', 'Swords in the mist', 1, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 102, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(376, 6633, 1, 1980, 'La métamorphose', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 103, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(377, 232, 29, 1960, 'La patrouille du Temps', 'Guardians of Time', 2, 2, NULL, FALSE, NULL, NULL, 0.0, NULL, 104, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(378, 349, 29, 1970, 'La guerre des mouches', '', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 105, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(379, 5, 30, 1988, 'Achéron', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(380, 0, 31, 1992, 'The tale of the body thief', 'The tale of the body thief', 5, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 96, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(381, 0, 32, 1991, 'Summer of night', 'Summer of night', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(382, 491, 5, 1988, 'Métrophage', 'Métrophage', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 106, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(383, 13717, 1, 1994, 'Le chien de minuit', '', 3, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(384, 2157, 19, 1993, 'Armés et dangereux', '', 3, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(385, 2219, 19, 1995, 'Conan Lord - Carnets secrets d''un cambrioleur', '', 3, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(386, 1, 33, 1993, 'Derelict', '', 6, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(387, 2, 33, 1993, 'Sécurité absolue', '', 6, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(388, 3, 33, 1993, 'Bunker', '', 6, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(389, 812, 3, 1968, 'La nuit des temps', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 49, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(390, 485, 34, 1958, 'Le voyageur imprudent', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 49, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(391, 238, 34, 1943, 'Ravage', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 49, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(392, 115, 35, 1963, 'L''écume des jours', '', 10, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 107, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(393, 822, 20, 1950, '1984', 'Nineteen eighty-four', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 108, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(394, 0, 36, 1981, 'Les sentinelles d''Almoha', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(395, 7173, 1, 1995, 'La trace des rêves', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 56, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(396, 1575, 6, 1987, 'La haine du Vorkul', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(397, 1294, 6, 1984, 'Demain matin, au chant du tueur !', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(398, 29, 37, 1978, 'La maison de chair', 'Charnel house', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 64, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(399, 1725, 10, 1989, 'Désirs cruels', '', 5, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(400, 5231, 3, 1968, 'Epées et sorciers - Le cycle des épées - 4', 'Swords against wizardry', 1, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 102, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(401, 2174, 19, 1994, 'Le visiteur sans visage', '', 3, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(402, 1769, 21, 1983, 'Du suif pour le Dobermann', '', 3, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(403, 1643, 21, 1981, 'Le Dobermann et le phénix', '', 3, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(404, 0, 38, 1981, 'Le Dobermann américain', '', 3, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(405, 9057, 39, 1988, 'La Reine des Damnés', 'The Queen of the Damned', 5, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 96, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(406, 0, 10, 1988, 'Le diable à quatre', '', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(407, 1194, 10, 1983, 'Planeta non grata', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(408, 1793, 21, 1983, 'Faites pas pleurer le Dobermann !', '', 3, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(409, 1995, 19, 1995, 'La main froide', '', 3, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(410, 9017, 39, 1985, 'Le portrait du mal', 'Family portrait', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 64, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(411, 1830, 10, 1991, 'L''écume du passé - Le Monde de la Terre Creuse - 9', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(412, 3690, 2, 1984, 'Une course d''enfer - Livre de sang - 2', 'Books of blood', 4, 2, NULL, FALSE, NULL, NULL, 0.0, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(413, 2452, 2, 1984, 'Livre de sang', 'Books of blood', 4, 2, NULL, FALSE, NULL, NULL, 0.0, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(414, 13998, 1, 1992, 'L''homme nu', 'The hollow man', 5, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(415, 9084, 39, 1989, 'L''heure du loup', 'The Wolf''s Hour', 5, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 109, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(416, 5578, 3, 1989, 'Hypérion - 1', 'Hyperion', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(417, 5579, 3, 1989, 'Hypérion - 2', 'Hyperion', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(418, 9033, 39, 1979, 'Ghost story', 'Ghost story', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 111, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(419, 9051, 39, 1988, 'Faërie', 'Faerie tale', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 110, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(420, 3745, 2, 1984, 'Confessions d''un linceul - Livre de sang - 3', 'Books of blood', 4, 2, NULL, FALSE, NULL, NULL, 0.0, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(421, 9015, 39, 1977, 'Miroirs de sang', 'The vision', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(422, 1441, 10, 1986, 'Le chant du Vorkul', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(423, 4008, 2, 1985, 'Apocalypses - Livre de sang - 4', '', 4, 2, NULL, FALSE, NULL, NULL, 0.0, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(424, 4065, 2, 1985, 'Prison de chair  - Livre de sang - 5', 'Books of blood', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(425, 4202, 2, 1985, 'La mort, sa vie, son oeuvre  - Livre de sang - 6', 'Books of blood', 4, 2, NULL, FALSE, NULL, NULL, 0.0, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(426, 0, 7, 1991, 'Imajica - Tome 2', 'Imajica', 5, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(427, 1, 6, 1980, 'La compagnie des glaces - La compagnie des glaces - 1', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(428, 1, 6, 1980, 'Le sanctuaire des glaces - La compagnie des glaces - 2', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(429, 1, 6, 1981, 'Le peuple des glaces - La compagnie des glaces - 3', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(430, 1, 6, 1981, 'Les chasseurs de glace - La compagnie des glaces - 4', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(431, 5580, 3, 1990, 'La chute d''Hypérion - 1', 'The fall of Hyperion', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(432, 5581, 3, 1990, 'La chute d''Hypérion - 2', 'The fall of Hyperion', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(433, 832, 10, 1978, 'Les voies d''Almagiel', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(434, 970, 10, 1980, 'Virgules téléguidées', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 92, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(435, 102, 22, 1972, 'L''enfant qui marchait sur le ciel', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 92, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(437, 4279, 2, 1996, 'Ayerdhal présente Genèses', '', 2, 3, NULL, FALSE, NULL, NULL, 0.0, NULL, 118, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(438, 512, 5, 1990, 'Le temps du twist', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(439, 5409, 3, 1964, 'Simulacres', 'The simulacra', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(440, 0, 40, 1993, 'Les guerriers du silence', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 114, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(441, 1402, 10, 1985, 'Lumière d''abîme', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(442, 2610, 2, 1985, 'Le palais du déviant', 'Dinner at Deviant''s palace', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 58, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(447, 7021, 1, 1959, 'Le temps désarticulé', 'Time out of joint', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(448, 1209, 2, 1957, 'L''œil dans le ciel', 'Eye in the sky', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(449, 7000, 1, 1966, 'En attendant l''année dernière', 'Now wait for last year', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(450, 1067, 2, 1967, 'Les machines à illusions', 'The Ganymede takeover', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(451, 856, 2, 1969, 'Jack Barron et l''éternité', 'Bug Jack Barron', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 124, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(452, 4159, 2, 1996, 'Inner city', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(453, 1320, 10, 1984, 'Le viêt-nam au futur simple', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(454, 9139, 39, 1983, 'Tengu', 'Tengu', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 64, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(455, 5656, 3, 1993, 'Manhattan Transfert', 'Manhattan Transfert', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 160, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(456, 2371, 2, 1988, 'Sur des mers plus ignorées...', 'On stranger tides', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 58, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(457, 2000, 10, 1997, 'Wonderland', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 116, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(458, 2, 6, 1981, 'L''enfant des Glaces  - La compagnie des glaces - 5', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(459, 2, 6, 1981, 'Les otages des Glaces  - La compagnie des glaces - 6', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(460, 2, 6, 1982, 'Le Gnome halluciné  - La compagnie des glaces - 7', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(461, 2, 6, 1982, 'La compagnie de la banquise  - La compagnie des glaces - 8', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(462, 7118, 1, 1973, 'Le temps incertain', '', 2, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 115, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(463, 9049, 39, 1987, 'Le miroir de Satan', 'Mirror', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 64, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(464, 2181, 2, 1983, 'Le couteau sacrificiel', 'Familiar spirit', 4, 1, NULL, FALSE, NULL, NULL, 0.0, NULL, 220, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(465, 94, 51, 1976, 'Ne mords pas le soleil', 'Don''t bite the sun', 2, 1, '1997-06-01 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 221, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(466, 1020, 2, 1974, 'L''homme à rebours', '', 2, 1, '1997-06-01 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 81, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(467, 5386, 3, 1977, 'La grande porte - Le cycle des Heechees - 1', 'Gateway', 2, 1, '1997-06-01 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 61, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(468, 5, 52, 1997, 'La cicatrice du Chaos - Les brigades du chaos - 3', '', 2, 1, '1997-06-01 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(470, 14086, 1, 1993, 'La route obscure', '', 10, 1, '1997-06-01 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(471, 14120, 1, 1992, 'Les fils des ténèbres', 'Children of the night', 4, 1, '1997-06-01 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(472, 0, 6, 1996, 'F.A.U.S.T.', '', 2, 1, '1997-06-01 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 116, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(473, 0, 19, 1997, 'Le château des poisons', '', 5, 1, '1997-06-01 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(474, 252, 5, 1977, 'Substance mort', 'A scanner darkly', 2, 1, '1997-06-01 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(475, 1645, 10, 1988, 'Les hérétiques du vril - le Monde de la Terre Creuse - 4', '', 2, 1, '1997-06-01 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(476, 1858, 10, 1992, 'Voleurs de silence', '', 2, 1, '1997-06-01 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(477, 314, 5, 1980, 'Stalker, pique-nique au bord du chemin', 'Piknik na obotchine', 2, 1, '1997-06-01 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 141, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(478, 9018, 39, 1978, 'Le jour J du jugement', 'The devils of D-Day', 4, 1, '1997-06-01 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 64, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(479, 11, 54, 1997, 'Equilibre', '', 2, 1, '1997-07-14 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(480, 14168, 1, 1993, 'L''Amour, la Mort', 'Lovedeath', 5, 2, '1997-07-14 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(481, 17007, 1, 1996, 'La fille de la nuit', '', 6, 1, '1997-07-14 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(482, 3, 6, 1982, 'Le réseau de Patagonie - La compagnie des glaces - 9', '', 2, 1, '1997-07-14 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(483, 3, 6, 1982, 'Les voiliers du rail - La compagnie des glaces - 10', '', 2, 1, '1997-07-14 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(484, 3, 6, 1983, 'Les fous du soleil - La compagnie des glaces - 11', '', 2, 1, '1997-07-14 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(485, 3, 6, 1983, 'Cancer Network - La compagnie des glaces - 12', '', 2, 1, '1997-07-14 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(486, 1091, 10, 1981, 'Les hommes-processeurs', '', 2, 1, '1997-07-14 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 115, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(487, 1779, 10, 1990, 'Rasalgethi - La saga d''Oap Tâo - 1', '', 2, 1, '1997-07-14 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(488, 0, 6, 1996, 'Les défenseurs - F.A.U.S.T. - 2', '', 2, 1, '1997-07-14 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 116, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(489, 1650, 10, 1976, 'Les hommes marqués', '', 2, 1, '1997-07-27 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(491, 9118, 39, 1987, 'Le royaume des devins', 'Weave world', 4, 1, '1997-07-27 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(492, 2961, 34, 1993, 'Horlemonde', '', 5, 1, '1997-07-27 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(493, 0, 6, 1997, 'Tonnerre lointain - F.A.U.S.T. - 3', '', 2, 1, '1997-07-27 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 116, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(494, 2251, 19, 1995, 'Conan Lord - Le pique-nique du crocodile', '', 3, 1, '1997-08-02 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(497, 0, 8, 0, 'Sukran', '', 2, 1, '1997-08-09 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 56, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(498, 0, 2, 0, 'Les robots de l''aube', '', 2, 1, '1997-08-09 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(499, 1221, 2, 1978, 'L''idiot-roi', 'Symbiote''s crown', 2, 1, '2001-01-13 00:00:00', FALSE, '2003-06-23 00:00:00', '2003-07-05 00:00:00', 0.0, 7, 127, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(500, 2355, 2, 1985, 'La musique du sang', 'Blood music', 2, 1, '2000-12-29 00:00:00', FALSE, '2003-04-23 00:00:00', '2003-04-29 00:00:00', 0.0, 1, 125, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(501, 0, 8, 0, 'Rivage des intouchables', '', 2, 1, '1997-08-09 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(502, 0, 8, 0, 'La ville au fond de l''œil', '', 2, 1, '1997-08-09 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(503, 0, 45, 0, 'La lune noire d''Orion', '', 2, 1, '1997-08-09 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(504, 0, 48, 0, 'L''enfant du cinquième nord', '', 2, 1, '1997-08-09 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 152, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(505, 0, 40, 0, 'La citadelle Hyponéros - Les guerriers du silence - 3', '', 2, 1, '1998-03-30 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 114, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(506, 0, 40, 0, 'Terra Mater - Les guerriers du silence - 2', '', 2, 1, '1998-03-30 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 114, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(507, 0, 43, 0, 'Tous à Zanzibar', '', 2, 1, '1997-08-09 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 131, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(508, 0, 8, 0, 'Futurs au présent', '', 2, 1, '1997-08-09 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(509, 0, 2, 0, 'Ombres blanches', '', 2, 1, '1997-08-09 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 121, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(510, 0, 2, 0, 'Aube noire', '', 2, 1, '1997-08-09 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 121, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(511, 0, 2, 0, 'Xénocide', '', 2, 1, '1997-08-09 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 134, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(513, 0, 46, 0, 'La voix des morts', '', 2, 1, '1997-08-09 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 134, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(514, 0, 2, 0, 'Les crocs et les griffes', '', 2, 1, '1997-08-09 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 142, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(515, 1258, 2, 1976, 'Cette chère humanité', '', 2, 1, '2000-08-26 00:00:00', FALSE, '2002-01-13 00:00:00', '2002-01-26 00:00:00', 0.0, 7, 81, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(516, 0, 45, 0, 'Triton', '', 2, 1, '1997-08-09 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 143, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(517, 693, 2, 1976, 'Les galaxiales', '', 2, 1, '2001-01-13 00:00:00', FALSE, NULL, NULL, 0.0, 6, 155, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(518, 0, 53, 0, 'L''appel du mordant (le miroir ... et un cavalier.)', '', 2, 1, '1997-08-09 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 159, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(519, 0, 10, 0, 'La biche de la forêt d''Arcande (...)', '', 2, 1, '1997-08-09 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(520, 0, 8, 0, 'Le chien qui rit', '', 2, 1, '1997-08-09 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 139, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(521, 415, 8, 1986, 'Autoportrait', '', 2, 2, '2004-07-22 00:00:00', FALSE, '2004-10-14 00:00:00', '2004-10-25 00:00:00', 0.0, NULL, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(522, 0, 10, 0, 'Etoiles morts (nivôse, etc…)', '', 2, 1, '1997-08-09 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(523, 9179, 39, 1993, 'Sang impur', 'Flesh and blood', 4, 1, '1997-10-01 00:00:00', FALSE, '2004-07-17 00:00:00', '2004-07-22 00:00:00', 0.0, NULL, 64, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(524, 4, 6, 1983, 'Station fantôme - La compagnie de glaces - 13', '', 2, 1, '1997-10-01 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(525, 4, 6, 1983, 'Les hommes-Jonas - La compagnie de glaces - 14', '', 2, 1, '1997-10-01 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(526, 4, 6, 1984, 'Terminus Amertume - La compagnie de glaces - 15', '', 2, 1, '1997-10-01 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(527, 4, 6, 1984, 'Les brûleurs de banquise - La compagnie de glaces - 16', '', 2, 1, '1997-10-01 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(528, 5647, 3, 1983, 'Le huitième sortilège - Les annales du Disque-Monde - 2', 'The light fantastic', 1, 1, '1997-10-08 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 222, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(529, 5646, 3, 1983, 'La huitième couleur - Les annales du Disque-Monde - 1', 'The color of magic', 1, 1, '1997-10-08 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 222, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(530, 9174, 39, 1995, 'Hel', 'Sleepless', 4, 1, '1997-10-08 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 64, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(531, 9180, 39, 1992, 'Le maître des mensonges', 'Master of lies', 4, 1, '1997-10-08 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 64, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(532, 0, 10, 0, 'Arago', '', 2, 1, '1997-10-12 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(533, 0, 49, 0, 'Cent mille images', '', 2, 1, '1997-10-12 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 67, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(534, 0, 5, 0, 'Damiers imaginaires', '', 2, 1, '1997-10-12 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 157, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(535, 0, 2, 0, 'En remorquant Jéhovah', '', 2, 1, '1997-10-12 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 144, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(536, 0, 3, 0, 'Fendragon', '', 2, 1, '1997-10-12 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 158, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(537, 0, 5, 0, 'Ici-bas', '', 2, 1, '1997-10-12 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 157, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(538, 0, 45, 0, 'L''Enchâssement', '', 2, 1, '1997-10-12 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 130, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(539, 976, 2, 1979, 'L''épouvante', '', 2, 1, '2000-10-14 00:00:00', FALSE, '2002-08-12 00:00:00', '2002-08-15 00:00:00', 0.0, 29, 153, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(540, 0, 50, 0, 'L''hétéradelphe de Gane', '', 2, 1, '1997-10-12 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 156, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(541, 509, 2, 1970, 'L''ïle des morts', 'Isle of the dead', 2, 1, '2000-09-23 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 132, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(542, 0, 43, 0, 'L''Orbe et la roue', '', 2, 1, '1997-10-12 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 115, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(544, 0, 8, 0, 'La citadelle de l''autarque', '', 2, 1, '1997-10-12 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 126, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(545, 0, 3, 0, 'La danse du scalpel', '', 2, 1, '1997-10-12 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 147, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(546, 0, 43, 0, 'La maison du Cygne', '', 2, 1, '1997-10-12 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 154, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(547, 0, 8, 0, 'La mécanique des ombres', '', 2, 1, '1997-10-12 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 138, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(548, 0, 47, 0, 'La porte de bronze', '', 2, 1, '1997-10-12 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 137, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(549, 0, 26, 0, 'La ruche d''Hellstrom', '', 2, 1, '1997-10-12 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(550, 0, 41, 0, 'La sidération', '', 2, 1, '1997-10-12 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 116, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(551, 0, 43, 0, 'La voie terrestre', '', 2, 1, '1997-10-12 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 145, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(552, 0, 8, 0, 'Le champ du rêveur', '', 2, 1, '1997-10-12 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 151, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(553, 0, 2, 0, 'Le créateur chimérique', '', 2, 1, '1997-10-12 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 148, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(554, 0, 43, 0, 'Le jeu du monde', '', 2, 1, '1997-10-12 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 115, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(555, 0, 12, 0, 'Le naguen', '', 2, 1, '1997-10-12 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 140, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(556, 0, 8, 0, 'Le printemps russe', '', 2, 1, '1997-10-12 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 124, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(557, 0, 10, 0, 'Le serpent d''angoisse', '', 2, 1, '1997-10-12 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(558, 0, 8, 0, 'Le silence de la cité', '', 2, 1, '1997-10-12 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 119, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(559, 0, 8, 0, 'Le temps des genévriers', '', 2, 1, '1997-10-12 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 128, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(560, 0, 43, 0, 'Le territoire humain', '', 2, 1, '1997-10-12 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 115, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(561, 0, 8, 0, 'Le voyage de Simon Morley', '', 2, 1, '1997-10-12 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 146, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(562, 585, 2, 1968, 'Les ailes de la nuit', 'Nightwings', 2, 1, '2000-12-16 00:00:00', FALSE, '2001-03-18 00:00:00', '2001-03-24 00:00:00', 0.0, NULL, 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(563, 0, 43, 0, 'Les hérétiques de Dune', '', 2, 1, '1997-10-12 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(564, 0, 8, 0, 'Les Olympiades truquées', '', 2, 1, '1997-10-12 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 148, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(565, 5236, 3, 1980, 'Les yeux géants', '', 2, 1, '2000-12-09 00:00:00', FALSE, '2001-07-15 00:00:00', '2001-08-05 00:00:00', 0.0, 11, 115, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(566, 68, 67, 1984, 'Mémo', '', 2, 1, '2002-06-30 00:00:00', FALSE, '2003-01-22 00:00:00', '2003-01-25 00:00:00', 0.0, NULL, 150, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(567, 0, 53, 1985, 'Mission Terre - Tome 1', '', 2, 1, '2000-11-13 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 136, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(568, 0, 8, 0, 'Noô', '', 2, 1, '1997-10-12 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 53, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(569, 0, 8, 0, 'Ombromanies', '', 2, 1, '1997-10-12 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 151, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(570, 0, 8, 0, 'Persistance de la vision', '', 2, 1, '1997-10-12 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 129, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(571, 0, 47, 0, 'Phénix', '', 2, 1, '1997-10-12 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 137, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(573, 0, 46, 0, 'Rêve de fer', '', 2, 1, '1997-10-12 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 124, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(574, 0, 8, 0, 'Rituel du mépris', '', 2, 1, '1997-10-12 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 149, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(575, 7160, 1, 1976, 'Shadrak dans la fournaise', 'Shadrach in the furnace', 2, 1, '1997-10-12 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(576, 0, 43, 0, 'Transit', '', 2, 1, '1997-10-12 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(577, 7208, 1, 1992, 'Un feu sur l''abîme', 'A fire upon the deep', 2, 1, '1997-10-12 00:00:00', FALSE, '2002-07-31 00:00:00', '2002-08-11 00:00:00', 0.0, 13, 133, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(578, 9100, 39, 1982, 'Le trône de Satan', 'Heirloom', 4, 1, '1997-10-12 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 64, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(579, 1992, 10, 1996, 'Le dieu avide', '', 1, 1, '1997-10-12 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(580, 1834, 10, 1991, 'Celui-qui-n''est-pas-nommé - Le Monde de la Terre Creuse - 10', '', 2, 1, '1997-10-12 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(581, 1824, 10, 1991, 'L''homme du Sid - Le Monde de la Terre Creuse - 8', '', 2, 1, '1997-10-12 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(582, 1544, 10, 1987, 'L''univers-ombre', '', 2, 1, '1997-10-12 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 115, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(583, 1981, 2, 1983, 'Marée stellaire', 'Startide rising', 2, 1, '1997-10-12 00:00:00', FALSE, '2003-11-04 00:00:00', '2003-11-20 00:00:00', 0.0, NULL, 223, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(584, 26, 52, 1997, 'Les illuminés - Chroniques glaciaires - 2', '', 2, 1, '1997-12-07 00:00:00', FALSE, NULL, NULL, 0.0, 3, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(586, 24, 55, 1997, 'L''ange des profondeurs - La quête de Martin Dirac - 1', '', 5, 1, '1997-12-07 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 116, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(587, 4641, 2, 1997, 'Mytale', '', 2, 1, '1997-12-07 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(588, 7686, 1, 1994, 'Le sourire noir', '', 3, 1, '1998-01-03 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(589, 1995, 10, 1996, 'Les rails d''incertitude - Chroniques glaciaires - 1', '', 2, 1, '1998-01-03 00:00:00', FALSE, NULL, NULL, 0.0, 3, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(590, 5, 6, 1984, 'Le gouffre aux garous - La Compagnie des glaces - 17', '', 2, 1, '1998-01-19 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(591, 5, 6, 1984, 'Le dirigeable sacrilège - La Compagnie des glaces - 18', '', 2, 1, '1998-01-19 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(592, 5, 6, 1984, 'Liensun - La Compagnie des glaces - 19', '', 2, 1, '1998-01-19 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(593, 5, 6, 1984, 'Les éboueurs de la vie éternelle - La Compagnie des glaces - 20', '', 2, 1, '1998-01-19 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(594, 2874, 2, 1989, 'Le poids de son regard', 'The stress of her regard', 5, 1, '1998-01-19 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 58, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(595, 0, 19, 1997, 'Les enfants du crépuscule', '', 6, 1, '1998-01-19 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(596, 550, 5, 1994, 'Les nourritures extraterrestres', '', 2, 1, '1998-02-27 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 224, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(597, 6, 6, 1985, 'Les trains-cimetières - La Compagnie des glaces - 21', '', 2, 1, '1998-02-27 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(598, 6, 6, 1985, 'Les fils de Lien Rag  - La Compagnie des glaces - 22', '', 2, 1, '1998-02-27 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(599, 6, 6, 1985, 'Voyageuse Yeuse - La Compagnie des glaces - 23', '', 2, 1, '1998-02-27 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(600, 6, 6, 1985, 'L''ampoule de cendres - La Compagnie des glaces - 24', '', 2, 1, '1998-02-27 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(601, 36, 52, 1998, 'Le sang du monde - Chroniques glaciaires - 3', '', 2, 1, '1998-03-30 00:00:00', FALSE, NULL, NULL, 0.0, 3, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(602, 5333, 3, 1972, 'La planète aux vents de folie - La romance de ténébreuse - 1', 'Darkover landfall', 2, 1, '1998-04-05 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 226, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(603, 5348, 3, 1978, 'Reine des orages - La romance de ténébreuse - 2', 'Stormqueen !', 2, 1, '1998-04-05 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 226, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(604, 5458, 3, 1982, 'La belle fauconnière - La romance de ténébreuse - 3', 'Hawk mistress', 2, 1, '1998-04-05 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 226, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(605, 5672, 3, 1987, 'La huitième fille - Les annales du Disque-Monde - 3', 'Equal rites', 1, 1, '1998-04-08 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 222, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(606, 0, 6, 1998, 'Escales sur l''horizon (Serge Lehman présente)', '', 2, 3, '1998-04-11 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 227, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(607, 4829, 2, 1998, 'Atlantis - Les fils du rayon d''or', '', 2, 1, '1998-05-17 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 114, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(608, 2087, 2, 1984, 'Rendez-vous à la grande porte - Le cycle des Heechees - 3', 'Heechee rendez-vous', 2, 1, '1998-05-20 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 61, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(609, 7, 6, 1986, 'Sun Company - La compagnie des glaces - 25', '', 2, 1, '1998-05-30 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(610, 7, 6, 1986, 'Les Sibériens - La compagnie des glaces - 26', '', 2, 1, '1998-05-30 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(611, 7, 6, 1986, 'Le clochard ferroviaire - La compagnie des glaces - 27', '', 2, 1, '1998-05-30 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(612, 7, 6, 1986, 'Les wagons-mémoires - La compagnie des glaces - 28', '', 2, 1, '1998-05-30 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(613, 439, 5, 1987, 'Yurlunggur', '', 2, 1, '1998-07-06 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(614, 38, 52, 1998, 'Poupée aux yeux morts', '', 2, 1, '1998-07-07 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(616, 3332, 2, 1990, 'A travers la Grande Porte - Le cycle des Heechees - 5', 'The Gateway trip', 2, 1, '1998-09-19 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 61, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(618, 5459, 3, 1980, 'Le loup des Kilghard - La romance de Ténébreuse - 4', 'Two to conquer', 2, 1, '1998-09-19 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 226, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(619, 2469, 2, 1985, 'Terre de lierre', 'Days of grass', 2, 1, '1998-09-19 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 221, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(620, 5421, 3, 1975, 'L''héritage d''Hastur  - La romance de Ténébreuse - 15', 'The heritage of Hastur', 2, 1, '1998-09-19 00:00:00', FALSE, '2004-09-18 00:00:00', '2004-10-13 00:00:00', 0.0, NULL, 226, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(621, 5302, 3, 1974, 'L''épée enchantée - La romance de Ténébreuse - 10', 'The spell sword', 2, 1, '1998-09-19 00:00:00', FALSE, '2003-07-05 00:00:00', '2003-07-07 00:00:00', 0.0, NULL, 226, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(622, 5320, 3, 1977, 'La tour interdite - La romance de Ténébreuse - 11', 'The forbidden tower', 2, 1, '1998-09-19 00:00:00', FALSE, '2003-07-08 00:00:00', '2003-07-21 00:00:00', 0.0, NULL, 226, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(623, 5290, 3, 1965, 'L''étoile du danger - La romance de Ténébreuse - 12', 'Star of danger', 2, 1, '1998-09-19 00:00:00', FALSE, '2004-02-06 00:00:00', '2004-02-09 00:00:00', 0.0, 11, 226, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(624, 5366, 3, 1971, 'Les casseurs de mondes - La romance de Ténébreuse - 18', 'The world wreckers', 2, 1, '1998-09-19 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 226, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(625, 5364, 3, 1970, 'La captive aux cheveux de feu - La romance de Ténébreuse - 13', 'Winds of darkover', 2, 1, '1998-09-19 00:00:00', FALSE, '2004-02-10 00:00:00', '2004-02-15 00:00:00', 0.0, NULL, 226, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(626, 5314, 3, 1964, 'Soleil sanglant - La romance de Ténébreuse - 14', 'Bloody Sun', 2, 1, '1998-09-19 00:00:00', FALSE, '2004-06-09 00:00:00', '2004-06-16 00:00:00', 0.0, NULL, 226, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(628, 0, 3, 0, 'L''exil de Sharra - La romance de Ténébreuse - 16', '', 2, 1, '1998-09-19 00:00:00', FALSE, '2004-11-26 00:00:00', '2004-12-25 00:00:00', 0.0, NULL, 226, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(631, 5671, 3, 1987, 'Mortimer - les annales du Disque-Monde - 4', 'Mort', 1, 1, '1998-10-10 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 222, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(632, 14405, 1, 1994, 'Les feux de l''Eden', 'Fires of Eden', 5, 1, '1998-10-10 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(634, 49, 56, 1998, 'Succubes', '', 5, 1, '1998-10-17 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(635, 8, 6, 1986, 'Mausolée pour une locomotive - La compagnie des glaces - 29', '', 2, 1, '1998-10-25 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(636, 8, 6, 1986, 'Dans le ventre d''une légende - La compagnie des glaces - 30', '', 2, 1, '1998-10-25 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(637, 8, 6, 1987, 'Les échaufaudages d''épouvante - La compagnie des glaces - 31', '', 2, 1, '1998-10-25 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(638, 8, 6, 1987, 'Les Montagnes affamées - La compagnie des glaces - 32', '', 2, 1, '1998-10-25 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(639, 9, 6, 1986, 'La prodigieuse agonie - La compagnie des glaces - 33', '', 2, 1, '1998-12-06 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(640, 9, 6, 1986, 'On m''appelait Lien Rag - La compagnie des glaces - 34', '', 2, 1, '1998-12-06 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(641, 9, 6, 1987, 'Train spécial pénitenciaire 34 - La compagnie des glaces - 35', '', 2, 1, '1998-12-06 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(642, 9, 6, 1987, 'Les hallucinés de la voie oblique - La compagnie des glaces - 36', '', 2, 1, '1998-12-06 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(643, 0, 57, 1998, 'Aucune étoile aussi lointaine', '', 2, 1, '1999-02-13 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 116, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(644, 0, 57, 1999, 'Féerie', 'Fairyland', 2, 1, '1999-02-13 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 236, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(645, 5385, 3, 1976, 'La chaine brisée - La romance de Ténébreuse - 7', 'The shattered chain', 2, 1, '1999-02-13 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 226, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(646, 5495, 3, 1989, 'Les héritiers d''Hammerfell - La romance de Ténébreuse - 5', 'The heirs of Hammerfell', 2, 1, '1999-02-13 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 226, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(647, 5530, 3, 1984, 'La cité mirage - La romance de Ténébreuse - 9', 'City of sorcery', 2, 1, '1999-02-13 00:00:00', FALSE, '2003-02-27 00:00:00', '2003-03-21 00:00:00', 0.0, 11, 226, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(648, 7075, 1, 1984, 'Le talisman', 'The talisman', 5, 1, '1999-02-13 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(649, 10, 6, 1988, 'L''abominable postulat - La compagnie des glaces - 37', '', 2, 1, '1999-03-20 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(650, 10, 6, 1988, 'Le sang des Ragus - La compagnie des glaces - 38', '', 2, 1, '1999-03-20 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(651, 10, 6, 1988, 'La caste des aiguilleurs - La compagnie des glaces - 39', '', 2, 1, '1999-03-20 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(652, 10, 6, 1988, 'Les exilés du ciel croûteux - La compagnie des glaces - 40', '', 2, 1, '1999-03-20 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(653, 4, 6, 1999, 'Les prédestinés - Chroniques glaciaires - 4', '', 2, 1, '1999-03-20 00:00:00', FALSE, NULL, NULL, 0.0, 5, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(654, 5684, 3, 1988, 'Sourcellerie - Les annales du Disque-Monde - 5', 'Sourcery', 1, 1, '1999-04-25 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 222, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(655, 11, 6, 1988, 'Exode barbare - La compagnie des glaces - 41', '', 2, 1, '1999-05-22 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(656, 11, 6, 1988, 'La chair des étoiles - La compagnie des glaces - 42', '', 2, 1, '1999-05-22 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(657, 11, 6, 1989, 'L''aube cruelle d''un temps nouveau - La compagnie des glaces - 43', '', 2, 1, '1999-05-22 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(658, 11, 6, 1989, 'Les canyons du Pacifique - La compagnie des glaces - 44', '', 2, 1, '1999-05-22 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(659, 5, 6, 1999, 'Les survivants crépusculaires - Chroniques glaciaires - 5', '', 2, 1, '1999-05-22 00:00:00', FALSE, NULL, NULL, 0.0, 5, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(660, 0, 19, 1998, 'Le labyrinthe de Pharaon', '', 6, 1, '1999-07-24 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(661, 0, 19, 1999, 'Les prisonnières de Pharaon', '', 6, 1, '1999-07-24 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(662, 0, 57, 1999, 'Etoiles mourantes', '', 2, 1, '1999-08-20 00:00:00', FALSE, '2002-08-26 00:00:00', '2002-10-13 00:00:00', 0.0, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(663, 12, 6, 1999, 'Les vagabonds des brumes - La compagnie des glaces - 45', '', 2, 1, '1999-09-21 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(664, 12, 6, 1999, 'La banquise déchiquetée - La compagnie des glaces - 46', '', 2, 1, '1999-09-21 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(665, 12, 6, 1999, 'Soleil blême - La compagnie des glaces - 47', '', 2, 1, '1999-09-21 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(666, 12, 6, 1999, 'L''huile des morts - La compagnie des glaces - 48', '', 2, 1, '1999-09-21 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(667, 0, 6, 1999, 'Sidéral Léviathan - Chroniques glaciaires - 6', '', 2, 1, '1999-09-25 00:00:00', FALSE, NULL, NULL, 0.0, 5, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(668, 0, 57, 1999, 'Voyage - Tome 1', 'Voyage', 2, 1, '1999-09-25 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 237, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(669, 0, 17, 1999, 'Voyage - Tome 2', '', 2, 1, '1999-09-25 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 237, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(670, 997, 6, 1980, 'La compagnie des glaces', '', 2, 1, '1999-09-25 00:00:00', FALSE, NULL, NULL, 0.0, 2, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(671, 1784, 6, 1990, 'Apex - La saga d''Oap Täo - 2', '', 2, 1, '1999-09-25 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(672, 1791, 6, 1990, 'Bérénice - La saga d''Oap Täo - 3', '', 2, 1, '1999-09-25 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(673, 1681, 6, 1989, 'L''art du rève - Les voleurs de rèves - 2', '', 2, 1, '1999-09-25 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(674, 1694, 6, 1989, 'A la recherche de Faërie - Les voleurs de rèves - 3', '', 2, 1, '1999-09-25 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(675, 1829, 6, 1991, 'Un été à Zedong', '', 2, 1, '1999-09-25 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(676, 4966, 2, 1992, 'Anno Dracula', 'Anno Dracula', 5, 1, '1999-11-06 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 238, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(677, 5090, 2, 1996, 'Le baron rouge sang', 'The bloody red baron', 5, 1, '1999-11-06 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 238, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(678, 5721, 3, 1988, 'Trois soeurcières - Les annales du Disque Monde - 6', 'Wyrd sisters', 1, 1, '1999-11-21 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 222, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(679, 1706, 10, 1989, 'Labyrinthe de la nuit - Les voleurs de Rèves - 4', '', 2, 1, '1999-11-21 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(680, 13, 6, 1989, 'Les oubliés de Chimère - La compagnie des glaces - 49', '', 2, 1, '1999-12-11 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(681, 13, 6, 1989, 'Les Cargos-Dirigeables du soleil  - La compagnie des glaces - 50', '', 2, 1, '1999-12-11 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(682, 13, 6, 1990, 'La guilde des sanguinaires - La compagnie des glaces - 51', '', 2, 1, '1999-12-11 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(683, 13, 6, 1990, 'La croix pirate - La compagnie des glaces - 52', '', 2, 1, '1999-12-11 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(684, 0, 43, 1996, 'Rupture dans le réel - Tome 1 : Emergence', 'The reality dysfunction, Part I : Emergence', 2, 1, '1999-12-31 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 239, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(685, 619, 8, 1994, 'La mort peut danser', '', 5, 1, '2000-01-08 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(686, 7, 6, 1999, 'L''œil parasite - Chroniques glaciaires - 7', '', 2, 1, '2000-01-08 00:00:00', FALSE, NULL, NULL, 0.0, 5, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(688, 0, 58, 2000, 'La dalle aux maudits', '', 5, 1, '2000-02-19 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(689, 0, 58, 2000, 'Le dossier atrée', '', 5, 1, '2000-02-19 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(690, 0, 58, 2000, 'Ils sont revenus', '', 5, 1, '2000-02-19 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(691, 0, 58, 2000, 'La mort noire', '', 5, 1, '2000-02-19 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(692, 0, 43, 1996, 'Expension - Rupture dans le réel - 2', 'The reality dysfunction, Part II : Expension', 2, 1, '2000-02-19 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 239, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(693, 5529, 3, 1994, 'Redécouverte - La romance de Ténébreuse - 6', 'Rediscovery', 2, 1, '2000-03-31 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 226, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(694, 0, 6, 2000, 'Planète nomade - Chroniques glaciaires - 8', '', 2, 1, '2000-04-01 00:00:00', FALSE, NULL, NULL, 0.0, 5, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(695, 14, 6, 1990, 'Le pays de Djoug - La compagnie des glaces - 53', '', 2, 1, '2000-04-01 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(696, 14, 6, 1990, 'La banquise des bois - La compagnie des glaces - 54', '', 2, 1, '2000-04-01 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(697, 14, 6, 1991, 'Iceberg-ship  - La compagnie des glaces - 55', '', 2, 1, '2000-04-01 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(698, 14, 6, 1991, 'Lacustra city - La compagnie des glaces - 56', '', 2, 1, '2000-04-01 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(699, 5365, 3, 1958, 'Projet Jason - La romance de Ténébreuse - 16', 'The planet savers', 2, 1, '2000-04-01 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 226, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(700, 5510, 3, 1983, 'La maison des Amazones- La romance de Ténébreuse - 8', 'Thendara house', 2, 1, '2000-04-01 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 226, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(701, 5420, 3, 1981, 'L''exil de Sharra - La romance de Ténébreuse - 17', 'Sharra''s exile', 2, 1, '2000-04-01 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 226, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(702, 5738, 3, 1989, 'Pyramides - Les annales du Disque Monde - 7', 'Pyramids', 1, 1, '2000-05-06 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 222, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(703, 17034, 1, 1990, 'Le murmure des loups', '', 6, 1, '2000-05-13 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(704, 3159, 34, 1996, 'Les ombres du jardin', '', 10, 1, '2000-05-13 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(705, 543, 8, 1993, 'Mange-Monde', '', 2, 1, '2000-05-13 00:00:00', FALSE, '2001-08-21 00:00:00', '2001-08-25 00:00:00', 0.0, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(707, 0, 59, 1999, 'Le livre du grand secret', '', 10, 1, '2000-05-13 00:00:00', FALSE, '2003-02-25 00:00:00', '2003-02-27 00:00:00', 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(708, 3050, 34, 1994, 'La maison de l''aigle', '', 10, 1, '2000-05-13 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(709, 0, 19, 1998, 'L''armure de vengeance', '', 6, 1, '2000-05-13 00:00:00', FALSE, '2001-01-18 00:00:00', '2001-01-28 00:00:00', 0.0, 10, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(710, 0, 33, 1999, 'Baignade accompagnée', '', 6, 1, '2000-05-13 00:00:00', FALSE, '2001-06-05 00:00:00', '2001-06-15 00:00:00', 0.0, 15, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(711, 0, 60, 2000, 'Le maître des nuages - Sentinelles du crépuscule - 1', '', 2, 1, '2000-05-13 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(712, 0, 19, 1999, 'Le manoir des sortilèges', '', 6, 1, '2000-05-13 00:00:00', FALSE, '2004-06-28 00:00:00', '2004-07-09 00:00:00', 0.0, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(713, 0, 61, 1998, 'L''île des ombres - Les harponneurs d''étoiles - 1', '', 2, 1, '2000-05-24 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 241, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(714, 5426, 2, 1998, 'Le jugement des larmes', 'Judgment of tears', 5, 1, '2000-06-05 00:00:00', FALSE, '2001-12-31 00:00:00', '2002-01-12 00:00:00', 0.0, NULL, 238, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(715, 15, 6, 1991, 'L''héritage du Bulb - La compagnie des glaces - 57', '', 2, 1, '2000-06-05 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(716, 15, 6, 1991, 'Les millénaires perdus - La compagnie des glaces - 58', '', 2, 1, '2000-06-05 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(717, 15, 6, 1991, 'La guerre du peuple du froid - La compagnie des glaces - 59', '', 2, 1, '2000-06-05 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(718, 15, 6, 1991, 'Les tombeaux de l''Antarctique - La compagnie des glaces - 60', '', 2, 1, '2000-06-05 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(719, 0, 6, 2000, 'Roark - Chroniques glaciaires - 9', '', 2, 1, '2000-06-17 00:00:00', FALSE, NULL, NULL, 0.0, 5, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(720, 580, 5, 1997, 'L''empire des abîmes', '', 2, 1, '2000-06-17 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 242, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(721, 581, 5, 1997, 'Les invisibles', '', 2, 1, '2000-06-17 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 242, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(722, 593, 5, 1998, 'La forteresse blanche', '', 2, 1, '2000-06-17 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 242, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(723, 707, 2, 1965, 'Cugel l''astucieux', 'The overworld', 1, 1, '2000-07-31 00:00:00', FALSE, NULL, NULL, 0.0, 17, 63, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(724, 2632, 2, 1987, 'Les annales des Heechees - Le cycle des Heechees - 4', 'The annals of the Heechees', 2, 1, '2000-08-20 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 61, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(725, 594, 5, 1998, 'Le clan du Grand Crâne - la saga de Shag l''idiot - 1', '', 1, 1, '2000-08-20 00:00:00', FALSE, '2003-07-21 00:00:00', '2003-07-28 00:00:00', 0.0, NULL, 243, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(726, 595, 5, 1998, 'Les guerriers du Grand Crâne - la saga de Shag l''idiot - 2', '', 1, 1, '2000-08-20 00:00:00', FALSE, '2003-07-29 00:00:00', '2003-08-02 00:00:00', 0.0, NULL, 243, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(727, 599, 5, 1998, 'Les dieux du Grand Crâne - la saga de Shag l''idiot - 3', '', 1, 1, '2000-08-20 00:00:00', FALSE, '2003-08-02 00:00:00', '2003-08-04 00:00:00', 0.0, NULL, 243, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(728, 7039, 1, 1969, 'La main gauche de la nuit', 'The left hand of darkness', 2, 1, '2000-08-26 00:00:00', FALSE, '2001-08-26 00:00:00', '2001-09-05 00:00:00', 0.0, 18, 244, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(729, 5281, 3, 1983, 'La reconquête - Terre champ de bataille - 2', 'Battle field earth - 2', 2, 1, '2000-08-26 00:00:00', FALSE, '2002-03-04 00:00:00', '2002-03-31 00:00:00', 0.0, 11, 136, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(730, 0, 3, 1982, 'Les derniers hommes - Terre champs de bataille - 1', 'Battle field earth - 1', 2, 1, '2000-12-09 00:00:00', FALSE, '2002-02-23 00:00:00', '2002-03-04 00:00:00', 0.0, 11, 136, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(731, 5282, 3, 1984, 'Le secret des psychlos - Terre champ de bataille - 3', 'Battle field earth - 3', 2, 1, '2000-08-26 00:00:00', FALSE, '2002-04-01 00:00:00', '2002-04-30 00:00:00', 0.0, 11, 136, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(732, 1665, 2, 1983, 'Cugel Saga', 'Cugel Saga', 2, 1, '2000-08-26 00:00:00', FALSE, '2001-08-10 00:00:00', '2001-08-17 00:00:00', 0.0, 12, 63, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(733, 5357, 3, 1982, 'Le pion blanc des présages - Chant I de la Belgariade', 'Pawn of prophecy', 1, 1, '2000-08-26 00:00:00', FALSE, '2001-01-29 00:00:00', '2001-02-04 00:00:00', 0.0, 11, 135, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(734, 5356, 3, 1982, 'La reine des sortilèges - Chant II de la Belgariade', 'Queen of sorcery', 1, 1, '2000-08-26 00:00:00', FALSE, '2001-02-04 00:00:00', '2001-02-12 00:00:00', 0.0, 11, 135, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(735, 5419, 3, 1983, 'Le gambit du magicien - Chant III de la Belgariade', 'Magician''s gambit', 1, 1, '2000-09-15 00:00:00', FALSE, '2001-02-12 00:00:00', '2001-02-21 00:00:00', 0.0, 11, 135, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(736, 5424, 3, 1984, 'La tour des maléfices - Chant IV de la Belgariade', 'Castle of wizardry', 1, 1, '2000-08-26 00:00:00', FALSE, '2001-02-21 00:00:00', '2001-02-28 00:00:00', 0.0, 11, 135, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(737, 5425, 3, 1982, 'La fin de partie de l''enchanteur - Chant V de la Belgariade', 'Enchanter''s end game', 1, 1, '2000-08-26 00:00:00', FALSE, '2001-02-28 00:00:00', '2001-03-08 00:00:00', 0.0, 11, 135, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(738, 0, 2, 0, 'Le pays du fou rire', '', 2, 1, '2000-08-26 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 245, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(739, 0, 40, 0, 'Les chroniques d''Alvin le Faiseur', '', 2, 1, '2000-08-27 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 134, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(740, 0, 62, 0, 'Six héritiers - le Secret de Ji - 1', '', 2, 1, '2000-08-27 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 246, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(741, 0, 62, 0, 'Mémoire vagabonde', '', 2, 1, '2000-08-27 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 247, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(742, 0, 2, 0, 'Nerverwhere', '', 2, 1, '2000-08-27 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 248, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(743, 0, 62, 0, 'Arcadia', '', 1, 1, '2000-08-27 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 249, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(744, 0, 8, 0, 'Entre chien et louve', '', 2, 1, '2000-08-27 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 139, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(745, 5682, 3, 1997, 'L''éveil d''Endymion - Tome 1', 'The rise of Endymion', 2, 1, '2001-02-10 00:00:00', FALSE, '2004-04-20 00:00:00', '2003-05-04 00:00:00', 0.0, 11, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(747, 0, 6, 0, 'L''odysse de l''espèce - les Futurs mystères de Paris - 3', '', 2, 1, '2000-08-27 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(748, 0, 2, 0, 'Parleur ou les Chroniques d''un rêve enclavé', '', 1, 1, '2000-08-27 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(749, 0, 3, 0, 'La Déesse écarlate', '', 5, 1, '2000-08-27 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 250, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(750, 0, 53, 0, 'Mars la bleue - Mars - 3', '', 2, 1, '2000-08-27 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 251, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(751, 5737, 40, 1989, 'Au guet ! - Les annales du Disque monde - 8', 'Guards! Guards!', 1, 1, '2000-12-16 00:00:00', FALSE, '2000-12-21 00:00:00', '2000-12-25 00:00:00', 0.0, 9, 222, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(752, 0, 3, 0, 'L''illusionniste', '', 5, 1, '2000-08-27 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 252, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(753, 0, 8, 0, 'Petite chanson dans la pénombre', '', 5, 1, '2000-08-27 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 139, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(754, 0, 43, 0, 'Le samouraï virtuel', '', 2, 1, '2000-08-27 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 253, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(755, 0, 2, 1996, 'Désolation', '', 5, 1, '2007-08-27 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(756, 0, 3, 0, 'La roue du temps', '', 1, 1, '2000-08-27 00:00:00', FALSE, NULL, NULL, 0.0, NULL, 254, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(757, 5482, 3, 1988, 'Les gardiens du Ponant - Chant I de la Mallorée', 'Gardians of the West', 1, 1, '2000-09-15 00:00:00', FALSE, '2001-03-24 00:00:00', '2001-03-31 00:00:00', 0.0, 11, 135, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(758, 5523, 3, 1994, 'La sibylle de Kell - Chant V de la Mallorée', 'Seeress of Kell', 2, 1, '2000-09-23 00:00:00', FALSE, '2001-05-01 00:00:00', '2001-05-14 00:00:00', 0.0, NULL, 135, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(759, 5681, 3, 1995, 'Endymion - 1', 'Endymion', 2, 1, '2000-10-14 00:00:00', FALSE, '2004-03-30 00:00:00', '2004-04-09 00:00:00', 0.0, 11, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(760, 5751, 3, 1995, 'Endymion - 2', 'Endymion - 2', 2, 1, '2000-10-14 00:00:00', FALSE, '2004-04-09 00:00:00', '2004-04-20 00:00:00', 0.0, 11, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(761, 0, 6, 2000, 'Les baleines Solinas - Chroniques glaciaires - 10', '', 2, 1, '2000-11-01 00:00:00', FALSE, '2001-03-08 00:00:00', '2001-03-13 00:00:00', 0.0, 5, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(763, 16, 6, 1992, 'La charogne céleste - La compagnie des glaces - 61', '', 2, 1, '2000-11-13 00:00:00', FALSE, '2000-12-26 00:00:00', '2001-01-01 00:00:00', 0.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(764, 16, 6, 2000, 'L''avenir des dupes - La compagnie des glaces - 63', '', 2, 1, '2000-11-13 00:00:00', FALSE, '2001-01-01 00:00:00', '2001-01-11 00:00:00', 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(765, 16, 59, 1992, 'Il était une fois la compagnie des glaces - La compagnie des glaces - 62', '', 2, 1, '2000-11-13 00:00:00', FALSE, '2001-01-12 00:00:00', '2001-12-17 00:00:00', 0.0, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(766, 5519, 3, 1988, 'Le démon majeur de Karanda - Chant III de la Mallorée', 'Demon lord of Karanda', 1, 1, '2000-11-13 00:00:00', FALSE, '2001-04-11 00:00:00', '2001-04-22 00:00:00', 0.0, 11, 135, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(767, 5481, 3, 1989, 'Le roi des Murgos - Chant II de la Mallorée', 'King of the Murgos', 1, 1, '2000-11-13 00:00:00', FALSE, '2001-03-31 00:00:00', '2001-04-11 00:00:00', 0.0, 11, 135, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(768, 5522, 3, 1989, 'La sorcière de Darshiva - Chant IV de la Mallorée', 'Sorceress of Darshiva', 1, 1, '2000-11-13 00:00:00', FALSE, '2001-04-22 00:00:00', '2001-05-01 00:00:00', 0.0, NULL, 135, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(769, 0, 43, 1997, 'L''alchimiste du neutronium - 1 - Consolidation', 'The neutronium alchimist - part 1 - Consolidation', 2, 1, '2000-11-25 00:00:00', FALSE, '2000-12-01 00:00:00', '2000-12-20 00:00:00', 0.0, 4, 239, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(770, 0, 59, 2000, 'Destination 3001', '', 2, 1, '2000-11-25 00:00:00', FALSE, '2001-05-14 00:00:00', '2001-05-30 00:00:00', 0.0, 14, 255, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(773, 33, 16, 1935, 'Conan le conquérant', 'Conan the conqueror', 1, 1, '2000-12-09 00:00:00', FALSE, '2003-11-20 00:00:00', '2003-11-29 00:00:00', 0.0, 33, 62, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(774, 1935, 2, 1968, 'Conan le vagabond', 'Conan the wanderer', 1, 3, '2000-12-09 00:00:00', FALSE, '2003-05-31 00:00:00', '2003-06-10 00:00:00', 0.0, NULL, 62, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(775, 15, 4, 1991, 'Yoro si', '', 5, 1, '2001-01-13 00:00:00', FALSE, '2003-06-20 00:00:00', '2003-06-23 00:00:00', 0.0, 8, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(777, 5760, 3, 1997, 'L''éveil d''Endymion - Tome 2', 'The rise of Endymion', 2, 1, '2001-02-10 00:00:00', FALSE, '2004-05-05 00:00:00', '2004-05-19 00:00:00', 0.0, 11, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(778, 11, 6, 2000, 'La légende des hommes-Jonas - Les chroniques glaciaires - 11', '', 2, 1, '2001-02-10 00:00:00', FALSE, '2001-03-14 00:00:00', '2001-03-18 00:00:00', 0.0, 5, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(779, 1, 6, 2001, 'La ceinture de feu - La compagnie des glaces - Nouvelle époque - 1', '', 2, 1, '2001-03-04 00:00:00', FALSE, '2001-06-24 00:00:00', '2001-07-04 00:00:00', 0.0, 5, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(780, 2, 6, 2001, 'Le chenal noir  - La compagnie des glaces - Nouvelle époque - 2', '', 2, 1, '2001-03-04 00:00:00', FALSE, '2001-07-04 00:00:00', '2001-07-06 00:00:00', 0.0, 5, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(781, 0, 63, 1995, 'Belgarath le sorcier II - les années d''espoir', 'Belgarath the sorcerer II', 1, 1, '2001-03-04 00:00:00', FALSE, NULL, NULL, 0.0, 11, 135, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(782, 0, 63, 1995, 'Belgarath le sorcier I - Les années noires', 'Belgarath the sorcerer', 1, 1, '2001-03-04 00:00:00', FALSE, NULL, NULL, 0.0, 11, 135, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(783, 0, 63, 1997, 'Polgara la sorcière I - Le temps des souffrances', 'Polgara the sorceress I', 1, 1, '2001-03-04 00:00:00', FALSE, NULL, NULL, 0.0, 11, 135, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(784, 0, 63, 1997, 'Polgara la sorcière II - Les années d''enfance', 'Polgara the sorceress', 1, 1, '2001-03-04 00:00:00', FALSE, NULL, NULL, 0.0, 11, 135, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(785, 5761, 3, 1990, 'Eric - les annales du disque monde - 9', 'Eric', 1, 1, '2001-03-31 00:00:00', FALSE, '2001-08-05 00:00:00', '2001-08-10 00:00:00', 0.0, 9, 222, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(786, 1905, 2, 1980, 'Le château de Lord Valentin - Tome 1', 'Lord Venlatine''s castle', 2, 1, '2001-04-11 00:00:00', FALSE, NULL, NULL, 0.0, 12, 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(787, 1906, 2, 1980, 'Le château de Lord Valentin - Tome 2', 'Lord Valentine''s castle', 2, 1, '2001-04-11 00:00:00', FALSE, NULL, NULL, 0.0, 12, 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(788, 7116, 1, 1971, 'Les monades urbaines', 'The world inside', 2, 1, '2001-04-11 00:00:00', FALSE, '2001-07-06 00:00:00', '2001-07-10 00:00:00', 0.0, 13, 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(790, 3142, 64, 0, 'Le comte de Monté-Cristo - Tome 1', '', 10, 1, '2001-04-11 00:00:00', FALSE, '2001-09-26 00:00:00', '2001-10-12 00:00:00', 0.0, NULL, 263, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(791, 3143, 64, 0, 'Le comte de Monté-Cristo - Tome 2', '', 10, 1, '2001-04-11 00:00:00', FALSE, '2001-10-12 00:00:00', '2001-11-01 00:00:00', 0.0, NULL, 263, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(792, 1, 65, 1999, 'Toréador - Roman des clans - 1', 'Toreador', 5, 1, '2001-05-29 00:00:00', FALSE, '2001-05-25 00:00:00', '2001-05-28 00:00:00', 0.0, 16, 264, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(793, 2, 65, 1999, 'Tzimisce - Roman des clans - 2', 'Tzimisce', 5, 1, '2001-05-30 00:00:00', FALSE, '2001-05-30 00:00:00', '2001-06-04 00:00:00', 0.0, 16, 265, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(794, 3, 65, 1999, 'Gangrel - Roman des clans - 3', 'Gangrel', 5, 1, '2001-05-30 00:00:00', FALSE, '2001-06-15 00:00:00', '2001-06-24 00:00:00', 0.0, 16, 266, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(795, 4, 65, 1999, 'Séthite - Le roman des clans - 4', 'Clan novel Sethite', 5, 1, '2001-06-14 00:00:00', FALSE, '2001-07-11 00:00:00', '2001-07-15 00:00:00', 0.0, 16, 267, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(796, 3, 6, 2001, 'Le réseau de l''éternelle nuit - La compagnie des glaces - Nouvelle époque - 3', '', 2, 1, '2001-07-05 00:00:00', FALSE, '2001-09-14 00:00:00', '2001-09-25 00:00:00', 0.0, 5, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(797, 0, 65, 1999, 'Ventrue - Roman des clans - 5', 'Ventrue - clan novel', 5, 1, '2001-08-04 00:00:00', FALSE, '2001-08-17 00:00:00', '2001-08-20 00:00:00', 0.0, 16, 266, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(798, 0, 65, 1999, 'Lasombra - Roman des clans - 6', 'Lasombra', 5, 1, '2001-08-04 00:00:00', FALSE, '2001-09-05 00:00:00', '2001-09-13 00:00:00', 0.0, 16, 268, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(799, 1707, 2, 1980, 'La reine des neiges', 'The snow queen', 2, 1, '2001-09-01 00:00:00', FALSE, '2005-04-12 00:00:00', '2005-04-27 00:00:00', 0.0, 19, 269, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(800, 3288, 2, 1990, 'Miles Vorkosigan  - La saga Vorkigan - 4', 'The Vor game', 2, 1, '2001-09-01 00:00:00', FALSE, '2004-01-21 00:00:00', '2004-02-05 00:00:00', 0.0, 12, 270, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(801, 3454, 2, 1991, 'Barrayar  - La saga Vorkigan - 2', 'Barrayar', 2, 1, '2001-09-01 00:00:00', FALSE, '2003-12-14 00:00:00', '2003-12-31 00:00:00', 0.0, 12, 270, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(802, 3687, 2, 1986, 'Cordelia Vorkosigan  - La saga Vorkigan - 1', 'Shards of honor', 2, 1, '2001-09-01 00:00:00', FALSE, '2003-11-29 00:00:00', '2003-12-14 00:00:00', 0.0, 12, 270, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(803, 4, 6, 2001, 'Les hommes du cauchemar - La compagnie des glaces - Nouvelle époque - 4', '', 2, 1, '2001-10-13 00:00:00', FALSE, '2001-12-22 00:00:00', '2001-12-31 00:00:00', 0.0, 5, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(804, 5765, 3, 1990, 'Les zinzins d''Olive Oued - Les annales du disque monde - 10', 'Moving pictures', 1, 1, '2001-10-20 00:00:00', FALSE, '2001-11-25 00:00:00', '2001-12-16 00:00:00', 0.0, 9, 222, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(805, 0, 43, 1997, 'L''alchimiste du neutronium - Tome 2 - Conflit', 'The neutronium alchimist - Part 2 - Conflict', 2, 1, '2001-10-20 00:00:00', FALSE, '2001-11-01 00:00:00', '2001-11-25 00:00:00', 0.0, 4, 239, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(806, 6, 61, 1998, 'La meute hurlante', '', 5, 1, '2001-11-02 00:00:00', FALSE, '2002-02-17 00:00:00', '2002-02-22 00:00:00', 0.0, 20, 241, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(807, 1769, 2, 1974, 'La guerre éternelle', 'The forever war', 2, 1, '2001-11-02 00:00:00', FALSE, '2001-12-16 00:00:00', '2001-12-22 00:00:00', 0.0, 21, 255, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(808, 3330, 2, 1981, 'Forteresse des étoiles', 'Downbelow station', 2, 1, '2001-11-02 00:00:00', FALSE, '2002-06-10 00:00:00', '2002-06-29 00:00:00', 0.0, 6, 271, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(809, 2935, 2, 1988, 'Cyteen - 1', 'Cyteen', 2, 1, '2001-11-02 00:00:00', FALSE, NULL, NULL, 0.0, 23, 271, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(810, 2936, 2, 1988, 'Cyteen - 2', 'Cyteen', 2, 1, '2001-11-02 00:00:00', FALSE, NULL, NULL, 0.0, 23, 271, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(811, 5590, 2, 1998, 'Komaar', 'Komaar', 2, 1, '2001-11-02 00:00:00', FALSE, NULL, NULL, 0.0, 12, 270, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(812, 0, 6, 2001, 'Les spectres de l''Altiplano - Compagnie des glaces - Nouvelle époque - 5', '', 2, 1, '2002-01-06 00:00:00', FALSE, '2002-02-07 00:00:00', '2002-02-17 00:00:00', 0.0, 5, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(813, 0, 65, 1999, 'Assamite - Roman des clans - 7', 'Assamite', 5, 1, '2002-01-13 00:00:00', FALSE, '2002-01-26 00:00:00', '2002-02-06 00:00:00', 0.0, 16, 266, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(814, 0, 65, 1997, 'Les cendres de l''amertume - Le pacte du Graal - 1', 'To Sift Through Bitter Ashes - The Grails Covenant - 1', 5, 1, '2002-01-13 00:00:00', FALSE, '2002-12-11 00:00:00', '2002-12-24 00:00:00', 0.0, 24, 272, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(815, 0, 65, 1997, 'Les langues mortes - Le pacte du Graal - Tome 2', 'To Speak in Lifeless Tongues - The Grails Covenant - 2', 5, 1, '2002-01-13 00:00:00', FALSE, '2003-01-05 00:00:00', '2003-01-13 00:00:00', 0.0, 24, 272, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(816, 0, 6, 2002, 'Les momies du massacre - La compagnie des glaces - Nouvelle époque - 6', '', 2, 1, '2002-02-17 00:00:00', FALSE, '2002-04-30 00:00:00', '2002-05-09 00:00:00', 0.0, 5, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(817, 17213, 1, 2000, 'Iceberg Ltd', '', 3, 1, '2002-02-17 00:00:00', FALSE, '2002-05-25 00:00:00', '2002-05-30 00:00:00', 0.0, 25, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(818, 562, 2, 1959, 'Etoiles, garde-à-vous !', 'Starship troopers', 2, 1, '2002-02-17 00:00:00', FALSE, '2002-05-30 00:00:00', '2002-06-03 00:00:00', 0.0, 14, 179, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(819, 7107, 1, 1969, 'L''étoile et le fouet', 'The whipping star', 2, 1, '2002-02-17 00:00:00', FALSE, '2002-07-10 00:00:00', '2002-07-23 00:00:00', 0.0, 13, 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(820, 542, 2, 1964, 'Un défilé de robots', 'The rest of the robots', 2, 1, '2002-03-18 00:00:00', FALSE, NULL, NULL, 0.0, 11, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(821, 2420, 2, 1988, 'Le créateur chimérique', '', 2, 1, '2002-03-18 00:00:00', FALSE, '2004-06-17 00:00:00', '2004-07-28 00:00:00', 0.0, 12, 148, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(822, 8, 65, 1999, 'Ravnos - Roman des clans - 8', 'Ravnos', 5, 1, '2002-04-16 00:00:00', FALSE, '2002-05-15 00:00:00', '2002-05-24 00:00:00', 0.0, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(823, 7, 6, 2002, 'L''ombre du serpent gris - Compagnie des glaces - Nouvelle époque - 7', '', 2, 1, '2002-04-16 00:00:00', FALSE, '2002-05-09 00:00:00', '2002-05-15 00:00:00', 0.0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(824, 0, 65, 1997, 'Les rèves brisés - Le pacte du Graal - 3', 'To dream of dreamers lost', 5, 1, '2002-04-16 00:00:00', FALSE, '2003-01-13 00:00:00', '2003-01-22 00:00:00', 0.0, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(825, 0, 59, 2000, 'Le grand cirque', '', 10, 1, '2002-04-30 00:00:00', FALSE, '2004-05-20 00:00:00', '2004-06-09 00:00:00', 0.0, 14, 273, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(826, 1754, 2, 1967, 'Conan', 'Conan', 1, 3, '2002-06-30 00:00:00', FALSE, '2002-06-04 00:00:00', '2002-06-10 00:00:00', 0.0, 26, 274, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(828, 2120, 2, 1966, 'Conan le guerrier', 'Conan the Warrior', 1, 3, '2002-06-30 00:00:00', FALSE, '2003-09-26 00:00:00', '2003-10-14 00:00:00', 0.0, 27, 62, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(829, 2036, 2, 1966, 'Conan l''aventurier', 'Conan the adventurer', 1, 3, '2002-06-30 00:00:00', FALSE, '2003-06-10 00:00:00', '2003-06-16 00:00:00', 0.0, 27, 62, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(830, 3527, 2, 1970, 'L''anneau-Monde', 'Ringworld', 2, 1, '2002-06-30 00:00:00', FALSE, '2002-11-16 00:00:00', '2002-12-11 00:00:00', 0.0, 12, 276, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(831, 7217, 1, 1994, 'Le voile de l''espace', 'Beyond the veil of stars', 2, 1, '2002-06-30 00:00:00', FALSE, NULL, NULL, 0.0, 13, 145, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(832, 8, 6, 2002, 'Les griffes de la banquise - La compagnie des glaces - Nouvelle époque - 8', '', 2, 1, '2002-06-30 00:00:00', FALSE, '2002-06-30 00:00:00', '2002-07-09 00:00:00', 0.0, 5, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(834, 14, 6, 1992, 'Cormac Mac Art', 'Cormac Mac Art', 5, 2, '2002-07-21 00:00:00', FALSE, '2002-07-23 00:00:00', '2002-07-30 00:00:00', 0.0, 28, 62, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(835, 11, 6, 1992, 'El Borak le redoutable', '??', 5, 2, '2002-07-21 00:00:00', FALSE, NULL, NULL, 0.0, 28, 62, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(836, 21, 6, 1993, 'Agnès de chastillon', '??', 5, 2, '2002-07-21 00:00:00', FALSE, NULL, NULL, 0.0, 28, 62, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(837, 20, 6, 1993, 'La main de la déesse noire', '??', 5, 2, '2002-07-21 00:00:00', FALSE, '2005-03-15 00:00:00', '2004-03-24 00:00:00', 0.0, 28, 62, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(838, 5631, 3, 1991, 'La rose de sapir - La trilogie des joyaux - 3', 'The sapphire rose', 1, 1, '2002-07-29 00:00:00', FALSE, '2005-06-09 00:00:00', '2005-08-02 00:00:00', 0.0, 11, 135, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(839, 5555, 3, 1989, 'Le trône de diamant - La trilogie des joyaux - Tome 1', 'The diamond throne', 1, 1, '2002-07-29 00:00:00', FALSE, '2005-04-28 00:00:00', '2005-05-19 00:00:00', 0.0, 11, 135, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(840, 5577, 3, 1991, 'Le chevalier de rubis - La trilogie des joyaux - 2', 'Ruby knight', 1, 1, '2002-07-29 00:00:00', FALSE, '2005-05-20 00:00:00', '2005-06-09 00:00:00', 0.0, 11, 135, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(841, 1825, 2, 1969, 'Conan le cimmérien', 'Conan of Cimeria', 1, 3, '2002-08-15 00:00:00', FALSE, '2002-08-15 00:00:00', '2002-08-26 00:00:00', 0.0, 27, 62, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(842, 1891, 2, 1967, 'Conan le flibustier', 'Conan the freeboter', 1, 3, '2002-08-15 00:00:00', FALSE, '2002-11-03 00:00:00', '2002-11-16 00:00:00', 0.0, 27, 62, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(843, 0, 6, 2002, 'Les forbans du nord - Compagnie des glaces - Nouvelle époque - 9', '', 2, 1, '2002-09-02 00:00:00', FALSE, '2002-10-14 00:00:00', '2002-10-26 00:00:00', 0.0, 5, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(844, 5785, 3, 1991, 'Le faucheur - les annales du disque monde - 11', 'Reaperman', 1, 1, '2002-09-02 00:00:00', FALSE, '2003-02-12 00:00:00', '2003-02-25 00:00:00', 0.0, 9, 222, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(845, 0, 6, 2002, 'Les icebergs lunaires - Compagnie des glaces - nouvelle époque - 10', '', 2, 1, '2002-10-17 00:00:00', FALSE, '2002-10-26 00:00:00', '2002-11-02 00:00:00', 0.0, 5, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(847, 11, 6, 2002, 'Le sanctuaire de légende - Compagnie des glaces - nouvelle époque - 11', '', 2, 1, '2002-12-15 00:00:00', FALSE, '2002-12-24 00:00:00', '2003-01-05 00:00:00', 0.0, 5, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(848, 0, 43, 1999, 'Le dieu nu - Résistance - 1', 'The naked god', 2, 1, '2003-01-05 00:00:00', FALSE, '2003-01-25 00:00:00', '2003-02-12 00:00:00', 0.0, 4, 239, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(849, 4891, 2, 1996, 'Cetaganda  - La saga Vorkigan - 5', 'Cetaganda', 2, 1, '2003-01-12 00:00:00', FALSE, '2004-03-18 00:00:00', '2004-03-29 00:00:00', 0.0, 12, 270, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(850, 0, 6, 2001, 'Les ombres de Wielstadt', '', 5, 1, '2003-01-19 00:00:00', FALSE, '2003-03-21 00:00:00', '2003-04-01 00:00:00', 0.0, 30, 277, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(851, 0, 6, 2002, 'Les masques de Wielstadt', '', 5, 1, '2003-01-19 00:00:00', FALSE, '2003-04-09 00:00:00', '2003-04-18 00:00:00', 0.0, 30, 277, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(852, 0, 6, 2003, 'Les mystères d''Altaï - La compagnie des glaces - Nouvelle époque - 12', '', 2, 1, '2003-03-27 00:00:00', FALSE, '2003-04-01 00:00:00', '2003-04-09 00:00:00', 0.0, 5, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(853, 0, 65, 1999, 'Malkavien - Roman des clans - 9', 'Malkavian clan novel', 5, 1, '2003-04-18 00:00:00', FALSE, '2003-04-18 00:00:00', '2003-04-23 00:00:00', 0.0, 16, 264, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(854, 0, 65, 2002, 'Brujah - Le roman des clans - 11', 'Brujah', 5, 1, '2003-04-18 00:00:00', FALSE, '2003-05-13 00:00:00', '2003-05-19 00:00:00', 0.0, 16, 266, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(855, 0, 65, 2000, 'Nosferatu - Roman des clans - 13', 'Nosferatu', 5, 1, '2003-04-26 00:00:00', FALSE, '2003-05-25 00:00:00', '2003-05-30 00:00:00', 0.0, 16, 266, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(856, 0, 65, 2000, 'Tremere - Roman des clans - 12', 'Tremere', 5, 1, '2003-04-26 00:00:00', FALSE, '2003-05-19 00:00:00', '2003-05-24 00:00:00', 0.0, 16, 265, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(857, 0, 65, 1999, 'Giovanni - Roman des clans - 10', 'Giovanni', 5, 1, '2003-04-26 00:00:00', FALSE, '2003-04-29 00:00:00', '2003-05-07 00:00:00', 0.0, 16, 278, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(859, 0, 6, 2003, 'La locomotive-Dieu - La companie des glaces - Nouvelle époque - 13', '', 2, 1, '2003-04-26 00:00:00', FALSE, '2003-05-07 00:00:00', '2003-05-12 00:00:00', 0.0, 5, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(860, 0, 6, 2003, 'Pari cataclysme - La compagnie des glaces - Nouvelle époque - 14', '', 2, 1, '2003-06-11 00:00:00', FALSE, '2003-06-16 00:00:00', '2003-06-20 00:00:00', 0.0, 5, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(861, 17279, 1, 2000, 'Pélerins des ténèbres', '', 6, 1, '2003-07-26 00:00:00', FALSE, '2003-10-25 00:00:00', '2003-11-04 00:00:00', 0.0, 32, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(862, 0, 43, 1999, 'Le dieu nu - 2 - Révélation', 'The Naked God - Part 2', 2, 1, '2003-07-26 00:00:00', FALSE, '2003-08-14 00:00:00', '2003-09-25 00:00:00', 0.0, 4, 239, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(863, 0, 6, 2003, 'Movane la chamane - La compagnie des glaces - Nouvelle époque - 15', '', 2, 1, '2003-08-06 00:00:00', FALSE, '2003-08-05 00:00:00', '2003-08-14 00:00:00', 0.0, 5, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(864, 4376, 2, 1986, 'L''apprentissage du guerrier  - La saga Vorkigan - 3', 'The warrior''s apprentrice', 2, 1, '2003-12-29 00:00:00', FALSE, '2004-01-12 00:00:00', '2004-01-21 00:00:00', 0.0, 12, 270, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(865, 0, 6, 2003, 'Channel Drake - La compagnie des glaces - Nouvelle époque - 16', '', 2, 1, '2003-12-29 00:00:00', FALSE, '2003-12-31 00:00:00', '2004-01-12 00:00:00', 0.0, 5, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(866, 0, 6, 2004, 'Le sang des aliens - La compagnie des glaces - Nouvelle époque - 17', '', 2, 1, '2004-02-01 00:00:00', FALSE, '2004-02-15 00:00:00', '2004-02-21 00:00:00', 0.0, 5, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(867, 19, 67, 1970, 'Les neuf princes d''Ambre - Le cycle des princes d''Ambre - 1', 'Nines princes in Amber', 5, 1, '2004-02-21 00:00:00', FALSE, '2004-02-21 00:00:00', '2004-02-24 00:00:00', 0.0, 14, 132, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(868, 20, 67, 1972, 'Les fusils d''Avalon - Le cycle des princes d''Ambre - 2', 'The guns of Avalon', 5, 1, '2004-02-23 00:00:00', FALSE, '2004-02-25 00:00:00', '2004-02-29 00:00:00', 0.0, 14, 132, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(869, 38, 67, 1975, 'Le signe de la licorne - Le cycle des princes d''Ambre - 3', 'sign of the unicorn', 5, 1, '2004-02-23 00:00:00', FALSE, '2004-02-29 00:00:00', '2004-02-06 00:00:00', 0.0, 14, 132, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(870, 46, 67, 1976, 'La main d''Obéron - Le cycle des princes d''Ambre - 4', 'The hand of Oberon', 5, 1, '2004-02-23 00:00:00', FALSE, '2004-03-07 00:00:00', '2004-03-11 00:00:00', 0.0, 14, 132, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(871, 56, 67, 1978, 'Les cours du Chaos - Le cycle des princes d''Ambre - 5', 'The courts of Chaos', 5, 1, '2004-02-23 00:00:00', FALSE, '2004-03-11 00:00:00', '2004-03-18 00:00:00', 0.0, 14, 132, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(872, 5001, 2, 1989, 'Les frontières de l''infini - La saga Vorkigan - 6', 'Borders of infinity', 2, 1, '2004-02-23 00:00:00', FALSE, '2004-07-22 00:00:00', '2004-08-03 00:00:00', 0.0, 5, 270, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(873, 5786, 3, 1998, 'Mécomptes de fées - Les annales du Disque-Monde - 12', 'Witches Abroad', 1, 1, '2004-07-08 00:00:00', FALSE, '2004-07-12 00:00:00', '2004-07-17 00:00:00', 0.0, 9, 222, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(874, 0, 6, 2004, 'Caste barbare - La compagnie des glaces - Nouvelle époque - 18', '', 2, 1, '2004-07-08 00:00:00', FALSE, '2004-07-09 00:00:00', '2004-07-12 00:00:00', 0.0, 5, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(875, 5628, 3, 1992, 'Les dômes de feu - La trilogie des périls - 1', 'Domes of fire', 1, 1, '2004-07-22 00:00:00', FALSE, NULL, NULL, 0.0, 11, 135, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(876, 0, 65, 1997, 'L''avocat du diable - La malédiction du sang - 1', 'The Devil''s Advocate', 5, 1, '2003-03-26 00:00:00', FALSE, '2004-08-04 00:00:00', '2004-08-10 00:00:00', 0.0, 24, 266, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(878, 0, 6, 2004, 'Parano River - La compagnie des glaces - Nouvelle époque - 19', '', 2, 1, '2004-09-04 00:00:00', FALSE, '2004-09-06 00:00:00', '2004-09-17 00:00:00', 0.0, 5, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(879, 9, 6, 1992, 'El Borak l''invincible', 'El Borak….', 5, 1, '2004-09-28 00:00:00', FALSE, NULL, NULL, 0.0, 28, 62, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(880, 5809, 3, 1992, 'Les petits dieux - Les annales du disque monde - 13', 'Small gods', 1, 1, '2004-10-25 00:00:00', FALSE, '2004-10-25 00:00:00', '2004-11-19 00:00:00', 0.0, 9, 222, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(881, 139, 67, 1997, 'La tour des anges - A la croisée des mondes - II', 'The subtle knife', 2, 1, '2004-12-13 00:00:00', FALSE, '2005-01-20 00:00:00', '2005-02-08 00:00:00', 0.0, 34, 279, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(882, 130, 67, 1995, 'Les royaumes du Nord - A la croisée des mondes - I', 'Northern lights', 2, 1, '2004-12-13 00:00:00', FALSE, '2005-01-06 00:00:00', '2005-01-19 00:00:00', 0.0, 34, 279, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(883, 146, 67, 2000, 'Le miroir d''Ambre - A la croisée des mondes - III', 'The Amber spyglass', 2, 1, '2004-12-13 00:00:00', FALSE, '2005-02-09 00:00:00', '2005-03-15 00:00:00', 0.0, 34, 279, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(884, 0, 6, 2004, 'Indomptable Fleur - La compagnie des glaces - Nouvelle époque - 20', '', 2, 1, '2004-12-20 00:00:00', FALSE, '2004-12-26 00:00:00', '2005-01-06 00:00:00', 0.0, 5, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(885, 1498, 35, 1938, 'Bonjour, Jeeves', 'The code of the Woosters', 12, 1, '2005-04-01 00:00:00', FALSE, '2005-03-25 00:00:00', '2005-04-02 00:00:00', 0.0, 14, 280, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(886, 0, 6, 2005, 'Le masque de l''autre - La compagnie des glaces - Nouvelle époque - 21', '', 2, 1, '2005-04-02 00:00:00', FALSE, '2005-04-02 00:00:00', '2004-04-11 00:00:00', 0.0, 5, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(887, 0, 6, 2005, 'Passions rapaces - La compagnie des glaces - Nouvelle époque - 22', '', 2, 1, '2005-05-14 00:00:00', FALSE, '2005-08-03 00:00:00', '2005-08-19 00:00:00', 0.0, 5, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(888, 23, 6, 2005, 'L''irrévocable testament - La compagnie des glaces - Nouvelle époque - 23', '', 2, 1, '2005-08-16 00:00:00', FALSE, '2005-08-19 00:00:00', '2005-08-22 00:00:00', 0.0, 5, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(889, 4305, 1, 1989, 'Les piliers de la Terre', 'The pillars of the earth', 10, 1, '2005-09-22 00:00:00', FALSE, '2005-08-22 00:00:00', '2006-02-20 00:00:00', 0.0, 14, 281, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(891, 24, 6, 2005, 'L''ultime mirage - La compagnie des glaces - Nouvelle Epoque - 24', '', 2, 1, '2006-02-21 00:00:00', FALSE, '2006-02-22 00:00:00', '2006-03-12 00:00:00', 0.0, 5, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(892, 0, 35, 0, 'Gardez le sourire, Jeeves !', '', 12, 1, '2006-04-18 00:00:00', FALSE, '2006-03-13 00:00:00', '2006-04-16 00:00:00', 0.0, 30, 280, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(893, 0, 40, 1984, 'La compagnie noire', 'The black company', 5, 1, '2005-12-25 00:00:00', FALSE, '2006-04-16 00:00:00', '2006-04-30 00:00:00', 0.0, 35, 282, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(894, 0, 40, 1984, 'Le château noir - La compagnie noire - 2', 'Dark castle', 5, 1, '2005-12-25 00:00:00', FALSE, '2006-05-01 00:00:00', '2006-06-09 00:00:00', 0.0, 35, 282, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(895, 0, 40, 1990, 'La rose blanche - La compagnie noire - 3', 'The white ?', 1, 1, '2005-12-25 00:00:00', FALSE, '2006-06-10 00:00:00', '2006-09-29 00:00:00', 0.0, 35, 282, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(896, 0, 40, 1990, 'Jeux d''ombres - La compagnie noire - 4', '??', 1, 1, '2006-10-07 00:00:00', FALSE, '2006-10-04 00:00:00', '2007-02-27 00:00:00', 0.0, 35, 282, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(897, 0, 40, 0, 'Rêve d''acier - La compagnie noire - 5', '', 1, 1, '2006-10-07 00:00:00', FALSE, '2007-02-27 00:00:00', '2007-07-21 00:00:00', 0.0, 35, 282, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(898, 0, 40, 0, 'La pointe d''argent - La compagnie noire - 6', '', 1, 1, '2006-10-07 00:00:00', FALSE, '2007-07-22 00:00:00', '2007-08-09 00:00:00', 0.0, 35, 282, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(899, 15148, 1, 1996, 'Désolation', 'Desperation', 4, 1, '2007-07-23 00:00:00', FALSE, '2007-08-10 00:00:00', '2008-04-03 00:00:00', 0.0, 14, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(900, 0, 40, 1996, 'Saisons funestes - La compagnie noire - 7', 'Bleak seasons', 1, 1, '2008-04-03 00:00:00', FALSE, '2008-04-03 00:00:00', '2008-04-17 00:00:00', 0.0, 35, 282, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(901, 0, 40, 1997, 'Elle est les ténèbres - La compagnie noire - 8', 'She is the darkness', 1, 1, '2008-04-03 00:00:00', FALSE, '2008-04-18 00:00:00', '2008-05-24 00:00:00', 0.0, 35, 282, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(902, 37206, 1, 2007, 'La fenêtre jaune', '', 6, 1, '2008-06-18 00:00:00', FALSE, '2008-06-18 00:00:00', '2008-06-27 00:00:00', 0.0, 14, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(903, 0, 40, 1999, 'L''eau dort - La compagnie noire - 9', 'Water sleeps', 1, 1, '2008-06-15 00:00:00', FALSE, '2008-06-28 00:00:00', '2008-09-13 00:00:00', 0.0, 14, 282, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(904, 0, 40, 0, 'Soldat de pierre - La compagnie noire - 10', 'Soldier of stone', 1, 1, '2008-06-15 00:00:00', FALSE, NULL, NULL, 0.0, 14, 282, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(905, 0, 40, 2000, 'Soldats de pierre - La compagnie noire - 10', 'Soldiers live', 1, 1, '2008-06-15 00:00:00', FALSE, '2008-09-13 00:00:00', '2008-12-07 00:00:00', 0.0, 14, 282, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(906, 5591, 2, 1996, 'Le trône de fer', 'A game of Thrones', 1, 1, '2008-12-13 00:00:00', FALSE, '2008-12-13 00:00:00', '2008-12-27 00:00:00', 0.0, 26, 283, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(907, 6037, 2, 1996, 'Le donjon rouge - Le trône de fer - 2', 'A game of Thrones - part 2', 1, 1, '2009-04-28 00:00:00', FALSE, '2008-12-27 00:00:00', '2009-01-20 00:00:00', 0.0, 26, 283, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(908, 6090, 2, 1999, 'La bataille des rois - Le trône de fer - 3', 'A clash of kings - Part I', 1, 1, '2009-04-28 00:00:00', FALSE, '2009-01-20 00:00:00', '2009-03-22 00:00:00', 0.0, 26, 283, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(909, 6263, 2, 1999, 'L''ombre maléfique - Le trône de fer - 4', 'A clash of kings - Part 2', 1, 1, '2009-04-28 00:00:00', FALSE, '2009-03-22 00:00:00', '2009-04-27 00:00:00', 0.0, 26, 283, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(910, 6335, 2, 1999, 'L''invincible forteresse - Le trône de fer - 5', 'A clash of kings - part 3', 10, 1, '2009-04-28 00:00:00', FALSE, '2009-04-28 00:00:00', '2009-05-16 00:00:00', 0.0, 26, 283, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(911, 6513, 2, 2000, 'Intrigues à Port-Réal - Le trône de fer - 6', 'A storm of swords - Part 1', 1, 1, '2009-05-31 00:00:00', FALSE, '2009-05-23 00:00:00', '2009-06-22 00:00:00', 0.0, 26, 283, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(912, 6709, 2, 2000, 'L''épée de feu - Le trone de fer - 7', 'A storm of swords - Part 2', 1, 1, '2009-08-08 00:00:00', FALSE, '2009-06-25 00:00:00', '2009-07-23 00:00:00', 0.0, 26, 283, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(913, 6894, 2, 2000, 'Les noces pourpres - Le trone de fer - 8', 'A storm of swords - Part 3', 1, 1, '2009-08-08 00:00:00', FALSE, '2009-08-06 00:00:00', '2009-09-06 00:00:00', 0.0, 26, 283, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(914, 7339, 2, 2000, 'La loi du régicide - Le trone de fer - 9', 'A storm of swords - Part 4', 1, 1, '2009-08-08 00:00:00', FALSE, NULL, NULL, 0.0, 26, 283, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(915, 0, 2, 0, 'La loi du régicide - Le trone de fer - 9', '', 1, 1, '2009-09-06 00:00:00', FALSE, '2009-09-07 00:00:00', '2009-11-03 00:00:00', 0.0, 14, 283, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(916, 0, 68, 2001, 'La nef des fous', 'Ship of fools', 2, 1, '2009-12-03 00:00:00', FALSE, '2009-11-09 00:00:00', '2009-12-03 00:00:00', 0.0, 14, 284, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(917, 37045, 1, 2004, 'Les cavaliers de la pyramide', '', 3, 1, '2009-12-03 00:00:00', FALSE, '2009-12-03 00:00:00', '2009-12-19 00:00:00', 0.0, 14, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(918, 27062, 1, 2008, 'Le masque d''argile', '', 3, 1, '2009-12-03 00:00:00', FALSE, '2010-02-14 00:00:00', '2010-03-08 00:00:00', 0.0, 14, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(919, 5810, 3, 1992, 'Nobliaux et sorcières - Les annales du disque monde - 14', 'Lords and ladies', 1, 1, '2009-12-03 00:00:00', FALSE, '2009-12-19 00:00:00', '2010-01-03 00:00:00', 0.0, 9, 222, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(920, 5826, 3, 1993, 'Le Guet des orfèvres - Les annales du disque monde - 15', 'Men at arms', 1, 1, '2009-12-03 00:00:00', FALSE, '2010-06-13 00:00:00', '2010-09-28 00:00:00', 0.0, 9, 222, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(921, 332, 67, 2008, 'Janua Vera', '', 1, 2, '2010-01-07 00:00:00', FALSE, '2010-01-26 00:00:00', '2010-02-14 00:00:00', 0.0, 14, 285, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(922, 271, 67, 2006, 'La horde du Contrevent', '', 2, 1, '2010-01-07 00:00:00', FALSE, '2010-10-22 00:00:00', '2011-01-06 00:00:00', 0.0, 14, 286, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(923, 228, 67, 1951, 'La planète géante', '', 2, 1, '2010-01-07 00:00:00', FALSE, '2010-01-09 00:00:00', '2010-01-26 00:00:00', 0.0, 14, 63, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(924, 7350, 2, 2001, 'American gods', 'American gods', 5, 1, '2010-01-07 00:00:00', FALSE, '2010-03-08 00:00:00', '2010-05-07 00:00:00', 0.0, 14, 248, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(925, 377, 67, 2004, 'Arlis des forains', '', 5, 1, '2010-09-15 00:00:00', FALSE, '2010-09-29 00:00:00', '2010-10-15 00:00:00', 0.0, NULL, 287, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(926, 365, 67, 2008, 'Serpentine', '', 2, 1, '2011-06-06 00:00:00', TRUE, '2011-01-15 00:00:00', '2011-01-30 00:00:00', 0.0, NULL, 287, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(927, 382, 67, 2010, 'Evadés de l''enfer !', 'Escape from hell!', 5, 1, '2011-06-06 00:00:00', TRUE, '2011-01-31 00:00:00', '2011-02-13 00:00:00', 0.0, NULL, 288, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(928, 362, 67, 2005, 'Spin', 'Spin', 2, 1, '2011-06-06 00:00:00', TRUE, '2011-02-13 00:00:00', '2011-03-10 00:00:00', 0.0, NULL, 289, 'images/spin.jpg', NULL, NULL, NULL, 0, '', 'Arnaud Clerc'),
(929, 385, 67, 1994, 'Contes de la fée verte', '', 4, 2, '2011-06-06 00:00:00', TRUE, '2011-03-19 00:00:00', '2011-04-06 00:00:00', 0.0, NULL, 290, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(930, 0, 28, 1932, 'Voyage au bout de la nuit', '', 10, 1, '2011-06-06 00:00:00', FALSE, '2011-04-07 00:00:00', '2011-06-05 00:00:00', 0.0, NULL, 291, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(931, 0, 69, 1990, 'Terre natale - La trilogie de l''elfe noir - 1', 'Homeland', 1, 1, '2011-06-06 00:00:00', TRUE, '2011-06-05 00:00:00', '2011-06-13 00:00:00', 0.0, NULL, 292, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(932, 0, 69, 1990, 'Terre d''exil - La trilogie de l''elfe noir - 2', 'Exile', 1, 1, '2011-06-06 00:00:00', TRUE, '2011-06-14 00:00:00', '2011-07-01 00:00:00', 0.0, NULL, 292, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(933, 0, 69, 1991, 'Terre promise - La trilogie de l''elfe noir - 3', 'Sojourn', 1, 1, '2011-08-08 00:00:00', TRUE, '2011-07-02 00:00:00', '2011-07-28 00:00:00', 0.0, NULL, 292, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(934, 390, 67, 2009, 'Le Déchronologue', '', 1, 1, '2011-08-12 00:00:00', TRUE, '2011-07-29 00:00:00', '2011-08-11 00:00:00', 0.0, NULL, 293, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(935, 386, 67, 2008, 'Notre-Dame-aux-écailles', '', 5, 1, '2011-09-16 00:00:00', TRUE, '2011-08-30 00:00:00', '2011-09-16 00:00:00', 0.0, NULL, 287, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(936, 402, 67, 2008, 'Mémoria', '', 2, 1, '2011-09-16 00:00:00', TRUE, '2011-09-16 00:00:00', '2011-09-26 00:00:00', 0.0, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(937, 388, 67, 2009, 'Gagner la guerre', '', 1, 1, '2013-12-28 00:00:00', FALSE, '2011-09-26 00:00:00', '2011-10-31 00:00:00', 0.0, NULL, 285, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(938, 1650, 2, 1959, 'Les Déportés du Cambrien', '', 2, 1, '2013-12-28 00:00:00', FALSE, '2011-11-02 00:00:00', '2011-11-07 00:00:00', 0.0, NULL, 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(939, 406, 67, 2008, 'Le Haut-lieu et autres espaces inhabitables', '', 5, 1, '2013-12-28 00:00:00', FALSE, '2011-11-08 00:00:00', '2011-11-20 00:00:00', 0.0, NULL, 116, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(940, 423, 67, 2012, 'La vieille anglaise et le continent', '', 2, 1, '2014-04-03 00:00:00', TRUE, '2012-05-21 00:00:00', '2012-06-04 00:00:00', NULL, 14, 512, 'images/la_vieille_anglaise_et_le_continent.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(941, 0, 26, 2009, 'La forêt des Mânes', '', 6, 1, '2014-04-09 00:00:00', TRUE, '2012-01-11 00:00:00', '2012-01-30 00:00:00', NULL, 14, 516, '', NULL, NULL, NULL, NULL, NULL, NULL),
(942, 5827, 3, 1994, ' Accros du roc - Les annales du Disque Monde - 16', 'Soul Music', 1, 1, '2014-04-09 00:00:00', TRUE, '2012-01-30 00:00:00', '2012-02-21 00:00:00', 0.0, NULL, 222, 'images/accros_du_roc.jpg', '', '', NULL, NULL, NULL, NULL),
(943, 411, 67, 1953, 'L''homme démoli', 'The Desmolished Man', 2, 1, '2014-04-10 00:00:00', TRUE, '2012-02-21 00:00:00', '2012-03-04 00:00:00', 0.0, NULL, 197, 'images/lhomme_demoli.jpg', '', '', NULL, NULL, NULL, NULL),
(944, 1, 69, 1990, 'Le sorceleur - Le dernier voeu', 'Wiedźmin', 1, 2, '2014-05-03 00:00:00', TRUE, '2012-03-04 00:00:00', '2012-03-17 00:00:00', 0.0, NULL, 514, 'images/sorceleur_1.jpg', '', '', NULL, NULL, NULL, NULL),
(945, 2, 69, 1992, 'L''épée de la providence - Sorceleur tome 2', 'Miecz przeznaczenia', 1, 2, '2014-05-03 00:00:00', TRUE, '2012-03-18 00:00:00', '2012-04-07 00:00:00', 0.0, NULL, 514, 'images/lepee_de_la_providence.jpg', '', '', NULL, NULL, NULL, NULL),
(946, 405, 67, 1994, 'Mysterium', 'Mysterium', 2, 1, '2014-05-03 00:00:00', TRUE, '2012-04-07 00:00:00', '2012-04-18 00:00:00', 0.0, NULL, 289, 'images/mysterium.jpg', '', '', NULL, NULL, NULL, NULL),
(947, 417, 67, 1984, 'Le glamour', 'The glamour', 5, 1, '2014-05-03 00:00:00', TRUE, '2012-04-14 00:00:00', '2012-04-20 00:00:00', NULL, NULL, 260, 'images/le_glamour.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(948, 421, 67, 2012, 'Du sel sous les paupières', '', 2, 1, '2014-05-03 00:00:00', TRUE, '2012-04-21 00:00:00', '2012-04-30 00:00:00', NULL, NULL, 235, 'images/du_sel_sous_les_paupieres.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(949, 3, 69, 1994, 'Le Sang des elfes - Sorceleur tome 3', 'Krew elfów', 1, 1, '2014-05-03 00:00:00', TRUE, '2012-05-01 00:00:00', '2012-05-09 00:00:00', NULL, NULL, 514, 'images/le_sang_des_elfes.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(950, 4, 69, 1995, 'Le Temps du mépris - Sorceleur tome 4', 'Czas pogardy', 1, 1, '2014-05-03 00:00:00', TRUE, '2012-05-10 00:00:00', '2012-05-21 00:00:00', NULL, NULL, 514, 'images/Temps_du_mepris.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(951, 419, 67, 2007, 'Axis', 'Axis', 2, 1, '2014-05-03 00:00:00', TRUE, '2012-06-04 00:00:00', '2012-06-22 00:00:00', NULL, NULL, 289, 'images/axis.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(952, 0, 77, 1988, 'The girl with the dragon tatoo - Millenium tome 1', 'The girl with the dragon tatoo - Millenium tome 1', 3, 1, '2014-05-03 00:00:00', TRUE, '2012-06-22 00:00:00', '2012-07-13 00:00:00', NULL, NULL, 515, 'images/girl_with_the_dragon_tatoo.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(953, 413, 67, 1957, 'Terminus les étoiles', 'The Stars My Destination', 2, 1, '2014-05-03 00:00:00', TRUE, '2012-07-15 00:00:00', '2012-07-19 00:00:00', NULL, NULL, 197, 'images/terminus_les_etoiles.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(954, 0, 2, 2008, 'Miserere', '', 3, 1, '2014-05-03 00:00:00', TRUE, '2012-07-19 00:00:00', '2012-07-25 00:00:00', NULL, NULL, 516, 'images/miserere.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(955, 0, 3, 2010, 'Dortoir interdit', '', 6, 1, '2014-05-03 00:00:00', TRUE, '2012-07-25 00:00:00', '2012-08-04 00:00:00', NULL, NULL, 3, 'images/dortoir_interdit.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(956, 416, 67, 2009, 'Tancrède. Une uchronie', '', 10, 1, '2014-05-03 00:00:00', TRUE, '2012-08-04 00:00:00', '2012-08-12 00:00:00', NULL, NULL, 517, 'images/tancrede_une_uchronie.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(957, 0, 3, 2002, 'L''âme du mal', '', 3, 1, '2014-05-03 00:00:00', TRUE, '2012-08-13 00:00:00', '2012-08-25 00:00:00', NULL, NULL, 518, 'images/ame_du_mal.JPG', NULL, NULL, NULL, NULL, NULL, NULL),
(958, 384, 67, 1982, 'Le roi des elfes', 'King of elves', 2, 2, '2014-05-08 00:00:00', TRUE, '2012-08-25 00:00:00', '2012-09-04 00:00:00', NULL, NULL, 57, 'images/le_roi_des_elfes.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(959, 0, 3, 0, 'Ceux d''en bas', '', 6, 1, '2014-05-08 00:00:00', TRUE, '2012-09-04 00:00:00', '2012-09-18 00:00:00', NULL, NULL, 3, 'images/ceux_den_bas_1.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(960, 0, 69, 1996, 'Le baptême de feu - Sorceleur tome 5', 'hrzest ognia', 1, 1, '2014-11-10 00:00:00', TRUE, '2012-09-19 00:00:00', '2012-09-28 00:00:00', 0.0, NULL, 514, 'images/le_bapteme_de_feu.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(961, 431, 67, 2009, 'Voisins d''ailleurs', '', 2, 2, '2014-11-10 00:00:00', TRUE, '2012-09-28 00:00:00', '2012-10-10 00:00:00', 0.0, NULL, 519, 'images/voisins_dailleurs.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(962, 0, 3, 2004, 'In Tenebris', '', 6, 1, '2014-11-10 00:00:00', TRUE, '2012-10-11 00:00:00', '2012-10-27 00:00:00', 0.0, NULL, 518, 'images/in_tenebris.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(963, 434, 67, 2008, 'Vélum - Le livre de toutes les heures - 1', 'Vellum', 5, 1, '2014-11-10 00:00:00', TRUE, '2012-10-27 00:00:00', '2012-11-12 00:00:00', 0.0, NULL, 520, 'images/velum.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(964, 0, 3, 1994, 'Les tribulations d''un mage en Aurient - Les annales du disque monde - 17', 'Interesting Times', 1, 1, '2014-11-10 00:00:00', TRUE, '2012-11-12 00:00:00', '2012-12-09 00:00:00', 0.0, NULL, 222, 'images/tribulations_dun_mage.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(965, 0, 67, 1991, 'Roi du matin, reine du jour', 'King of Morning, Queen of Day', 5, 1, '2014-11-10 00:00:00', TRUE, '2012-12-10 00:00:00', '2013-01-03 00:00:00', 0.0, NULL, 521, 'images/roi_du_matin.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(966, 0, 69, 1997, 'La tour de l''hirondelle - Sorceleur tome 6', 'Wieża Jaskółki', 1, 1, '2014-11-10 00:00:00', TRUE, '2013-01-03 00:00:00', '2013-01-27 00:00:00', 0.0, NULL, 514, 'images/la_tour_de_lhirondelle.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(967, 0, 3, 2012, 'Le chat aux yeux jaunes', '', 6, 1, '2014-11-10 00:00:00', TRUE, '2013-01-27 00:00:00', '2013-02-04 00:00:00', 0.0, NULL, 3, 'images/le_chat_aux_yeux_jaunes.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(968, 430, 67, 1967, 'Seigneur de lumière', 'Lord of Light', 2, 1, '2014-11-10 00:00:00', TRUE, '2013-02-04 00:00:00', '2013-02-13 00:00:00', 0.0, NULL, 132, 'images/seigneur_de_lumiere.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(969, 399, 67, 1964, 'Sécheresse', 'The drought', 2, 1, '2014-11-10 00:00:00', TRUE, '2013-02-14 00:00:00', '2013-02-24 00:00:00', 0.0, NULL, 44, 'images/secheresse.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(970, 0, 77, 0, 'The Girl Who Played with Fire', 'The Girl Who Played with Fire', 6, 1, '2014-11-10 00:00:00', TRUE, '2013-02-25 00:00:00', '2013-03-27 00:00:00', 0.0, NULL, 515, 'images/the_girl_who_played_with_fire.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(971, 349, 67, 2003, 'Blind lake', 'Blind lake', 2, 1, '2014-11-10 00:00:00', TRUE, '2013-03-27 00:00:00', '2013-04-12 00:00:00', 0.0, NULL, 289, 'images/blind_lake.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(972, 310, 67, 2002, 'La séparation', 'The Separation', 2, 1, '2014-11-10 00:00:00', TRUE, '2013-04-12 00:00:00', '2013-04-24 00:00:00', 0.0, NULL, 260, 'images/separation.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(973, 443, 67, 2013, 'Le dernier des maîtres', '', 2, 2, '2014-11-20 00:00:00', TRUE, '2013-04-24 00:00:00', '2013-05-01 00:00:00', 0.0, NULL, 57, 'images/dernier_des_maitres.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(974, 444, 67, 2007, 'Les Lames du Cardinal - 1', '', 5, 1, '2014-11-20 00:00:00', TRUE, '2013-05-01 00:00:00', '2013-05-11 00:00:00', 0.0, NULL, 277, 'images/lames_du_cardinal_1.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(975, 450, 67, 2013, 'Frontière barbare', '', 2, 1, '2014-11-20 00:00:00', TRUE, '2013-05-11 00:00:00', '2013-05-22 00:00:00', 0.0, NULL, 3, 'images/frontiere_barbare.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(976, 433, 67, 2012, 'Sympathies for the devil', '', 2, 2, '2014-11-20 00:00:00', TRUE, '2013-05-22 00:00:00', '2013-06-05 00:00:00', 0.0, NULL, 235, 'images/sympathies.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(977, 0, 69, 0, 'La Dame du lac - Sorceleur tome 7', 'Pani Jeziora', 1, 1, '2014-11-20 00:00:00', TRUE, '2013-06-05 00:00:00', '2013-07-08 00:00:00', 0.0, NULL, 514, 'images/la_dame_du_lac.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(978, 451, 67, 451, 'CLEER', '', 2, 2, '2014-11-20 00:00:00', TRUE, '2013-07-08 00:00:00', '2013-07-22 00:00:00', 0.0, NULL, 522, 'images/cleer.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(979, 0, 1, 2007, 'Le Serment des Limbes', '', 6, 1, '2014-11-20 00:00:00', TRUE, '2013-07-22 00:00:00', '2013-08-02 00:00:00', 0.0, NULL, 516, 'images/serment_des_limbes.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(980, 449, 67, 1991, 'À travers temps', 'A Bridge of Years', 2, 1, '2014-11-20 00:00:00', TRUE, '2013-08-02 00:00:00', '2013-08-20 00:00:00', 0.0, NULL, 289, 'images/a_travers_temps.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(981, 435, 67, 2007, 'Encre - Le livre de toutes les heures - 2', 'Vélum - Le livre de toutes les heures - 1', 5, 1, '2014-11-20 00:00:00', TRUE, '2013-08-20 00:00:00', '2013-09-14 00:00:00', 0.0, NULL, 288, 'images/encre.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(982, 0, 26, 2009, 'Dome - tome 1', 'Under the Dome', 2, 1, '2014-11-20 00:00:00', TRUE, '2013-09-14 00:00:00', '2013-10-11 00:00:00', 0.0, NULL, 4, 'images/dome1.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(983, 0, 1, 2009, 'Dome - tome 2', 'Under the Dome', 2, 1, '2014-11-20 00:00:00', TRUE, '2013-10-11 00:00:00', '2013-11-02 00:00:00', 0.0, NULL, 4, 'images/dome2.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(984, 412, 67, 2009, 'L''alchimiste de l''ombre - Les Lames du Cardinal - 2', '', 5, 1, '2014-11-24 00:00:00', TRUE, '2013-11-03 00:00:00', '2013-11-12 00:00:00', 0.0, NULL, 277, 'images/alchimise_de_lombre.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(985, 0, 1, 2003, 'La captive de l''hiver', '', 5, 1, '2014-11-24 00:00:00', TRUE, '2013-11-12 00:00:00', '2013-11-24 00:00:00', 0.0, NULL, 3, 'images/captive_hiver.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(986, 0, 67, 2010, 'L''odysee Folio SF', '', 2, 2, '2014-11-24 00:00:00', TRUE, '2013-11-25 00:00:00', '2013-12-02 00:00:00', 0.0, NULL, 523, 'images/odyssee_folio_sf.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(987, 461, 67, 2010, 'Rosée de feu', '', 5, 1, '2014-11-24 00:00:00', TRUE, '2013-12-02 00:00:00', '2013-12-09 00:00:00', 0.0, NULL, 524, 'images/foliosf461-2013.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(988, 439, 67, 2010, 'Loup, y es-tu ?', '', 5, 1, '2014-11-24 00:00:00', TRUE, '2013-12-10 00:00:00', '2013-12-22 00:00:00', 0.0, NULL, 525, 'images/loup_y_es_tu.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(989, 452, 67, 2011, 'Wastburg', '', 1, 1, '2014-11-24 00:00:00', TRUE, '2013-12-22 00:00:00', '2014-01-03 00:00:00', 0.0, NULL, 526, 'images/wastburg.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(990, 465, 67, 2013, 'Trajets et itinéraires de la mémoire', '', 2, 2, '2014-12-11 00:00:00', TRUE, '2014-01-03 00:00:00', '2014-01-19 00:00:00', 0.0, NULL, 3, 'images/trajet_et_itiniraire_de_la_memoire.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(991, 424, 67, 2012, 'Kane, l''intégrale 1/3', '', 1, 1, '2014-12-11 00:00:00', TRUE, '2014-01-19 00:00:00', '2014-02-08 00:00:00', 0.0, NULL, 527, 'images/kane1.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(992, 0, 80, 2008, 'Name of the wind', '', 1, 1, '2014-12-11 00:00:00', TRUE, '2014-01-11 00:00:00', '2014-03-01 00:00:00', 0.0, NULL, 528, 'images/name_of_the_wind.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(993, 459, 67, 2010, 'Les faucheurs sont les anges', 'The Reapers are the Angels', 5, 1, '2014-12-11 00:00:00', TRUE, '2014-02-08 00:00:00', '2014-02-18 00:00:00', 0.0, NULL, 529, 'images/les_faucheurs_sont_les_anges.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(994, 473, 67, 2012, 'Le dragon des arcanes - Les lames du cardinal - Tome 3', '', 1, 1, '2014-12-11 00:00:00', TRUE, '2014-02-18 00:00:00', '2014-03-08 00:00:00', 0.0, NULL, 277, 'images/dragon_des_arcanes.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(995, 0, 80, 2013, 'The wise man''s fear', '', 1, 1, '2014-12-11 00:00:00', TRUE, '2014-03-01 00:00:00', '2014-09-18 00:00:00', 0.0, NULL, 528, 'images/the_wise_mans_fear.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(996, 468, 67, 2002, 'Moi, Lucifer', 'I, Lucifer', 5, 1, '2014-12-11 00:00:00', TRUE, '2014-03-09 00:00:00', '2014-03-24 00:00:00', 0.0, NULL, 530, 'images/moi_lucifer.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(997, 457, 67, 2013, 'Question de méthode', '', 2, 2, '2015-01-24 00:00:00', TRUE, '2014-03-24 00:00:00', '2014-04-07 00:00:00', 0.0, NULL, 57, 'images/question_de_methode.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(998, 0, 67, 2011, 'Les Jours étranges de Nostradamus', '', 5, 1, '2015-01-24 00:00:00', TRUE, '2014-04-08 00:00:00', '2014-04-30 00:00:00', 0.0, NULL, 531, 'images/nostradamus.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(999, 458, 67, 2007, 'Berazachussetts', 'Berazachussetts', 5, 1, '2015-01-24 00:00:00', TRUE, '2014-04-30 00:00:00', '2014-05-06 00:00:00', 0.0, NULL, 532, 'images/Berazachussetts.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1000, 0, 3, 0, 'Masquarade  - Les annales du disque monde - 18', 'Maskerade', 1, 1, '2015-01-24 00:00:00', TRUE, '2014-05-07 00:00:00', '2014-05-29 00:00:00', 0.0, NULL, 222, 'images/masquarade.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1001, 0, 67, 0, 'La voie du sabre', '', 5, 1, '2015-01-24 00:00:00', TRUE, '2014-05-29 00:00:00', '2014-05-31 00:00:00', 0.0, NULL, 235, 'images/voie_du_sabre.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1002, 463, 67, 2004, 'Le fleuve des dieux', 'River of gods', 2, 1, '2015-01-24 00:00:00', TRUE, '2014-06-01 00:00:00', '2014-07-09 00:00:00', 0.0, NULL, 521, 'images/le_fleuve_des_dieux.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1003, 0, 1, 2004, 'La ligne noire', '', 6, 1, '2015-03-05 00:00:00', TRUE, '2014-07-10 00:00:00', '2014-07-18 00:00:00', 0.0, NULL, 516, 'images/ligne_noire_1.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1004, 470, 67, 0, 'La baiser du rasoir', 'The Straight Razor Cure', 5, 1, '2015-03-05 00:00:00', TRUE, '2014-07-18 00:00:00', '2014-07-24 00:00:00', 0.0, NULL, 533, 'images/baiser_du_rasoir.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1005, 474, 67, 2014, 'Aucun souvenir assez solide', '', 2, 2, '2015-03-05 00:00:00', TRUE, '2014-07-24 00:00:00', '2014-08-02 00:00:00', 0.0, NULL, 286, 'images/aucun_souvenir_assez_solide.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1006, 0, 79, 2011, 'Le mystère du lac perdu', '', 10, 1, '2015-03-05 00:00:00', TRUE, '2014-08-03 00:00:00', '2014-08-12 00:00:00', 0.0, NULL, 534, 'images/mystere_du_lac_perdu.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1007, 488, 67, 2011, 'Ainsi naissent les fantômes', '', 5, 2, '2015-03-05 00:00:00', TRUE, '2014-08-13 00:00:00', '2014-08-19 00:00:00', 0.0, NULL, 220, 'images/ainsi_naissent_les_fantomes.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1008, 467, 67, 2005, 'Seeker', 'Seeker', 2, 1, '2015-03-05 00:00:00', TRUE, '2014-08-20 00:00:00', '2014-10-01 00:00:00', 0.0, NULL, 535, 'images/seeker.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1009, 477, 67, 2014, 'Daemone', '', 2, 1, '2015-03-05 00:00:00', TRUE, '2014-10-01 00:00:00', '2014-10-11 00:00:00', 0.0, NULL, 235, 'images/daemone.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1010, 0, 80, 0, 'Dracula', 'Dracula', 5, 1, '2015-06-20 00:00:00', TRUE, '2014-10-05 00:00:00', NULL, NULL, NULL, 536, 'images/dracula.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1011, 0, 3, 1996, 'Pieds d''argile - Les Annales du Disque-monde - 19', 'Feet of Clay', 1, 1, '2015-06-20 00:00:00', TRUE, '2014-10-11 00:00:00', '2014-10-30 00:00:00', NULL, NULL, 222, 'images/Pieds_dArgile.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1012, 0, 7, 1987, 'Le dhalia noir', 'Black dhalia', 3, 1, '2015-06-20 00:00:00', TRUE, '2014-10-30 00:00:00', '2014-11-18 00:00:00', 0.0, NULL, 537, 'images/dahlia_noir.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1013, 489, 67, 2010, 'La soif primordiale', 'Los anticuarios', 5, 1, '2015-06-20 00:00:00', TRUE, '2014-11-18 00:00:00', '2014-11-27 00:00:00', 0.0, NULL, 538, 'images/la_soif_primordiale.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1014, 0, 2, 1950, 'Les robots', 'I, robot', 2, 1, '2015-06-20 00:00:00', TRUE, '2014-11-27 00:00:00', '2014-12-05 00:00:00', 0.0, NULL, 51, 'images/les_robots.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1015, 476, 67, 1970, 'Dilvish le damné', 'Dilvish', 1, 1, '2015-06-20 00:00:00', TRUE, '2014-12-05 00:00:00', '2014-12-22 00:00:00', 0.0, NULL, 132, 'images/dilvish.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1016, 478, 67, 0, 'Ne pas se fier à la couverture', '', 2, 1, '2015-06-20 00:00:00', TRUE, '2014-12-25 00:00:00', '2015-01-08 00:00:00', 0.0, NULL, 57, 'images/ne_pas_se_fier_a_la_couverture.jpg', '', '', NULL, NULL, NULL, NULL),
(1017, 475, 67, 1996, 'Les opéras de l''espace', '', 2, 1, '2015-06-20 00:00:00', TRUE, '2015-01-09 00:00:00', '2015-01-24 00:00:00', 0.0, NULL, 17, 'images/les_operas_de_lespace.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1018, 479, 67, 2014, 'Le casse du continuum', '', 2, 1, '2015-06-21 00:00:00', TRUE, '2015-01-24 00:00:00', '2015-02-05 00:00:00', 0.0, NULL, 539, 'images/le_casse_du_continuum.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1019, 480, 67, 1991, 'Destination Ténèbres', 'The Dark Beyond the Stars', 2, 1, '2015-06-21 00:00:00', TRUE, '2015-02-05 00:00:00', '2015-02-22 00:00:00', 0.0, NULL, 540, 'images/destination_tenebres.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1020, 503, 67, 2002, 'Lignes de Vie', 'The facts of life', 5, 1, '2015-06-26 00:00:00', TRUE, '2015-02-22 00:00:00', '2015-03-08 00:00:00', 0.0, NULL, 541, 'images/lignes_de_vie.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1021, 510, 67, 2011, 'Vortex', 'Vortex', 2, 1, '2015-07-13 00:00:00', TRUE, '2015-03-08 00:00:00', '2015-03-25 00:00:00', 0.0, NULL, 289, 'images/vortex.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1022, 492, 67, 2008, 'La voix du couteau - Le chaos en marche - 1', 'The Knife of Never Letting Go', 2, 1, '2015-07-13 00:00:00', TRUE, '2015-03-25 00:00:00', '2015-04-14 00:00:00', 0.0, NULL, 542, 'images/la_voix_du_couteau.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1023, 0, 80, 2006, 'The Blade itself', 'The Blade itself', 1, 1, '2015-07-13 00:00:00', TRUE, '2015-04-16 00:00:00', '2015-05-24 00:00:00', 0.0, NULL, 543, 'images/blade_itself.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1024, 505, 67, 2013, 'Même pas mort - Rois du monde - 1', NULL, 1, 1, '2015-08-16 00:00:00', TRUE, '2015-05-25 00:00:00', '2015-06-16 00:00:00', 0.0, NULL, 285, 'images/meme_pas_mort.jpg', NULL, NULL, NULL, NULL, '', 'Arnaud Clerc'),
(1025, 0, 80, 2007, 'Before they are hanged', 'Before they are hanged', 1, 1, '2015-08-16 00:00:00', FALSE, '2015-05-28 00:00:00', '2015-08-10 00:00:00', 0.0, NULL, 543, 'images/before_they_are_hanged.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1026, 493, 67, 2009, 'Le cercle et la flèche - Le chaos en marche - 2', 'The Ask and the Answer', 2, 1, '2015-08-16 00:00:00', TRUE, '2015-06-16 00:00:00', '2015-07-12 00:00:00', 0.0, NULL, 542, 'images/le_cercle_et_la_fleche.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1027, 494, 67, 2010, 'La guerre du bruit - Le chaos en marche - 3', 'Monsters of Men', 2, 1, '2015-08-16 00:00:00', TRUE, '2015-07-13 00:00:00', '2015-08-05 00:00:00', 0.0, NULL, 542, 'images/la_guerre_du_bruit.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1028, 0, 80, 0, 'Maléfices', '', 6, 1, '2015-08-16 00:00:00', FALSE, '2015-08-11 00:00:00', '2015-08-29 00:00:00', NULL, NULL, 518, 'images/malefices.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1029, 542, 2, 1964, 'Un défilé de robots - Le cycle des robots - Tome 2', 'The rest of the robots', 2, 2, '2015-09-02 00:00:00', TRUE, '2015-08-29 00:00:00', '2015-09-07 00:00:00', NULL, NULL, 51, 'images/les_robots_-_tome_2.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1030, 20, 81, 2015, 'Le sentiment du fer', '', 1, 2, '2015-09-13 00:00:00', TRUE, '2015-09-07 00:00:00', '2015-09-15 00:00:00', NULL, NULL, 285, 'images/Le_Sentiment_du_Fer.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1031, 0, 67, 1983, 'Armageddon Rag', 'The Armageddon Rag', 5, 1, '2015-10-18 00:00:00', TRUE, '2015-09-15 00:00:00', '2015-10-17 00:00:00', NULL, NULL, 283, 'images/armageddon_rag.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1032, 0, 80, 2008, 'Last Argument of Kings', 'Last Argument of Kings', 1, 1, '2015-10-18 00:00:00', TRUE, '2015-10-17 00:00:00', '2016-01-11 00:00:00', NULL, NULL, 543, 'images/last_argument_of_kings.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1033, 0, 80, 2006, 'The Final Empire - Mistborn - 1', 'The final empire', 1, 1, '2016-01-12 00:00:00', TRUE, '2016-01-12 00:00:00', '2016-07-07 00:00:00', NULL, NULL, 544, 'images/final_empire.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1034, 392, 67, 0, 'L''archipel du rêve', 'The Dream Archipelago', 5, 2, '2016-01-12 00:00:00', TRUE, '2016-01-11 00:00:00', '2016-02-03 00:00:00', NULL, NULL, 260, 'images/archipel_du_reve.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1035, 517, 67, 2015, 'Anges de fer, paradis d''acier', '', 2, 1, '2016-02-15 00:00:00', TRUE, '2016-02-03 00:00:00', '2016-03-06 00:00:00', NULL, NULL, 3, 'images/anges_de_fer_paradis_dacier.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1036, 537, 67, 2014, 'Le jardin des silences', '', 5, 2, '2016-03-07 00:00:00', TRUE, '2016-03-06 00:00:00', '2016-03-16 00:00:00', NULL, NULL, 287, 'images/jardin_des_silences.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1037, 511, 67, 2005, 'Je suis la reine', 'Perehodnyj vozrast', 5, 2, '2015-08-01 00:00:00', TRUE, '2015-08-06 00:00:00', '2015-08-10 00:00:00', NULL, NULL, 545, 'images/je_suis_la_reine.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1038, 536, 67, 1992, 'Les petites fées de New York', 'The Good Fairies of New York', 5, 1, '2016-03-19 00:00:00', TRUE, '2016-03-17 00:00:00', '2016-04-07 00:00:00', NULL, NULL, 546, 'images/les_petites_fees_de_new_york.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1039, 293, 67, 2001, 'Les Chronolithes', 'The Chronoliths', 2, 1, '2016-04-11 00:00:00', TRUE, '2016-04-08 00:00:00', '2016-04-24 00:00:00', NULL, 13, 289, 'images/les_chronolithes.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1040, 0, 80, 196, 'Le Joyau noir - La légende d''Hawkmoon - 1', 'The Jewel in the Skull (The History of the Runestaff, #2) ', 1, 1, '2016-04-17 00:00:00', TRUE, '2016-04-15 00:00:00', '2016-04-17 00:00:00', NULL, NULL, 70, 'images/hawkmoon_le_joyau_noir.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1041, 542, 67, 2013, 'Le Dernier château et autres crimes', 'The last castle', 2, 2, '2016-04-26 00:00:00', TRUE, '2016-04-25 00:00:00', '2016-05-09 00:00:00', NULL, NULL, 63, 'images/le_dernier_chateau.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1042, 0, 80, 1963, 'Le dieu fou - La légende d''Hawkmoon - 2', 'The Mad God''s Amulet (The History of the Runestaff, #2)', 1, 1, '2016-05-08 00:00:00', TRUE, '2016-05-04 00:00:00', '2016-05-07 00:00:00', NULL, NULL, 70, 'images/le_dieu_fou.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1043, 187, 67, 1998, 'Les extrêmes', 'The extremes', 2, 1, '2016-05-12 00:00:00', TRUE, '2016-05-09 00:00:00', '2016-06-01 00:00:00', NULL, NULL, 260, 'images/les_extremes.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1044, 530, 67, 1966, 'La forêt de cristal', 'The Crystal World', 2, 1, '2016-06-10 00:00:00', TRUE, '2016-06-04 00:00:00', '2016-06-15 00:00:00', NULL, NULL, 44, 'images/foret_de_crital.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1045, 0, 80, 1968, 'L''épée de l''aurore -  La légende d''Hawkmoon - 3', 'The Sword of the Dawn', 1, 1, '2016-07-09 00:00:00', TRUE, '2016-07-07 00:00:00', '2016-07-12 00:00:00', NULL, NULL, 70, 'images/epee_de_laurore.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1046, 0, 80, 1969, 'Le secret des runes - La légende d''Hawkmoon - 4', 'The Runestaff', 1, 1, '2016-07-14 00:00:00', TRUE, '2016-07-14 00:00:00', '2016-07-17 00:00:00', NULL, NULL, 70, 'images/le_secret_des_runes.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1047, 0, 80, 0, 'Kaïken', '', 6, 1, '2016-07-31 00:00:00', TRUE, '2016-07-17 00:00:00', '2016-07-21 00:00:00', 2.0, NULL, 516, 'images/kaiken.jpg', '', '', '', 0, NULL, NULL),
(1048, 0, 80, 1973, 'Le comte d''airain - La légende d''Hawkmoon - 5', 'Count brass', 1, 1, '2016-07-31 00:00:00', TRUE, '2016-07-21 00:00:00', '2016-07-24 00:00:00', NULL, NULL, 70, 'images/comte_airain.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1049, 0, 80, 0, 'Le champion de Garathorm - La légende d''Hawkmoon - 6', 'The champion of Garathorm', 1, 1, '2016-07-31 00:00:00', TRUE, '2016-07-24 00:00:00', '2016-07-28 00:00:00', NULL, NULL, 70, 'images/champion_de_garathorm.jpeg', NULL, NULL, NULL, NULL, NULL, NULL),
(1050, 0, 80, 0, 'La quête de Tanelorn - La légende d''Hawkmoon - 7', 'The quest for Tanelorn', 1, 1, '2016-07-31 00:00:00', TRUE, '2016-07-29 00:00:00', '2016-08-11 00:00:00', NULL, NULL, 70, 'images/quete_de_tanelorn.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1051, 0, 77, 0, 'The girl who kicked the hornets'' nest', 'Luftslottet som sprängdes', 3, 1, '2016-07-31 00:00:00', TRUE, '2016-07-22 00:00:00', '2016-09-23 00:00:00', NULL, NULL, 515, 'images/the_girl_who_kicked_the_hornets_nest.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1052, 0, 80, 1971, 'Le Chevalier des épées - Corum - 1', 'The Knight of the Swords', 1, 1, '2016-08-19 00:00:00', TRUE, '2016-08-11 00:00:00', '2016-08-27 00:00:00', NULL, NULL, 70, 'images/chevalier_des_epees.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1053, 0, 79, 2010, 'Jules un papy malin', '', 10, 1, '2016-09-26 00:00:00', TRUE, '2016-09-23 00:00:00', '2016-09-29 00:00:00', NULL, NULL, 547, 'images/jules_papy_malin.jpeg', NULL, NULL, NULL, NULL, NULL, NULL),
(1054, 5909, 3, 1996, 'Le père Porcher - Les annales du disque monde - 20', 'Hogfather', 1, 1, '2016-09-29 00:00:00', TRUE, '2016-09-29 00:00:00', '2016-11-10 00:00:00', NULL, NULL, 222, 'images/le_pere_porcher.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1055, 0, 80, 1997, 'Harry Potter and the Philosopher''s Stone', '', 1, 1, '2016-10-25 00:00:00', TRUE, '2016-10-20 00:00:00', '2016-12-09 00:00:00', NULL, NULL, 548, 'images/Harry-Potter-and-the-Philosophers-Stone.jpg', '', '', 'Harry Potter', 1, NULL, NULL),
(1056, 549, 67, 2011, 'Morwenna', 'Among others', 5, 1, '2016-11-26 00:00:00', TRUE, '2016-11-10 00:00:00', '2016-12-03 00:00:00', NULL, NULL, 549, 'images/morwenna_1.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1057, 0, 69, 2009, 'Servir froid', 'Best served cold', 1, 1, '2016-12-09 00:00:00', TRUE, '2016-12-09 00:00:00', '2017-01-10 00:00:00', NULL, NULL, 543, 'images/servir_froid.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1058, 0, 80, 1998, 'Harry Potter and the chamber of secrets', 'Harry Potter and the chamber of secrets', 5, 1, '2017-01-12 00:00:00', TRUE, '2017-01-11 00:00:00', '2017-01-30 00:00:00', NULL, NULL, 548, 'images/Harry_Potter_and_the_Chamber_of_Secrets.jpg', 'The Dursleys were so mean that hideous that summer that all Harry Potter wanted was to get back to the Hogwarts School for Witchcraft and Wizardry. But just as he''s packing his bags, Harry receives a warning from a strange, impish creature named Dobby who says that if Harry Potter returns to Hogwarts, disaster will strike.

And strike it does. For in Harry''s second year at Hogwarts, fresh torments and horrors arise, including an outrageously stuck-up new professor, Gilderoy Lockheart, a spirit named Moaning Myrtle who haunts the girls'' bathroom, and the unwanted attentions of Ron Weasley''s younger sister, Ginny.

But each of these seem minor annoyances when the real trouble begins, and someone--or something--starts turning Hogwarts students to stone. Could it be Draco Malfoy, a more poisonous rival than ever? Could it possibly be Hagrid, whose mysterious past is finally told? Or could it be the one everyone at Hogwarts most suspects...Harry Potter himself?', '', 'Harry Potter', 2, NULL, NULL),
(1059, 0, 82, 2009, 'La Révolution française - 1 - Le peuple et le roi', '', 10, 1, '2017-01-28 00:00:00', FALSE, '2017-01-04 00:00:00', '2017-01-27 00:00:00', NULL, NULL, 550, 'images/Le-peuple-et-le-Roi.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(1060, 564, 67, 2014, 'Thya - La voie des Oracles - 1', '', 1, 1, '2017-01-31 00:00:00', TRUE, '2017-01-30 00:00:00', '2017-02-09 00:00:00', 3.0, NULL, 551, 'images/thya.jpg', 'Thya est la fille de Gnaeus Sertor, général romain et héros de l’Empire. Mais Thya est aussi une Oracle, peut-être la dernière élue capable de démêler les fils de l’avenir. Elle est donc contrainte de se cacher en Gaule, au fin fond de la forêt d’Aquitania car, à Rome, comme partout ailleurs dans l’Empire, les chrétiens règnent en maîtres et font impitoyablement la chasse aux adorateurs des dieux anciens. Mais lorsque son père est laissé pour mort par des Pictes, Thya n’a plus d’autre solution que de fuir vers le nord pour suivre une étrange vision dans laquelle son père est toujours en vie. 

Premier tome de la trilogie La voie des Oracles, Thya confirme qu''Estelle Faye compte désormais parmi les auteurs de fantasy à suivre. Le roman a d’ailleurs reçu, dans la catégorie «Jeunesse», le prix Imaginales et le prix Elbakin en 2015.', 'Roman de jeunesse avec un rythme assez lent mais bien écrit. Le thème (le Vème siècle) peu abordé dans la littérature mérite le détour. Et les créatures celtes qui survivent tant bien que mal à la montée du christianisme. La fin donne envie de lire la suite (Enoch).', NULL, NULL, NULL, NULL),
(1061, 566, 67, 2017, 'Les Geôliers', '', 5, 1, '2017-02-09 00:00:00', TRUE, '2017-02-09 00:00:00', '2017-02-25 00:00:00', 3.5, NULL, 3, 'images/Les_Geoliers.jpg', 'Il y a quinze ans, Debbie Fevertown s’échappait de Dipton après avoir tué sans pitié son mari et ses deux fils. 
Aujourd’hui, Jillian Caine est engagée par le réalisateur Dieter Jürgen pour écrire le scénario d’un biopic retraçant la vie de la meurtrière. Jill rencontre des gens qui ont connu Debbie et ont partagé son quotidien, se rend sur les lieux du crime et découvre que la réalité n’est peut-être pas celle que les médias ont décrite à l’époque. 
Quels mystères recèle l’étrange ville de Dipton? Que cache ce culte insolite dédié aux arbres? Et qui sont ces mystérieux gardiens que l’on nomme – à voix basse – les Geôliers? 

Avec Les Geôliers, Serge Brussolo renoue avec le thriller fantastique et nous offre un roman sous haute tension qui se lit d’une traite. Un retour gagnant!', 'Bon Brussolo bien mené. Et même si au départ le côté SF semble masqué (Brussolo aime faire douter ses lecteurs), le livre bascule vers la seconde moitié dans de la pure SF brussolienne. ', NULL, NULL, NULL, NULL),
(1062, 358, 67, 2002, 'La tour de Babylone', 'Stories of your life and others', 2, 3, '2017-02-25 00:00:00', TRUE, '2017-02-25 00:00:00', '2017-03-05 00:00:00', 3.5, NULL, 552, 'images/tour_de_babylone.jpg', 'À Babylone, la construction de la tour touche à sa fin. On va bientôt atteindre la voûte du ciel et découvrir les secrets de Jéhovah. Une mathématicienne aurait trouvé une démonstration capable de mettre à mal les mathématiques, sa vie de couple… et sa vie, tout court. 
Le premier contact avec les extraterrestres aura également des répercussions inattendues sur le quotidien d’une linguiste réputée. 
Le destin de Neil Fisk bascule le jour où sa femme est tuée par la visitation d’un ange… 

Huit nouvelles qui constituent l’intégrale des œuvres de l’auteur entre 1990 et 2002. Huit textes d’une puissance inégalée, lauréats pour la plupart des principaux prix du genre : Hugo, Nebula, Theodore Sturgeon, Sidewise… Huit occasions de découvrir le talent d’un nouveau grand de la science-fiction mondiale.', 'La nouvelle "l''histoire de ta vie" a inspiré le film "Premier Contact".

De bonnes nouvelles dans l''ensemble. Mais l''auteur est dommage un scientifique qu''un vrai littéraire. Certains passages sont assez complexes à lire et par moment un peu longuet.

Les nouvelles sont :

1 - La Tour de Babylone (Tower of Babylon) - Les hommes construisent une tour pour atteindre la voute du ciel et Dieu
2 - Comprends (Understand) - Un homme banal obtient une intelligence supérieure par des expériences
3 - Division par zéro (Division by Zero) - Théorie mathématique
4 - L''Histoire de ta vie (Story of Your Life) - Des extraterrestres au mode de pensée totalement différent des humains
5 - Soixante-douze lettres (Seventy-Two Letters) - Histoire revisitée des mots de pouvoir et des golems
6 - L''Évolution de la science humaine (The Evolution of Human Science / Catching Crumbs from the Table) - Trés courte histoire sans grand intérêt
7 - L''Enfer, quand Dieu n''est pas présent (Hell is the absence of God) - Amusante histoire où les anges font des miracles mais aussi tuent ou blessent.
8 - Aimer ce que l''on voit : un documentaire (Liking what you see, a documentary) - Définition de la calliagnosie : ne plus être influencée par la beauté.', NULL, NULL, NULL, NULL),
(1063, 567, 67, 2015, 'Enoch - La voie des oracles - II', '', 5, 1, '2014-03-06 00:00:00', TRUE, '2017-03-05 00:00:00', '2017-03-15 00:00:00', 3.0, NULL, 551, 'images/enoch_1.jpg', 'Plus que jamais, Thya, accompagnée d''Enoch et d''Aylus, doit fuir les tueurs lancés à ses trousses par son frère Aedon. Heureusement, ses visions, l''expérience de son oncle et les nouveaux pouvoirs d''Enoch lui permettent de leur échapper. Mais ce dernier a de plus en plus de difficulté à faire naître la brume ; quant à ses visions, Thya doit désormais les payer au prix fort. Se pourrait-il que des forces maléfiques se liguent contre elle et ses amis ? Le combat est-il perdu d''avance ? Sans doute la solution se trouve-t-elle en Orient, aux confins de l''Asie, là où l''Empire chrétien n''a pas prise. 

La quête initiée dans Thya (prix Imaginales et prix Elbakin en 2015) se poursuit avec Enoch, deuxième tome de la trilogie La voie des Oracles, qui installe définitivement Estelle Faye parmi les auteurs de fantasy à suivre', 'Dans cette deuxième tome, Thya poursuit sa quète vers l''est (vers l''Iran et la Chine) à la découverte de l''origine de ses visions : les dieux voilés. On assiste aussi à la présence de la maléfique déesse Hécate qui veut redonner la gloire aux anciens dieux déchus depuis la montée du christianisme. ', NULL, NULL, NULL, NULL),
(1064, 0, 82, 0, 'La Révolution française - 2 - Aux armes citoyens !', '', 10, 1, '2016-03-16 00:00:00', FALSE, '2017-03-16 00:00:00', '2017-04-09 00:00:00', NULL, NULL, 550, 'images/aux_armes_citoyens.jpg', '', 'La révolution tome 2 de 1793 (Exécution de Louis XVI) à 1799 (Napoléon nommé consul qui met fin à la révolution). Loin des cours du collège, Max Gallo avec talent dépeint une révolution terrible, sanglante, horrible mais passionnante. La révolution a duré 10 ans, 10 ans d''espoirs, de rebondissements, de souffrance et de déception pour le peuple français...et Napoléon qui apparaît en héros, puis en sauveur...Robesbierre horrible dictateur ? Seul à gouverner imposant la vertu et la terreur...
Ce roman donne envie de lire la vie de Napoléon en 4 tomes.', NULL, NULL, NULL, NULL),
(1065, 0, 80, 1999, 'Harry Potter and the Prisoner of Azkaban', '', 5, 1, '2016-03-17 00:00:00', TRUE, '2017-03-17 00:00:00', '2017-04-18 00:00:00', NULL, NULL, 548, 'images/prisoner_of_azkaban.jpg', 'For twelve long years, the dread fortress of Azkaban held an infamous prisoner named Sirius Black. Convicted of killing thirteen people with a single curse, he was said to be the heir apparent to the Dark Lord, Voldemort.

Now he has escaped, leaving only two clues as to where he might be headed: Harry Potter''s defeat of You-Know-Who was Black''s downfall as well. And the Azkban guards heard Black muttering in his sleep, "He''s at Hogwarts...he''s at Hogwarts."

Harry Potter isn''t safe, not even within the walls of his magical school, surrounded by his friends. Because on top of it all, there may well be a traitor in their midst.', 'Harry Potter cette fois découvre qu''il a un oncle. Il s''agit de Sirius Black qui n''est pas du tout le psychopathe que tout le monde croit. On en apprend un peu plus sur le passé des parents d''Harry Potter et de Voldemort.
', 'Harry Potter', 3, NULL, NULL),
(1066, 569, 67, 2017, 'La panse', ' ', 5, 1, '2017-04-10 00:00:00', TRUE, '2017-04-10 00:00:00', '2017-04-22 00:00:00', NULL, NULL, 539, 'images/la_panse.jpg', 'Bastien Régnault part à la recherche de Diane, sa sœur jumelle, dont la famille n''a plus de nouvelles depuis plusieurs mois. Des indices convergents le mènent très vite à la Défense. Le quartier d’affaires, chargé d''histoire, va, petit à petit, se dévoiler à lui, lui révélant un monde inconnu et souterrain, où, semble-t-il, officie une mystérieuse et très ancienne société secrète : la Panse.

Après Le casse du continuum, Léo Henry poursuit, avec La Panse, son exploration des genres dits « populaires ». Il propose cette fois un thriller d’infiltration lovecraftien ancré dans l''ici et maintenant, un roman remarquable, qu’on ne lâche plus une fois entamé, preuve, s’il en était encore besoin, de son immense talent.', 'Bon roman fantastique et d''horreur. Un roman qui commence tout doucement nous mettant petit à petit dans la peau du héros qui recherche désespérément sa sœur. 
Le quartier de "La défense" décrit par l''auteur donne une impression glauque et pesante. La société secrète qui agit dans le plus grand secret fabrique une sorte de pate collante et odorante (drogue vendue très cher) qui permettrait de vivre plus longtemps. Des individus sont captures pour fabriquer cette drogue depuis leur corps infecté par des larves à l''aspect rebutant arachnoïdes. Ces larves sont générées par une entité très ancienne. L''auteur aborde très peu la description de cette entité et laisse tout le mystère. Mais cela fait vraiment penser à une entité du mythe de Lovecraft. Le livre à la fin laisse une impression de dégoût. Livre bien écrit et prenant malgré un début un peu lent.
', NULL, NULL, NULL, NULL),
(1067, 0, 80, 2007, 'The well of ascension - Mistborn - 2', '', 5, 1, '2017-05-01 00:00:00', TRUE, '2017-04-19 00:00:00', '2017-08-05 00:00:00', NULL, NULL, 544, 'images/well_of_ascension.jpg', 'Vin, the street urchin who has grown into the most powerful Mistborn in the land, and Elend Venture, the idealistic young nobleman who loves her, must build a healthy new society in the ashes of an empire. Three separate armies attack. As the siege tightens, an ancient legend seems to offer a glimmer of hope. But even if it really exists, no one knows where to find the Well of Ascension or what manner of power it bestows.', '', NULL, NULL, NULL, NULL),
(1068, 725, 2, 1974, 'Le monde inverti', 'The inverted world', 2, 1, '2017-05-26 00:00:00', TRUE, '2017-05-19 00:00:00', '2017-05-28 00:00:00', 3.5, NULL, 260, 'images/le_monde_inverti_1.jpg', 'Helward Mann a aujourd''hui l''âge de 1000 km ; il est majeur et choisit d''entrer dans la guilde des Topographes du futur. Lui qui a toujours vécu dans l''univers aseptisé de la crèche, il peut enfin sortir de la ville et connaître les mystères du monde qui l''entoure...
     Pour la Cité-Terre, reculer vers le Sud signifie la mort ; si elle veut survivre, elle doit se rapprocher sans cesse de l''Optimum, situé au Nord, quelque part dans le futur.
     Or, pour sa première grande mission, Helward Mann est précisément envoyé dans le Sud ; Temps et Espace s''interfèrent, êtres et végétation diminuent de façon grotesque  : un monde qui défie la raison  ?', '', NULL, NULL, NULL, NULL),
(1069, 570, 67, 2012, 'Comme un conte', 'Some Kind of Fairy Tale', 5, 1, '2017-05-29 00:00:00', TRUE, '2017-05-28 00:00:00', '2017-06-06 00:00:00', 3.5, NULL, 541, 'images/comme_un_conte.jpg', 'Tara Martin a mystérieusement disparu il y a vingt ans. Son frère, ses parents, son petit ami, tous la croient morte. Pourtant, lorsqu''elle réapparaît ce jour de Noël, elle semble n''avoir pas changé. Peut-être son regard s''est-il alourdi d’une ou deux rides, mais tout indique qu’elle est restée la jeune fille d''à peine seize ans qui s''était évanouie dans la nature. Et c’est peu de dire que sa famille doute des explications qu’elle fournit pour justifier sa longue absence. Quel drame cache réellement son étrange disparition ? Quel événement atroce occulte-t-elle par une amnésie de vingt ans ? À moins que sa singulière version des faits ne soit vraie, malgré ses allures de conte de fées ?

Comme un conte offre une galerie de personnages émouvants et explore de façon brillante les diverses interprétations des mythes féeriques. Le roman a reçu le British Fantasy Award 2013 et le prix Imaginales 2015.', 'Très bon roman psychologique et fantastique où tous les aspects de la disparition d''une personne chère sont traités. Le frère, les parents, le petit ami et Tara l’héroïne du livre sont intéressants. Le monde des "fées" décrit est lui aussi intéressant. Le temps s''écoule totalement différemment comparé à celui de notre monde. Le livre est bien écrit et se lit rapidement. ', NULL, NULL, NULL, NULL),
(1070, 571, 67, 2003, 'Les Enchantements d''Ambremer - Le Paris des merveilles - 1', '', 2, 1, '2017-06-08 00:00:00', TRUE, '2017-06-07 00:00:00', '2017-06-20 00:00:00', 3.0, NULL, 277, 'images/enchantements_dambremer.jpg', 'Occupé à enquêter sur un trafic d''objets enchantés, Louis Denizart Hippolyte Griffont, mage du Cercle Cyan, se retrouve mêlé à une série de meurtres. Confronté à des gargouilles immortelles et à un puissant sorcier, Griffont n''a d''autre choix que de s''associer à Isabel de Saint-Gil, une fée renégate que le mage ne connaît que trop bien...

Brillant hommage aux feuilletonistes du début du xxesiècle (Maurice Leblanc et son Arsène Lupin, Caston Leroux et son Rouletabille, entre autres), Les enchantements d''Ambremer est le premier tome du Paris des Merveilles, une trilogie steampunk aussi drôle qu''érudite.', '', NULL, NULL, NULL, NULL),
(1071, 575, 67, 2004, 'L''élixir d''oubli - Le Paris des merveilles - 2', '', 5, 1, '2017-06-20 00:00:00', TRUE, '2017-06-20 00:00:00', '2017-07-12 00:00:00', NULL, NULL, 277, 'images/exilir_doubli.jpg', 'Paris, 1909. À peine remis de sa précédente enquête, Louis Denizart Hippolyte Griffont, mage du Cercle Cyan, se retrouve mêlé à une bien étrange affaire, dont les ramifications pourraient remonter à plusieurs dizaines, voire plusieurs centaines d''années. Secondé — plus ou moins... — par la baronne Isabel de Saint-Gil, Griffont va devoir affronter bien des dangers. Mais il se pourrait que ce soit l’avenir de notre monde et de l''OutreMonde, lui-même, rien de moins, qui soit enjeu. Cela justifie bien de se replonger dans son passé, voire de mettre sa propre vie en péril.

Deuxième tome du Paris des Merveilles, trilogie steampunk aussi drôle qu’érudite, L''Élixir d''Oubli a reçu le prix Imaginais en 2005.', '', NULL, NULL, NULL, NULL),
(1072, 0, 3, 2014, 'N''éteins pas la lumière', '', 3, 1, '2017-08-09 00:00:00', TRUE, '2017-07-26 00:00:00', '2017-08-02 00:00:00', 3.5, NULL, 553, 'images/neteins_pas_la_lumiere.jpg', '« Tu l’as laissée mourir… »
Christine Steinmeyer croyait que la missive trouvée le soir de Noël dans sa boîte aux lettres ne lui était pas destinée. Mais l’homme qui l’interpelle en direct à la radio, dans son émission, semble persuadé du contraire… Bientôt, les incidents se multiplient, comme si quelqu’un avait pris le contrôle de son existence. Tout ce qui faisait tenir Christine debout s’effondre. Avant que l’horreur fasse irruption.

Martin Servaz, de son côté, a reçu par la poste la clé d’une chambre d’hôtel. Une chambre où une artiste plasticienne s’est donné la mort un an plus tôt. Quelqu’un veut le voir reprendre du service… ce qu’il va faire, à l’insu de sa hiérarchie et de ses collègues.', '', NULL, NULL, NULL, NULL),
(1073, 0, 80, 2000, 'Harry Potter and the goblet of fire', '', 5, 1, '2017-08-09 00:00:00', TRUE, '2017-08-06 00:00:00', '2017-09-25 00:00:00', 3.5, NULL, 548, 'images/harry_potter_and_the_goblet_of_fire.jpg', 'Harry Potter is midway through his training as a wizard and his coming of age. Harry wants to get away from the pernicious Dursleys and go to the International Quidditch Cup. He wants to find out about the mysterious event that''s supposed to take place at Hogwarts this year, an event involving two other rival schools of magic, and a competition that hasn''t happened for a hundred years. He wants to be a normal, fourteen-year-old wizard. But unfortunately for Harry Potter, he''s not normal - even by wizarding standards. And in his case, different can be deadly.', '', 'Harry Potter', 4, NULL, NULL),
(1074, 554, 67, 2013, 'Sept secondes pour devenir un aigle', '', 5, 1, '2017-09-26 00:00:00', TRUE, '2017-09-25 00:00:00', '2017-10-09 00:00:00', NULL, NULL, 235, 'images/Sept_secondes_pour_devenir_un_aigle.jpg', 'D’une île du Pacifique à l’Australie, du Cambodge à la Californie, du Grand Nord canadien au Japon ; de la violence radicale à la fuite vers un monde virtuel, de la débrouillardise tranquille au sacerdoce, du combat pour la survie d’une espèce en danger à la lutte pour celle de l''humanité elle-même, embarquez pour six voyages vertigineux, six manières pour l’homme de se confronter à la nature, quand ce n’est pas à sa nature.

     Avec Sept secondes pour devenir un aigle, recueil de six textes centrés sur les problématiques écologiques et les enjeux auxquels doivent faire face les hommes d’hier, d’aujourd’hui et de demain, Thomas Day prouve que son talent a atteint la pleine maturité. Sept secondes pour devenir un aigle a d’ailleurs reçu le prix du Lundi et le Grand Prix de l''Imaginaire.', '', NULL, NULL, NULL, NULL),
(1075, 578, 67, 2015, 'Le royaume immobile - Le Paris des merveilles - 3', '', 5, 1, '2017-10-11 00:00:00', TRUE, '2017-10-10 00:00:00', '2017-10-29 00:00:00', 3.0, NULL, 277, 'images/royaume_immobile.jpg', 'Le Tout-Paris des Merveilles bruisse d''une incroyable nouvelle : les prochaines élections du Parlement des Fées seront ouvertes à des représentants de la Terre. Griffont se voit, quant à lui, proposer d''être le représentant du Cercle Cyan. Il a, toutefois, bien d''autres chats (fussent-ils ailés) à fouetter. Son jeune ami François-Denis de Troisville lui a demandé d''être son témoin lors d''un duel face au redoutable Victor Dalmas, mage du Cercle Incarnat à la triste réputation. Mais celui-ci va mystérieusement disparaître, ravivant, s''il en était besoin, les tensions entre les Cyan et les Incarnat. Une fois de plus, Griffont et Isabel de Saint-Gil vont devoir mener l''enquête.

Le Royaume Immobile clôt en beauté le cycle du Paris des Merveilles, une trilogie steampunk aussi drôle qu’érudite.', '', NULL, NULL, NULL, NULL),
(1076, 558, 67, 2012, 'Exodes', '', 2, 1, '2017-11-06 00:00:00', TRUE, '2017-10-30 00:00:00', '2017-11-17 00:00:00', NULL, NULL, 29, 'images/exodes.jpg', 'Le réchauffement climatique n''est plus un mythe : partout, sur Terre, l''eau manque, la température est à peine supportable dès le lever du soleil, la végétation a muté et se révèle dangereuse pour l''homme. Quant à la faune... elle est quasiment inexistante, entraînant des famines et des guerres ravageuses. Certains, les Mangemorts, ont choisi une solution extrême et se nourrissent de leurs semblables. Mais sont-ils toujours humains ? L''humanité pourra-t-elle, d''ailleurs, survivre encore longtemps ? Peut — être la réponse se trouve-t-elle dans les enclaves, ces rares villes sous dôme protégées du monde extérieur ? Beaucoup souhaitent y entrer, mais leur accès est réservé aux plus méritants. Autrement dit, aux plus riches.', '', NULL, NULL, NULL, NULL),
(1077, 0, 3, 2012, 'Le cercle', '', 6, 1, '2017-11-18 00:00:00', FALSE, '2017-11-18 00:00:00', '2017-12-10 00:00:00', 3.5, NULL, 553, 'images/le_cercle.jpg', '', '', NULL, NULL, NULL, NULL),
(1078, 427, 2, 1966, 'Des fleurs pour Algernon', 'Flowers for Algernon', 2, 1, '2017-12-10 00:00:00', TRUE, '2017-12-10 00:00:00', '2017-12-23 00:00:00', 3.0, NULL, 554, 'images/des_fleurs_pour_Algernon.jpg', ' Il s''appelle Charlie Gordon, c''est un simple d''esprit, un minable, employé aux plus basses besognes dans une usine. Algernon, elle, est une souris de laboratoire et le traitement du Pr Nemur et du Dr Strauss vient de décupler son intelligence. Les deux savants tentent alors d''appliquer leur découverte à Charlie avec l''assistance de la jeune psychologue Alice Kinnian.
     C''est bientôt l''extraordinaire éveil de l''intelligence de ce cerveau demeuré. Charlie découvre avec passion un monde dont il avait toujours été exclu, et l''amour qui ne tarde pas à naître entre Alice et lui achève de le métamorphoser.
     Mais un jour, les facultés supérieures de la souris Algernon déclinent. Pour Charlie commence alors le drame atroce d''un homme qui peu à peu se sent retourner à l''état de bête.', '', NULL, NULL, NULL, NULL),
(1079, 576, 67, 2014, 'L''ombre du pouvoir', '', 1, 1, '2017-12-26 00:00:00', TRUE, '2017-12-23 00:00:00', '2018-01-07 00:00:00', 3.5, NULL, 555, 'images/lombre_du_pouvoir.jpg', 'XIVe siècle. Le chevalier assassin Pierre Cordwain de Kosigan dirige une compagnie de mercenaires d''élite, parmi les plus réputées d''Occident. Surnommé le « Bâtard », exilé d''une puissante lignée bourguignonne et pourchassé par les siens, il met ses hommes, ses capacités surnaturelles et son art de la manipulation au service des plus grands seigneurs d''Angleterre, de France et d''Italie.
Au mois de novembre 1339, sa présence en Champagne, dernier fief des princesses elfiques d''Aëlenwil, ne doit certainement rien au hasard. De joutes verbales en tournois, de combats sans merci en diplomatie nocturne, de la boue des bas-fonds aux alcôves des palais, chacun de ses actes semble servir un but précis. Bien malin qui pourra déterminer lequel...', 'Bien écrit et prenant. L''auteur mélange avec talent des éléments historiques et fantastiques (magie, elfe, dragons...) au 14ème siècle. Kosigan est un mercenaire malin et sans scrupules et l''on prend plaisir à suivre ses aventures se déroulant à Troyes. Il a une étrange aptitude à se soigner très vite et il peut ressentir la magie. Le roman est découpé en chapitres assez court au rythme soutenu. 

Certains chapitres sont des lettres écrite en 1899 par un descendant du nom de Kosigan qui recherche à connaitre la vie de son ancêtre. La magie et toutes les créatures fantastiques ont disparu et ne semblent jamais avoir existé...

', 'Le Bâtard de Kosigan', 1, NULL, NULL),
(1080, 0, 80, 2008, 'The hero of ages - Mistborn - 3', '', 2, 1, '2017-12-20 00:00:00', TRUE, '2017-12-16 00:00:00', '2018-10-25 00:00:00', 4.5, NULL, 544, 'images/Hero_of_ages.jpg', 'Tricked into releasing the evil spirit Ruin while attempting to close the Well of Ascension, new emperor Elend Venture and his wife, the assassin Vin, are now hard-pressed to save the world.', '', NULL, NULL, NULL, NULL),
(1081, 581, 67, 2015, 'Le Fou prend le Roi', '', 1, 1, '2018-01-07 00:00:00', TRUE, '2018-01-07 00:00:00', '2018-01-28 00:00:00', 3.5, NULL, 555, 'images/le_fou_prend_le_roi.jpg', '1340. Pierre Cordwain de Kosigan se retrouve mêlé à ce qui ressemble fort à un complot de grande envergure contre le roi de France. Il se pourrait que des forces supérieures soient à l''œuvre, menaçant la paix dans l’Europe tout entière. Cette fois, ses capacités surnaturelles ne suffiront pas à le tirer d''affaire. Bien au contraire, au milieu des trahisons et des soupçons de l''Inquisition, elles pourraient devenir sa plus grande faiblesse.

1899. Le descendant du Bâtard a subi une tentative d''assassinat. Ses proches cherchent à en découvrir l’auteur. Mais enfoncer les mains dans les entrailles de l''histoire comporte des risques qu''ils ne s''attendent peut-être pas à courir.', '', 'Le Bâtard de Kosigan', 2, NULL, NULL),
(1082, 32178, 1, 2010, 'HHhH', '', 10, 1, '2018-01-29 00:00:00', FALSE, '2018-01-29 00:00:00', '2018-02-05 00:00:00', 3.0, NULL, 556, 'images/HHhH.jpg', 'Le livre raconte l''histoire de l''opération Anthropoid, initiée depuis Londres, exécutée par trois parachutistes tchécoslovaques, Jozef Gabčík, Jan Kubiš et Josef Valčík, ayant pour objectif l''assassinat à Prague, le 27 mai 1942, de l''un des personnages les plus importants du Troisième Reich, Reinhard Heydrich, surnommé « le Boucher de Prague » alors qu''il était vice-gouverneur en Bohême-Moravie.', '', NULL, NULL, NULL, NULL),
(1083, 585, 67, 2014, 'Un éclat de givre', '', 5, 1, '2018-02-06 00:00:00', TRUE, '2018-02-05 00:00:00', '2018-02-15 00:00:00', NULL, NULL, 551, 'images/un_éclat_de_givre.jpg', 'Un siècle après la Fin du Monde. Paris est devenue une ville-monstre, surpeuplée, foisonnante, étouffante, étrange et fantasmagorique. Une ville-labyrinthe où de nouvelles Cours des Miracles côtoient les immeubles de l''Ancien Monde. Une ville-sortilège où des sirènes nagent dans la piscine Molitor et où les jardins dénaturés dévorent parfois le promeneur imprudent. Là vit Chet, vingt-trois ans. Chet chante du jazz dans les caves, enquille les histoires d’amour foireuses, et les jobs plus ou moins légaux, pour boucler des fins de mois difficiles. Aussi, quand un beau gosse aux yeux fauves lui propose une mission bien payée, il accepte sans trop de difficultés. Sans se douter que cette quête va l''entraîner plus loin qu''il n''est jamais allé et lier son sort à celui de la ville, bien plus qu''il ne l''aurait cru.', '', NULL, NULL, NULL, NULL),
(1084, 592, 67, 2015, 'De meute à mort - Chasse Royale - 1 - Roi du monde II - 1', '', 1, 1, '2018-02-20 00:00:00', TRUE, '2018-02-16 00:00:00', '2018-03-05 00:00:00', 5.0, NULL, 285, 'images/chasse_royale_-_1.jpg', 'Voici neuf ans que le haut roi Ambigat m’a admis à sa cour. Voici neuf ans que j''ai trouvé ma place parmi les héros bituriges.
Toutefois, quoiqu''il demeure redoutable, le souverain vieillit. Sa force vitale s''épuise et les royaumes de la Celtique déclinent. Nos troupeaux sont malades. Nos blés pourrissent sur pied. Les jeunes fils du souverain meurent... La disette et le mécontentement s''installent au sein des tribus. Si les dieux se sont détournés du haut roi, que feront les chefs des nations clientes ? Certains ne rêvent-ils pas de renverser Ambigat, de s''emparer du pouvoir, de restaurer la prospérité ?
Et moi, Bellovèse ! Moi qu''Ambigat a jadis privé de son père et de son royaume ! Moi qu''Ambigat a naguère voué à la mort ! Quel parti épouserai-je ? Deviendrai-je un chasseur de roi ? Ou serai-je le jeune roi traqué par la meute ?

Cette première partie de Chasse royale, le deuxième tome de la trilogie Rois du monde, nous plonge au cœur du monde celte : âpre et violent, empli de gloire et de magie. Jean-Philippe Jaworski poursuit ainsi l''édification de ce qui est, d''ores et déjà, un monument de la fantasy historique.', 'Un excellent roman sur les gaulois. Très dense (un seul chapitre) mais admirablement bien écrit. L''on s''y perd un peu au début avec ses nombreux prénoms mais rapidement nous sommes happés par l''histoire prenant du héros guerrier Bellovèse. Le récit est plus centré sur l''action (nombreux récits intenses de bataille) et beaucoup de flashback que le précèdent roman.

Mais que c''est prenant et émouvant ! Vivement la suite chez Folio SF en 2019...', NULL, NULL, NULL, NULL),
(1085, 579, 67, 2015, 'Le paradoxe de Fermi', '', 2, 1, '2018-03-05 00:00:00', TRUE, '2018-03-05 00:00:00', '2018-03-12 00:00:00', 3.0, NULL, 557, 'images/le_paradoxe_de_Fermi.jpg', ' Dans son repaire situé quelque part à l''est de l''arc alpin, Robert Poinsot écrit. Il raconte la crise systémique dont il a été témoin : d''abord le salaire qui n''arrive pas, les gens qui retirent leurs économies, qui s''organisent pour trouver de quoi manger, puis qui doivent fuir la violence des grandes villes et éviter les pilleurs sur les principaux axes routiers.
     Robert se souvient de sa fuite à Beauvais, de son séjour dans une communauté humaniste des bords de la mer Baltique et des événements qui l''ont ramené plus au sud, dans les Alpes. Quelque part dans le récit de sa difficile survie se trouve peut-être la solution au paradoxe de Fermi.à cette célèbre énigme scientifique : dans un univers aussi vaste que le nôtre, l''espèce humaine ne peut pas être la seule douée d''intelligence ; alors où sont les autres, où sont les traces radio de leur existence ?

     Jamais auparavant l''effondrement de notre civilisation ne fut décrit de façon plus réaliste.', '', NULL, NULL, NULL, NULL),
(1086, 595, 67, 2016, 'Aylus - La voie des oracles - 3', '', 5, 1, '2018-03-14 00:00:00', TRUE, '2018-03-12 00:00:00', '2018-03-28 00:00:00', 3.0, NULL, 551, 'images/aylus.jpg', 'Depuis l’arrivée au pouvoir d’Aylus, Rome est gouvernée par les Oracles et chaque décision politique du royaume repose sur la divination. Thya la Jeune est destinée à succéder à son oncle, Aylus. Mais un monde où les Oracles ne sont pas au pouvoir ne serait-il pas meilleur ? C’est ce que ses visions semblent lui révéler. La disparition de son ami Enoch précipite les choses : elle va devoir choisir entre assumer son rôle d’héritière du trône ou partir à la recherche d’Enoch pour changer le cours de l’Histoire. ', '', NULL, NULL, NULL, NULL),
(1087, 522, 67, 2011, 'Les insulaires', 'The Islanders', 2, 1, '2018-03-29 00:00:00', TRUE, '2018-03-28 00:00:00', '2018-04-12 00:00:00', 4.0, NULL, 260, 'images/les_insulaires.jpg', 'L''Archipel du Rêve.
Des centaines d''îles éparpillées entre le continent septentrional et Sudmaieure. Des milliers. Des centaines de milliers. À cause du phénomène des gradients temporels, personne ne sait, aucune carte ne peut être tracée.
Sur les Aubracs sévit un insecte mortel, redouté. Sur Collago, le secret de l''immortalité a été découvert, mais le traitement n''est pas à la portée de toutes les bourses. Sur Tremm, interdite aux civils, des explosions retentissent chaque nuit...
Même dans la zone de neutralité que représente l''Archipel, certains conflits demeurent...

Avec Les insulaires, Christopher Priest nous invite à explorer certaines îles de l''Archipel du Rêve, nous faisant découvrir leurs mystères, leurs principales attractions touristiques et leurs artistes. Cependant, il se pourrait bien qu''un meurtre énigmatique, voire plusieurs, se cachent dans les pages de cet atypique guide touristique.', '', NULL, NULL, NULL, NULL),
(1088, 514, 67, 2013, 'Le chemin des dieux', '', 5, 1, '2018-04-14 00:00:00', TRUE, '2018-04-13 00:00:00', '2018-04-28 00:00:00', 3.5, NULL, 531, 'images/chemin_des_dieux.jpg', 'Quand il apprend la disparition d''Uzumé, la femme qu''il a voulu épouser douze ans plus tôt, Achille abandonne sa vie française pour se rendre à Tokyo. Une fois arrivé, il va de surprise en surprise. Une catastrophe énergétique inexpliquée précipite le pays vers l''obscurité. Son meilleur ami s''est suicidé. Et Uzumé n''a jamais été kidnappée. À sa place, c''est une vieille femme dont on pleure la disparition : la doyenne de l''humanité... Qu''arrive-t-il au Japon ? Pourquoi l''ami d''Achille est-il mort ? Et qui est vraiment Uzumé ? En voulant répondre à ces questions, Achille va pénétrer dans un monde où se mêlent l''éternel et l''éphémère, la tradition et la modernité, un monde que les dieux intemporels n''ont jamais abandonné. Un Tokyo inconnu, aussi beau que dangereux.', '', NULL, NULL, NULL, NULL),
(1089, 7163, 3, 2012, 'La traque ', '', 1, 1, '2018-05-01 00:00:00', TRUE, '2018-04-30 00:00:00', '2018-05-08 00:00:00', 4.5, NULL, 558, 'images/le_puits_des_memoires.jpg', 'Trois hommes se réveillent dans les débris d''un chariot accidenté en pleine montagne. Aucun d''eux n''a le moindre souvenir de son nom, de son passé, de la raison pour laquelle il se trouve là, en haillons, dans un pays inconnu. Sur leurs traces, une horde de guerriers, venus de l''autre bout du monde, mettra le royaume à feu et à sang pour les retrouver.
Fugitifs, mis à prix, impitoyablement traqués pour une raison mystérieuse, ils vont devoir survivre dans un monde où règnent la violence, les complots et la magie noire.
', '', 'Le puits des mémoires', 1, NULL, NULL),
(1090, 574, 67, 2015, 'Suréquipée', '', 2, 1, '2018-05-13 00:00:00', TRUE, '2018-05-08 00:00:00', '2018-05-10 00:00:00', 4.0, NULL, 559, 'images/surequipee.jpg', '  Lorsque la Blackjag a été mise en vente, il était évident qu''elle allait révolutionner le marché de l’automobile. Constitué uniquement de matériaux organiques, qui en font pour ainsi dire une voiture vivante, ce nouveau modèle a tout pour plaire. Le prototype qui a servi aux séances de démonstration devant la presse est aujourd’hui revenu en atelier : son propriétaire a disparu ; peut-être la Blackjag a-t-elle gardé en mémoire des éléments qui permettront de le retrouver. Écoutons-la nous raconter son histoire.

     Avec Suréquipée, son premier roman de science-fiction, Grégoire Courtois, à la suite de J. G. Ballard ou de Stephen King, s’empare avec brio du mythe moderne par excellence : la relation de l’homme à sa voiture.', 'Court roman (160 pages) coup de poing. Qui dépeint le rapport psychologique entre une voiture biologique et les êtres humains. La fin est bien sur tragique, les idées développées sont très intéressantes. ', NULL, NULL, NULL, NULL),
(1091, 586, 67, 2015, 'La ménagerie de papier', '', 2, 1, '2018-05-13 00:00:00', TRUE, '2018-05-10 00:00:00', '2018-05-24 00:00:00', 3.0, NULL, 560, 'images/menagerie_de_papier.jpg', 'Serait-il possible de décrypter les algorithmes de l''amour? Peut-être les tentaculaires compagnies de l''Internet y parviendront-elles un jour? Elles sauraient, alors, dire si deux personnes sont vraiment faites pour être ensemble. Et si l''immortalité nous était offerte, quelle trajectoire serions-nous amenés à suivre ? Sans doute la route vers les étoiles s''ouvrirait-elle à nous ? D''immenses vaisseaux se dirigeraient vers 61 Virginis pour y trouver... quoi ? Mais les plus beaux des voyages sont peut-être ceux que l''on fait grâce à la mémoire, à l’aide de jouets nés des mains et de l''amour d''une mère : une merveilleuse ménagerie de papier.

Ce recueil de dix-neuf nouvelles, récompensé par le Grand Prix de l''Imaginaire en 2016, révèle le talent d’un auteur avec lequel il faudra compter à l''avenir. Abordant indifféremment la science-fiction ou la fantasy, Ken Liu a réussi un triplé historique pour le texte qui donne son titre au recueil : prix Hugo, prix Nebula et World Fantasy Award.', 'Très bon recueil de nouvelles, a part 2 - 3 nouvelles sans grand intéret l''ensemble est réussi et pousse à la réflexion sur la vie éternelle, les voyages dans l''espace sur plusieurs générations, les IA, les extra-terrestres, les réseaux sociaux...
 ', NULL, NULL, NULL, NULL),
(1092, 5926, 67, 1997, 'Va t''en guerre - Les annales du Disque Monde - 21', '', 1, 1, '2018-05-28 00:00:00', TRUE, '2018-05-27 00:00:00', '2018-06-08 00:00:00', 3.5, NULL, 222, 'images/va_ten_guerre.jpg', 'Une île a surgi entre Ankh-Morpork et le royaume de Klatch. Mais à qui appartient ce nouveau territoire ? La tension monte entre les deux peuples qui veulent se l''approprier. Les tentatives de négociation échouent, l''ambassadeur du Klatch est assassiné à son arrivée chez ses voisins. La guerre sera-t-elle la seule solution ? Le commissaire Vimaire tremble sous cette menace inédite et fera tout pour empêcher le conflit. Mais la folie s''est emparée des citoyens et des dirigeants d''Ankh-Morpork : haine, violence, meurtres... La peur de l''inconnu ? Vimaire est bien seul dans la tourmente.
Enfin... il a toujours son équipe du Guet...', '', NULL, NULL, NULL, NULL),
(1093, 602, 67, 2011, 'Sous béton', '', 2, 1, '2018-06-09 00:00:00', TRUE, '2018-06-08 00:00:00', '2018-06-10 00:00:00', NULL, NULL, 561, 'images/sous_beton.jpg', 'Depuis sa naissance, l’enfant est enfermé dans une minuscule cellule, au 804 du 5969e étage de l’Édifice. 
Autour de lui, que du béton, sans ouverture sur l’extérieur. Et deux présences : le père qui s’abrutit de plus en plus et la mère qui redoute l’expulsion. Immobile dans son dortoir, l’enfant est bouleversé par une transformation qui lui révélera un horizon inattendu. ', '', NULL, NULL, NULL, NULL),
(1094, 7164, 3, 2012, 'Le fils de la Lune', '', 1, 1, '2015-01-24 00:00:00', TRUE, '2018-06-10 00:00:00', '2018-06-18 00:00:00', NULL, NULL, 558, 'images/le_fils_de_la_lune.jpg', 'Fuyant le royaume d''Helion ou leur tête est mise à prix, Nils, Karib et Olen s''embarquent pour les terres glacées de Woltan, sur les traces de leur identité. Pourquoi ont-ils assassiné le plus puissant roi du monde ? Dans leur quête de la vérité, ils vont découvrir un royaume fascinant, colossal, aux frontières des contrées barbares. Mais leurs poursuivants n''ont pas abandonné la traque...
     Pour les fugitifs sans mémoire, c''est l''heure des révélations et de la plongée dans le Grand Nord, ou leur vie ne tient qu''à un fil.', '', 'Le puits des mémoires', 2, NULL, NULL),
(1095, 7165, 3, 2012, 'Les terres de cristal', '', 1, 1, '2018-06-22 00:00:00', TRUE, '2018-06-18 00:00:00', '2018-07-01 00:00:00', 2.5, NULL, 558, 'images/Les-terres-de-cristal.jpg', ' La quête et Nils, Karib et Olen va enfin toucher à sa fin. Et leur vengeance s''accomplir. Mais après le complot qui les a lancés sur la route de leur mémoire, de nouvelles trahisons les guettent. Maintenant qu''ils connaissent leur identité, la menace n''est que plus grande. Car ici, à Woltan, les assassins règnent en maîtres.
     Et tandis que sur notre trio se lèvent les premières tempêtes de neige, loin dans le Nord, dans les glaces éternelles des Terres de cristal, est tapi un terrible secret qui attend sa révélation...', '3ème roman et dernier de ce cycle. j''ai trouvé nettement moins intéressant ce roman où l''intrigue devient assez creuse. L''auteur ne joue par forcément la carte du spectaculaire et la magie est très peu présente. Reste les personnages principaux qui sont attachants. Le style de l''auteur est plutôt bon mais parfois irrégulier. Il tombe par moment dans la facilité des descriptions et des dialogues.', 'Le puits des mémoires', 3, NULL, NULL),
(1096, 0, 83, 1998, 'Le silence de la cité', '', 2, 1, '2018-07-01 00:00:00', TRUE, '2018-07-01 00:00:00', '2018-07-12 00:00:00', NULL, NULL, 119, 'images/silence_de_la_cite.jpg', 'Plus de trois siècles se sont écoulés depuis les catastrophes climatiques de la fin du second millénaire et les héritiers de la civilisation détruite, de plus en plus rares et de plus en plus désaxés, vivent dans une Cité souterraine avec leurs doubles technologiques.
     Dernière enfant de cette Cité, Élisa est une petite fille aux capacités physiques étonnantes ; fruit des expériences génétiques de Paul, elle annonce une humanité résolument nouvelle.
     Mais Élisa saura-t-elle se libérer du passé qui l''a littéralement modelée et, du même souffle, en libérer ses nombreux enfants ?
     Et qu''en sera-t-il des hommes — et surtout des femmes — qui, hors les Cités, ont survécu à la barbarerie et aux mutations de toutes sortes ?', '', NULL, NULL, NULL, NULL),
(1097, 597, 67, 2015, 'Les affinités', 'The affinities', 2, 1, '2018-07-13 00:00:00', TRUE, '2018-07-12 00:00:00', '2018-07-19 00:00:00', NULL, NULL, 289, 'images/les_affinites.jpg', 'Adam Fisk s’est installé à Toronto pour suivre des études de graphisme que lui finance sa grand-mère. Là, il s’est inscrit à un programme payant pour déterminer à laquelle des vingt-deux Affinités il appartient. Adam est un Tau, une des cinq plus importantes de ces nouvelles familles sociales théorisées par le chercheur Meir Klein. Quand la grand-mère d’Adam, diminuée par une attaque, est placée dans une maison de retraite, le jeune homme n’a plus les moyens de suivre ses études. Mais être un Tau confère des avantages qu’il va vite découvrir : travail rémunérateur, opportunités sexuelles, vie sociale pleine et satisfaisante. Tout est trop beau, trop facile. Tout va très vite pour Adam... et il en est de même pour le reste du monde, car le modèle social des Affinités est en train de s’imposer. Malheureusement, dans l’histoire de l’humanité, aucun changement radical ne s’est fait sans violence.', 'Roman intéressant sur les réseaux sociaux. Si un moyen fiable permettait de classer les gens par affinités, cela créerait des groupes solidaires où l''entente au sein de chaque groupe serait parfaite (amitiés, sexualité, etc). Problème, une grande majorité des personnes n''ont pas d''affinités compatibles d''où une grande frustration pour ceux ne pouvant faire parti des ces groupes. D''autant plus que les groupes sont sectaires. 
Et lorsqu''un groupe veut prendre le dessus sur les autres,  une forme de guerre se déclenche. Wilson traite avec intelligence cette idée de vouloir trier les gens par catégorie et pose une réflexion sur les conséquences.', NULL, NULL, '', 'Arnaud'),
(1098, 590, 67, 2015, 'L''adjacent', 'The adjacent', 2, 1, '2018-07-31 00:00:00', TRUE, '2018-07-19 00:00:00', '2018-07-27 00:00:00', 3.5, NULL, 260, 'images/adjacent.jpg', 'En Anatolie, l’infirmière Melanie Tarent a été victime d’un attentat singulier : totalement annihilée, elle n’a laissé au sol, comme seul vestige de son existence, qu’un impossible cratère noir et triangulaire.
De retour en République Islamique de Grande-Bretagne, son mari, le photographe free-lance Tibor Tarent, apprend qu’un attentat a eu lieu à Londres, qu’il a fait cent mille morts, peut-être le double. Là aussi, la vaste zone touchée était inscrite dans un triangle parfait.
Alors qu’il est emmené dans une base secrète afin d’être interrogé sur ce qu’il a observé en Anatolie (globalement rien, en dehors de l’étrange point d’impact), Tibor entend parler pour la première fois du phénomène d’adjacence. Mais à bien y réfléchir, est-ce vraiment la première fois ?', '', NULL, NULL, NULL, NULL),
(1099, 0, 69, 2011, 'Les héros', 'The heroes', 1, 1, '2018-07-31 00:00:00', TRUE, '2018-07-28 00:00:00', '2018-08-14 00:00:00', 4.0, NULL, 543, 'images/les_heros.jpg', 'Selon la légende, Dow le Sombre aurait tué plus d’hommes que le pire des hivers pour conquérir le trône du Nord. Jaloux, le roi de l’Union lui envoie ses armées. Des milliers de soldats convergent ainsi vers un cercle de pierres oublié pour se livrer une guerre sans honneur. Parmi eux, une fine lame disgraciée, un prince sans couronne, et le dernier homme honnête du Nord se retrouvent inexorablement entraînés dans une bataille sanglante qui scellera le destin de tout un pays.', '', NULL, NULL, NULL, NULL),
(1100, 0, 62, 2018, 'Créatures : anthologie des Imaginales 2018', '', 2, 2, '2018-08-23 00:00:00', TRUE, '2018-08-15 00:00:00', '2018-08-23 00:00:00', 4.5, NULL, 562, 'images/creatures.jpg', 'Golem aux multiples visages (L''Homme d''argile) ou intelligence artificielle en quête de soi (La Machine différente), FFI de 1944 confrontés à des créatures lovecraftiennes (Le Nid de la Sphinge) ou soldat du futur étrangement lié à ceux qu''il a combattus (Casser la coquille), alcoolique au bout du rouleau re-boosté par une fée (Une petite fleur) ou colonie humaine résistant aux extraterrestres (La Traductrice et les monstres), les récits proposés par les quatorze auteurs de l''anthologie des Imaginales 2018 soulignent qu''une créature peut en cacher une autre (En commençant par la faim). Entre lieu étrange (Pied d''ombre) et futur inquiétant (Desdemona), univers parallèles (Les Portes du monde) et île mythique (Légende du premier monde), mais aussi Dr Jekyll et Mr Hyde (La Sixième victime), Créatures nous rappelle également, par-delà la diversité des thèmes abordés, que les dieux aveuglent ceux qu''ils veulent perdre (Les Rêves de Venn Colomax). Elle a tes yeux, affirme pour sa part le narrateur d''Estelle Faye, évoquant un amour qui résiste à la mort, pour s''interroger au final sur ce qui définit l''humain et donne sens à nos vies.

Partenaire de longue date des Imaginales, Mnémos publie chaque année l''anthologie officielle du festival des mondes imaginaires d''Épinal. Anthologiste, directrice de collection, rédactrice en chef de la revue Galaxies de 1996 à 2007 (ce qui lui a valu le Grand Prix de l''imaginaire en 2000), Stéphanie Nicot compte parmi les meilleurs spécialistes des littératures de l''imaginaire. Elle assure depuis sa création, en 2002 à Épinal, la direction artistique du festival Imaginales.
Les auteurs : Claire & Robert BELMAS, Fabien CERUTTI, Jean-Laurent DEL SOCORRO, Jean-Claude DUNYACH, Estelle FAYE, Fabien FERNANDEZ, Olivier GECHTER, Anthelme HAUCHECORNE, Gabriel KATZ, Helene LARBAIGT, Patrick MORAN, Adrien TOMAS, Jean-Louis TRUDEL, Elisabeth VONARBURG.', 'Très bonne anthologie. 14 bons textes dans différents styles (fantastique, science fiction) autour du thème des créatures.
', NULL, NULL, NULL, NULL),
(1101, 588, 67, 2013, 'Vestiges', '', 2, 1, '2018-08-23 00:00:00', TRUE, '2018-08-24 00:00:00', '2018-09-10 00:00:00', 3.5, NULL, 563, 'images/vestiges.jpg', 'Lorsque les humains sont arrivés dans le système d’Alta Mira, afin de coloniser une planète de type terrestre baptisée Gemma, ils ont découvert en orbite autour de celle-ci un immense artefact extraterrestre. Ce Grand Arc aurait été laissé derrière eux, il y a plus de 12 000 ans, par les anciens habitants de Gemma, les Bâtisseurs. Mais d’autres mystères entourent la planète. Il y a notamment ces zones étranges où les lois de la physique semblent prises de folie. Et d’antiques ruines viennent d’être découvertes sous plusieurs kilomètres de glace. Les scientifiques parviendront-ils à percer les secrets de ces vestiges? ', '', 'Quantika', 1, NULL, NULL),
(1102, 4204, 1, 1925, 'Siddhartha', '', 10, 1, '2018-09-13 00:00:00', FALSE, '2018-09-10 00:00:00', '2018-09-13 00:00:00', 3.5, NULL, 564, 'images/Siddhartha_1.jpg', 'Un jour vient où l’enseignement traditionnel donné aux brahmanes ne suffit plus au jeune Siddhartha. Quand des ascètes samanas passent dans la ville, il les suit, se familiarise avec toutes leurs pratiques mais n’arrive pas à trouver la paix de l’âme recherchée. Puis c’est la rencontre avec Gotama, le Bouddha. Tout en reconnaissant sa doctrine sublime, il ne peut l’accepter et commence une autre vie auprès de la belle Kamala et du marchand Kamaswani. Les richesses qu’il acquiert font de lui un homme neuf, matérialiste, dont le personnage finit par lui déplaire.
Il s’en va à travers la forêt, au bord du ßeuve. C’est là que s’accomplit l’ultime phase du cycle de son évolution. Dans le cadre d’une Inde recréée à merveille, écrit dans un style d’une rare maîtrise, Siddhartha, roman d’une initiation, est un des plus grands de Hermann Hesse, prix Nobel de littérature.', '', NULL, NULL, NULL, NULL),
(1103, 63, 81, 2012, 'Porcelaine', '', 1, 1, '2018-09-17 00:00:00', TRUE, '2018-09-11 00:00:00', '2018-10-01 00:00:00', 3.0, NULL, 551, 'images/porcelaine.jpg', 'Chine, vers l’an 200. Xiao Chen est un comédien errant, jeté sur les routes par un dieu vengeur. Un masque à forme humaine dissimule son faciès de tigre, tandis que son cœur est de porcelaine fêlée. Son voyage va durer plus de mille ans. Au cours de son périple, il rencontrera Li Mei, une jeune tisseuse, la Belle qui verra en lui plus qu’une Bête. Celle qui, sans doute, saura lui rendre son cœur de chair. Cependant Brume de Rivière, fille-fée jalouse et manipulatrice, intrigue dans l’ombre contre leur bonheur.Pendant presque quinze siècles, rivalités et amour s’entrecroisent, tissant une histoire de passion, de tendresse et de sacrifice, sur fond de magie et de théâtre.', '', NULL, NULL, NULL, NULL),
(1104, 524, 67, 1993, 'Journal de nuit', 'Random Acts of Senseless Violence', 2, 1, '2018-10-07 00:00:00', TRUE, '2018-10-01 00:00:00', '2018-10-12 00:00:00', 3.5, NULL, 565, 'images/journal_de_nuit.jpg', 'Vous tenez entre les mains le journal intime de Lola Hart. Elle l''a commencé à l''âge de douze ans, quand ses parents le lui ont offert pour son anniversaire. Elle l''a très vite surnommé Anne. Réminiscence d''un célèbre journal écrit par une autre jeune fille juive ?
Laissez Lola vous conter son histoire, sa vie faite d''espoir, de chagrins et de peurs, d''amour et de haine, celle d''une adolescente qui ressemble à de nombreuses autres. Sauf qu''elle vit dans une Amérique qui semble en proie à la folie, marchant tout droit vers son effondrement, une société qu''on aimerait ne pas connaître, mais qu''on a un peu trop tendance à reconnaître.

Écrit au début des années 1990, Journal de nuit est un roman glaçant qui n''a rien perdu de son actualité, un ouvrage choc qui vous marquera durablement.', 'Roman très sombre écrit à travers une jeune fille racontant sa vie au quotidien dans un New-York et une société qui s''écroulent littéralement.

Lu et terminé pendant mon séjour lyonnais et ma formation Togaf ! Bons souvenirs !', NULL, NULL, NULL, NULL),
(1105, 594, 67, 2013, 'L''ouvreur des chemins', '', 2, 1, '2018-10-25 00:00:00', TRUE, '2018-10-25 00:00:00', '2018-11-08 00:00:00', 3.5, NULL, 563, 'images/louvreur_des_chemins.jpg', 'Sur Gemma, les vestiges laissés par les Bâtisseurs ont été mis au jour. Mais une puissance inconnue a également été délivrée. Ambre Pasquier, aidée de Kya et de Tokalinan — le Timhkân échoué sur la planète gelée —, parviendra-t-elle à contenir le pouvoir du Dévoreur de réalité ? La milice lui en laissera-t-elle le temps ? Les forces libérées pourraient bien mettre en péril la planète tout entière.', 'L''histoire avance bien dans ce deuxième tome. Peu de longueurs. On comprend mieux la froideur d''Ambre et les motivations de Tokalinan. Bon style et maîtrise de la narration.
', 'Quantika', 2, NULL, NULL),
(1106, 5338, 64, 1920, 'Gatsby le magnifique', 'The great Gatsby', 10, 1, '2018-11-08 00:00:00', FALSE, '2018-11-08 00:00:00', '2018-11-17 00:00:00', 3.0, NULL, 566, 'images/gatsby_le_magnifique.jpg', '«S’il faut dire la vérité, Jay Gatsby, de West Egg, Long Island, naquit de la conception platonicienne qu’il avait de lui-même. Il était fils de Dieu – expression qui ne signifie peut-être rien d’autre que cela – et il lui incombait de s’occuper des affaires de Son Père, de servir une beauté immense, vulgaire, clinquante. Aussi inventa-t-il la seule sorte de Jay Gatsby qu’un garçon de dix-sept ans était susceptible d’inventer, et il demeura fidèle à cette conception jusqu’à la fin.» ', 'Puissant et court roman sur la critique de la société américaine des années 30. Fitzgerald dépeint une Amérique des riches, des gens qui s''ennuient et qui sont très superficiels. Le héros Gatsby jeune nouveau riche passe sa vie à organiser des réceptions. La fin est tragique et inattendue.', NULL, NULL, NULL, NULL),
(1107, 577, 67, 2015, 'Port d''âmes ', '', 1, 1, '2018-11-21 00:00:00', TRUE, '2018-11-18 00:00:00', '2018-12-13 00:00:00', 4.0, NULL, 567, 'images/port_dame.jpg', 'Rhuys ap Kaledân a été condamné, adolescent, à huit ans de servitude dans la Marine. À vingt-deux ans il est toujours en vie mais a tout perdu : sa demeure, sa famille, ses titres de noblesse... Lorsqu’il débarque à Aniagrad, la Cité franche, il a la tête pleine d''idéaux et est bien décidé à se faire un nom et, qui sait, à retrouver la place qui aurait dû être la sienne. Mais la cité du mensonge va vite le faire déchanter. S''il veut survivre, Rhuys devra faire bien des concessions et, même, prendre les prédateurs qui le chassent à leurs propres pièges.

Roman de fantasy d''aventures, Port d''âmes, mêlant moments de bravoure et scènes plus intimistes, offre une galerie de personnages inoubliables, dont le moindre n''est pas la redoutable cité d’Aniagrad. Une belle réussite !', 'Très bon roman mélangeant de nombreux passages psychologiques et d''intrigues. Le monde Panégyrique décrit par l''auteur est très intéressant. La notion de Transfert (transférer des émotions des souvenirs vers une autre personne) est bien décrite. Le personnage principal (Rhuys ap Kaledân) noble déchu est romantique mais intelligent et sa relation amoureuse avec une femme qui vend son âme (émotion et souvenirs) est émouvante.', NULL, NULL, NULL, NULL),
(1108, 0, 80, 2003, 'The Order of the Phoenix', '', 5, 1, '2018-11-21 00:00:00', TRUE, '2018-11-01 00:00:00', '2019-06-25 00:00:00', 4.0, NULL, 548, 'images/order_of_the_phoenix.jpg', 'Harry Potter is furious that he is stuck at the Dursleys'' house for the summer, when he suspects that Voldemort is gathering an army, and the wizarding authorities seem unwilling to do anything. Harry''s so-called friends are trying to keep him in the dark. But he knows that Voldemort''s forces can find him wherever he is; he could be attacked at any moment. Harry is finally rescued from Privet Drive by members of the Order of the Phoenix - a secret society first formed years ago to fight Voldemort - and discovers that maybe he is not alone in this battle after all. 

.', '', 'Harry Potter', 5, NULL, NULL),
(1109, 583, 67, 2000, 'Les perséides', 'The Perseids ans Other Stories', 2, 1, '2018-12-14 00:00:00', TRUE, '2018-12-14 00:00:00', '2018-12-28 00:00:00', 3.5, NULL, 289, 'images/les_perseides.jpg', 'Toronto. Cité pluriethnique où l''on peut croiser des centaines de personnes tout en restant terriblement seul. Ville tentaculaire que l''on sillonne chaque nuit en faisant de nouvelles découvertes et où l''indicible n''est jamais très loin.
Au cœur de cette métropole se niche une petite librairie plutôt étrange : Finders. Vous y trouverez sans aucun doute les livres que vous cherchiez depuis toujours et aussi, qui sait ?, certains que vous n''imaginiez même pas. Porte ouverte sur des mondes qui n''existent pas, ou pas encore, Finders est un endroit à nul autre pareil. Poussez la porte, si vous l’osez...
 
Avec ce recueil de neuf nouvelles liées plus ou moins étroitement les unes aux autres, Robert Charles Wilson nous offre une œuvre très personnelle, ancrée dans le réel et pourtant véritable déclaration d''amour à la science-fiction, laboratoire de tous les possibles.', '', NULL, NULL, NULL, NULL),
(1110, 0, 84, 2018, 'Les jardins de la Lune', NULL, 1, 1, '2019-01-01 00:00:00', TRUE, '2018-12-28 00:00:00', '2019-01-27 00:00:00', 4.0, NULL, 568, 'images/les_jardins_de_la_lune.jpg', NULL, NULL, 'Le livres des martyrs', 1, 'images/dedicace/les_jardins_de_la_lune.jpg', NULL),
(1111, 0, 84, 2018, 'Les portes de la maison des morts', 'Deadhouse Gates', 1, 1, '2019-01-29 00:00:00', TRUE, '2019-01-28 00:00:00', '2019-02-27 00:00:00', 4.0, NULL, 568, 'images/les_portes_de_la_maison_des_morts.jpg', 'Sur le vaste continent de Sept-Cités, au cœur du Saint-Désert de Raraku, l''oracle Sha''ik rassemble son immense armée. Son objectif : déchaîner le Tourbillon, un soulèvement prophétisé depuis des siècles et qui deviendra l''un des conflits les plus sanglants que le monde ait jamais connus. Dans les mines d''Otataral, Félisine rêve de se venger de sa soeur Tavore, nouvelle Adjointe de l''Impératrice Laseen, qui l''a condamnée à l''esclavage. Pour parvenir à ses fins, la plus jeune fille de la Maison Paran devra s''associer à un ancien prêtre de Fener et à une brute mystérieuse. Pendant ce temps, deux Brûleurs de Ponts désormais hors-la-loi, le sapeur Violain et l''assassin Kalam, se sont promis de ramener la jeune Apsalar chez elle et d''éliminer l''Impératrice. A Hissar, Coltaine, l''énigmatique commandant de la 7e armée de Malaz, s''apprête à tenter l''impossible pour sauver la vie des dizaines de milliers de réfugiés jetés sur les routes par la rébellion. C''est à ce moment précis que deux vagabonds séculaires choisissent de revenir errer sur ces terres ravagées, Mappo le Trell et son compagnon Icarium de demi-sang Jaghut, porteurs d''un secret dévastateur caché au coeur des ténèbres et qui pourrait bien les engloutir tous.', '', 'Le livres des martyrs', 2, NULL, NULL),
(1112, 600, 67, 2015, 'Origines', '', 2, 1, '2019-03-04 00:00:00', TRUE, '2019-02-28 00:00:00', '2019-03-24 00:00:00', 3.5, NULL, 563, 'images/origines_1.jpg', 'Ambre, Haziel, Kya, Léna et les autres ont réussi, sans trop savoir comment, à pénétrer à l''intérieur du Grand Arc. Enfin, la technologie des Bâtisseurs s''offre à eux. Mais c’est une tout autre réalité qui les attend. En effet, le Grand Arc semble être un immense vaisseau-monde, aux lois physiques plutôt étranges puisque son intérieur est infiniment plus grand que ne le laisse supposer sa coque extérieure. Seul Tokalinan, le Timhkân, paraît comprendre le rôle du Grand Arc, qu’il appelle Kalaân, l’Ouvreur des Chemins.

Dernier tome d’une trilogie dont l’ambition est de rivaliser avec les plus grands créateurs d''univers anglo-saxons, Origines est un planet opera brillant. Vestiges, le premier tome de la série, a reçu le prix Bob Morane et le prix révélation Futuriales en 2013.', '', 'Quantika', 3, NULL, NULL),
(1113, 17274, 3, 2017, 'Sharko', '', 6, 1, '2019-03-30 00:00:00', TRUE, '2019-03-28 00:00:00', '2019-04-11 00:00:00', NULL, NULL, 569, 'images/Sharko_1.jpg', 'Lucie Henebelle et Franck Sharko, unis dans la vie et par leur métier de flic, sont parents de deux petits garçons. Lucie tue un homme en dehors de toute procédure légale, et pour la protéger, son compagnon Franck maquille la scène de crime.

Leur métier les conduit à être affectés à l''enquête, et il leur est bien difficile de sauver leur intégrité et le fragile édifice qu’ils s’étaient efforcés de bâtir.', 'Très bon thriller mais par moment assez révulsant sur le thème du sang. Un groupe de "vampyres" adepte du satanisme enlève des personnes pour les vider totalement de leur sang. 
Sharko va devoir maquiller un crime car sa compagne Lucie s''est officieusement introduite dans une maison pour enquêter. Le suspect a été tué dans l''affrontement avec la jeune femme.
', '', 0, NULL, NULL),
(1114, 507, 67, 2012, 'Omale', '', 2, 1, '2019-04-13 00:00:00', TRUE, '2019-04-12 00:00:00', '2019-05-13 00:00:00', 4.0, NULL, 17, 'images/omale1.jpg', ' Omale...
     Imaginez une sphère de matière ultradense, englobant un soleil. À l''intérieur de cette coquille de centaines de millions de fois la surface terrestre : de l''air et de la vie ; des espèces intelligentes, aussi. Là, sous un soleil à jamais immobile, les Humains, arrivés par une éphémère Porte de Vangk, ont dû repartir de zéro. Au fur et à mesure des âges, alors que l''univers extérieur se muait en simple mythe, ils ont dû tisser une histoire avec leurs voisins extraterrestres : les Chiles, grands et puissants, et les sages Hodgqins. Une histoire faite de commerce et de guerre, d''exploration des Confins, mais où les grands mystères demeurent : quels êtres aux pouvoirs semi-divins ont édifié Omale, et pourquoi y ont-ils piégé toutes les espèces delà Galaxie ?

     Ce volume regroupe les deux premiers romans du cycle d''Omale, assurément l''œuvre la plus ambitieuse à ce jour de Laurent Genefort.

Contient deux romans : Omale et les conqérants d''Omale', 'Deux romans dans cette première intégrale. 
Premier roman Omale décrit la quête de 6 individus des races humaines,  chiles et hodgqins.
Six individus se retrouvent en possession d''un bris d''œuf et décident d''en décrypter l''inscription. Ils s''embarquent sur une nef aérienne afin d''accomplir la quête pour laquelle ils ont été élus. C''est au cours d''un vol mouvementé qu''ils apprendront progressivement à se connaître grâce au fejij, le jeu des relations chile — subtil révélateur des caractères, des personnalités et des leçons du passé. Bravant les attaques de pirates, échappant de justesse au naufrage de leur dirigeable, le petit groupe se découvre dans un périple aux mille dangers. Et l''aventure les rapproche chaque jour davantage des secrets d''Omale...

Deuxième roman : Les conquérant d''Omale :
Les Conquérants d''Omale se déroule pendant les Âges Obscurs d''Omale et se compose de trois histoires distinctes dont les protagonistes ne se croisent jamais. Humains, Chiles et Hodgqins, les trois espèces intelligentes de la planète, se livrent une guerre sans merci depuis plusieurs siècles. Au centre, un territoire neutre où les armes s''appellent politique et diplomatie, et où un équilibre précaire semble s''être installé. Un équilibre menacé, car un complot se prépare. Sur le front Humains/Chiles, le Généralissime Haïdar organise une mission secrète qui pourrait bien faire basculer le conflit en faveur des humains. Une mission tellement secrète que même les soldats qui l''animent ne savent ni où ils vont, ni pourquoi. Ailleurs enfin, un groupe de cartographes est confronté à un phénomène d''une ampleur catastrophique : une plaque d''un noir de nuit en progression constante s''insinue entre Omale et son soleil, plongeant des régions entière dans une nouvelle ère glacière. Serait-ce tout simplement la fin d''Omale ?

Deux bons romans bien écrits. J''ai bien aimé ce mélange de SF, fait d''archaisme technologique et de mystère autour des races chile et hodgqin. J''ai hate de lire le tome 2 !
', 'Omale', 1, NULL, NULL),
(1115, 609, 67, 2015, 'Les Quatre-vingt-un Frères ', '', 5, 1, '2019-05-28 00:00:00', TRUE, '2019-05-27 00:00:00', '2019-06-06 00:00:00', 4.0, NULL, 570, 'images/les_81_freres.jpg', 'Johnny Kwan est un fat si, un exorciste taoïste. Alors que Hong Kong se prépare à célébrer l''Anniversaire de la Rétrocession, Anthony Chau, le célèbre milliardaire, le charge de retrouver un manuscrit très ancien. Johnny, non sans s’être au préalable débarrassé de quelques fantômes et autres démons, va vite comprendre que cette mission, a priori facile, en cache une autre, bien plus complexe et cruciale, mettant en cause une mystérieuse organisation secrète : les Ouatre-vingt-un Frères.

Les Ouatre-vingt-un Frères, premier tome des Chroniques de l''Étrange, convoque une mythologie et un décor originaux et mêle, sans temps mort, roman noir et fantasy urbaine, magie et arts martiaux, non sans rendre hommage au meilleur du cinéma hongkongais.', '', 'Chroniques de l''étrange', 1, NULL, NULL),
(1116, 11710, 2, 2015, 'Royaume de vent et de colères', '', 1, 1, '2019-06-10 00:00:00', TRUE, '2019-06-07 00:00:00', '2019-06-15 00:00:00', 4.0, NULL, 571, 'images/royuame_de_vent_et_de_coleres.jpg', 'Marseille, 1596. Massées à ses portes, les troupes d’Henri IV entendent faire plier la cité phocéenne, dont l’indépendance autoproclamée n’a que trop duré. Pourtant, le destin des Marseillais ne se joue pas sur le champ de bataille, mais ici et maintenant, entre les quatre murs d’une auberge, La Roue de la Fortune. Là se croisent tous ceux qui, de près ou de loin, tiennent un rôle dans le drame à venir. Mais qui d’Axelle, l’ancienne guerrière devenue tenancière, de Gabriel, le chevalier revenu de tout, de Victoire, la maîtresse de la guilde des assassins, de Silas, son homme de main, ou d’Armand, le magicien persécuté, tient dans sa main les clés de la ville ?', '', '', 0, NULL, NULL),
(1117, 128, 67, 1981, 'La fontaine pétrifiante', 'The affirmation', 5, 1, '2019-06-19 00:00:00', TRUE, '2019-06-16 00:00:00', '2019-06-25 00:00:00', 3.0, NULL, 260, 'images/fontaine_petrifiante.jpg', 'Peter Sinclair souffre du chômage et de la rupture d''une longue relation sentimentale. Il cherche à échapper de ce qu''il perçoit comme le passage dans la marginalité sociale en créant un univers de fiction. Dans ce monde, il a gagné à la loterie de l''Archipel du rêve et peut suivre un traitement médical complexe permettant d''accéder à l''immortalité.

Au fil de l''écriture, Peter Sinclair se rend compte que ses deux identités, réelle et dans la fiction, commencent à fusionner. Ou est-ce qu''il vit des hallucinations visuelles et auditives à porter au compte de la schizophrenie. À la fin, il n''est plus possible de savoir quel monde est réel et lequel est imaginaire.', '', '', 0, NULL, NULL),
(1118, 0, 80, 2005, 'Harry Potter and the Half-Blood Prince', '', 5, 1, '2019-06-25 00:00:00', TRUE, '2019-06-25 00:00:00', '2020-08-04 00:00:00', 4.0, NULL, 548, 'images/harry_potter_and_the_half_blood_prince.jpg', 'Harry rentre en sixième année à l''école de sorcellerie Poudlard. Il entre alors en possession d''un livre de potion portant le mot « propriété du Prince de sang-mêlé » et commence à en savoir plus sur le sombre passé de Voldemort qui était encore connu sous le nom de Tom Jedusor.', '', 'Harry Potter', 6, NULL, NULL),
(1119, 620, 67, 2017, 'Les grands arrières', '', 1, 1, '2019-06-30 00:00:00', TRUE, '2019-06-26 00:00:00', '2019-07-17 00:00:00', 3.5, NULL, 285, 'images/chasse_royale_-_2.jpg', 'Après avoir défié toute l''armée rebelle pour couvrir la retraite du haut roi, j’ai fini par me rendre. Ou''est-ce qu''un captif, sinon un demi-mort ? On me retire mon mauvais cheval, on m''arrache mes bijoux, on m''entraîne vers la rivière avec rudesse. On crie autour de moi, j''ai l''impression que personne ne sait vraiment ce qu''il faut faire, je crains de plus en plus que n''arrive l''ordre de me noyer. La mort par l''eau, après tout, est une sentence que peuvent prononcer les rois comme les druides. Qui va décider de mon sort ? Articnos, roi des Éduens, que j''ai été à deux doigts de tuer ? Sa sœur, la mystérieuse Prittuse, haute reine déchue de Celtique ? Ou bien ce sorcier redoutable que jadis on appelait le gutuater et qui vient d''usurper le sacerdoce du grand druide ?

Cette seconde partie de Chasse royale, le deuxième tome de la trilogie R ois du monde, nous plonge au cœur du monde celte : âpre et violent, empli de gloire et de magie. Jean-Philippe Jaworski poursuit ainsi l''édification de ce qui est, d''ores et déjà, un monument de la fantasy historique.', '', 'Rois du monde', 3, NULL, NULL),
(1121, 618, 67, 2016, 'La résurrection du dragon', '', 5, 1, '2019-07-17 00:00:00', TRUE, '2019-07-17 00:00:00', '2019-07-24 00:00:00', 3.0, NULL, 570, 'images/la_resurrection_du_dragon.jpg', 'À peine remis de son combat contre les Quatre-vingt-un Frères, Johnny Kwan reprend du service. Après tout, il n''y a pas le choix quand on est un fat si : les démons n''attendent pas ! Pourtant, Johnny va très vite s''apercevoir qu''il n''en a peut-être pas fini avec la mystérieuse secte hmong. En effet, sa route croise de nouveau celle de l''assassin professionnel qui avait failli le tuer deux mois plus tôt. Mais un étrange pressentiment taraude l''exorciste taoïste: et si la vérité était plus complexe qu''il n''y paraît ?

La résurrection du dragon, deuxième tome des Chroniques de l''Étrange, plonge le lecteur en plein cœur de Hong Kong pour une nouvelle enquête surnaturelle sans temps mort digne du meilleur cinéma hongkongais, mêlant roman noir et fantasy urbaine, mythologie chinoise et arts martiaux.', '', 'Chroniques de l''étrange', 2, NULL, NULL),
(1122, 0, 3, 2015, 'Une putain d''histoire', '', 6, 1, '2019-08-03 00:00:00', FALSE, '2019-07-24 00:00:00', '2019-08-02 00:00:00', 4.0, NULL, 553, 'images/une_putain_dhistoire.jpg', 'Hors des flots déchaînés, une main tendue vers le ciel. Un pont de bateau qui tangue, la pluie qui s''abat, et la nuit... Le début d''une " putain d''histoire ". 
Une histoire d''amour et de peur, de bruit et de fureur. L''histoire de Henry, 17 ans, que le meurtre de sa petite amie plonge dans l''enfer du soupçon. Sur son île, Glass Island, battue par les vents, cernée par la brume 360 jours par an et uniquement accessible par ferry, tout le monde connaît tout le monde, jusqu''au plus noir de ses secrets. Ou du moins le croit-on. 
Quand la peur gagne, la vérité s''y perd... ', 'Vraiment une putain d''histoire ! Jusqu''à la fin des rebondissements !
', '', 0, NULL, NULL),
(1123, 626, 67, 2017, 'Le marteau des sorcières', '', 1, 1, '2019-08-03 00:00:00', TRUE, '2019-08-03 00:00:00', '2019-08-14 00:00:00', 3.0, NULL, 555, 'images/le_marteau_des_sorcières.jpg', '1341. Sur les traces de son passé, le Bâtard de Kosigan et sa compagnie s''enfoncent dans les profondeurs de l''Empire germanique. L''Inquisition y est menaçante, avec à sa tête le redouté cardinal de Las Casas surnommé « le Marteau des sorcières ». Le Bâtard de Kosigan va devoir jouer sur plusieurs tableaux, entre complots politiques et chasse aux sorcières, s’il veut découvrir l''origine de ses capacités surnaturelles.
À quelques siècles d''intervalle, Kergaël de Kosigan tente d’élucider les interrogations soulevées par les écrits de son ancêtre. Mais remuer les secrets de l''Histoire se révèle périlleux et la vérité a toujours un prix.', '', 'Le Bâtard de Kosigan', 3, NULL, NULL),
(1124, 0, 62, 2019, 'Natures', '', 2, 2, '2019-08-15 00:00:00', TRUE, '2019-08-14 00:00:00', '2019-08-24 00:00:00', 3.5, NULL, 562, 'images/natures.jpg', '', '', '', 0, NULL, NULL),
(1125, 608, 67, 2016, 'Mondocane', '', 2, 1, '2019-08-30 00:00:00', TRUE, '2019-08-24 00:00:00', '2019-08-30 00:00:00', 2.0, NULL, 572, 'images/mondocane.jpg', '', 'Livre trop court et sans grand intérêt. Je n''ai pas du tout aimé le style de cet auteur. L''intrigue est peut intéressante et les personnages creux. Bref, vite lu, vite oublié !
', '', 0, NULL, NULL),
(1126, 0, 85, 2014, 'Manesh', '', 1, 1, '2019-09-27 00:00:00', TRUE, '2019-08-30 00:00:00', '2019-09-26 00:00:00', 4.0, NULL, 573, 'images/manesh.jpg', 'Quelque part dans la nordique forêt du Vyanthryr, les gabarres du capitaine Rana remontent le fleuve, vers les sources sacrées où réside le Roi-diseur, l’oracle dont le savoir pourrait inverser le cours de la guerre civile. À bord, une poignée de guerriers prêts à tout pour sauver leur patrie. Mais qui, parmi eux, connaît vraiment les buts de l''expédition ? Même le Barde, l''homme de confiance du capitaine, n’a pas exploré tous les replis de son âme. Et lorsque les bateliers recueillent un moribond qui dérive sur le fleuve, à des milles et des milles de toute civilisation, de nouvelles questions surgissent. Qui est Le Bâtard ? Que faisait-il dans la forêt ? Est-il un danger potentiel, ou au contraire le formidable allié qui pourrait sauver l’expédition de l’anéantissement pur et simple ?
     Un huis-clos humaniste et un peu cruel, une histoire sans héros, quelque part entre Robin Hobb et Robert Holdstock. Avec le premier tome de cette trilogie, par un auteur belge, une voix majeure de la fantasy vient de naître.', '', 'Les sentiers des astres', 1, NULL, NULL),
(1127, 428, 67, 1999, 'Le successeur de pierre', NULL, 2, 1, '2019-09-27 00:00:00', TRUE, '2019-09-26 00:00:00', '2019-10-15 00:00:00', 3.5, NULL, 574, 'images/le_successeur_de_pierre.jpg', 'Cela fait des siècles que la Bulle de Pierre, écrite par le premier pape, est perdue. Objet de toutes les convoitises, la teneur de son message n’est connue que des souverains pontifes, successeurs de l’apôtre de Jésus.
     Pour le jeune Calvin, isolé dans son cocon à l’intérieur d’une des immenses pyramides où s’est réfugiée la quasi-totalité de l’humanité, il est des mystères bien plus immédiats : pourquoi a-t-il été séparé de sa mère ? Qui sont ces amis avec lesquels il ne communique que par Web interposé et qui se cachent derrière des avatars aux noms faussement transparents ?... Et pourtant, se peut-il que tous ces faits soient liés au manuscrit disparu ?
 
     Mêlant thriller et science-fiction, Le Successeur de pierre est un roman passionnant où le suspense le dispute à l’érudition. Une réussite justement récompensée par le Grand Prix de l’Imaginaire en 2000.', 'Roman très dense mais très riche en idées. Truong fait preuve d''une grande érudition en nous parlant de l''histoire de la religion chrétienne notamment. Il dépeint aussi une horrible société où la majorité des humains doivent vivre dans des immenses pyramides chacun dans un studio. Le seul moyen de communiquer est l''internet avec tous les problèmes d’usurpation d''identité, d''avatars, d''espionnage.
Le titre est basée sur une bulle émise par le Christ lui même (mais censurée par les apotres) qui révèle que l''homme n''est pas l''héritier éternel du "Verbe" mais une entité (nommé la créature) de pierre qui évolue depuis la nuit des temps.
Roman très ambitieux et intéressant.', NULL, 0, 'images/dedicace/successeur_de_pierre_gxr12Gu.jpg', NULL),
(1128, 12285, 2, 2017, 'Boudicca', '', 1, 1, '2019-10-15 00:00:00', TRUE, '2019-10-15 00:00:00', '2019-10-22 00:00:00', NULL, NULL, 571, 'images/boudicca.jpg', 'Un siècle après leur victoire sur la Gaule, les Romains veulent à présent soumettre l’île de Bretagne – l’actuelle Angleterre. Les Celtes y sont divisés, trop faibles ou trop cupides pour s’opposer à eux. Au prix de nombreux sacrifices, animée par une vengeance dévastatrice, une reine guerrière fière et indépendante va pourtant se dresser sur leur chemin et réaliser l’impossible : unir tous les clans contre l’envahisseur. Si sa révolte est finalement brisée, Boudicca demeure, aujourd’hui encore, une des plus grandes figures de la résistance à l’oppression. Plus que son histoire, voici sa légende...', 'Court roman sur la vie de la celte Boudicca qui va lutter jusqu''à sa mort contre les envahisseurs romains. C''est bien écrit mais j''ai trouvé trop léger pour en faire un grand roman de fantasy. L''auteur y apporte beaucoup de sensibilité, d''humanité.
', '', 0, NULL, NULL),
(1129, 3, 84, 2001, 'Les souvenirs de la glace', 'Memories of ice', 1, 1, '2019-10-27 00:00:00', TRUE, '2019-10-22 00:00:00', '2019-11-25 00:00:00', 4.0, NULL, 568, 'images/Les-souvenirs-de-la-glace.jpg', 'Le continent ravagé de Genabackis a donné naissance à un nouvel empire terrifiant : le Domin de Pannion. Telle une marée de sang corrompu, il dévore ceux qui refusent de se soumettre à la sainte parole de son tyran fanatique. Pour l''affronter, l''Ost de Dujek Unbras et les Brûleurs de Ponts de Mésangeai et de Ganoes Paran devront forger une alliance avec leurs vieux ennemis : les forces du seigneur de guerre Caladan Rumin, les Tistes Andii d''Anomander Rake et les Rhivis des plaines. Mais ce ne sont pas les seuls événements qui se trament. Les clans t''lan imass se sont également réveillés, répondant à l''appel de l''antique rassemblement qui scellera leur destinée. Dans l''ombre, une infection se propage, corrompant les garennes, souillant la chair de Brûle, la Déesse Endormie elle-même. A Morn, une déchirure écarlate porte la trace du Chaos, promesse d''une effroyable renaissance. Et partout l''on raconte que le Dieu Estropié, désormais libéré de ses chaires, chercherait à assouvir son impitoyable vengeance... Marquant le retour de bon nombre de personnages des Jardins de la Lune, Les Souvenirs de la Glace se pose comme un chapitre capital au sein de l''éblouissant cycle de fantasy épique de Steven Erikson.', '1150 pages ! Roman très dense qui fait avancer l''intrigue du Dieu estropié (ancien dieu qui a été emprisonné par d''anciens dieux, pour se venger il contamine l''ensemble des garennes dont celles de Brule). La maison des chaines est le nom de la nouvelle maison créée par ce dieu estropié. Paran devient le gardien de ces maisons et peut décider d''accepter tel ou tel Dieu.
Nombreux personnages, nombreux découpages. Des longueurs parfois (dialogues inutiles), des scènes de bataille très épiques (l''assaut de Capustan et en fin de roman de Corail)..
Les K''chain che malle (sorte de lézard évolué avec des lames). Le retour des Ti''lan imass. La destruction de la lune.

J''ai bien aimé même si j''ai trouvé parfois longuets certaines scènes. 

', 'Le livres des martyrs', 3, NULL, NULL),
(1130, 1579, 86, 2006, 'Le problème à trois corps', 'San Ti', 2, 1, '2019-11-30 00:00:00', FALSE, '2019-11-25 00:00:00', '2019-12-08 00:00:00', 4.0, NULL, 575, 'images/le_probleme_a_trois_corps.jpg', 'En pleine Révolution culturelle, le pouvoir chinois construit une base militaire secrète destinée à abriter un programme de recherche de potentielles civilisations extraterrestres. Ye Wenjie, une jeune astrophysicienne en cours de "rééducation", parvient à envoyer dans l''espace un message contenant des informations sur la civilisation humaine. Le signal est intercepté par les Trisolariens, qui s''apprêtent à abandonner leur planète mère, située à quatre années-lumière de la Terre et menacée d''un effondrement gravitationnel provoqué par les mouvements chaotiques des trois soleils de son système. En raison de la distance, Ye Wenjie met près de huit ans à recevoir la réponse des Trisolariens. Elle tient désormais entre ses mains rien de moins que le destin de l''espèce humaine. Hugo 2015 du meilleur roman, Le Problème à trois corps est le premier volume d''une trilogie culte d''une ambition folle.', 'Excellent roman de SF avec de nombreuses idées géniales ! Vivement la suite !', 'Le problème à trois corps', 1, NULL, NULL),
(1131, 260, 67, 1995, 'Le prestige', 'The prestige', 5, 1, '2019-12-16 00:00:00', TRUE, '2019-12-09 00:00:00', '2019-12-27 00:00:00', 3.5, NULL, 260, 'images/le_prestige.jpg', 'Alfred Borden et Rupert Angier, deux prestidigitateurs hors du commun, s''affrontent dans un duel sans merci. Trois générations plus tard, au cours d''une enquête sur une secte, le journaliste Andrew Wesley fait la connaissance de Kate Angier. Elle lui révèle qu''il s''appelle en fait Andrew Borden, et qu''une guerre oppose leurs deux familles depuis la fin du XIXE siècle. Quand Andrew découvre le rôle exact joué par le scientifique Tesla dans toute cette affaire, sa vie en est bouleversée à jamais...', '', '', 0, NULL, NULL),
(1132, 621, 67, 2016, 'La cité du futur', 'Last Year', 2, 1, '2019-12-30 00:00:00', TRUE, '2019-12-28 00:00:00', '2020-01-09 00:00:00', 3.0, NULL, 289, 'images/la_cité_du_futur.jpg', 'Pour cinq ans seulement, jusqu''en 1877, la cité de Futurity dresse ses immenses toursjumelles au-dessus des grandes plaines de l''Illinois. Depuis Futurity, des hommes du futur viennent visiter le xixe siècle. Et, contre une fortune en métaux précieux, les autochtones peuvent dormir dans la Tour n° 1, véritable vitrine technologique d''un incompréhensible xxie siècle. C''est dans cette cité que travaille, comme agent de sécurité, Jesse Cullum, un autochtone. Parce qu''il a sauvé le président Ulysses Grant d''une tentative d''assassinat, Jesse se voit proposer une promotion : assisté d''une femme du XXIe siècle, il va devoir mener l''enquête.
Mais que va-t-il réellement découvrir ? Un complot pour tuer le président... ou les inavouables secrets de Futurity ?', '', '', 0, NULL, NULL),
(1133, 0, 1, 1968, 'Le sorcier de Terremer', 'A wizard of Earthsea', 5, 1, '2020-01-12 00:00:00', TRUE, '2020-01-09 00:00:00', '2020-01-14 00:00:00', 4.0, NULL, 244, 'images/terremer.jpg', 'Terremer est un lieu magique et ensorcelé. Une mer immense recouverte d’un chapelet d’îles où les sorciers pratiquent la magie selon des règles très strictes. On y suit les aventures de Ged, un éleveur de chèvres qui, au terme d’une longue initiation, deviendra l’Archimage le plus puissant de Terremer, mais aussi celles de Tenar, haute prêtresse du temple des Innommables de l’île d''Atuan, de Tehanu, la fille-dragon, et de Aulne le sorcier qui refait chaque nuit le même rêve terrifiant. Autour de la grande histoire gravitent des contes qui enrichissent et explorent ce monde où enchanteurs et dragons se côtoient.', '', 'Cycle de Terremer', 1, NULL, NULL),
(1134, 0, 1, 1970, 'Les tombeaux d''Atuan', 'The Tombs of Atuan', 1, 1, '2020-01-19 00:00:00', TRUE, '2020-01-14 00:00:00', '2020-01-19 00:00:00', 4.0, NULL, 244, 'images/terremer_1.jpg', 'Tenar est la réincarnation d''Arha dite la Dévorée des Innommables. En cette qualité, elle est la plus haute prêtresse du temple des Innommables et la Gardienne de leurs tombeaux sur l''île d''Atuan. Elle doit veiller à ce qu''aucun pillard ne s''infiltre dans le labyrinthe dans lequel se trouvent de nombreux trésors.', 'Récit intéressant centre sur le personnage féminin de Ténar. On y rencontre vers le milieu du roman, Ged qui vient fouiller les tombes à la recherche de l''anneau. Les deux protagonistes se lieront d''amitié et auront l''un de l''autre pour s''échapper.
 ', 'Cycle de Terremer', 2, NULL, NULL),
(1135, 0, 1, 1972, 'L''ultime rivage', 'The farthest shore', 5, 1, '2020-01-19 00:00:00', TRUE, '2020-01-19 00:00:00', '2020-01-28 00:00:00', 3.0, NULL, 244, 'images/terremer_2.jpg', '', '', 'Cycle de Terremer', 3, NULL, NULL),
(1136, 9001, 39, 1981, 'Dragon rouge', 'Red dragon', 6, 1, '2020-01-29 00:00:00', FALSE, '2020-01-29 00:00:00', '2020-02-08 00:00:00', 2.0, NULL, 576, 'images/dragon_rouge.jpg', 'Une série de meurtres terrifiants secoue les États-Unis. Tous suivent le même rituel d''horreur, tous sont signés d''un mystérieux Dragon rouge.
Un homme est sur une piste. Il s''appelle Will Graham. Il a déjà démontré par le passé sa curieuse aptitude à se mettre dans la peau des psychopathes, à adopter leur point de vue, à deviner leurs pulsions les plus secrètes.
Dans cette sinistre traque, il va rencontrer en prison un autre monstre : le diabolique Hannibal Lecter. Pour Graham, commence alors une lente descente aux enfers, dans le sombre psychisme de ces meurtriers en série, au risque de s''y perdre...', 'Roman très moyen. Le style est pauvre voire mauvais. Les transitions sont parfois confuses trop rapides. L''histoire ne présente pas un grand intérêt à part sur le tueur lui-même qui est une sorte de schizophrène qui se dit habité par le Dragon Rouge (inspiré par le tableau de Blake : Le grand Dragon Rouge et la Femme vêtue de soleil).
Hannibal Lecter est hélas très peu présent dans ce roman.

Vite lu, vite oublié. Hop direction la boite à livre ! ;-)


', '', 0, NULL, NULL),
(1137, 0, 84, 2002, 'La maison des chaînes', 'House of chains', 1, 1, '2020-02-12 00:00:00', TRUE, '2020-02-09 00:00:00', '2020-03-19 00:00:00', 2.5, NULL, 568, 'images/la_maison_des_chaines.jpg', 'Au nord de Genabackis, un groupe d’incursion mené par trois guerriers teblors descend de la montagne dans le but de ravager les plaines méridionales occupées par les basse-terriens qu’ils honnissent. Pour le dénommé Karsa Orlong, ce raid marquera le début d’une extraordinaire destinée.
Quelques années plus tard, Tavore, la nouvelle Adjointe de l’Impératrice, débarque dans le dernier bastion de Sept-Cités encore aux mains des Malazéens après les événements dramatiques de la Chaîne des Chiens. Nouvelle à son poste de commandement, elle devra aguerrir douze mille soldats fraîchement recrutés pour la plupart — à l’exception d’une poignée de vétérans ayant survécu à la légendaire marche de Coltaine — afin de former une armée capable de renverser les hordes de l’Apocalypse qui se terrent au coeur du Saint-Désert.
Tandis que les Grands Prêtres et les généraux de Sha’ik se livrent à une lutte de pouvoir qui menace l’âme même de la Rébellion, d’obscures forces se rassemblent autour de Raraku et de son mystérieux Tourbillon. Dans le Naissant, Onrack, un T’lan Imass perdu, libère de ses fers le Tiste Edur Trull Sengar, abandonné et banni par ses semblables ; tous deux vont dès lors se lancer dans une longue odyssée pour rejoindre leur domaine d’origine. Sur Avalii la dérivante, une sanglante confrontation ravive les inimitiés qui règnent entre les trois garennes primordiales, forçant Ammanas et Cotillon à sortir de leur réserve. Et au cœur de Kurald Thyrllan, les Tistes Liosan sont aux abois : Osric, leur dieu, a disparu, et personne ne semble savoir où il est.
Un terreau propice à l’avènement de la Maison des Chaînes du Dieu Estropié qui, en secret, poursuit son inquiétant recrutement...', 'Ouais. Ouais. Ouais... Livre que j''ai trouvé très difficile à lire et avec la encore pas mal de longueurs. L''intrigue est complexe (encore plus que pour le précédent tome).Difficile de comprendre toute l''intrigue (notamment l''histoire avec Onrack et Trull). 
Il y a beaucoup trop de personnages, les dialogues sont souvent obscurs et les descriptions manquent de détails. C''est parfois très frustrant?
Bref, lire la suite ne me motive pas tellement je trouve le style de l''auteur lourd.
Dommage car la première partie avec Karsa (le guerrier géant Toblakai) était vraiment bien écrite et intéressante....


', 'Le livre des martyrs', 4, NULL, NULL),
(1138, 35366, 1, 2018, 'Changer l''eau des fleurs', '', 10, 1, '2020-03-23 00:00:00', FALSE, '2020-03-20 00:00:00', '2020-04-04 00:00:00', 4.0, NULL, 577, 'images/Changer-l-eau-des-fleurs_1.jpg', 'Violette Toussaint est garde-cimetière dans une petite ville de Bourgogne. Les gens de passage et les habitués viennent se réchauffer dans sa loge où rires et larmes se mélangent au café qu''elle leur offre. Son quotidien est rythmé par leurs confidences. Un jour, parce qu''un homme et une femme ont décidé de reposer ensemble dans son carré de terre, tout bascule. Des liens qui unissent vivants et morts sont exhumés, et certaines âmes que l''on croyait noires, se révèlent lumineuses.', '', '', 0, NULL, NULL),
(1139, 648, 67, 2018, 'Le testament d''involution', '', 5, 1, '2020-04-06 00:00:00', TRUE, '2020-04-04 00:00:00', '2020-04-22 00:00:00', NULL, NULL, 555, 'images/Le_testament_dinvolution.jpg', 'Et si l''origine du plus grand lac de la région de Cologne avait un rapport avec une prophétie réalisée en 1341 ? Et si cette même année, le chevalier de Kosigan avait réveillé des forces qui le dépassent ? Et si le destin de sa postérité se jouait cinq siècles plus tard dans la cave voûtée d''un bistrot parisien ? Et si les secrets révélés dans ce livre étaient dangereux ? Et qu''en les découvrant, vous deveniez complice...', '', 'Le Bâtard de Kosigan', 4, NULL, NULL),
(1140, 12985, 3, 2005, 'La chambre des morts', '', 6, 1, '2020-04-26 00:00:00', FALSE, '2020-04-22 00:00:00', '2020-04-27 00:00:00', 3.0, NULL, 569, 'images/la_chambre_des_morts.jpg', 'Imaginez…
Vous roulez en pleine nuit avec votre meilleur ami, tous feux éteints.
Devant vous, un champ d’éoliennes désert.
Soudain le choc, d’une violence inouïe. Un corps gît près de votre véhicule. A ses côtés, un sac de sport. Dedans, deux millions d’euros, à portée de la main.
Que feriez-vous ?
Vigo et Sylvain, eux, ont choisi.
L’amitié a parfois le goût du sang : désormais le pire de leur cauchemar a un nom… La Bête.', 'Sympathique roman mais un peu court (330 pages).
L''histoire de deux femmes diaboliques qui empaillent des animaux mais aussi des êtres humains. Le personnage de Lucie Hennebelle est détaillée, elle est pour l''instant brigadier.', '', 0, NULL, NULL),
(1141, 350, 67, 2007, 'La zone du dehors', NULL, 2, 1, '2020-05-02 00:00:00', TRUE, '2020-04-27 00:00:00', '2020-05-15 00:00:00', 4.0, NULL, 286, 'images/la_zone_du_dehors.jpg', '2084.
     Orwell est loin désormais. Le totalitarisme a pris les traits bonhommes de la social-démocratie. Souriez, vous êtes gérés ! Le citoyen ne s''opprime plus : il se fabrique. À la pâte à norme, au confort, au consensus. Copie qu''on forme, tout simplement. Au cœur de cette glu, un mouvement, une force de frappe, des fous : la Volte. Le Dehors est leur espace, subvertir leur seule arme. Emmenés par Capt, philosophe et stratège, le peintre Kamio et le fulgurant Slift que rien ne bloque ni ne borne, ils iront au bout de leur volution. En perdant beaucoup. En gagnant tout.

     Premier roman, ici réécrit, La Zone du Dehors est un livre de combat contre nos sociétés de contrôle. Celles que nos gouvernements, nos multinationales, nos technologies et nos médias nous tissent aux fibres, tranquillement. Avec notre plus complice consentement. Peut-être est-il temps d''apprendre à boxer chaos debout contre le swing de la norme ?', NULL, NULL, 0, 'images/dedicace/zone_du_dehors.jpg', NULL),
(1142, 655, 67, 655, 'Thecel', '', 1, 1, '2020-05-20 00:00:00', TRUE, '2020-05-16 00:00:00', '2020-05-24 00:00:00', 2.5, NULL, 539, 'images/thecel.jpg', 'À Thecel, Moïra et son frère, Aslander, coulent des jours heureux au Palais, dont ils connaissent tous les recoins par cœur. Leur père est à la tête de l’Empire des Sicles et, même si l’on évoque des combats sporadiques aux frontières, la paix et la concorde règnent. Pourtant d’inquiétantes rumeurs courent : l’Empereur serait au plus mal et, s’il venait à mourir, Aslander, son seul héritier mâle, pourrait ne pas être en mesure de prendre sa succession. Serait-ce la fin de la dynastie et, pire, la chute de l’Empire ? Et que deviendrait alors Moïra ?

Après la science-fiction du Casse du continuum et le fantastique de La Panse, Léo Henry clôt sa « trilogie des mauvais genres » avec Thecel, un roman de fantasy qui renouvelle avec originalité et talent les récits de quête initiatique.', '', '', 0, NULL, NULL),
(1143, 647, 67, 2016, 'Retrograde', 'Retrograde', 2, 1, '2020-05-30 00:00:00', TRUE, '2020-05-24 00:00:00', '2020-06-03 00:00:00', 3.5, NULL, 578, 'images/retrograde.jpg', 'Liz Anderson est l''une des cent vingt personnes vivant au sein de la colonie martienne Endeavour. Entourée de ses collègues représentant les principaux pays du monde, et sous la direction de quatre agences spatiales travaillant de concert, Liz s’est engagée pour une mission de dix ans sur la planète rouge.
Mais la camaraderie martienne vole en éclats lorsque, sur Terre, le feu nucléaire pleut sur plusieurs grandes villes. Les communications sont coupées et les colons se retrouvent isolés à des dizaines de millions de kilomètres de chez eux. Qui croire quand les rumeurs prennent le pas sur l''information ? Vers qui se tourner quand les rivalités entre les nations resurgissent ? Et comment, malgré le chagrin et l''incompréhension, continuer à agir pour le bien de la colonie et de l''humanité tout entière ? D''autant qu''à chaque instant Mars peut vous tuer.

Rétrograde, un thriller de science-fiction sous haute tension, est le premier roman de l’auteur à paraître en France.', 'Bien écrit et assez psychologique ce roman décrit un huis clos se passant sur Mars.
La base composée de 4 modules de différentes nations est attaquée par une IA ayant déclenché sur la Terre une guerre nucléaire. L''héroïne (Liz) aura fort à faire pour vaincre l''IA qui n''a qu''un but : détruire l''humanité.
', '', 0, NULL, NULL),
(1144, 593, 67, 2015, 'L''appel des illustres', '', 5, 1, '2020-06-07 00:00:00', TRUE, '2020-06-04 00:00:00', '2020-06-21 00:00:00', 3.0, NULL, 579, 'images/lappel_des_illustres.jpg', 'Le destin des ducs Spadelpietra est assuré. Inexorable. Une ascension déterminée vers le pouvoir, vers la couronne, vers la place qui leur revient de droit. Ils sont les pacificateurs, les bâtisseurs, les gouverneurs de Slasie. Ils sont les Illustres.
Mais les nomades austrois y font à peine attention. Leur monde n''est fait que de théâtre, de musique, d''art et d''inventions dont ils gardent jalousement les secrets. Leur vie est une mécanique bien huilée, à l''image de leurs automates.
Et pourtant, un tout petit hasard vient gripper les rouages de l’histoire. Une toile découverte par les Spadelpietra qui catapulte son peintre, le jeune Mical, dans une longue fuite...

Premier tome du diptyque Le sang des princes, L''Appel des Illustres mêle habilement histoire, aventure, art et politique. Un roman qui marque les débuts en fantasy d''un jeune auteur à suivre assurément.', 'Le héros Mical (peintre) au début du roman aurait réalisé un tableau qui a tué une jeune noble Spadelpietra. Cette grande famille au pouvoir complote et intrigue. Mical qui est poursuivi par un ordre d''assassins (au service des Spadelpietra) est receuilli par un clan Austrois. Les austrois sont des sortes de gitans, saltimbanques très doué pour les arts et la mécanique, les automates. Roman à suivre donc, car la fin laisse sur notre faim beaucoup d''élément ne sont pas expliqués. Un roman un peu confus parfois.
 ', 'Le sang des princes', 1, NULL, NULL),
(1145, 508, 67, 2006, 'Omale', '', 2, 1, '2020-06-21 00:00:00', TRUE, '2020-06-21 00:00:00', '2020-07-22 00:00:00', 4.0, NULL, 17, 'images/omale_-_tome2.jpg', 'Pendant seize siècles, la guerre a fait rage entre les trois espèces qui peuplent la surface intérieure d''Omale. Aujourd''hui, la paix est revenue entre les Humains, les Hodgqins et les Chiles. Mais déjà un nouveau danger se profile : la Muraille Sainte, érigée mille ans plus tôt au centre de l''Aire humaine par des religieux refusant tout contact avec les démons extraterrestres, a été abattue. Et voilà que des millions de fuyards se répandent dans tout le territoire, bouleversant l''équilibre précaire de la paix. Une expédition menée par Haka, un physicien chile, va devoir se rendre là où aucun Chile, aucun Hodgqin ni aucun Humain de l''extérieur ne s''est jamais aventuré. Pour découvrir un secret susceptible de mettre fin à l''existence même d''Omale...

     Ce volume regroupe un roman et sept nouvelles s''inscrivant dans le cycle d''Omale, assurément l''œuvre la plus ambitieuse à ce jour de Laurent Genefort.', '', 'Omale', 2, NULL, NULL),
(1146, 0, 3, 2019, 'M, le bord de l''abîme', '', 6, 1, '2020-07-26 00:00:00', FALSE, '2020-07-22 00:00:00', '2020-08-09 00:00:00', 3.0, NULL, 553, 'images/M_le_bord_de_labime.jpg', 'Hong Kong. Entre ses rues frénétiques et ses néons insomniaques, la ville dresse ses gratte-ciel. D''immenses aquariums technologiques où se décide le futur de l''humanité. C''est là, dans l''atmosphère poisseuse de l''été tropical, qu''une Française, Moïra, intègre la firme Ming, concentré d''intelligence artificielle censé devancer nos désirs. Mais pour la jeune femme, l''utopie vire au cauchemar. Derrière les murs du centre ultrasecret, des employées sont retrouvées mortes, violées, torturées. Que cherche vraiment l''empire Ming ? Bienvenue chez M... Au bord de l''abîme.', '', '', 0, NULL, NULL),
(1147, 0, 88, 2007, 'Le vieil homme et la guerre', 'Old''s man war', 2, 1, '2020-08-09 00:00:00', TRUE, '2020-08-09 00:00:00', '2020-08-14 00:00:00', 4.0, NULL, 580, 'images/Le-vieil-homme-et-la-guerre.jpg', '« J''ai fait deux choses le jour de mes soixante-quinze ans : je suis allé sur la tombe de ma femme. Puis je me suis engagé. » À soixante-quinze ans, l''âge requis, John Perry n''est pas le seul à intégrer les Forces de défense coloniale, billet pour les étoiles, mais sans retour. Rien ne le retient plus sur Terre. Combien d''années peut-il espérer vivre ? S''engager, c''est protéger l''expansion de l''humanité dans la Galaxie, retrouver une seconde jeunesse et, à l''issue du service, obtenir le statut de colon sur une planète nouvelle. Mais qu''advient-il réellement de ces recrues ? Dans la lignée de Starship Troopers de Robert Heinlein et de La Guerre éternelle de Joe Haldeman, John Scalzi, pour son premier roman, a été finaliste du prix Hugo et a obtenu le prix Campbell du meilleur nouvel auteur de S.F.', '', 'Le vieil homme et la guerre', 1, NULL, NULL),
(1148, 0, 80, 2007, 'Harry Potter and the deatly hollows', '', 5, 1, '2020-08-16 00:00:00', TRUE, '2020-08-06 00:00:00', '2021-03-02 00:00:00', 3.0, NULL, 548, 'images/harry_potter_deathly_hallows_1.jpg', 'Readers beware. The brilliant, breathtaking conclusion to J.K. Rowling''s spellbinding series is not for the faint of heart--such revelations, battles, and betrayals await in Harry Potter and the Deathly Hallows that no fan will make it to the end unscathed. Luckily, Rowling has prepped loyal readers for the end of her series by doling out increasingly dark and dangerous tales of magic and mystery, shot through with lessons about honor and contempt, love and loss, and right and wrong. Fear not, you will find no spoilers in our review--to tell the plot would ruin the journey, and Harry Potter and the Deathly Hallows is an odyssey the likes of which Rowling''s fans have not yet seen, and are not likely to forget. But we would be remiss if we did not offer one small suggestion before you embark on your final adventure with Harry--bring plenty of tissues.
The heart of Book 7 is a hero''s mission--not just in Harry''s quest for the Horcruxes, but in his journey from boy to man--and Harry faces more danger than that found in all six books combined, from the direct threat of the Death Eaters and you-know-who, to the subtle perils of losing faith in himself. Attentive readers would do well to remember Dumbledore''s warning about making the choice between "what is right and what is easy," and know that Rowling applies the same difficult principle to the conclusion of her series. While fans will find the answers to hotly speculated questions about Dumbledore, Snape, and you-know-who, it is a testament to Rowling''s skill as a storyteller that even the most astute and careful reader will be taken by surprise.

A spectacular finish to a phenomenal series, Harry Potter and the Deathly Hallows is a bittersweet read for fans. The journey is hard, filled with events both tragic and triumphant, the battlefield littered with the bodies of the dearest and despised, but the final chapter is as brilliant and blinding as a phoenix''s flame, and fans and skeptics alike will emerge from the confines of the story with full but heavy hearts, giddy and grateful for the experience. --Daphne Durham', '', 'Harry Potter', 7, NULL, NULL),
(1149, 657, 67, 2018, 'Les gardiens célestes', '', 5, 1, '2020-08-25 00:00:00', TRUE, '2020-08-15 00:00:00', '2020-08-28 00:00:00', 4.0, NULL, 570, 'images/les_gardiens_celestes.jpg', 'Manipulé et trahi, Johnny Kwan a essuyé une cuisante défaite qui a vu le terrible Premier Empereur de Chine revenir à la vie. Désormais, Anthony Chau et les Cinq Venins ont toutes les cartes en main pour qu’advienne leur cauchemar totalitaire. Le sang coule dans les rues sous l’emprise de la cruelle Triade des Trois Lotus tandis que, dans les temples, les dieux ne répondent plus aux prières.
Pour sauvegarder l’équilibre des deux mondes, Johnny va devoir trouver de nouveaux alliés et peut-être même réunir les Gardiens célestes. Mais où se trouvent ces êtres exceptionnels, destinés à sauver tout ce qui existe sous le Ciel?

Les Gardiens célestes, troisième tome des Chroniques de l’Étrange, plonge le lecteur en plein cœur de Hong Kong pour une ultime enquête surnaturelle sans temps mort digne du meilleur cinéma hongkongais, mêlant roman noir et fantasy urbaine, mythologie chinoise et arts martiaux.', '', 'Chroniques de l''étrange', 3, NULL, NULL),
(1150, 605, 67, 2010, 'Les jardins statuaires', '', 5, 1, '2020-09-13 00:00:00', TRUE, '2020-08-28 00:00:00', '2020-09-22 00:00:00', 3.0, NULL, 581, 'images/les_jardins_statuaires.jpg', '« En vérité je ne sais d''où ces statues tiennent cet air de présenter chacune à sa manière une déchirure profonde, et secrète, mais comment n''en serait-on pas touché ? » À une époque indéterminée, un voyageur parcourt un monde mystérieux où, dans des domaines protégés par de vastes enceintes, les hommes cultivent des statues... Inlassablement, les jardiniers plantent, soignent et transplantent les pierres. S''ils acceptent de guider l''explorateur dans leur étrange contrée, lui disent-ils tout des règles de leur société ?

À la fois récit d’aventures, conte initiatique et rêve éveillé, Les jardins statuaires fascine par son ampleur et évoque les œuvres de J. R. R. Tolkien ou d’Ursula Le Guin. Tapuscrit égaré, malchances et incendies ont concouru pendant trente ans à l''occultation de ce roman sans équivalent dans les lettres françaises.', 'Je n''ai pas vraiment aimé ce livre. C''est bien écrit mais l''auteur disserte énormément autour des états d''âmes du héros. Beaucoup de longueurs (570 pages). Mais le monde décrit est intéressant et surprenant. Un monde horrible pour les femmes qui sont soient des épouses (mais en contact que avec leur mari ou d''autres femmes) soient des prostituées. Les statues sont inquiétantes et peuvent tuer en grossissant et en explosant de manière totalement archaïque. Belle étude sociale d''un monde imaginaire, surréaliste parfois. Une curiosité à lire. Mais je ne lirai pas la suite du cycle. ', '', 0, NULL, NULL),
(1151, 0, 88, 2006, 'Les brigades fantômes', 'The Ghost Brigades', 2, 1, '2020-10-05 00:00:00', TRUE, '2020-09-22 00:00:00', '2020-10-04 00:00:00', 4.0, NULL, 580, 'images/brigades_fantomes.jpg', 'Les Brigades fantômes sont les forces spéciales des Forces de Défense Coloniales, des troupes d''élite issues de l''ADN de personnes décédées et entraînées jusqu''à devenir les soldats les plus mortels qui soient – jeunes, rapides, fort, et totalement dépourvus de pitié.

Lorsque Charles Boutin, l''un des plus grands scientifiques humains, s''allie à trois autres espèces pour éradiquer l''humanité, les Brigades implantent une conscience clonée de Boutin dans un corps artificiel afin de découvrir ses projets. La tentative échoue et le nouveau soldat, rebaptisé Jared Dirac, est enrôlé dans leurs rangs. Mais petit à petit, la conscience de Boutin émerge et menace d''écraser la personnalité de Jared, l''envahissant de souvenirs qui ne sont pas réellement siens. Pour arrêter le traître, faudra-t-il sacrifier le soldat ?', '', 'Le vieil homme et la guerre', 2, NULL, NULL),
(1152, 0, 85, 2016, 'Shakti', '', 5, 1, '2020-10-05 00:00:00', TRUE, '2020-10-05 00:00:00', '2020-10-23 00:00:00', 3.5, NULL, 573, 'images/shakti_1.jpg', 'Sept hommes, une femme et une enfant.

Ce sont les derniers compagnons qu’il reste au barde Fintan Calathynn pour mener à bien la quête du Roi-diseur, à travers une forêt boréale plus menaçante que jamais. Neuf survivants aux abois, retranchés dans la grotte des Teules, encerclés par l’ennemi. À l’heure où la gabarre livre ses derniers secrets, et où les arbres tremblent de la colère des géants, les fugitifs devront jouer carte sur table et révéler les ombres issues de leur passé. À commencer par l’énigmatique Shakti…

Poursuivant l’exploration entamée avec Manesh (prix Imaginales 2015), le deuxième volet des Sentiers des Astres mêle une fois encore expédition épique dans un Nord fantastique et récit de vie intimiste de l’un des personnages. Un deuxième tome au féminin.', '', 'Les sentiers des astres', 2, NULL, NULL),
(1153, 0, 26, 2016, 'Demain les chats', '', 5, 1, '2020-10-24 00:00:00', TRUE, '2020-10-23 00:00:00', '2020-10-30 00:00:00', NULL, NULL, 75, 'images/Demain-les-chats.jpg', '', '', '', 0, NULL, NULL),
(1154, 0, 84, 2020, 'Les marées de minuit', 'Midnight tides', 1, 1, '2020-10-31 00:00:00', TRUE, '2020-10-30 00:00:00', '2020-11-24 00:00:00', 4.0, NULL, 568, 'images/marees_de_minuit.jpg', 'Situé chronologiquement avant les Jardins de la Lune, Les Marées de Minuit étend l’univers tentaculaire de Steven Erikson en introduisant de nouveaux personnages hauts en couleur et en creusant les soubassements de l’intrigue exceptionnellement riche du Livre des Martyrs.

Après des décennies de guerres intestines, les tribus des Tistes Edur se sont enfin unies sous la férule du Roi-Sorcier des Hiroths. La paix s''est établie, mais à quel prix : un pacte conclu avec un pouvoir secret aux motifs au mieux suspects, au pire meurtriers.

Au sud, le royaume expansionniste de Lether, désireux d''accomplir l''antique prophétie qui le verrait renaître en tant qu''Empire, a asservi tous ses voisins moins civilisés que lui. Tous, sauf les Tistes Edur.
Mais ce n''est qu''une question de temps avant qu''eux aussi ne tombent, qu''ils soient écrasés sous le poids étouffant de l''or ou passés au fil de l''épée. C''est du moins ce que la destinée a décrété.

Pourtant, alors que les deux parties se réunissent afin de conclure un traité crucial dont personne ne veut vraiment, d''anciennes forces se réveillent.
Car le conflit qui couve n''est que le pâle reflet d''une lutte autrement plus primordiale : une confrontation avec la blessure encore à vif d''une vieille trahison qui, plus que jamais, aspire à la vengeance dans son cœur bouillonnant...', 'Bon roman qui me réconcilie avec le cycle après le longuet et peu intéressant tome 4. 
Ici, on assiste à une guerre terrible de civilisation entre les léthéris (manipulant la magie et l''épée faisant penser à une civilisation occidentale) et les Tistes Edur qui eux sont plus en rapport avec les esprits , les ombres et la sorcellerie. Le Dieu estropié apparaît souvent dans ce roman et l''on en apprend plus sur ses motivations, sa grande souffrance et amertume. Sa fourberie est immense car il fait façonner une épée maudite. Celle ci se retrouvera en possession d''un Tiste Edur condamné à l''éternité mais endurant de grandes souffrances à chaque mort. Les personnages de Théol et Bugg sont particulièrement cocasses. Beaucoup d''humour allège le récit pourtant très sombre. La dernière partie du roman comme souvent avec Erickson est apocalyptique et l''on assiste à des batailles épiques avec de grandes débauches de magie. Les dieux Mael et l''Errant ont une part importante dans le roman. Vivement le tome 6 !', 'Le livre des martyrs', 5, NULL, NULL),
(1155, 0, 3, 0, 'Le manuscrit inachevé', '', 6, 1, '2020-12-05 00:00:00', TRUE, '2020-11-25 00:00:00', '2020-12-11 00:00:00', 3.0, NULL, 569, 'images/Le-manuscrit-inacheve.jpg', 'Aux alentours de Grenoble, une voiture finit sa trajectoire dans un ravin après une course-poursuite avec la douane. Dans le coffre, le corps d''une femme. A la station-service où a été vu le conducteur pour la dernière fois, la vidéosurveillance est claire : l''homme n''est pas le propriétaire du véhicule.
Léane Morgan et Enaël Miraure sont une seule et même personne. L''institutrice reconvertie en reine du thriller a toujours tenu sa vie privée secrète. Sa vie ? Un mariage dont il ne reste rien sauf un lieu, L''Inspirante, villa posée au bord des dunes de la Côte d''Opale, et le traumatisme de l''enlèvement de sa fille Sarah. L''agression soudaine de son mari va faire resurgir le pire des quatre années écoulées.
Dans le vent, le sable et le brouillard, une question parmi d''autres se pose : vers qui, vers quoi se tourner, quand l''unique vérité est que tout vous devient étranger ?', 'Deux histoires qui se recoupent vers la moitié du livre. Une histoire d''amnésie qui n''en est pas une, un tueur qui a un frère jumeau, deux complices, dont l''un se fait passer pour le tueur.
C''est bien alambiqué, même si l''histoire globale parait très improbable j''ai passé un bon moment de lecture.', '', 0, NULL, NULL),
(1156, 7288, 3, 2018, 'Rouille', '', 5, 1, '2020-12-17 00:00:00', TRUE, '2020-12-11 00:00:00', '2020-12-22 00:00:00', NULL, NULL, 582, 'images/rouille.jpg', '1897, Paris. Violante est amnésique. Elle ne sait plus qui elle est ni d’où elle vient. Ses uniques indices sont son pendentif, fait d''une étrange gemme, et son prénom. Placée dans une maison close, Les Jardins Mécaniques, elle devient Duchesse, la plus courue des prostituées, dont s’entiche le comte de Vaulnay, énigmatique promoteur ayant fait fortune sur la lune. Lors d’une escapade pour percer le secret de son identité, elle retrouve sa seule amie morte, atrocement mutilée. Elle s’aperçoit vite qu’elle est la dernière d’une série de prostituées ou d’enfants des rues dont les cadavres n’intéressent personne. La police ne semble pas même se préoccuper de cette nouvelle drogue, la rouille, qui fait rage dans les bas-fonds de la capitale. Il ne reste à Violante qu’à mener sa propre enquête…', '', '', 0, 'images/dedicace/rouille.jpg', NULL),
(1157, 1643, 86, 2017, 'La forêt sombre', '', 2, 1, '2020-12-26 00:00:00', TRUE, '2020-12-22 00:00:00', '2021-01-11 00:00:00', 4.5, NULL, 575, 'images/la_foret_sombre.jpg', 'L''humanité sait qu''il lui reste quatre siècles avant que la flotte trisolarienne n''envahisse le système solaire. Les sciences fondamentales se retrouvant verrouillées par les intellectrons, la Terre doit se préparer du mieux qu’elle peut. Le Conseil de Défense Planétaire lance un nouveau projet : le programme « Colmateur », qui consiste à faire appel à quatre individus chargés d''envisager des stratégies secrètes pour contrer l’invasion ennemie. Car s’ils peuvent espionner toutes les conversations et tous les ordinateurs humains grâce aux intellectrons, les Trisolariens sont en revanche incapables de lire dans leurs pensées. Après Le Problème à trois corps, Liu Cixin revient avec une suite magistrale et haletante.', 'Roman une fois de plus hallucinant en idées et révélations. L''on assiste aux développements que les humains mettent en place pour essayer de contrer les trisolariens (flotte de vaisseaux, signaux d''alerte d''autres civilisations extraterrestres...) qui dans moins de 400 ans vont envahir la Terre. Jusqu''à la fin l''auteur nous tient en haleine. Malgré quelques longueurs l''ensemble est bien écrit et prenant.  ', 'Le problème à 3 corps', 2, NULL, NULL),
(1158, 0, 84, 2006, 'Les osseleurs', 'The Bonehunters,', 1, 1, '2021-01-23 00:00:00', TRUE, '2021-01-12 00:00:00', '2021-02-14 00:00:00', 4.0, NULL, 568, 'images/les_osseleurs.jpg', 'La rébellion du continent de Sept-Cités a été écrasée.

Les derniers insurgés fanatiques se sont réfugiés dans la ville de Y’Ghatan, sous le commandement de Léoman des Fléaux. Y’Ghatan, une ville légendaire, qui a déjà goûté plus d’une fois le sang des Malazéens. La perspective d’assiéger cette ancienne forteresse inquiète justement la XIVe armée de Malaz, épuisée par le conflit. L’odeur de la mort règne, alors qu’une épidémie de peste se propage.

Mais, aux quatre coins du monde, les agents d’un conflit bien plus important ont posé leurs premières pièces. Les dieux eux-mêmes doivent choisir leur camp, car les règles ont désormais changé de manière irrévocable.

Et comme souvent, ce sont les mortels qui en pâtiront les premiers. Héboric, Apsalar, Couteaux, le féroce guerrier Karsa Orlong ou les deux compagnons de route Icarium et Mappo..., chacun est à la recherche de son destin, de son passé ou de son avenir, guidé par sa propre volonté mais aussi celle de puissances supérieures. La guerre s’annonce, dans les garennes comme sur terre. Car, une fois de plus, les dieux ne les laisseront pas tranquilles.

L’enjeu ? L’existence même du monde', '', 'Le livres des martyrs', 6, NULL, NULL),
(1159, 0, 80, 2014, 'Battle mage', 'Battle mage', 1, 1, '2021-03-06 00:00:00', TRUE, '2021-03-03 00:00:00', '2023-03-04 00:00:00', 3.5, NULL, 583, 'images/Battle-Mage.jpg', 'The world is falling to the burning shadow of the Possessed and only the power of a battle mage can save it. But the ancient bond with dragonkind is failing. Of those that answer a summoning too many are black. Black dragons are the enemy of humankind. Black dragons are mad.

Falco Dante is a weakling in a world of warriors, but worse than this, he is the son of a madman. Driven by grief, Falco makes a decision that will drive him to the brink of despair. As he tries to come to terms with his actions Falco follows his friends to the Academy of War, an elite training school dedicated to martial excellence. But while his friends make progress he struggles to overcome his doubts and insecurity. Even Queen Catherine of Wrath has her doubts about Falco’s training.

While the Queen tries to unite the Kingdoms against the Possessed, Falco struggles to overcome his fears. Will he unlock the power trapped inside him or will he succumb to madness and murder like his father?', NULL, NULL, 0, '', NULL),
(1160, 0, 86, 2014, 'Outresable', 'Sand', 2, 1, '2021-03-06 00:00:00', TRUE, '2021-03-03 00:00:00', '2021-03-21 00:00:00', 3.0, NULL, 584, 'images/outresable.jpg', 'Depuis des siècles le sable a englouti le monde. Un autre s’est créé tant bien que mal parmi les dunes mouvantes, et les plongeurs des sables descendent à de grandes profondeurs pour remonter des ruines figées de l’ancien monde les trésors enfouis dont le troc permet la survie de tous à la surface. Ici, dans cette contrée constamment balayée par le vent, trois frères et une sœur se retrouvent loin les uns des autres. Leur père, qui appartenait à l’élite des plongeurs des sables, a disparu un jour sans aucune explication vers le No Man’s Land, en les abandonnant. Et leur monde semble s''apprêter à en faire autant. Bienvenue dans Outresable, le nouveau roman de Hugh Howey, l’auteur de la trilogie Silo.', 'Roman original. Un monde apocalyptique et désertique fait de sables. Des plongeurs équipés d''une combinaison a vibration et de bouteilles d''oxygène peuvent s''enfoncer profond dans le sable pour y récolter des vestiges enfouis. Une histoire de famille, la mère prostituée et 4 enfants luttent dans ce monde impitoyable. Malgré quelques longueurs c''est un roman agréable à lire.', '', 0, NULL, NULL),
(1161, 0, 67, 2014, 'Les vaisseaux d''Omale', '', 2, 1, '2021-03-21 00:00:00', TRUE, '2021-03-21 00:00:00', '2021-04-15 00:00:00', 3.5, NULL, 17, 'images/les_vaisseux_domale.jpg', 'Omale...
Une sphère creuse, aux dimensions d’un système stellaire. L’Humanité, importée seize siècles plus tôt par une race mystérieuse, y partage son espace vital avec deux autres espèces intelligentes : les Chiles et les Hodgqins.
Depuis plusieurs décennies, la paix règne sur l’Aire tripartite. C’est le moment que choisissent les Æzirs, une espèce vivant dans l’espace intérieur d''Omale, pour proposer aux peuples de la surface un long et périlleux voyage spatial, au terme duquel les secrets des lunes captives seront révélés.
Seuls les Hodgqins semblent en mesure d’entreprendre une telle aventure. Mais Ipis, une Humaine, tient absolument à être de la partie. À la tête d’un groupe de scientifiques, elle va traverser le territoire hodgqin et prouver que, face à un enjeu cosmique, l''Humanité ne saurait être mise à l’écart.

Après avoir longuement exploré l’Aire humaine, Laurent Genefort nous entraîne, dans une aventure menée tambour battant, à la découverte de l’Aire hodgqine.', 'Sympathique roman plus axé sur les Hodgqins. Genefort nous conte comme a son accoutumée, un périple fait de découvertes et de rebondissements. Nous on apprenons un peu plus sur les mystérieux Vangk et leur portes. Mais les Vangs restent toujours inaccessibles. Dans quel but ce monde d''Omale a t''il été construit ?', '', 0, NULL, NULL),
(1162, 0, 67, 2017, 'Les seigneurs de Bohen', '', 1, 1, '2021-04-15 00:00:00', TRUE, '2021-04-15 00:00:00', '2021-05-04 00:00:00', 3.0, NULL, 551, 'images/seigneur_bohen.jpg', 'Je vais vous raconter comment l''Empire est mort. L''Empire de Bohen, le plus puissant jamais connu, qui tirait sa richesse du lirium, ce métal aux reflets d''étoile, que les nomades de ma steppe appellent le sang blanc du monde. Un Empire fort de dix siècles d''existence, qui dans son aveuglement se croyait éternel. J''évoquerai pour vous les héros qui provoquèrent sa chute. Vous ne trouverez parmi eux ni grands seigneurs, ni sages conseillers, ni splendides princesses, ni nobles chevaliers... Non, je vais vous narrer les hauts faits de Sainte-Étoile, l''escrimeur errant au passé trouble, persuadé de porter un monstre dans son crâne. De Maëve la morguenne, la sorcière des ports des Havres, qui voulait libérer les océans. De Wens, le clerc de notaire, condamné à l''enfer des mines et qui dans les ténèbres découvrit une nouvelle voie... Et de tant d''autres encore, de ceux dont le monde n''attendait rien, mais qui malgré cela y laissèrent leur empreinte. Et le vent emportera mes mots sur la steppe. Le vent, au-delà, les murmurera dans Bohen. Avec un peu de chance, le monde se souviendra. Estelle Faye boit trop de café, travaille tard dans la nuit et fréquente des gens étranges. De temps en temps, aussi, elle écrit des histoires : Porcelaine (Prix Elbakin), Un Éclat de Givre ou la trilogie La Voie des oracles. Avec Les Seigneurs de Bohen, elle nous offre un roman de dark fantasy spectaculaire et épique, dans la lignée des œuvres de Joe Abercrombie (Les Héros, Servir Froid) ou de Glen Cook (La Compagnie noire).', 'Roman globalement bien écrit qui fourmille de descriptions et d''idées originales. L''auteur nous conte le destin de nombreux personnages (Saint Etoile, Janosh, Wens, ...) mais on s''y perd  car le roman est  parfois longuet. Souvent, on peut se demander où l''auteur veut nous emmener. L''intrigue globale a du mal à se mettre en place. La conclusion se termine un peu trop rapidement. Bref roman sympathique mais qui manque parfois de rythme et d''une certaine profondeur. L''empire est mal détaillé, on ne comprend pas tout, de nombreux points restent peu éclaircis ou mal développés. ', '', 0, NULL, NULL),
(1163, 0, 87, 2020, 'Le temps des tempêtes', '', 10, 1, '2021-05-07 00:00:00', TRUE, '2021-05-04 00:00:00', '2021-05-15 00:00:00', NULL, NULL, 585, 'images/Le-Temps-des-Tempetes.jpg', 'À compter du 16 mai 2007 j’étais seul Bien sûr, il y avait le peuple français, mais sa force collective ne s’exprime pas dans le quotidien des décisions à prendre, ou des nominations à effectuer J’avais une équipe, des conseillers, des amis, des visiteurs du soir, mais j’étais seul à prendre et à assumer la décision finale C’est le premier sentiment qui m’a envahi après avoir raccompagné Jacques Chirac à sa voiture et être remonté dans le bureau présidentiel qui était devenu le mien pour les cinq années à venir Je l’avais voulu, espéré, rêvé Maintenant j’y étais Comment ne pas décevoir tous les Français qui venaient de me faire confiance Qu’est ce qui m’attendait J’ai fermé les yeux Tout d’un coup, la gravité et, surtout, la solitude propre à la fonction me tombaient sur les épaules C’était plus brutal que je ne l’avais imaginé Soudain, mon passé avait disparu comme s’il n’avait jamais existé, seuls comptaient désormais le présent et l’avenir C’était vertigineux, tellement fort que cela ne provoquait bizarrement aucune excitation intérieure J’étais tout à la fois calme et parfaitement conscient d’être au bord d’un précipice.', '', '', 1, NULL, NULL),
(1164, 641, 67, 2015, 'Dans la toile du temps', '	Children of Time', 2, 1, '2021-05-20 00:00:00', TRUE, '2021-05-15 00:00:00', '2021-06-01 00:00:00', 3.5, NULL, 586, 'images/dans_la_toile_du_temps.jpg', 'La Terre est au plus mal… Ses derniers habitants n’ont plus qu’un seul espoir : coloniser le «Monde de Kern», une planète lointaine, spécialement terraformée pour l’espèce humaine. Mais sur ce «monde vert» paradisiaque, tout ne s’est pas déroulé comme les scientifiques s’y attendaient. Une autre espèce que celle qui était prévue, aidée par un nanovirus, s’est parfaitement adaptée à ce nouvel environnement et elle n’a pas du tout l’intention de laisser sa place. Le choc de deux civilisations aussi différentes que possible semble inévitable. Qui seront donc les héritiers de l’ancienne Terre? Qui sortira vainqueur du piège tendu par la toile du temps?

Premier roman de l’auteur paru en France, Dans la toile du temps s’inscrit dans la lignée du cycle Élévation de David Brin. Il nous fait découvrir l’évolution d’une civilisation radicalement autre et sa confrontation inévitable avec l’espèce humaine. Le roman a reçu le prix Arthur C. Clarke en 2016.', '', '', 0, NULL, NULL),
(1165, 0, 85, 2018, 'Meijo', '', 1, 1, '2021-06-08 00:00:00', TRUE, '2021-06-06 00:00:00', '2021-07-04 00:00:00', 3.5, NULL, 573, 'images/meijo.jpg', 'Par quels caprices du destin l’apprentie chamane Nisû est-elle devenue la Courtisane, Shakti ?

Pour le savoir, le Barde Fintan et ses compagnons devront patienter un peu. Car le répit offert par les Teules, propice aux bons récits, aura bientôt vécu : déjà les flammes rugissent, la forêt boréale résonne d’abois fauves et de cors démoniaques. Il est temps de reprendre la quête du Roi-diseur, de marcher dans les pas des géants ! Et puisqu’il faut déjouer la traque, l’heure est peut-être venue d’emprunter enfin les Sentiers des Astres…', '', 'Le sentiers des astres', 3, NULL, NULL),
(1166, 0, 3, 2017, 'Nuit', '', 3, 1, '2021-07-04 00:00:00', TRUE, '2021-07-04 00:00:00', '2021-07-15 00:00:00', 4.0, NULL, 553, 'images/nuit.jpg', 'Nuit de tempête en mer du Nord. Secoué par des vents violents, l''hélicoptère dépose Kirsten Nigaard sur la plate-forme pétrolière. L''inspectrice norvégienne enquête sur le meurtre d''une technicienne de la base offshore. Un homme manque à l''appel. En fouillant sa cabine, Kirsten découvre une série de photos. Quelques jours plus tard, elle est dans le bureau de Martin Servaz. L''absent s''appelle Julian Hirtmann, le tueur retors et insaisissable que le policier poursuit depuis des années. Étrangement, sur plusieurs clichés, Martin Servaz apparaît. Kirsten lui tend alors une autre photo. Celle d''un enfant. Au dos, juste un prénom : Gustav.
Pour Kirsten et Martin, c''est le début d''un voyage terrifiant. Avec, au bout de la nuit, le plus redoutable des ennemis', '', '', 0, NULL, NULL),
(1167, 0, 67, 2019, 'Curée chaude', NULL, 1, 1, '2021-07-28 00:00:00', TRUE, '2021-07-15 00:00:00', '2021-08-02 00:00:00', 3.5, NULL, 285, 'images/curée_chaude.jpg', 'Dans la Celtique ravagée par la guerre, le mystère plane sur le sort du haut roi. Ambigat est-il mort ? L''incertitude excite les convoitises et ajoute au désordre. Par loyauté et par ambition, Bellovèse se lance à sa recherche à travers les contrées écumées par des bandes féroces, mais aussi à travers la géographie des rêves et des oracles. Toutefois, nombreuses sont les meutes qui lui disputent son gibier. Cette troisième partie de Chasse royale, le deuxième tome de la trilogie Rois du monde, nous plonge au coeur du monde celte : âpre et violent, empli de gloire et de magie. Jean-Philippe Jaworski poursuit ainsi l''édification de ce qui est, d''ores et déjà, un monument de la fantasy historique.', 'Roman très dense et intense. Bellovèse dans ce roman nous emmène tambour battant à la recherche de son ongle Ambigat. Le récit parfois difficile à suivre tellement les personnages sont nombreux. Bellovèse va devoir lutter avec beaucoup de bravoure entre les différents clans. Beaucoup de politique, d''actes épiques ponctuent le récit. L''auteur une fois de plus fait preuve de beaucoup de talents et de nombreuses descriptions. Il est très documenté sur cette époque pourtant assez maigre en récit épique. La fin est terrible et montre la fanatisme et la folie d''Ambigat ! Vivement la suite !', 'Rois du monde', 4, 'images/dedicace/chasse_royale_dedic.jpg', NULL),
(1168, 0, 67, 2016, 'Ce qui relie', '', 2, 1, '2021-08-04 00:00:00', TRUE, '2021-08-02 00:00:00', '2021-08-15 00:00:00', 3.0, NULL, 17, 'images/ce_qui_relie.jpg', 'Lorsque leur vaisseau s’écrase sur Arrhenius, Lenoor et Hummel découvrent une colonie sous-développée, éloignée des grands axes interstellaires et dédaignée par les lignes principales de transport. Émerge alors un projet fou, aussi dangereux que difficile à mettre en œuvre : monter une compagnie de transport interstellaire indépendante!
Ainsi naît la Spire, alliance de rêveurs visionnaires et de casse-cou sans peur, prêts à tout pour relier entre elles les planètes des Confins, jusqu’alors isolées. Mais son acte de naissance ne s’écrira pas sans heurts : alertées, les grandes compagnies déploieront toute leur puissance pour empêcher son essor. Un chemin semé d’embûches attend les navis de la Spire, véritables aventuriers des étoiles.

Avec Spire, l’auteur explore son univers des Portes de Vangk dans une grande fresque de space opera.', '', 'Spire', 1, NULL, NULL),
(1169, 5946, 3, 1998, 'Le dernier continent', 'The last continent', 1, 1, '2021-08-26 00:00:00', TRUE, '2021-08-15 00:00:00', '2021-08-29 00:00:00', 2.5, NULL, 222, 'images/dernier_continent.jpg', 'Rincevent a trouvé le moyen de se perdre au milieu d''un désert, sur le dernier continent du Disque-Monde... Il fait chaud, pas une goutte de pluie à l''horizon et la nature est hostile. Et puis, que lui veut ce kangourou bizarre qui parle ?
Rincevent, pro de la fuite en toute circonstance, est bien coincé. Et il ne sait pas encore que l''Université de l''Invisible le recherche d''urgence car la panique y est à son comble : le bibliothécaire est atteint d''une maladie étrange et ne peut plus assurer la garde des ouvrages de magie...
', 'Pas mal sans plus. Ce livre est plus un poncif sur l''Australie qu''une véritable histoire. Malgré tout on se prend à rire parfois et à sourire souvent. Pas le meilleur de Pratchett mais se lit quand meme sans déplaisir.
', 'Les annales du disque-monde', 22, NULL, NULL),
(1170, 0, 88, 2007, 'La dernière colonie', 'The last colony', 2, 1, '2021-08-31 00:00:00', TRUE, '2021-08-30 00:00:00', '2021-09-08 00:00:00', 3.5, NULL, 580, 'images/derniere_colonie.jpg', 'Je m''appelle John Perry. J''ai quatre-vingt-huit ans, dont soixante-quinze passés sur Terre, six dans les Forces de défense coloniale et bientôt huit comme colon sur la planète où je vis avec ma femme Jane, ex-lieutenant des Brigades fantômes, et ma fille adoptive Zoé. Ce monde, nous le quittons demain pour nous en aller fonder la nouvelle colonie de Roanoke. Etrange colonie, Roanoke, condamnée à l''isolement, un pion dans le jeu que mène l''arrogante Union coloniale contre les quatre cent douze espèces extraterrestres du Conclave. L''enjeu ? La survie d''une communauté de pionniers, mais aussi l''avenir de l''espèce humaine dans la Galaxie.', 'Beaucoup d''humour et de dérision dans ce roman. La nouvelle colonie (et dernière) aura fort à faire pour survivre face aux plans machiavéliques des FDC et du Conclave. John Perry et Jane feront preuve de beaucoup d''astuce et de sang froid pour surmonter cette crise.', 'Le vieil homme et la guerre', 3, '', NULL),
(1171, 0, 1, 2013, 'Au revoir la-haut', NULL, 10, 1, '2021-09-10 00:00:00', TRUE, '2021-09-08 00:00:00', '2021-09-27 00:00:00', 4.0, NULL, 587, 'images/Au-revoir-la-haut.jpg', 'Ils ont miraculeusement survécu au carnage de la Grande Guerre, aux horreurs des tranchées. Albert, un employé modeste qui a tout perdu, et Edouard, un artiste flamboyant devenu une « gueule cassée », comprennent vite pourtant que leur pays ne veut plus d’eux. Désarmés, condamnés à l’exclusion, mais refusant de céder au découragement et à l’amertume, les deux hommes que le destin a réunis imaginent alors une escroquerie d’une audace inouïe… Fresque d''une rare cruauté, remarquable par son architecture et sa puissance d''évocation, Au revoir là-haut est le grand roman de l''après-guerre de 14, de l''illusion de l''armistice, de l''État qui glorifie ses disparus et se débarrasse de vivants trop encombrants. Dans l''atmosphère crépusculaire des lendemains qui déchantent, peuplée de misérables pantins et de lâches reçus en héros, Pierre Lemaitre compose avec talent la grande tragédie de cette génération perdue.', NULL, NULL, 0, '', NULL),
(1172, 0, 84, 2007, 'Le souffle du moissonneur', 'Reaper''s Gale', 1, 1, '2021-10-06 00:00:00', TRUE, '2021-09-27 00:00:00', '2021-10-29 00:00:00', 4.0, NULL, 568, 'images/Souffle_du_Moissonneur.jpg', 'L''empire de Lether vacille.
Rhulad Sengar, l''empereur aux Mille Morts, sombre dans la folie, entouré de flagorneurs et d''agents à la solde de son chancelier machiavélique. Pendant ce temps, la police secrète letheriie mène une campagne de terreur contre son propre peuple. L''Errant, autrefois un dieu prévoyant, se retrouve incapable de discerner l''avenir. Les conspirations naissent un peu partout dans le palais, alors que l''empire, rongé par la corruption, se rapproche de plus en plus d''une guerre totale avec les royaumes voisins.
Parmi les guerriers venus défier Rhulad, on trouve Karsa Orlong et Icarium, deux légendes déterminées à en découdre. Pendant ce temps, une bande de fugitifs cherche à quitter l''empire, mais l''un d''entre eux, Fear Sengar, doit trouver l''âme de Scabandari Œil de Sang. Il espère que cette âme pourra contribuer à sauver son frère, l''empereur. Pourtant, le plus ancien ennemi de Scabandari voyage avec eux : Silchas Ruin, frère d''Anomander Rake. Et ses motivations sont tout sauf claires, car les blessures qu''il porte sur le dos, causées par les lames de Scabandari, sont encore fraîches.', 'Un septième tome qui traite majoritairement de l''occupation des Tistes Edurs sur l''empire de Lether. On y voit des collabos letheriies qui vont traquer et torturer les dissidents du régime. Rhulad plus isolé et tourmenté que jamais. De nombreux récits parallèles sont abordés dans cette histoire (les armées rebelles avec Masquerouge et les Alènes, la quète de Silchas Ruin, Théol et Bugg, L''Errant). Il y a énormément de dialogues, certains totalement sybillins (les dieux en général), les tistes andii. Vers la fin du roman on assiste au débarquement de malazéens qui veulent faire tomber le régime d''occupation. Le combat tant attendu entre Karsa et l''Empereur se déroule seulement dans les toutes dernières pages, il est aussi violent que bref. Le Dieu Estopié continue a tisser sa toile de chaos et de destruction. Mas il ne parvient pas à tromper Karsa en lui proposant l''épée maudite qui a dominé Rhulad. Icarium toujours aussi mystérieux, déclenche un pouvoir qui détruit la moitié de la capitale. De nombreux morts dans ce roman sous forme d''apocalypse. Malgré des longueurs et certains dialogues totalement obscurs (mais avec Erikson on commence à avoir l''habitude), le roman est passionnant. Vivement la suite !', 'Le livre des martyrs', 7, '', NULL),
(1173, 0, 3, 2019, 'Mers mortes', NULL, 5, 1, '2021-10-31 00:00:00', TRUE, '2021-10-29 00:00:00', '2021-11-11 00:00:00', 3.5, NULL, 588, 'images/Mers-mortes.jpg', 'Mers et océans ont disparu. L''eau s''est évaporée, tous les animaux marins sont morts. Des marées fantômes déferlent sur le monde et charrient des spectres avides de vengeance. Requins, dauphins, baleines..., arrachent l''âme des hommes et la dévorent. Seuls les exorcistes, protecteurs de l''humanité, peuvent les détruire.
Oural est l''un d''eux. Il est vénéré par les habitants de son bastion qu''il protège depuis la catastrophe. Jusqu''au jour où Bengale, un capitaine pirate tourmenté, le capture à bord de son vaisseau fantôme. Commence alors un voyage forcé à travers les mers mortes... De marée en marée, Oural apprend malgré lui à connaître son geôlier et l''objectif de ce dangereux périple.
Et si Bengale était finalement la clé de leur salut à tous ?', 'Bon roman fantastique avec ambiance de pirates. C''est bien écrit, prenant. On sent aussi quelques idées écologiques. Je lirai d''autres romans de cet écrivain.', NULL, 0, 'images/dedicace/mers_mortes2.jpg', NULL),
(1174, 0, 85, 2018, 'Les miscellanées de Jean Philippe Jaworksi', NULL, 1, 2, '2021-11-15 00:00:00', TRUE, '2021-11-12 00:00:00', '2021-11-16 00:00:00', NULL, NULL, 285, 'images/Les-Miscellanees-de-Jean-Philippe-Jaworski.jpg', 'Quatre nouvelles peu trouvables, une pièce de théâtre inédite, des articles, et deux entretiens inédits !', NULL, NULL, 0, 'images/dedicace/jaworski_miscellanees.jpg', NULL),
(1175, 0, 85, 2021, 'Jaunes yeux', NULL, 1, 1, '2021-11-17 00:00:00', TRUE, '2021-11-17 00:00:00', '2021-12-11 00:00:00', 4.0, NULL, 573, 'images/jaunes_yeux_platteau.jpg', NULL, NULL, NULL, 0, 'images/dedicace/Jaunes_Yeux.jpg', NULL),
(1176, 446, 67, 2013, 'Loar', NULL, 2, 1, '2021-12-15 00:00:00', TRUE, '2021-12-11 00:00:00', '2021-12-29 00:00:00', 3.0, NULL, 589, 'images/loar_WA018Gr.jpg', 'Six jours. C''est le temps qu''il reste à Emrodes, le souverain de Loar, pour répondre à l''ultimatum du royaume de Melen, qui cherche à étendre sa domination sur l''ensemble des mondes connus. Pourtant, sur l''échiquier spatial, d''autres forces ourdissent leurs trames... Les prêtres de la planète Sainte manigancent pour gagner en influence ; les mondes périphériques, riches d''une science génique portée à son paroxysme, préparent un contact imminent ; auprès des puissants, mercenaires Latars et conseillers spols distillent leurs précieux services... Pendant ce temps, dans les profondeurs océanes de Loar, les daofined paraissent sereins, indifférents aux rivalités humaines. Au-delà de l''émotion attendue, leur cantilène annonce-t-elle de nouveaux désordres ? Premier roman de Loïc Henry, Loar est un space opera démesuré et brillant. Il a été comparé par la critique aux plus belles réussites du genre, parmi lesquelles Les guerriers du silence de Pierre Bordage ou Dune de Frank Herbert.', 'Un rythme lent, beaucoup de dialogues et de personnages. Il y a très peu d''action et de descriptions. Toute l''intrigue est racontée par les différents dialogues des personnages. Beaucoup de politique et de psychologie. Les latars mercenaires mystérieux et très entrainés dirigent les différentes batailles spatiales qui ont lieu dans le roman. Les spol sortes de mutants étranges intriguent dans ce roman. La fin est intéressante avec la disparition de la religion surpuissante et un statu quoi entre les différents belligérants.', NULL, 0, 'images/dedicace/loar_dedicace.jpg', NULL),
(1177, 0, 64, 2012, 'La vérité sur l''affaire Harry Quebert', NULL, 3, 1, '2021-12-31 00:00:00', FALSE, '2021-12-30 00:00:00', '2022-01-21 00:00:00', 4.0, NULL, 590, 'images/harry_quebert.jpg', 'À New York, au printemps 2008, lorsque l''Amérique bruisse des prémices de l''élection présidentielle, Marcus Goldman, jeune écrivain à succès, est dans la tourmente: il est incapable d''écrire le nouveau roman qu''il doit remettre à son éditeur d''ici quelques mois.
Le délai est près d''expirer quand soudain tout bascule pour lui : son ami et ancien professeur d''université, Harry Quebert, l''un des écrivains les plus respectés du pays, est rattrapé par son passé et se retrouve accusé d''avoir assassiné, en 1975, Nola Kellergan, une jeune fille de 15 ans, avec qui il aurait eu une liaison.
Convaincu de l''innocence de Harry, Marcus abandonne tout pour se rendre dans le New Hampshire et mener son enquête. Il est rapidement dépassé par les événements : l''enquête s''enfonce et il fait l''objet de menaces. Pour innocenter Harry et sauver sa carrière d''écrivain, il doit absolument répondre à trois questions : Qui a tué Nola Kellergan ? Que s''est-il passé dans le New Hampshire à l''été 1975 ? Et comment écrit-on un roman à succès ?
Sous ses airs de thriller à l''américaine, La Vérité sur l''Affaire Harry Quebert est une réflexion sur l''Amérique, sur les travers de la société moderne, sur la littérature, sur la justice et sur les médias.', 'Un gros pavé de 850 pages. Une histoire qui boucle par moment et racontée de différentes façons par les différents protagonistes. Malgré quelques longueurs et répétitions, l''ensemble est captivant et bien écrit.', NULL, 0, '', NULL),
(1178, 0, 3, 2017, 'Que passe l''hiver', NULL, 1, 1, '2022-02-03 00:00:00', TRUE, '2022-01-22 00:00:00', '2022-02-05 00:00:00', 3.5, NULL, 591, 'images/que_passe_lhiver.jpg', 'Stig, cadet du clan Feyren, se réjouit de participer pour la première fois aux festivités du solstice au sommet du Wegg, demeure du roi de l’hiver, signe de son passage à l’âge adulte. Le jeune homme au pied bot, difformité qui lui vaut le mépris son père, observe avec candeur et enthousiasme les conteurs, danses, ripailles et conversations, n’osant encore se mêler aux membres des trois autres clans. Mais lorsque le seigneur des Dewe s’écroule brutalement, la fête se teinte de la couleur du deuil. Et l’atmosphère glacée se fait plus étouffante.
Au cœur de la Clairière, les bûchers mortuaires brûlent et signent déjà la fin d’un monde.', NULL, NULL, 0, 'images/dedicace/que_passe_hiver.jpg', NULL),
(1179, 0, 85, 2021, 'Le service des dames', NULL, 1, 2, '2022-02-22 00:00:00', TRUE, '2022-02-05 00:00:00', '2022-02-07 00:00:00', 4.0, NULL, 285, 'images/le_service_des_dames.jpg', 'Dans l''univers du Vieux Royaume, une belle fable chevaleresque

« Je suis Ædan, chevalier de Vaumacel, dit-il. Mon écuyer s’appelle Naimes ; ne raillez point son air chenu, il ne fait pas bon lui chercher querelle. Le jeune Cœl me sert de page. »

Adaptée en roman graphique par Sébastien Hayez, une formidable nouvelle de Jean-Philippe Jaworski', 'Courte nouvelle superbement illustrée, déja lue dans Janua Vera mais toujours un plaisir à relire', NULL, 0, 'images/dedicace/service_des_dames.jpg', NULL),
(1180, 8913, 2, 2004, 'Livre premier : 1792', NULL, 5, 1, '2022-02-22 00:00:00', TRUE, '2022-02-08 00:00:00', '2022-02-27 00:00:00', 3.5, NULL, 114, 'images/enjomineur_1.jpg', 'Vendée, 1792. Entre les aristocrates réfractaires à la marche de la Révolution et le peuple révolté par la Constitution civile du clergé, les tensions s’exacerbent. C’est dans ce climat électrique qu’Émile, que l’on dit né d’une fée et élevé par un prêtre progressiste, s’est fait embaucher comme saisonnier.
À Nantes, Cornuaud tente de renouer avec les milieux du crime organisé, dont la fréquentation l’avait envoyé deux ans plus tôt par-delà les mers. Les temps ont bien changé, et les malfrats d’hier sont devenus les fervents serviteurs d’une Révolution qui a besoin d’hommes comme lui: prêts à tout. Mais Cornuaud, pour prix d’un viol qu’il a commis sur le négrier qui l’employait, s’est fait enjominer par une sorcière noire...', 'Belle reconstitution historique de la révolution, la violence, les injustes sont nombreuses. La trame légèrement fantastique est bien écrite. Le livre est prenant.', 'L''enjomineur', 1, 'images/dedicace/enjomineur_1792.jpg', NULL),
(1181, 9225, 2, 2005, 'Livre deux : 1793', NULL, 5, 1, '2022-03-05 00:00:00', TRUE, '2022-02-28 00:00:00', '2022-03-14 00:00:00', 4.0, NULL, 114, 'images/enjomineur_2.jpg', 'Au plus fort de la Terreur, Emile fuit la Vendée qui l''a vu naître, mais qui aujourd''hui le rejette pour avoir failli dans sa quête. Cependant, la fée Mélusine lui a fait un bien étrange cadeau : une dague qui tue quiconque chercherait à se l''approprier. Cornuaud, lui, est toujours habité par la sorcière noire qui l''a enjominé et qui l''incite à commettre des crimes de plus en plus horribles. Pire, à sa sortie de prison, il devient un agent de la Révolution et peut désormais agir en toute impunité. Tandis que, dans l''ombre, la secte de Mithra, sous l''égide du Père des pères, tire des ficelles de plus en plus tranchantes...', NULL, 'L''enjomineur', 2, 'images/dedicace/enjomineur_1793.jpg', NULL),
(1182, 0, 84, 2008, 'La rançon des molosses', NULL, 1, 1, '2022-03-26 00:00:00', TRUE, '2022-03-14 00:00:00', '2022-04-24 00:00:00', 3.0, NULL, 568, 'images/La_Rancon_des_Molosses.jpg', 'Darujhistan, quelques années après les événements entourant les Jardins de la Lune et les Souvenirs de la Glace, le fantasque Kruppe narre les nouvelles aventures de quantité de personnages abordés lors des précédents tomes alors qu''une campagne d''assassinats vise d''anciens Brûleurs de Ponts ; personne ne sait pourquoi ni pour le compte de qui. C''est le moment que choisit Couteaux pour revenir dans la ville de son enfance, accompagné de Scillara, Barathol, Chaur ainsi qu''Iskaral Pust et Mogora mais aussi Rancoeur qui a bien l''intention de rendre une visite à sa folle de soeur. Couteaux lui-même renoue avec ses anciens amis de l''Auberge du Phénix, pour retrouver un Murillio laissé pour mort dans le jardin d''une amante et Rallick Nom, tout juste sorti de la Maison Azathe, auquel il s''en prend sans le reconnaître. Grognard, quant à lui, tente de convaincre Pierrie Menackis d''accorder plus d''importance à son fils Harllo conçu lors d''un viol au cours du siège de Capustan. La Guilde Commerciale de Trygalle fait une entrée fracassante en ville.

Plus loin au sud, une sombre menace apparaît, un certain Dieu Mourant qui menace de faire basculer ses fidèles dans l''anéantissement tout en cherchant à subjuguer le Rédempteur, ce nouveau dieu enterré dans un tumulus à l''extérieur de Corail la Noire et que l''on connaissait sous le nom d''Itkovian des Epées Grises. Toute la petite troupe de Nimander Gollit, menée par un Davier revanchard, va se retrouver mêlée à cette sombre menace sur l''ancien territoire du Domin de Pannion. Mais en souterrain, un drame autrement plus grave se joue : le chariot de Dragnipur ne peut plus avancer, faute de bras suffisants pour le tirer.

Anomander Rake va ainsi devoir résoudre un insoluble problème s''il veut
empêcher le chaos d''engloutir la Porte de Kurald Galain...', 'De loin le roman du cycle malazéen le plus difficile et longuet. L''ennui a souvent été au rendez vous pendant cette lecture. Il ne se passe pas grand chose dans ce roman et l''auteur fait énormément de digressions. Beaucoup de passages sont incompréhensibles (mais avec Erickson on a l''habitude). Il semblerait donc que Anomander et Goule se soient sacrifiés pour lutter contre le chaos qui menace Kural Galain. Ce chaos est-il l''œuvre du dieu estropié ? Ce n''est pas expliqué. On voit des temples érigés à la gloire du dieu estropié. Nombreux personnages dans ce roman.', 'Le livre des martyrs', 8, '', NULL),
(1183, 12167, 2, 2017, 'Dévoreur', NULL, 5, 2, '2022-05-05 00:00:00', TRUE, '2022-04-24 00:00:00', '2022-05-04 00:00:00', 3.0, NULL, 573, 'images/Devoreur.jpg', 'Vidal Silarius, brave éleveur d''ânes des monts de soufre, est un bon père et un camarade fidèle. Mais lorsqu''un astre s''embrase au-dessus de sa demeure, l''homme se met peu à peu à changer, sous les yeux horrifiés de ses enfants et de son amie Aube. La lumière néfaste du Dévoreur est en train d''accoucher d''un monstre... Jusqu''où Aube est-elle prête à aller pour le ramener parmi les humains ? Conte sanglant dont la puissance d''évocation symbolique n''a d''égal que la justesse stylistique, Dévoreur, ici précédé du Roi cornu, nous conduit vers des lieux inexplorés de l''univers des Sentiers des astres.', 'La nouvelle dévoreur se dévore en quelques jours. C''est bien écrit, mélange d''épouvante et de fantastique.', NULL, 0, 'images/dedicace/devoreur.jpg', NULL),
(1184, 0, 1, 2016, 'Lumière noire', 'Find her', 3, 1, '2022-05-16 00:00:00', TRUE, '2022-05-05 00:00:00', '2022-05-15 00:00:00', 3.5, NULL, 592, 'images/lumiere_noire.jpg', '472 jours : c’est le temps qu’a passé Flora aux mains de son bourreau. 472 jours plongée dans un abîme de ténèbres, à n’espérer qu’une chose : survivre.
Sortie miraculeusement de cette épreuve, elle cherche depuis à retrouver une existence normale. Pourtant, les murs de sa chambre sont tapissés de photos de filles disparues. Quand, à la recherche de l’une d’elles, Flora se fait de nouveau kidnapper, le commandant D.D. Warren comprend qu’un prédateur court les rues de Boston, qui s’assurera cette fois que Flora ne revoie jamais la lumière…', NULL, NULL, 0, '', NULL),
(1185, 154, 81, 2011, 'La geste des 6 royaumes', NULL, 1, 1, '2022-05-22 00:00:00', TRUE, '2022-05-15 00:00:00', '2022-06-09 00:00:00', 3.0, NULL, 593, 'images/La-geste-du-sixieme-royaume.jpg', 'Au cœur des terres, un sixième royaume : la Grande Forêt légendaire, impénétrable et hostile. Dans les maisonnées de Sélénir, dans les cases de Vale ou dans les yourtes des nomades des steppes de Khara, le soir au coin du feu, on raconte aux enfants le conte suivant : tes rêves, tes cauchemars comme les créatures fantastiques des histoires que tu aimes tant peuplent le Sixième Royaume.
Alors, pourquoi un baladin perdu, une belle sorcière aux terribles pouvoirs endormie depuis cinq cents années, un jeune voleur des rues amoureux, un demi-nain commerçant débonnaire et un homme-loup monstre de foire se retrouvent-ils attirés par la Grande Forêt ?
Que découvriront-ils ? La fin d’un monde ? Le sang et les larmes ? L’amour et la tragédie ?', 'Roman que j''ai trouvé très long malgré de bonnes idées, l''ensemble est tout de même assez convenu. Le style est correct malgré certaines maladresse, l''auteur aime expliquer et se répéter. Le roman est découpé en court chapitres donnant le point de vue d''un des nombreux personnages.Le roman est très manichéen : les forces du bien contre les forces du mal.', NULL, 0, 'images/dedicace/la_geste.jpg', NULL),
(1186, 0, 89, 2019, 'Vol de 704 os pour six nez', NULL, 12, 1, '2022-05-09 00:00:00', TRUE, '2022-06-09 00:00:00', '2022-06-14 00:00:00', 3.0, NULL, 594, 'images/Vol704os6nez.jpg', 'Sale temps pour le climat !Alors que Saint-Tin, le capitaine Aiglefin et le professeur Margarine se rendent à un symposium sur le réchauffement climatique au Japon (Kyoto II), leur bateau est piraté. La jeune icône, Frida Cretinberg, nouvelle égérie de la grande messe mondiale, est à bord et le Rasta populiste, l''ennemi planétaire, est bien décidé à opérer sur la jeune fille un lavage de cerveau. Course poursuite dans le pacifique, mystérieuses profanations de cimetières sundanais, statues insolites et quelques extras peu terrestres vont pousser nos intrépides aventuriers à repenser toutes leurs certitudes sur la science climatologique.Une comédie qui réchauffe l''atmosphère.', 'Court roman (170 pages) des aventures de Saint-Tin et son ami Lou ! Le style est très correct et le texte est bien entendu rempli de calembours. Belle critique au passage des médias sur le réchauffement climatique.', 'Les aventures de Saint-Tin et son ami Lou', 2, 'images/dedicace/vol_de_704_os_cr.jpg', NULL),
(1187, 34373, 1, 2007, 'Metro 2033', 'Metpo 2033', 2, 1, '2022-06-23 00:00:00', TRUE, '2022-06-14 00:00:00', '2022-07-10 00:00:00', 3.5, NULL, 595, 'images/Metro-2033.jpg', '2014. Une guerre nucléaire a ravagé la Terre. 2033. Quelques dizaines de milliers de Moscovites survivent tant bien que mal dans le métro. Ils sont organisés en microsociétés qui habitent une ou plusieurs stations de métro, se dotent de diverses formes de gouvernement et de croyances. Les tunnels sont laissés aux parias, aux rats et à tout ce qui rode dans les ténèbres. Artème est l’un de ces survivants. Une menace plane de l’extérieur, sa portée est connue par quelques-uns, Artème est chargé de transmettre cette information et doit atteindre Polis – une communauté de stations qui préservent les derniers vestiges de la civilisation humaine. Il est le dernier espoir de survie de l’humanité. Commence alors une quête homérique, une odyssée dans le métro moscovite, où il va croiser tour à tour trafiquants, mystiques, néonazis et leur quatrième Reich, la première brigade «interstationnale », des religieux, des sectaires. Il baignera dans les légendes urbaines du métropolitain.
Métro 2033 est un roman d’anticipation sombre et baroque qui se déroule dans un monde post-apocalyptique. C’est aussi un livre initiatique dans lequel un personnage découvre le monde qui l’entoure tant visible qu’invisible. C’est encore un roman résolument inscrit dans cette science-fiction qui, sous couvert d’un monde futuriste, nous fait réfléchir sur la société où nous vivons. Métro 2033 est enfin un roman dense, mené à un rythme soutenu par un auteur qui maîtrise parfaitement son univers, l’action, l’intrigue et ses personnages.', NULL, NULL, 0, '', NULL),
(1188, 7226, 3, 2015, 'Le roi des fauves', NULL, 5, 1, '2022-07-20 00:00:00', TRUE, '2022-07-11 00:00:00', '2022-07-22 00:00:00', NULL, NULL, 588, 'images/Le-Roi-des-fauves.jpg', NULL, NULL, NULL, 0, '', NULL),
(1189, 0, 40, 0, 'L''instinct du troll', NULL, 5, 2, '2022-08-05 00:00:00', TRUE, '2022-07-22 00:00:00', '2022-07-27 00:00:00', 3.0, NULL, 33, 'images/instinct_troll.jpg', 'Glissez-vous dans l''intimité d''un troll le temps de quatre aventures qui font trembler la terre jusqu''aux tréfonds des mines les plus obscures.
Bien sûr, pour cela, vous allez devoir franchir les falaises du Désespoir, affronter les périls du col des Assassins et vous enfoncer dans les marais de la Mort sinueuse, mais ne vous inquiétez pas : après, c''est fléché. Et, avant, mieux vaut savoir que, s''il faut qu''un troll s''habille pour une occasion spéciale, il convient de le prévenir dix ans à l''avance.
Surtout, n''oubliez jamais que l''eau ferrugineuse est un fléau qui ravale le troll au rang de l''homme.
Alors, vous qui entrez ici, laissez toute espérance ainsi que vos affaires personnelles au vestiaire. Et n''oubliez pas de rapporter vos notes de frais.
Ayerdhal.', NULL, NULL, 0, '', NULL),
(1190, 10364, 2, 2009, 'La fille automate', 'The windup girl', 2, 1, '2022-08-21 00:00:00', TRUE, '2022-07-28 00:00:00', '2022-08-22 00:00:00', 4.0, NULL, 596, 'images/fille_automate.jpg', 'La sublime Emiko n''est pas humaine. C''est une créature artificielle, élevée en crèche et programmée pour satisfaire les caprices décadents d''un homme d''affaires de Kyoto. Etres sans âme pour certains, démons pour d''autres, les automates sont esclaves, soldats ou jouets pour les plus riches, en ce XXIe siècle d''après le grand krach énergétique, alors que les effets secondaires des pestes génétiquement modifiées ravagent la Terre et que les producteurs de calories dirigent le monde. Qu''arrive-t-il quand l''énergie devient monnaie ? Quand le bioterrorisme est outil de profit ? Et que les dérives génétiques font basculer le monde dans l''évolution posthumaine ?', NULL, NULL, 0, '', NULL),
(1191, 0, 3, 0, 'Soeurs', NULL, 3, 1, '2022-09-02 00:00:00', FALSE, '2022-08-23 00:00:00', '2022-09-09 00:00:00', 3.5, NULL, 553, 'images/soeurs.jpg', 'Dans la première partie dont l''action se situe en 1993, le jeune Martin Servaz vient d''être affecté au SRPJ de Toulouse. Deux sœurs sont alors découvertes mortes, vêtues d''une robe de communiantes. Elles ont été frappées violemment au point où l''une d''elles est défigurée. Martin participe à l’enquête menée par le chef de la brigade Léo Kawalski. Un auteur à succès de romans policiers, Érik Lang, est soupçonné car dans un de ses romans nommé La Communiante, l''histoire présente des analogies avec la mise en scène accompagnant le meurtre des deux sœurs. Martin découvre des méthodes d''interrogation musclées et des manières peu conventionnelles utilisées au cours de l''enquête pour faire parler les témoins et suspects.

Dans la seconde partie, en 2018, Érik Lang trouve, en rentrant chez lui, sa femme morte, vêtue d''une robe de communiante. C''est maintenant Martin Servaz qui dirige l’enquête. Il repense alors aux deux sœurs mortes 25 ans plus tôt. Quel lien peut-il y avoir entre ces deux crimes ?', NULL, NULL, 0, '', NULL),
(1192, 0, 84, 2009, 'La poussière des rèves', NULL, 8, 1, '2022-09-10 00:00:00', TRUE, '2022-09-10 00:00:00', '2022-11-01 00:00:00', 2.5, NULL, 568, 'images/la_poussiere_des_reves.jpg', 'Dans une guerre, tout le monde est perdant. Cette vérité brutale se lit dans les yeux de chaque soldat de chaque camp...
 
À Lether, l''armée malazéenne en exil commandée par l''Adjointe Tavore entame sa marche vers les Terres Stériles, afin de combattre pour une cause inconnue contre un ennemi qu''elle n''a encore jamais vu.
 
Cette dernière grande armée de l''empire malazéen est résolue à accomplir un ultime défi héroïque au nom de la rédemption. Mais les actes peuvent-ils se révéler de nature héroïque quand il n''y a personne pour en être témoin ? Et ce dont on n''est pas témoin peut-il changer le monde à jamais ? Les destins sont rarement simples, les vérités jamais claires, mais il existe une certitude : le temps ne joue en faveur de personne. Car le Jeu des Dragons a rendu son verdict, libérant un pouvoir redoutable que personne ne peut comprendre.', '1070 pages très très difficile d''accès. Beaucoup d''ennui encore sur ce tome, on ne comprend pas grand chose. Mais le dieu estropié serait éparpillé en 7 morceaux sur différents continents  Kolanse serait la destination de l''Adjointe pour vaincre (et comprendre ce Dieu estropié responsable de beaucoup de chaos dans la magie et les garennes).
Nombreux personnages, nombreuses civilisations, on se perd rapidement dans le récit tant cela reste obscur et l''intrigue extrêmement diluée. Ce tome n''est que la première partie du récit.', 'Le livre des martyrs', 9, '', NULL),
(1193, 0, 6, 1965, 'Vas-y Béru', NULL, 12, 1, '2022-11-12 00:00:00', FALSE, '2022-11-01 00:00:00', '2022-11-11 00:00:00', 3.5, NULL, 599, 'images/vas-y_beru.jpg', 'San-Antonio et Alexandre-Benoît Bérurier sont de passage à Dijon, où le Tour de France fait étape, pour y retrouver Berthe Bérurier et son amant Alfred (coiffeur de son état) qui participent à la caravane publicitaire.
À la suite du meurtre du masseur d''une équipe cycliste du Tour, ils se font passer pour chauffeur et masseur afin d''enquêter en toute discrétion sur ce décès.
Après plusieurs meurtres et rebondissements le commissaire va tenter de retrouver le commanditaire de tous ces meurtres, qui profite du passage du Tour en Suisse pour pouvoir y passer en toute discrétion, camouflé dans les bicyclettes d''une équipe, un matériel révolutionnaire dérobé dans une usine.

Le légérium 34,  un métal très rare et bien plus léger que l''acier.', 'Très drôle et amusant. Bon roman pour passer un bon moment de rigolade. Ou l''on découvre le jeu de l''apéro dame ou Béru en champion cycliste. L''auteur invente le légérium 34,  un métal très rare et bien plus léger que l''acier. Un vélo est fabriqué dans cette manière pour passer discrètement la frontière en Suisse.', 'San antonio', 59, '', NULL),
(1194, 9476, 2, 2006, 'Livre trois : 1794', NULL, 5, 1, '2022-11-19 00:00:00', TRUE, '2022-11-11 00:00:00', '2022-12-02 00:00:00', 3.5, NULL, 114, 'images/lenjomineur_1794-1448641-264-432.jpeg', 'A la toute fin de l''année 1793, alors que la Terreur fait rage, les voiles qui entouraient le mystère de la naissance d''Emile vont enfin se lever, lui révélant le rôle qu''il est appelé à jouer dans les rangs de la secte de Mithra. Cornuaud, lui, n''en finit plus de retourner sa veste : tantôt volontaire de la Nation, tantôt du côté des insurgés, il sert invariablement ceux qui font couler le sang, car ainsi en a décidé la sorcière qui l''a "enjominé". Ses pas lui feront traverser Nantes et la Vendée en flammes, où l''idéal de la Révolution s''est perdu dans une guerre civile meurtrière...', NULL, 'L''enjomineur', 3, '', NULL),
(1195, 0, 67, 0, 'Le jeu des sabliers', NULL, 2, 1, '2022-12-15 00:00:00', TRUE, '2022-12-02 00:00:00', '2022-12-19 00:00:00', 3.5, NULL, 33, 'images/jeu_des_sabliers.jpg', 'De mystérieux sabliers. Une étrange prophétie. Et des cartes de tarot, qui contiendraient peut-être la clé de l''énigme... Mais, au cœur d''un monde où le temps est parcouru de crevasses béantes, les ombres laissées par les anciens Dieux rôdent toujours... Alliés de circonstance, un jongleur errant, une guerrière aussi jeune que dangereuse et un bouffon étrangement savant se voient remettre, par un singulier vieillard, une carte à leur image. Devenu leur employeur et mentor, l''homme les entraîne dans un jeu mortel ou tout est trompeur. Malgré leur méfiance réciproque, exacerbée par une rivalité à fleur de mots et volontiers de lames, pourront-ils déjouer les obstacles et parvenir au bout de leur quête ?', NULL, NULL, 0, '', NULL),
(1196, 0, 6, 1954, 'Sérénade pour une souris défunte', NULL, 3, 1, '2022-12-20 00:00:00', FALSE, '2022-12-19 00:00:00', '2022-12-26 00:00:00', 2.0, NULL, 599, 'images/serenade_pour_une_souris_defunte.jpg', 'Voilà maintenant que le boss me fait prendre les patins de ses amis ! Il faut reconnaître que le turbin qui échoit sur la tête de son pote est de first quality !Jugez plutôt : son fils va être cravaté de chanvre incessamment et peut-être avant par la justice britannique. Je vêts l''habit ecclésiastique pour rencontrer le condamné. Brusquement, je sens que ce mec est innocent.Une drôle de sérénade en perspective !
Paru en 1954 n°SA 3', 'Loin d''être le meilleur San Antonio. L''histoire est un peu confuse, très simple et peu d''humour. Il manque Béru. Ce sont les débuts de Fredéric Dard.', 'San Antonio', 10, '', NULL),
(1197, 0, 3, 7284, 'Le Dieu oiseau', NULL, 5, 1, '2022-02-03 00:00:00', TRUE, '2022-12-26 00:00:00', '2023-01-10 00:00:00', 3.5, NULL, 588, 'images/Le-Dieu-Oiseau_3hSeeRl.jpg', 'Une île. Dix clans. Tous les dix ans, une compétition détermine quel clan va dominer l''île pour la décennie à venir. Les perdants subiront la tradition du " banquet " : une journée d''orgie où les vainqueurs peuvent disposer de leurs adversaires. Il y a dix ans, Faolan, fils d''un chef du clan déchu, a assisté au massacre de sa famille. Sauvé par le fils du chef victorieux, Torok, il est depuis lors son esclave et doit subir ses fantaisies perverses. Enfin la nouvelle compétition est sur le point de commencer. L''occasion tant attendue par Faolan pour prendre sa revanche. Aura-t-elle le goût du sang ?', NULL, NULL, 0, '', NULL),
(1198, 0, 86, 0, 'Silo', 'Silo', 2, 1, '2023-01-04 00:00:00', TRUE, '2023-01-11 00:00:00', '2023-02-05 00:00:00', 4.0, NULL, 584, 'images/silo.jpg', NULL, NULL, NULL, 0, '', NULL),
(1199, 0, 20, 1969, 'En avant la moujik !', NULL, 12, 1, '2022-02-18 00:00:00', FALSE, '2023-02-05 00:00:00', '2023-02-11 00:00:00', 3.0, NULL, 599, 'images/moujik.jpg', 'Je connais plusieurs centaines de milliers de femmes qui vont avoir un sérieux pincement au cœur, en lisant les premières lignes de cette histoire : imaginez un peu, mes belles, l''unique, celui qui vous fait tourner les têtes, le commissaire San Antonio vient de se marier ! Et pour mettre un comble à votre désappointement, sachez que sa légitime n''est autre que la fille d''un célèbre savant russe... Mais sachez aussi qu''elle pèse deux cents livres et qu''à côté d''elle Berthe Bérurier est une starlette d''Hollywood ! Rassurez-vous, il y a gros à parier qu''avant la fin de ce chef d''œuvre, le magnifique commissaire sera de nouveau disponible…
En attendant, il a fallu passer une sacrée nuit de noces ! Heureusement que Bérurier ne sait rien refuser à son supérieur ! Heureusement que rien ne le rebute… Et après tout…, dans le noir…', 'Histoire drôle et délirante sur de l''espionnage russe. San Antonio et Béru se retrouvent en Sibérie au milieu d''espions et de militaires qui veulent récupérer une formule secréte.
Délirant pas plausible un instant mais drôle. Lu pendant séjour à la Guadeloupe.', 'San Antonio', 72, '', NULL),
(1200, 0, 3, 1999, 'Carpe Jugulum', NULL, 1, 1, '2023-03-13 00:00:00', TRUE, '2023-03-05 00:00:00', '2023-03-22 00:00:00', 3.5, NULL, 222, 'images/Les-annales-du-disque-monde-tome-23-Carpe-Jugulum.jpg', 'Jour de fête au pays de Lancre : Vérence (ex-membre de la Guilde des Fous) et Magrat (ex-sorcière), le couple royal, vont baptiser leur petite fille. Vérence a invité bon nombre de familles nobles du coin mais il a commis une erreur de taille en conviant les Margopyr, vieille famille de vampyres du royaume voisin. Lassés de leur vieux château, ces vampyres amateurs de vin rouge ont bien l''intention de s''installer à demeure à Lancre. Les sorcières Mémé, Nounou et Agnès sont décidées à leur faire la peau. Mais comment combattre des vampyres qui mangent des petits-fours à l''ail et se baignent dans l''eau bénite ?', NULL, 'Les annales du disque monde', 24, '', NULL),
(1201, 0, 84, 2022, 'Le dieu estropié', NULL, 5, 1, '2023-03-24 00:00:00', TRUE, '2023-03-22 00:00:00', '2023-05-02 00:00:00', 3.0, NULL, 568, 'images/le_dieu_estropié_GHebb3V.jpg', 'Ravagés par les K’Chains Nah’ruk, les Osseleurs marchent vers Kolanse. L’armée vacille, au bord de la mutinerie, mais l’Adjointe ne cède pas.
Tavore Paran, pourtant si quelconque, entend défier les dieux – si ses propres troupes ne la tuent pas d’abord. Elle et ses alliés sont attendus par les Forkruls Assail, prêts à rendre justice à leur manière : l’humanité doit être anéantie pour que ce monde puisse prendre un nouveau départ.
Dans le domaine de Kurald Galain, qui abrite l’antique Kharkanas, des réfugiés se massent sur le Premier Rivage.
Commandés par Yedan Derryg, ils feront face aux assauts de Tistes Liosan. Ce ne sont pas des soldats, mais ils devront se battre. Au nom d’une ville vide et d’une reine sans sujets, sans espoir de victoire.
Ailleurs, les anciens dieux Kilmandaros, Errastas et Sechul Lath œuvrent à briser les chaînes de Korabas. Une fois libérée, la dragonne d’otataral dévastera le monde, attirant les Eleints, prêts à se ruer sur elle. Eux aussi réclament leur part de chaos.
Le chapitre final de l’extraordinaire Livre des Martyrs est sur le point de débuter.', 'Voile le cycle terminé. Ce roman long, très long a part quelques belles scènes épiques, toute l''intrigue autour du Dieu estropié tombe totalement à plat car à peine libéré de ses chaines il est tué par le dieu de l''Ombre. Dans quel but ? Erickson par une sorte d''immense pied de nez ne conclut pas en tout beauté ce cycle de plus de 10,000 pages. C''est une énorme déception pour moi. Tout ça pour ça ? Aucune explication. J''ai fermé le roman content d''avoir enfin terminé ce cycle très très long mais très très décevant au final.', 'Le livres des martyrs', 10, '', NULL),
(1202, 715, 67, 2021, 'La pierre jaune', NULL, 2, 1, '2023-05-03 00:00:00', TRUE, '2023-05-03 00:00:00', '2023-05-11 00:00:00', 3.5, NULL, 598, 'images/La-pierre-jaune_4pKcM3N.jpg', 'Un jour de forte pluie, Jack surgit à la Pierre Jaune, lieu-dit d''un village breton. Cet homme tatoué au strabisme prononcé rend visite à son nouvel ami membre des Jauniens, une communauté d’activistes. À 200 km de là survient un spectaculaire attentat contre l’usine nucléaire de la Hague. Pluies acides, radioactivité, la Bretagne compte parmi les zones à évacuer. Par entêtement, les Jauniens décident de rester sur leur presqu''île. Au nom d’un motif inavouable, Jack les imite. Une étrange survie débute.
La Pierre Jaune est issue d’une hypothèse scientifique admise par l’État français : un attentat contre La Hague serait sept fois plus grave que Tchernobyl. Le personnage de Jack est inspiré de Mark Kennedy, le policier anglais qui a infiltré des milieux anarchistes – notamment en France – durant sept ans. Geoffrey Le Guilcher est journaliste indépendant, il collabore avec Le Monde, Mediapart, Le Canard enchaîné ou Les Jours. Il est l''auteur de trois ouvrages dont Steak Machine, un livre de narrative non fiction racontant son infiltration dans un abattoir industriel. La Pierre Jaune est son premier roman.', 'Roman intéressant autour d''un désastre nucléaire. Très bien documenté. Basé sur les rapports humains autour d''une communauté anarchiste.', NULL, 0, '', NULL),
(1203, 74, 6, 1959, 'On t''enverra du monde', NULL, 3, 1, '2023-05-12 00:00:00', FALSE, '2023-05-11 00:00:00', '2023-05-16 00:00:00', 2.0, NULL, 599, 'images/on_tenverra_du_monde.jpg', 'Eh bien ! Eh bien, Béru, t''as des vapeurs ? M''en parle pas, balbutie-t-il, je suis un mec terminé ! - On en reparlera quand lu seras dans ton costar en planches; dis-moi un peu ce qui ne carbure pas ? - Ma femme a disparu, lâche le Gros. Et de ponctuer cette révélation par un barrissement qui fêlerait une plaque de blindage.', NULL, 'San Antonio', 34, '', NULL),
(1204, 667, 67, 2017, 'La messagère du ciel', NULL, 5, 1, '2023-07-01 00:00:00', TRUE, '2023-05-16 00:00:00', '2023-06-30 00:00:00', 3.5, NULL, 567, 'images/messagere_du_ciel.jpg', '« Écoute Ma parole : l''Éternel Crépuscule cachera le soleil, étouffera les plantes et changera les hommes en bêtes, car Aska, le Dieu de la Nuit, ne tolère d''autres enfants que les siens. »
Mériane est une trappeuse, une paria, une femme. Autant de bonnes raisons d''en vouloir aux Dieux qui ont puni le peuple de la Rhovelle pour les fautes de ses aïeux. Car depuis la chute du glorieux Empire d''Asrethia, le monde est parcouru de zones instables qui provoquent des mutations terrifiantes, les gens ont faim, et une religion austère qui prêche la haine des femmes soutient un système féodal.
Pourtant, quand les Dieux décident de vider leur querelle par l''intermédiaire des humains, un rôle crucial échoit à Mériane. Pour elle débute une quête qui la verra devenir chef de guerre et incarner l''espoir de tout un peuple.', NULL, 'Les dieux sauvages', 1, '', NULL),
(1205, 0, 90, 1960, 'Ils arrivent !', 'Sie kommen !', 7, 1, '2023-07-19 00:00:00', TRUE, '2023-07-01 00:00:00', '2023-07-18 00:00:00', 4.0, NULL, 600, 'images/ils-arrivent.jpg', 'Pour les troupes allemandes, la nuit du 5 au 6 juin 1944 devait être une nuit comme les autres. Mais, surgissant de la brume matinale, des centaines de navires apparaissent dans le champ de vision des sentinelles. Un cri s''élève : "Sie kommen ! ", "Ils arrivent ! " La bataille de Normandie vient de commencer. Heure par heure, Paul Carell commente les opérations alliées telles qu''elles furent vécues par les Allemands. Ce récit sobre et saisissant témoigne du combat opiniâtre que livre une armée qui n''a rien à perdre, écrasée...', NULL, NULL, 0, '', NULL),
(1206, 7304, 3, 0, 'Les noces de la renarde', NULL, 5, 1, '2023-07-19 00:00:00', TRUE, '2023-07-18 00:00:00', '2023-08-02 00:00:00', 3.5, NULL, 582, 'images/Les-Noces-de-la-Renarde.jpg', 'Plongez dans les légendes merveilleuses et cruelles du folklore japonais...

1467, Japon. Hikari, une kitsune, vit avec ses sœurs dans une forêt peuplée de petits dieux. Fascinée par les humains, la mystérieuse jeune femme s''intéresse de près aux villageois installés au pied de la montagne, et surtout à Jun, l''un des bûcherons. Mais le contact avec les hommes est formellement interdit par son clan...
2016, Tokyo. Mina a le pouvoir de voir et de côtoyer les esprits et monstres du folklore japonais. Solitaire à cause de ce don qu''elle doit cacher à tous, la jeune fille ne se sent pas à sa place dans la société. Jusqu''au jour où un esprit tente de s''introduire dans ses rêves et que sa camarade Natsume l''entraîne dans une chasse au démon à travers la capitale...
Deux univers se croisent, deux destins s''entremêlent, entre quête d''identité et désir d''émancipation.', NULL, NULL, 0, '', NULL),
(1207, 0, 6, 1981, 'Champagne pour tout le monde', NULL, 3, 1, '2023-08-15 00:00:00', FALSE, '2023-08-02 00:00:00', '2023-08-13 00:00:00', NULL, NULL, 599, 'images/champagne_pour_tout_le_monde.jpg', 'Je vais te dire...
Moi, quand je prête mon aimable concours à une gourgandine pour l''aider à perpétrer un vol et que ma'' carrière de flic d''élite ne sombre pas dans l''aventure.
Quand les bombes m''éclatent sous les claouis sans me causer la moindre égratignure.
Quand je suis expédie à perpète au fond d''un puits d''où personne n''est jamais sorti, pas même la venté, et que j''en remonte frais comme un gardon.
Oui, moi, quand tout ça, plus le reste m''arrive, à la fin de ces délicatesses je respire un grand coup et je m''écrie:
— Champagne pour tout le monde ! A la bonne mienne, les gars !', NULL, 'San Antonio', 107, '', NULL),
(1208, 0, 40, 2015, 'Semences', NULL, 2, 1, '2023-08-15 00:00:00', TRUE, '2023-08-14 00:00:00', '2023-09-09 00:00:00', 3.5, NULL, 29, 'images/Semences.jpg', 'Sur une Terre dont le climat a radicalement changé suite à l’emballement climatique des trois siècles précédents...
Un jeune couple, Denn et Nao, issu d’une tribu cavernicole d’Amérique du Nord, entreprend un voyage vers un « paradis terrestre » aperçu sur un foulard en soie peinte que leur a légué un homme bardé d’objets inconnus, sorti du désert pour venir mourir près de leur grotte.
Ils croisent des nomades, traversent des ruines irradiées, découvrent des technologies résiduelles et, encore et toujours, des façons de s’adapter inimaginables... jusqu’au Groenland où, d’après eux, serait situé ce « paradis ».
Or Nao a emporté une micro-société de fourmites avec qui elle partage des liens quasi-télépathiques et qui nourrissent peut-être d’autres desseins…
Un road-movie qui signe la renaissance de l’humanité.', NULL, NULL, 0, '', NULL),
(1209, 0, 67, 2018, 'Le verrou du fleuve', NULL, 1, 1, '2023-09-25 00:00:00', TRUE, '2023-09-10 00:00:00', '2023-10-17 00:00:00', 3.5, NULL, 567, 'images/le_verrou_du_fleuve.jpg', 'L''armée démoniaque, mi-chair mi-machine, du dieu Aska est aux portes de Loered, la ville sur laquelle reposent la défense et la stabilité du royaume ― le Verrou du Fleuve. Le Verrou doit tenir, ou la Rhovelle est perdue. Mériane, à la tête de maigres renforts, compte bien honorer sa propre prophétie et libérer la ville. Mais quand les hommes se mêlent de contrarier les dieux, elle en est réduite à limiter les dégâts. Face au découragement qui s''installe, elle incarne le seul espoir du peuple, et l''instinct de survie fait taire, pour un temps, les dissensions. Pour autant, les manigances politiques se poursuivent en coulisses, et la guerre commence à peine que certains préparent déjà l''après.', NULL, 'Les dieux sauvages', 2, '', NULL),
(1210, 0, 6, 0, 'Si ma tante en avait', NULL, 3, 1, '2023-10-26 00:00:00', FALSE, '2023-10-18 00:00:00', '2023-10-26 00:00:00', NULL, NULL, 599, 'images/si_ma_tante_en_avait.jpg', 'San Antoni', 'San Antonia et Béru se retrouvé exile en Bretage, ils devront déméler une affaire de bateau russe. L''histoire sans grand intéret est une nouvelle fois prétexte à des nombreuses situations scabreuse. On note le ton bcp plus cru et moins fin que dans les romans plus anciens.', 'San Antonio', 97, '', NULL),
(1211, 0, 62, 2020, 'Les secrets du premier coffre', NULL, 5, 2, '2023-11-05 00:00:00', TRUE, '2023-10-27 00:00:00', '2023-11-12 00:00:00', 3.0, NULL, 555, 'images/Les-secrets-du-premier-coffre.jpg', 'Six histoires hautes en couleur dans le monde du Bâtard de Kosigan ! Avec ce coffre empli de trésors littéraires, Fabien Cerutti propose six textes qui enluminent et permettent de découvrir l''univers de sa série à succès Le Bâtard de Kosigan. Avec un récit de la jeunesse gouailleuse du Bâtard en Italie, une pièce de théâtre truculente à la cour d''Angleterre, un drame amoureux entre un pape et une satyre, un journal de voyage aux confins du monde en quête des elfes de Chine, et bien d''autres surprises encore, l''auteur nous émeut, nous surprend, nous fait frissonner, nous dépayse et nous emporte dans son imaginaire vif et attachant.', NULL, NULL, 0, '', NULL),
(1212, 0, 26, 2000, 'Sel', NULL, 3, 1, '2024-01-06 00:00:00', TRUE, '2023-12-12 00:00:00', '2024-01-04 00:00:00', 4.0, NULL, 601, 'images/sel.jpg', 'En replongeant dans une affaire non résolue datant des années 1980, Carl Mørk et l’équipe du Département V découvrent avec stupeur que depuis trente ans, un tueur particulièrement rusé choisit avec une régularité effrayante une victime et l’élimine en déguisant ce meurtre en accident ou en suicide.

À chaque fois, sur le lieu du crime, un petit tas de sel.

Sur fond de restrictions sanitaires dues au Covid-19, Mørk et ses acolytes se lancent dans une enquête dont ils n’imaginent pas l’ampleur.', 'Bon polar avec une intrigue originale. Mais le style (ou mauvaise traduction parfois) est par moment un peu déroutant.', 'Les Enquêtes du département V', 9, '', NULL),
(1213, 0, 3, 2022, 'Yardam', NULL, 5, 1, '2024-01-13 00:00:00', TRUE, '2024-01-05 00:00:00', '2024-01-19 00:00:00', 4.0, NULL, 588, 'images/yardam.jpg', 'À Yardam, la folie est sexuellement transmissible.

La population est piégée par la quarantaine dans l''espoir d''endiguer l''épidémie.
Porteur du virus, Kazan se débat avec ses démons au point qu''il ne sait plus s''il les aime ou s''il les hait.
Le salut viendra-t-il de ce couple de médecins étrangers venus s''enfermer volontairement dans la cité pour trouver un remède au terrible mal qui s''étend entre ses murs ?', 'Le meilleur roman d''Aurélie que j''ai lu jusqu''à maintenant. Roman assez long (550 pages) qui permet de bien développer la maladie "voleur d''esprit". C''est sombre, cruel et violent. Le héros est tourmenté avec ses multiples personnalités qu''il a absorbé.', NULL, 0, '', NULL),
(1214, 95, 6, 1978, 'Viens avec ton cierge', NULL, 3, 1, '2024-01-27 00:00:00', FALSE, '2024-01-20 00:00:00', '2024-01-27 00:00:00', 3.5, NULL, 599, 'images/viens_avec_ton_cierge.jpg', 'Tiago Chiraco est le dictateur de San Bravo, sur son territoire, des rampes lance-missiles doivent être aménagées. San-Antonio est réquisitionné, pour enmener des donzelles françaises dont le dictateur est fort friand. Parmi elles il y aura le tueur en charge de flinguer Chiraco.
San-Antonio arrive dans la place, avec des superbes nanas et comme manager : Mme Berthe Bérurier. Et contrairement à toute attente, le dictateur va préférer : Berthe.
Un très bon San-Antonio, avec tous les ingrédients qui ont fait la renommée de Frédéric Dard. Son rôle, ici, y est atypique mais pour notre plus grand plaisir.', NULL, 'San Antonio', 99, '', NULL),
(1215, 7351, 3, 2021, 'Les oubliés de l''amas', NULL, 2, 1, '2024-02-25 00:00:00', TRUE, '2024-01-27 00:00:00', '2024-02-25 00:00:00', 4.0, NULL, 582, 'images/oublies_amas.jpg', 'Un roman de space-opera qui ravira les fans de Les Robots d''Isaac Asimov et de Tau Zero de Poul Anderson.
L''humanité a colonisé tout le système solaire et veut étendre son exploration au reste de la galaxie. Cependant, une planète reste inatteignable : Jupiter, l''étoile ratée. Au cours des siècles, les vaisseaux ayant échoué à percer ses défenses ont fini par créer un gigantesque nuage de débris. Sur cette ceinture de déchets entourant Jupiter s''est construit au fil des années l''Amas, un bidonville flottant. Fraîchement débarquée sur l''Amas, Kat a très vite intégré une équipe de recycleurs. Mais, sérieuse et solitaire, Kat détone au milieu de ceux qui sont venus se faire oublier de la justice galactique et qui ont fini par oublier comment repartir de cet enfer flottant. Elle poursuit un but précis : intégrer le circuit des courses de vaisseaux illégales pour retrouver un frère disparu…', NULL, NULL, 0, '', NULL),
(1216, 0, 3, 1965, 'Le messie de Dune', NULL, 2, 1, '2024-02-27 00:00:00', TRUE, '2024-02-26 00:00:00', '2024-03-09 00:00:00', 4.0, NULL, 99, 'images/dune2.jpg', 'Paul Atréides a triomphé de ses ennemis. En douze ans de guerre sainte, ses Fremen ont conquis l''univers. Il est devenu l''empereur Muad'' Dib. Presque un dieu, puisqu''il voit l''avenir. Ses ennemis, il les connaît. Il sait quand et comment ils frapperont. Ils vont essayer de lui reprendre l''épice qui donne la prescience et peut-être de percer le secret de son pouvoir. Il peut déjouer leurs plans, mais voit plus loin encore. Il sait que tous les futurs possibles mènent au désastre et est hanté par la vision de sa propre mort. Peut-être n''y a-t-il pas d''autre liberté pour le prescient que celle du sacrifice...', 'Très bon roman. Nombreuses intrigues politiques et psychologiques. Paul malgré ses nombreuses visions n''arrivent pas à voir la mort de Chani qui donne naissance à Léto et Ghamina. Paul a la fin du roman part seul dans le désert profond.
Vivement la suite.', 'Dune', 2, '', NULL),
(1217, 7306, 3, 2016, 'Cochrane vs Cthulhu', 'Cochrane vs Cthulhu', 5, 1, '2024-03-03 00:00:00', TRUE, '2024-03-09 00:00:00', '2024-03-19 00:00:00', 4.0, NULL, 602, 'images/cochrane_vs_cthlhu.jpg', 'Le marin le plus audacieux de tous les temps affronte le plus grand ennemi de l’humanité !
Bien des années avant d''être le libérateur du Chili, du Pérou, du Brésil et de la Grèce, Lord Thomas Cochrane fut un héros des guerres napoléoniennes. En 1809, au large de l’île d’Aix, sur la côte occidentale française, il fit couler presque la moitié de la flotte de l’Empereur. En 1815, Napoléon achève la construction de Fort Boyard et Lord Cochrane revient dans la baie pour détruire ce bastion. Mais il se trouve confronté à une menace surnaturelle, Cthulhu, un dieu endormi qui émerge alors du fond des océans pour revendiquer le contrôle de la Terre !', 'Sympathique roman fantastique. Sur un fond historique modiifé pour l''histoire (1815, Napolélon, le Fort Boyard, les frères Champollion), le héros Cochrane se révèle très astucieux pour lutter contre Cthulhu. Que peuvent faire des hommes contre une telle monstruosité, une horrible déité ? Bon récit de suspense et d''aventure.', 'Cochrane', 1, '', NULL),
(1218, 0, 67, 2019, 'La fureur de la terre', NULL, 1, 1, '2024-05-05 00:00:00', TRUE, '2024-03-20 00:00:00', '2024-05-05 00:00:00', 3.0, NULL, 567, 'images/la-fureur-de-la-terre-lionel-davoust.jpg', 'La ville de Loered, Le Verrou du Fleuve, est en train de ployer sous la pression des armées démoniaques, mi-chair, mi-machine, du dieu Aska.
Affamée, malade, désespérée, la population ne tient plus que par sa foi envers Mériane, l’envoyée du dieu Wer.
Alors qu’au plus hauts échelons du royaume, la reine régente Izara s’efforce de sauvegarder de qu’elle peut encore, le prince Erwel se lance dans un appel désespéré à l’union des provinces pour aider Loered.
Pour espérer survivre, Mériane et les siens n’ont d’autre choix que de risquer d’encourir la colère divine.
Car dans le passé du monde, dans les vestiges anéantis de l’Empire d’Asrethia, repose peut-être une puissance capable de rivaliser avec celle d’Aska.
Tandis que le passé du monde émerge, la réelle nature du conflit qui oppose les dieux rivaux se dessine, et les Rhovelliens affrontent leurs plus terribles sacrifices.
Quand la mort frappe tous les jours, il n’y a pas de héros, pas d’épopée – seulement la nécessité de survivre jusqu’au lendemain.', NULL, 'Les dieux sauvages', 3, '', NULL),
(1219, 0, 6, 1972, 'Appelez-moi chérie', NULL, 3, 1, '2024-05-11 00:00:00', FALSE, '2024-05-05 00:00:00', '2024-05-11 00:00:00', 3.0, NULL, 599, 'images/appelez-moi_cherie.jpg', 'On peut tout exiger d''un bœuf...
Sauf qu''il remplace un taureau.
Fût-ce au pied levé !
Par contre, on peut demander à un taureau de mon espèce de se comporter comme une vache !
À preuve...
Ah ! Y a de quoi ruminer, je vous jure !
J''sais pas si vous avez envie, ou non, de lire ce livre.
Moi, à votre place, j''hésiterais pas.
P''t''être parce que je sais ce qu''il y a dedans ?
En tout cas, si vous souhaitez voir un San-Antonio partir à la recherche du plus gros diamant du monde avec une canne blanche, ratez pas cette occase, mes fils !
Vous comprendrez alors pourquoi j''ai intitulé ce machin APPELEZ-MOI CHÉRIE !
Chérie, parfaitement, avec un " e " muet !
Heureusement que l''auteur, lui, ne l''est pas !', 'Une aventure se déroulant au départ dan un pays d''Afrique imaginaire où un diamant de 2 tonnes a été dérobé. L''action se termine en Allemagne.
Nombreuses scènes cocasses où l''énorme Béru est pris d''une érection gigantesque', 'San Antonio', 78, '', NULL),
(1220, 0, 3, 0, 'La Princesse au visage de nuit', NULL, 5, 1, '2024-05-11 00:00:00', TRUE, '2024-05-11 00:00:00', '2024-05-24 00:00:00', 4.0, NULL, 591, 'images/La-Princee-au-visage-de-nuit_1ceG4fp.jpg', 'Hugo, enfant violenté par ses parents, s''est enfui avec ses amis dans la forêt, à la recherche de la princesse au visage de nuit, qui exaucerait les vœux des enfants malheureux... Il est ressorti du bois seul et sans souvenirs, et a été placé dans une famille d''accueil.
Vingt ans plus tard, alors qu''il a tout fait pour oublier son enfance, Hugo apprend la mort de ses parents. Mais, de retour dans le village de son enfance, il découvre que ses parents auraient été assassinés, et d''étranges événements se produisent. La petite voiture de son enfance réapparaît comme par magie. De mystérieuses lueurs brillent dans les bois. Les orages soufflent des prénoms dans le vent.
La princesse au visage de nuit est un conte d''enfances brisées, d''adultes qui ont dû survivre et grandir avec leurs blessures. Le roman parle de résilience, d''amitiés, d''enfants qui se réfugient dans la magie pour échapper à une réalité terrifiante et qui, parfois, en meurent. Mais ce n''est pas qu''une histoire triste. C''est un roman qui parle de vie, de survie. Parce qu''on finit par y arriver, parfois, à vivre. Et même, peut-être, à être heureux.', NULL, NULL, 0, '', NULL),
(1221, 7020, 3, 1999, 'Le cinquième éléphant', NULL, 1, 1, '2024-06-16 00:00:00', TRUE, '2024-05-25 00:00:00', '2024-06-22 00:00:00', NULL, NULL, 222, 'images/Le-cinquieme-elephant-tome-24.jpg', 'Überwald est la contrée des Nains, des vampyres et des mines de graisse, grâce au cinquième éléphant – parmi ceux qui soutiennent le monde – qui s''est écrasé sur ces terres. Alors que les Nains sont sur le point de couronner leur nouveau roi, les loups-garous fomentent un coup d''État.
C''est dans cette atmosphère tendue que débarque le commissaire Samuel Vimaire, ambassadeur d''Ankh-Morpork, chargé de négocier une nouvelle livraison de graisse antique et d''assister à la cérémonie. Or rien ne se déroule comme prévu...', NULL, 'Les annales du dique-monde', 25, '', NULL),
(1222, 668, 67, 0, 'Chevauche-Brumes', NULL, 5, 1, '2024-06-22 00:00:00', TRUE, '2024-06-22 00:00:00', '2024-07-16 00:00:00', 4.0, NULL, 603, 'images/chevauche_brume.jpg', 'Au nord du Bleu-Royaume, la frontière est marquée par une brume noire et impénétrable, haute comme une montagne. Mais depuis quelques lunes, le brouillard semble se déchirer. La nuée enfante alors des créatures immondes qui menacent d''engloutir le royaume tout entier.La neuvième compagnie des légions du Roy est le dernier recours d''un pouvoir aux abois pour s''opposer à ce fléau. Épaulée par des cavalières émérites et un mystérieux mage chargé d''étudier le phénomène, la troupe s''enfonce dans les terres du nord, vers cette étrange brume.Entre courage et résignation, camaraderie et terreur, ces femmes et ces hommes abandonnés par le sort devront consentir à bien des sacrifices face à la terrible menace. En seront-ils capables ?
Chevauche-brumes est un roman de fantasy captivant, porté par la justesse des personnages et le réalisme saisissant des scènes d''affrontements.', 'Première partie de cette trilogie prend le temps de nous présenter les différentes personnages et de démarrer l''intrigue. C''est bien écrit avec des personnage haut en couleur. Vivement la suite !', 'Chevauche-brumes', 1, '', NULL),
(1223, 0, 6, 1980, 'Baise ball à La Baule', NULL, 3, 1, '2024-07-30 00:00:00', FALSE, '2024-07-17 00:00:00', '2024-07-22 00:00:00', NULL, NULL, 599, 'images/baise-ball.jpg', '" Si tu n''as jamais vu le prince Charles d''Angleterre complètement mort, le nez dans une salade de homard, lis ce book. Si tu n''as jamais vu Béru propulser deux nonnes dans des cageots de tomates, lis ce bouquin. Si tu n''as jamais vu San-A aux prises avec un couple mystérieux qui le ridiculise, lis ce polar. Mais si tu as le palpitant qui déconne, l''ami, alors ne lis pas ce chef-d''oeuvre, il te tuerait ! "', NULL, 'San Antonio', 103, '', NULL),
(1224, 0, 3, 2021, 'Lord Cochrane vs l''ordre des catacombes', NULL, 5, 1, '2024-07-30 00:00:00', TRUE, '2024-07-22 00:00:00', '2024-07-30 00:00:00', 4.0, NULL, 602, 'images/cochrane_vs_lordre_des_catacombes.jpg', '1826, Paris. Jean-Baptiste Dallier, un bonapartiste ami des frères Champollion, est assassiné dans les catacombes. Le célèbre héros écossais Lord Cochrane arrive alors à Paris. Il y retrouve Champollion le Jeune qui possède les preuves de l''existence de Cthulhu, un monstre antédiluvien. Champollion a récupéré un manuscrit de la main de César, qui décrit comment il s''est rendu sur R''lyeh, la ville du monstre, au large du fort romain construit sur la longe de Fort Boyard.
Cochrane, Champollion le Jeune et le capitaine Eonet partent aussitôt récupérer le manuscrit caché au cimetière du Montparnasse. Mais un mystérieux " Ordre des Catacombes " rode, décidé à empêcher leur enquête !', NULL, 'Cochrane', 2, '', NULL),
(1225, 0, 3, 2023, 'Précipice', NULL, 3, 1, '2024-08-19 00:00:00', TRUE, '2024-07-30 00:00:00', '2024-08-18 00:00:00', 3.5, NULL, 604, 'images/precipice.jpg', '2022, Sarrouilles, petit village des Pyrénées. Valériane Ducuing reprend connaissance chez elle. Bâillonnée, immobilisée par un savant entrelacs de sangles, elle repose au fond de sa baignoire. Un instant plus tard, elle réalise que le robinet coule et que l''eau monte lentement. À son oreille, une voix murmure : " Tu vas mourir, Valériane. " Alors que, terrorisée et impuissante, elle assiste à sa noyade imminente, la jeune femme est sauvée in extremis par l''irruption inespérée d''un tiers. Avant de prendre la fuite, son agresseur tague trois lettres sur le carrelage : MPC.
Louise Caumont, major à la brigade de recherche de Tarbes, est dépêchée sur les lieux. Au regard de la mise en scène retorse, du mode opératoire ayant nécessité une grande préparation et du graffiti qui a tout d''une signature, Louise redoute le début d''une série de crimes. Ses craintes se confirment quand le tueur récidive. Alors que les meurtres s''enchaînent, un point commun apparaît : les victimes ont fréquenté le même lycée d''élite, durant l''année 2001-2002. Sont-elles liées par un évènement caché ? Les meurtres du présent ont-ils quelque chose à voir avec des éléments vieux de vingt ans ? Que signifie le sigle MPC et, surtout, qui se cache derrière ?
Pressée par le temps, accompagnée de collègues qui ne partagent pas son approche, Louise va devoir jouer des coudes pour faire la lumière sur une affaire enracinée dans le passé.', 'Bon roman policier où le suspense est bien maitrisé jusqu''au bout. 5 ados forment un groupe pour le meilleur et pour le pire jusqu''au drame il y a 20 ans.', 'Louise Caumont', 2, '', NULL),
(1226, 0, 67, 2020, 'L''héritage de l''empire - Partie 1', NULL, 1, 1, '2024-09-27 00:00:00', TRUE, '2024-08-19 00:00:00', '2024-09-27 00:00:00', 4.0, NULL, 567, 'images/heritage_empire.jpg', 'La guerre entre les dieux sauvages fait rage. La ville de Loered, la forteresse de Rhovelle, a résisté à un siège interminable grâce à Mériane, l’envoyée du dieu Wer, mais se trouve désormais isolée dans un royaume à feu et à sang. L’armée mi-chair mi-machine du dieu Aska continue son avancée vers Ker Vasthrion, bien décidée à s’emparer de la capitale. Alors que la Rhovelle, dont le trône est toujours vacant, a désespérément besoin d’union contre l’ennemi démoniaque, l’étau se resserre autour de Mériane et de ses soldats. Car l’Église de Wer, prête à tout pour asseoir son autorité, ne peut accepter que le salut du royaume passe par une femme. Pour échapper au crépuscule sans fin qui menace de les engloutir, les Rhovelliens devront remonter aux origines de la lutte fratricide entre les dieux sauvages.', NULL, 'Les dieux sauvages', 4, '', NULL),
(1227, 0, 67, 2020, 'L''Héritage de l''Empire - Partie 2', NULL, 1, 1, '2024-10-30 00:00:00', TRUE, '2024-09-28 00:00:00', '2024-10-27 00:00:00', 4.0, NULL, 567, 'images/heritage-empire-2.jpg', 'La guerre entre les dieux sauvages fait rage. La ville de Loered, la forteresse de Rhovelle, a résisté à un siège interminable grâce à Mériane, l’envoyée du dieu Wer, mais se trouve désormais isolée dans un royaume à feu et à sang. L’armée mi-chair mi-machine du dieu Aska continue son avancée vers Ker Vasthrion, bien décidée à s’emparer de la capitale. Alors que la Rhovelle, dont le trône est toujours vacant, a désespérément besoin d’union contre l’ennemi démoniaque, l’étau se resserre autour de Mériane et de ses soldats. Car l’Église de Wer, prête à tout pour asseoir son autorité, ne peut accepter que le salut du royaume passe par une femme. Pour échapper au crépuscule sans fin qui menace de les engloutir, les Rhovelliens devront remonter aux origines de la lutte fratricide entre les dieux sauvages.', 'Roman intense jusqu''à la fin avec le combat épique entre Mériane et Ganner. Wer prouve une fois de plus qu''il est cruel et manipulateur en livrant et abandonnant Mériane démunie aux fanatiques religieux. Vivement la suite!', 'Les dieux sauvages', 4, '', NULL),
(1228, 699, 67, 0, 'Les flots sombres', NULL, 1, 1, '2024-11-01 00:00:00', TRUE, '2024-10-30 00:00:00', '2024-11-23 00:00:00', 4.0, NULL, 603, 'images/les_flots_sombres.jpg', 'Le Bleu-Royaume est en danger. Des hordes de créatures maléfiques, libérées d’un sortilège qui les retenait captives, ravagent ses campagnes et terrorisent les hameaux. Les soldats issus de la neuvième compagnie des légions du Roy, les Chevauche-brumes, se sont juré de les combattre jusqu’à leur dernier souffle.
Les réfugiés arrivent par centaines dans la capitale et exacerbent les rivalités entre le régent et le culte d’Enoch. Dans les contrées méridionales, un monstre marin d’origine inconnue fait des ravages parmi les navires, mettant en danger le lien vital qui unit les Îles Jumelles au continent. Les Chevauche-brumes sauront-ils affronter tous ces périls ?
Les flots sombres est le deuxième tome d’une captivante série de fantasy portée par la justesse des personnages et le réalisme saisissant des scènes d’affrontements.', NULL, 'Chevauche-brumes', 2, '', NULL),
(1229, 723, 67, 2021, 'L''appel des grands cors', NULL, 1, 1, '2024-11-24 00:00:00', TRUE, '2024-11-23 00:00:00', '2024-12-26 00:00:00', 4.0, NULL, 603, 'images/grands_cors.jpg', 'Le Bleu-Royaume n''a jamais été aussi menacé. Des hordes de créatures d''encre déferlent sur ses contrées, ravageant villes et villages, mettant même en péril l''Eterlandd et le Longemar. Pourtant, face à l''ennemi, les grands seigneurs sont incapables d''opposer un front uni. À Antinéa, un nouveau pouvoir s''est levé et le culte d''Enoch, loin de rassembler les peuples, les dresse les uns contre les autres. Les Chevauche-brumes parviendront-ils à résister au chaos qui s''empare du pays ? L''appel des grands cors conclut de façon magistrale une captivante série de fantasy portée par la justesse des personnages et le réalisme saisissant des scènes d''affrontements.', 'Très bon roman qui clos le cycle. Malgré quelques longueurs le roman reste passionnant à lire. L''auteur maitrise bien son intrigue jusqu''au bout. Les personnages sont attachants. La tyrannie de la religion autour du culte d''Enoch est très bien développée, les scènes de bataille sont réalistes.', 'Chevauche-brumes', 3, '', NULL),
(1230, 7347, 3, 2022, 'Lord Cochrane et le trésor de Selkirk', NULL, 5, 1, '2024-12-27 00:00:00', TRUE, '2024-12-27 00:00:00', '2025-01-15 00:00:00', 3.5, NULL, 602, 'images/cochrane3.jpg', 'Le marin le plus audacieux de tous les temps revient pour une nouvelle aventure. Chili, 1822. Tremblement de terre et raz-de-marée à Valparaíso. Lord Cochrane, amiral de la flotte chilienne, sauve la vie du général Bernardo O''Higgins. En guise de remerciement, le général lui révèle que sur l''île principale de l''archipel de Juan Fernández, le corsaire Alexander Selkirk a caché en 1704 un trésor que personne n''a pu retrouver.

 

Tout indique que le trésor est une relique que Selkirk a apportée avec lui d''une région du détroit de Magellan que les aborigènes appellent les Montagnes de la Folie. Cet endroit aurait été la première demeure sur Terre d''un dieu venu des étoiles, l''immortel Cthulhu. Intrigué, Lord Cochrane part pour Juan Fernández avec son amie Maria Graham et le capitaine Eonet. Il est aussi poursuivi par un de ses vieux ennemis, le capitaine Gervasio Corrochano, un ancien officier de la marine espagnole qui commande désormais un bateau pirate, l''Águila.

 

Cochrane est de retour pour élucider un ancien mystère et affronter de nouveaux dangers, cette fois dans les eaux dangereuses du Pacifique !', NULL, 'Cochrane', 3, '', NULL),
(1231, 0, 3, 1976, 'Les enfants de Dune', 'The children of Dune', 2, 1, '2025-01-31 00:00:00', TRUE, '2025-01-16 00:00:00', '2025-02-14 00:00:00', 4.0, NULL, 99, 'images/dune3.jpg', 'Sur Dune, la planète des sables, les prophéties s''accomplissent : le désert devient jardin. Ainsi, les vers géants se font rares et l''Épice de prescience vient à manquer. Tout ce qui reste de l''épopée de Muad''Dib, c''est un empire conquis, des guerriers déchus, des prêtres tentés par la théocratie. Et les jumeaux, Leto et Ghanima, qui portent en eux les souvenirs d''innombrables générations. Y compris, peut-être, l''antique Abomination redoutée par les sœurs du Bene Gesserit et prête à revenir du passé génétique pour faire basculer l''univers dans le cauchemar. Les morts dominent les vivants. Leto devra affronter les uns et les autres en un combat sans merci dont l''enjeu est plus que la prescience, plus que la longévité : au moins la toute-puissance, et peut-être l''immortalité.', NULL, 'Dune', 3, '', NULL),
(1232, 0, 67, 0, 'Du thé pour les fantômes', NULL, 5, 1, '2025-02-26 00:00:00', TRUE, '2025-02-15 00:00:00', '2025-03-05 00:00:00', 2.5, NULL, 605, 'images/Du-the-pour-les-fantomes.jpg', 'Quand on est vivant, on occupe les places que les morts ont laissées. C''est la règle."
Agonie est sorcière. Félicité, passeuse de fantômes. Le silence dure depuis trente ans entre ces deux filles de berger, jusqu''au jour où la mort brutale de leur mère les réunit malgré elles. Pour recueillir ses derniers mots, elles doivent retrouver son spectre, retracer ensemble le passé de cette femme qui a aimé l''une et rejeté l''autre. Mais le fantôme de leur mère reste introuvable, et les témoins de sa vie, morts ou vivants, en dessinent un portrait étrange, voire contradictoire. Que voulait-elle révéler avant de mourir ? Qui était vraiment cette femme fragmentée, multiple ? Leur quête de vérité emmènera les soeurs des ruelles de Nice au désert d''Almería, de la vallée des Merveilles aux villages abandonnés de Provence, et dans les profondeurs des silences familiaux.
Entrez dans le salon de thé. Prenez une tasse chaude à l''abri de la pluie. Écoutez leur histoire.', 'Roman qui nous fait voyager autour de Nice. Des fantômes, du thé, l''une sorcière maudite, l''autre bénéfique qui parle aux fantômes à l''aide de son thé. De bonnes idées, bonne ambiance globalement. Mais un roman parfois difficile à lire à cause d''un style parfois mal maîtrisé. La conclusion ne m''a pas vraiment emballé, je m''attendais à plus de rebondissements.', NULL, 0, '', NULL),
(1233, 0, 67, 0, 'Le tournoi des preux', NULL, 1, 1, '2025-03-22 00:00:00', TRUE, '2025-03-06 00:00:00', '2025-04-18 00:00:00', 4.0, NULL, 285, 'images/Le-chevalier-aux-epines.jpg', 'Soupçonnée d''adultère, la duchesse Audéarde de Bromael a été jugée, répudiée et emprisonnée. Le champion qu''on l''a accusée d''avoir trop aimé, le chevalier Ædan de Vaumacel, lui a fait défaut au cours de son procès. Mais voici qu''un an plus tard le chevalier est de retour. Honni par les partisans de la ci-devant duchesse comme par ceux du duc Ganelon, le sire de Vaumacel prétend vouloir restaurer son honneur et celui de la dame. Étrangement, il met toutefois plus de zèle à poursuivre les ravisseurs de jeunes gueux qu''à réparer sa faute. Pendant ce temps, la cour ducale se divise ; les armes courtoises pourraient y être rapidement supplantées par les armes de guerre... Roman de chevalerie où se mêlent affrontements courtois et machinations politiques, Le tournoi des preux marque le grand retour au Vieux Royaume de Jean-Philippe Jaworski. Ce premier tome de trilogie a reçu le prix Elbakin.net 2023.', NULL, 'Le chevalier aux épines', 1, '', NULL),
(1234, 0, 6, 1956, 'Les doigts dans le nez', NULL, 3, 1, '2025-04-25 00:00:00', FALSE, '2025-04-20 00:00:00', '2025-04-25 00:00:00', 2.0, NULL, 599, 'images/les-doigts-dans-le-nez.jpg', '"Il se soulève, prend sa chaise et me l''abat sur le crâne. Aussi fastoche que je viens de vous le dire. Mon bras paralysé par le coup de poêle à frire n''a pas eu la force de se lever pour braquer le soufflant. Je biche le siège en pleine bouille et illico je me trouve inscrit au barreau. Ça se met à tourniquer autour de moi. J''essaie de me cramponner à la table, mais des nèfles ! Je vais à dame. Le couple de petits rentiers tranquilles me saute alors dessus et font une danse incantatoire sur ma personne."', NULL, 'San Antonio', 22, '', NULL),
(1235, 0, 2, 2015, 'Soumission', NULL, 10, 1, '2025-05-04 00:00:00', FALSE, '2025-04-26 00:00:00', '2025-05-04 00:00:00', 4.0, NULL, 606, 'images/soumission.jpg', 'Dans une France assez proche de la nôtre, un homme s''engage dans la carrière universitaire. Peu motivé par l''enseignement, il s''attend à une vie ennuyeuse mais calme, protégée des grands drames historiques. Cependant les forces en jeu dans le pays ont fissuré le système politique jusqu''à provoquer son effondrement. Cette implosion sans soubresauts, sans vraie révolution, se développe comme un mauvais rêve.
Le talent de l''auteur, sa force visionnaire nous entraînent sur un terrain ambigu et glissant ; son regard sur notre civilisation vieillissante fait coexister dans ce roman les intuitions poétiques, les effets comiques, une mélancolie fataliste. Ce livre est une saisissante fable politique et morale.
Une anticipation dans laquelle un parti musulman remporte la présidentielle contre le Front national.
Le Front national de Marine Le Pen, qui a déjà perdu le scrutin de 2017, subit la loi d’une alliance UMP, UDI, PS, associée à la Fraternité musulmane, parti inventé par l’auteur. Son leader, Mohammed Ben Abbes, finit par être élu et choisit François Bayrou comme premier ministre.', 'Le style de l''auteur est parfois déroutant mélangeant beaucoup de cynisme (obsession par la mort et le sexe), l''auteur avec grand talent décrit la montée inexorable de l''islamisme en France jusqu''au élection et reconversion du protagoniste du roman à l''Islam. Effroyable tellement cela semble plausible.', NULL, 0, '', NULL),
(1236, 638, 67, 2017, 'Ce qui divise', NULL, 2, 1, '2025-05-11 00:00:00', TRUE, '2025-05-04 00:00:00', '2025-05-21 00:00:00', 3.0, NULL, 17, 'images/Ce-qui-divise.jpg', 'nfin émancipée, la Spire a grandi. La compagnie de transport créée par des pilotes indépendants est en passe de devenir aussi implacable que ses concurrentes. En son sein, deux branches s''affrontent : le Buro, dirigé par le redoutable Mathy, et la Ligue des navis, garante des intérêts des pilotes et de l''âme de la compagnie. Entre les deux : Lenoor, la présidente aimée de tous, qui tente de faire perdurer le rêve initial... Pourtant, un espoir demeure vivace chez certains navis : découvrir la planète des Vangk - les légendaires constructeurs des Portes ouvrant sur les étoiles - et s''emparer de leurs secrets. Avec Spire, l''auteur explore son univers des Portes de Vangk dans une grande fresque de space opera.', NULL, 'Spire', 2, '', NULL),
(1237, 0, 3, 0, 'L''empereur-Dieu de Dune', 'God emperor of Dune', 2, 1, '2025-05-27 00:00:00', TRUE, '2025-05-22 00:00:00', '2025-06-16 00:00:00', 4.5, NULL, 99, 'images/dune4.jpg', 'Sur Dune, la planète des sables, les prophéties s''accomplissent : le désert devient jardin. Ainsi, les vers géants se font rares et l''Épice de prescience vient à manquer. Tout ce qui reste de l''épopée de Muad''Dib, c''est un empire conquis, des guerriers déchus, des prêtres tentés par la théocratie. Et les jumeaux, Leto et Ghanima, qui portent en eux les souvenirs d''innombrables générations. Y compris, peut-être, l''antique Abomination redoutée par les sœurs du Bene Gesserit et prête à revenir du passé génétique pour faire basculer l''univers dans le cauchemar. Les morts dominent les vivants. Leto devra affronter les uns et les autres en un combat sans merci dont l''enjeu est plus que la prescience, plus que la longévité : au moins la toute-puissance, et peut-être l''immortalité.', 'Très bon roman de science fiction politique. Ou Léto conscient de son grand pouvoir (dictateur régnant en maitre sur Dune et sur l''univers) connait déjà sa fin inéluctable.', 'Dune', 4, '', NULL),
(1238, 0, 89, 0, 'L''oreille glacée', NULL, 12, 1, '2025-06-24 00:00:00', FALSE, '2025-06-17 00:00:00', '2025-06-24 00:00:00', 3.0, NULL, 594, 'images/L_oreille_glacee.jpg', NULL, NULL, 'Les aventures de Saint-Tin et son ami Lou', 3, '', NULL),
(1239, 0, 2, 2022, 'Les eaux de sous le monde', NULL, 1, 1, '2025-07-04 00:00:00', TRUE, '2025-06-25 00:00:00', '2025-07-11 00:00:00', 4.0, NULL, 573, 'images/Les-eaux-de-sous-le-monde.jpg', 'Pendant qu''il enquête sur d''étranges apparitions, le mage Peyr Romo est confronté à une entité qui terrifie deux ordres religieux de moniales. La rivalité qui oppose ces communautés émerge et Peyr se voit contraint d''user de ses pouvoirs et de diplomatie pour découvrir les origines de l''entité puis la vaincre.', NULL, NULL, 0, '', NULL),
(1240, 0, 86, 0, 'La mort immortelle', NULL, 2, 1, '2025-07-25 00:00:00', TRUE, '2025-07-12 00:00:00', '2025-08-17 00:00:00', 4.0, NULL, 575, 'images/La-Mort-immortelle.jpg', 'Un demi-siècle après l''Ultime Bataille, l''équilibre entre Terriens et envahisseurs trisolariens dû à la dissuasion de la forêt sombre reste précaire. Malgré tout, l''espoir grandit d''une coexistence entre les deux civilisations, sans la terrible menace d''une annihilation réciproque.
Mais lorsqu''une ingénieure en aéronautique originaire du début du XXIe siècle sort de son hibernation, elle réveille avec elle le souvenir d''un programme qui confronte l''humanité à un choix crucial : partir à la conquête d''autres univers ou mourir dans son berceau...', NULL, 'le problème à trois corps', 3, '', NULL),
(1241, 0, 67, 0, 'L''enfant de poussière', NULL, 1, 1, '2025-09-11 00:00:00', TRUE, '2025-08-18 00:00:00', '2025-09-10 00:00:00', NULL, NULL, 607, 'images/L-enfant-de-pouiere.jpg', 'La mort du roi et l''éclatement politique qui s''ensuit plongent les primautés de Brune dans le chaos.Orphelin des rues qui ignore tout de ses origines, Syffe grandit à Corne-Brune, une ville isolée sur la frontière sauvage.Là, il survit librement de rapines et de corvées, jusqu''à ce que les tempêtes qui secouent le vieux monde finissent par chavirer le sien, et que son destin fourche à tout jamais.L''enfant de poussière ouvre Le cycle de Syffe, grande saga de fantasy portée par l''écriture puissante de Patrick K. Dewdney. Il a reçu le Grand Prix de l''Imaginaire, le prix Pépite du roman, le prix Libr''à Nous Imaginaire, le prix Julia Verlanger et le prix Imaginaire de la 25? Heure du Livre du Mans.', NULL, 'Le Cycle de Syffe', 1, '', NULL),
(1242, 688, 67, 2018, 'La peste et la vigne', NULL, 1, 1, '2025-09-11 00:00:00', TRUE, '2025-09-10 00:00:00', '2025-10-12 00:00:00', 4.0, NULL, 607, 'images/La-peste-et-la-vigne.jpg', 'Adolescent sans famille, Syffe est réduit à l''esclavage, dans une époque de tourments et de grandes épidémies. Lorsque la peste s''abat sur les mines où il est prisonnier, il trouve l''occasion de prendre la fuite. Une seule idée l''obnubile, retrouver Brindille, son amour d''enfance, captive des énigmatiques Feuillus. Son périple mouvementé au travers des primeautés de Brune le conduira à se faire tour à tour instructeur, vagabond et mercenaire, tandis qu''il assiste, impuissant, aux tourments d''un pays déchiré par la guerre civile. La peste et la vigne poursuit Le cycle de Syffe, grande saga de fantasy portée par l''écriture puissante de Patrick K. Dewdney.', NULL, 'Le cycle de Syffe', 2, '', NULL),
(1243, 0, 3, 0, 'Les montagnes hallucinées', NULL, 5, 1, '2025-10-16 00:00:00', TRUE, '2025-10-12 00:00:00', '2025-10-28 00:00:00', 3.5, NULL, 602, 'images/les_montagnes_hallucinees.jpg', 'Lord Cochrane et son équipage découvrent une chaîne de montagnes, les Cornes du Diable, située au nord du détroit de Magellan. Cette chaîne s''avère être l''entrée d''un immense tunnel qui passe sous la Mer de Drake, et conduit jusqu''à Deception Island, dans l''antarctique. L''audacieux marin assemble son prototype de machine à vapeur, The Rocket, à bord duquel il entame la descente vers ce monde souterrain qui fut jadis la première demeure terrestre de Cthulhu. Mais les Montagnes hallucinées ne sont pas inoccupées. Sous ces montagnes habite encore un peuple ancestral : les Anciens. De plus, une bande de pirates commandée par le capitaine Corrochano, l''ancien ennemi de Cochrane, menace The Sea Wolf et les siens...
Lord Cochrane, Maria Graham et le capitaine Eonet vont affronter des périls mortels lors de ce voyage risqué en terre inconnue !', 'Sympathique roman d''aventure qui se lit vite. Bon descriptif sur les anciens qui depuis des millénaires ont "joué" avec la vie sur Terre et auraient créé les êtres humains et de nombreuses créatures dont les shoggoths. Ces êtres très puissants au départ les esclaves des anciens se sont révoltés contre eux.', 'Cochrane', 4, '', NULL),
(1244, 0, 67, 0, 'Ce qui révèle', NULL, 2, 1, '2025-11-18 00:00:00', TRUE, '2025-10-29 00:00:00', '2025-11-17 00:00:00', 3.0, NULL, 17, 'images/spire3.jpg', 'Pour la Spire, l’âge d’or a commencé. Ses concurrentes la laissent en paix, et sa puissance ne cesse de grandir. Mais pour les navis travaillant pour elle, c’est une autre paire de manches : la Ligue qui les représente est en charpie. Désormais, pour la Compagnie, seul le profit compte.
Peu à peu, la grogne monte chez les pilotes, alors que les décisions contestables se multiplient et que le rêve initial – rallier les planètes oubliées – se dilue sous l’action de Mathy et de son redoutable Buro.
L’espoir d’un avenir plus radieux réside entre les mains des deux fondateurs, Lenoor et Hummel. Mais parviendront-ils à résister aux dangers qui guettent? Sauront-ils préserver l’âme de la Compagnie?', 'Roman intéressant écrit sous la forme de plusieurs nouvelles liées entre elles. Nous pouvons suivre les histoires de création de colonies avec des événements étranges (planète hostile aux colons, rebelles luttant contre l''arrivée de nouveaux colons). En fond de ces histoires, la manipulation du Buro (avec Mathy) est décrite. La conclusion de ce cycle relate la démission de navigateurs de la Spire pour créer une nouvelle compagnie.', 'Spire', 3, '', NULL),
(1245, 756, 67, 2023, 'Le conte de l''assassin', NULL, 1, 1, '2025-12-21 00:00:00', TRUE, '2025-11-18 00:00:00', '2025-12-21 00:00:00', 4.0, NULL, 285, 'images/conte_assassin.jpg', 'Au cours du tournoi de Lyndinas, l''épreuve de force s''est envenimée entre la noblesse restée loyale au duc Ganelon de Bromael et les chevaliers qui ont pris fait et cause pour son épouse répudiée. Des manigances étrangères ont contribué à jeter de l''huile sur le feu... Quels sont les intérêts de la république de Ciudalia au sein du duché ? Pourquoi appuyer les ambitions militaires du duc contre l''Ouromagne ? Quelle est la réelle mission de l''ambassade envoyée à la cour ducale par le Podestat Leonide Ducatore ? Certains des émissaires ne sont-ils pas de réputation douteuse ? Il semble en outre qu''un assassin de la Guilde des Chuchoteurs ait réussi à s''infiltrer parmi eux... Quels ordres criminels sera-t-il amené à exécuter au sein de la noblesse bromalloise, et à quelles fins ? Trilogie de chevalerie où se mêlent affrontements courtois et machinations politiques, Le chevalier aux épines marque le grand retour au Vieux Royaume de Jean-Philippe Jaworski. Le premier tome a reçu le prix Elbakin.net 2023.', 'Excellente deuxième partie axée sur le récit de l''assassin Benvenuto. Toujours aussi cynique et  vicieux, on prend plaisir a lire ses aventures. Le récit termine sur un doute important : la duchesse répudiée a t''elle vraiment été tuée par la carreau d''arbalète de l''assassin ou est-elle juste convalescente ?', 'Le chevalier aux épines', 2, '', NULL),
(1246, 0, 3, 1984, 'Les hérétiques de Dune', NULL, 2, 1, '2025-12-23 00:00:00', TRUE, '2025-12-22 00:00:00', '2026-02-02 00:00:00', 3.5, NULL, 99, 'images/Dune-Tome-5-Les-heretiques-de-Dune-Collector.jpg', 'Dans des mondes futurs, Atréides et Arkonens se disputent l''exploitation de l''épice sur Dune, planète hostile peuplée de Fremens et d''immenses vers attirés par les impulsions des moissonneuses. Alors que les cruels Arkonnens complotent avec l''empereur, Paul Atréides, le fils du duc Leto, semble être le messie attendu par les Fremens.

Des milliers d''années ont passé depuis que Leto II le Tyran, l''Empereur-Dieu, est mort. Sa disparition a entraîné un tourbillon de violences, la Grande Famine, la Dispersion de l''humanité à travers les univers. Mais l''objectif du Tyran a été atteint : la survie de l''humanité. Dune, maintenant appelée Rakis, est revenue à son désert et n''intéresse plus personne depuis que l''on sait synthétiser l''Épice. Mais là-bas, dit-on, une jeune fille, Sheeana, semble pouvoir commander aux vers géants. Et sur tout le pourtour de l''Empire, les Égarés de la Grande Dispersion commencent à revenir sur la planète. Rakis attirera-t-elle de nouveau tous les regards ?', 'Roman assez difficile à lire tant l''écriture de Herbert est ici complexe et mal maitrisée. Les transitions sont très abruptes et il est difficile de comprendre l''histoire. Tout semble peu crédible. Dune à la fin du roman est détruite sans que l''auteur ne rentre dans les détails. Roman qui m''a déçu et que j''ai trouvé pénible à lire.', 'Dune', 5, '', NULL),
(1247, 0, 67, 2021, 'Les chiens et la charrue', NULL, 1, 1, '2026-03-13 00:00:00', TRUE, '2026-02-03 00:00:00', '2026-03-13 00:00:00', 3.5, NULL, 607, 'images/chiens_et_charrue.jpg', 'En fuite, plus seul que jamais, Syffe erre de village en village, de bouteille en bouteille, en attendant d''en finir. Mais le destin en a décidé autrement et une rencontre opportune pousse le jeune homme sur les eaux du fleuve qui l''a vu grandir, en compagnie d''un couple de contrebandiers. Son périple à travers les primeautés de Brune le conduira à intégrer un groupe de ferrailleurs éclectiques aux ordres d''un puissant seigneur. Au coeur des manoeuvres politiques d''un pays en proie à la méfiance et divisé par les luttes intestines, Syffe parviendra-t-il à reprendre le contrôle de son existence ? Les chiens et la charrue poursuit Le cycle de Syffe, grande saga de fantasy portée par l''écriture puissante de Patrick K. Dewdney.', NULL, 'Le cycle de Syffe', 3, '', NULL),
(1248, 0, 89, 2011, 'Les Six Gardes du phare Amon', NULL, 12, 1, '2026-03-19 00:00:00', TRUE, '2026-03-14 00:00:00', '2026-03-19 00:00:00', 3.0, NULL, 594, 'images/six_gardes_du_phare_amon.jpg', 'Saint-Tin se rapprocherait-il enfin de ses origines ? Un témoin capital aurait des révélations à lui faire sur sa mère... Le voila donc parti pour le pays des pires amibes. Mais les infâmes microbes ne sont pas toujours ceux que l''on croit et une fois encore le rasta Populiste se dresse sur la route du reporter. C''est en portant secours à l''étrange Philémon Mignon que Saint-Tin découvrira l''olive de la jungle, une mystérieuse plante aux propriétés diaboliques ! Il lui faudra aussi lutter contre le terrible fakir royal du maharadja Dlamouk''ehr et son organisation secrète...', NULL, 'Les Aventures de Saint-Tin et son ami Lou', 12, '', NULL),
(1249, 0, 67, 2024, 'Le débat des dames', NULL, 5, 1, '2026-04-25 00:00:00', TRUE, '2026-04-15 00:00:00', '2026-05-14 00:00:00', 4.0, NULL, 285, 'images/le_debat_des_dames.jpg', 'Le Débat des dames est le troisième et dernier tome de la trilogie Le Chevalier aux épines de Jean-Philippe Jaworski>, publié en janvier 2024.  Il conclut la saga du Vieux Royaume en resserrant les fils narratifs précédemment développés. 

Voici les éléments clés du résumé :

Contexte géopolitique : Profitant des querelles internes au sein de la famille ducale, les clans d’Ouromagne déclarent la guerre au duché de Bromael. 
Rôle d’Ædan de Vaumacel : Le chevalier de Vaumacel, héros du premier tome, se retrouve pris dans ces conflits et doit participer aux pourparlers diplomatiques entre les belligérants.  Son objectif principal reste de restaurer son honneur et celui de la duchesse déchue (Audéarde de Bromael), dont les rumeurs les plus contradictoires circulent. 
Les Aventureux du Bois oiselé : Vaumacel compte sur l''appui de ces compagnons, bien qu''ils se livrent à un jeu équivoque et incertain entre les différents partis en guerre. 
Mystères et Magie : L''intrigue s''alourdit de forces occultes. Des enchantements subtils sont tissés dans l''ombre, révélant l''influence d''un culte interdit (le Culte du Desséché), la mémoire d''un mage disparu, et l''intervention d''une belle dame sans pitié.  Le tome explore les tensions entre l''amour courtois, l''honneur chevaleresque et une féminité aux pouvoirs destructeurs.', 'A nouveau, c''est prenant, très bien écrit (malgré quelques longueurs).
La fin est cependant trés abrupte et mystérieuse : Adéarde qui n ''est plus vraiment vivante (car ressuscitée entre les morts par des cultistes du Desséché) est kidnapée du château par le chevalier de Vaumacel puis confiée pour etre enfin inhumée par le Desséché. L''on ne sait pas ce que devient le chevalier de Vaumacel.', 'Le chevalier aux épines', 3, '', NULL),
(1250, 703, 67, 2019, 'Colonies', NULL, 2, 2, '2026-05-27 00:00:00', TRUE, '2026-05-15 00:00:00', '2026-05-31 00:00:00', 4.0, NULL, 17, 'images/colonies.jpg', 'Dix récits. Dix histoires de colonies futures, planétaires ou spatiales. Et huit lettres pour un mot qui porte en lui l''essence du space opera. Que Laurent Genefort revisite en maître via la multipolarité de son sujet : l''imaginaire colonial, l''idéologie coloniale, l''aventure coloniale, les horreurs coloniales…

La nature humaine sous l''éclairage de soleils exotiques et lointains, en somme. Le cœur battant de la science-fiction.', 'Très bon recueil de nouvelles

1) « Le lot n°97 » : un jeune homme est tellement fasciné par une œuvre d’art extraterrestre qu’il fait transformer son apparence physique par un série d’opérations chirurgicales pour lui ressembler…

2) « Le Dernier salinkar » : le « héros » tue les chasseurs qui s’en prennent à une espèce en voie de disparition.

3) « Le Bris » : une planète est recouverte par un océan animé qui, s’il prenait conscience des de leur présence, les anéantirait sans pitié.

4) « Je me souviens d’Opulence » : Genefort reprend un procédé d’écriture anaphorique employé par Perec pour décrire le déroulement de la vie d’un colon sur la planète Opulence.

5) « Le Jardin aux mélodies » : la cultivatrice de fleurs chantantes a mystérieusement disparu…

6) « Longue vie » : les quelques colons restés sur un astéroïde se livrent une guerre impitoyable.

7) « T’ien-Keou » : dans un monde où s’est constituée une société qui fait coexister technologie et traditions extrême-orientales, un jeune homme ambitieux et sans scrupule se prépare à une terrible épreuve pour devenir membre d’un clan ; ce récit ( l’un de mes préférés) a d’ailleurs été adapté en bande dessinée.

8) « La fin de l’hiver » : des habitants d’un immense artefact, dont le fonctionnement s’est dégradé au point que la température est devenue glaciale, essaient de s’en échapper.

9) : « Proche-horizon : une ambassadrice tente de vendre un procédé qui permettrait aux humains associés à des pseudo-insectes en symbiose de s’en rendre maîtres.

10 « L’Homme qui n’existait plus » (court roman) : le responsable d’une station spatiale qui vient d’être abandonnée est retenu par un mystérieux persécuteur qui joue avec lui comme un chat avec une souris.', NULL, 0, '', NULL),
(1251, 13605, 2, 2016, 'N''oublie jamais', NULL, 1, 1, '2026-06-29 00:00:00', TRUE, '2026-06-15 00:00:00', '2026-07-11 00:00:00', 4.0, NULL, 608, 'images/nevernight1.jpg', 'Fille d’un renégat dont la rébellion a avorté, Mia Corvere a réchappé de justesse à l’extermination des siens. Livrée à elle-même, elle erre dans une ville bâtie sur les ossements d’un dieu mort, traquée par le Sénat et les anciens camarades de son père. À seize ans, elle va devenir l’une des apprentis du groupe d’assassins le plus dangereux de toute la République : L’Église rouge. Dans cette institution où les trahisons et les confrontations violentes sont monnaies courantes, l’échec est puni de mort. Mais si elle survit à son initiation, elle fera partie des élus de Notre-Dame du Saint-Meurtre et se rapprochera un peu plus de son unique raison de vivre : la vengeance.', NULL, 'Nevernight', 1, '', NULL),
(1252, 7414, 3, 2025, 'next', NULL, 5, 1, '2026-07-11 00:00:00', FALSE, NULL, NULL, NULL, NULL, 588, '', NULL, NULL, NULL, 0, '', NULL),
(1253, 7414, 3, 2025, 'La fille du feu', NULL, 5, 1, '2026-07-11 00:00:00', TRUE, '2026-07-11 00:00:00', '2026-07-21 00:00:00', 2.5, NULL, 588, 'images/wellenstein-aurelie-la-fille-du-feu_1.webp', 'Mia a tout perdu, sa famille, ses amis, son foyer. La petite fille erre dans les plaines du Grand Nord, bien loin du bush australien dont elle est originaire. En elle, un feu brûle, puissant et indomptable.
Quelques kilomètres plus loin, sous les tatouages d''animaux qui recouvrent son corps, Nathanaël cache les cicatrices et le traumatisme liés à l''incendie qui l''a happé, enfant. Le musicien est venu dans le village inuit d''Ilussuaq découvrir les traditions orales qui menacent de disparaître.
Son guide, Cadzow, apprécie cet homme qui veut préserver le chant des siens. Mais sous ses dehors impassibles, il est lui aussi marqué par le feu.
Lorsque Cadzow abat un ours affamé rôdant dans le village, les destinées de ces trois êtres écorchés entrent en collision. La traque sera sans merci, le feu consumera tout sur son passage.

Un roman onirique, hypnotique, qui raconte la souffrance de la nature face à la machine humaine, et porte une voix d''espoir.', 'Roman assez décevant car peu original. On a du mal à croire à cette histoire avec cette fille qui concentre le feu et les esprits animaux de la foret. Le roman très court se concentre sur 3 personnages en une sorte de huis clos psychologique.', NULL, 0, '', NULL),
(1254, 0, 91, 2021, 'Le cavalier du 7ème jour', NULL, 6, 1, '2026-07-31 00:00:00', TRUE, '2026-07-21 00:00:00', '2026-07-29 00:00:00', NULL, NULL, 3, 'images/Le-cavalier-du-septieme-jour.jpg', 'A Pueblo Quito, une localité frontalière du sud des Etats-Unis, une communauté défavorisée survit grâce aux retombées du commerce de la drogue. C''est également là qu''ont échoué nombre d''individus au passé tragique. A Pueblo Quito, tout le monde a quelque chose à cacher : crimes, trahisons, rêves absurdes, fantasmes sulfureux... Tout le monde a l''habitude de regarder anxieusement par-dessus son épaule pour vérifier que personne ne l''a pris en filature. Dans ce creuset en ébullition s''agite une population hantée par des peurs...', NULL, NULL, 0, '', NULL);


INSERT INTO "livres_pays" ("id", "nom") VALUES
(1, 'France'),
(2, 'Angleterre'),
(3, 'Etats-Unis'),
(4, 'Espagne'),
(5, 'Allemagne'),
(6, 'Italie'),
(7, 'Suisse'),
(8, 'Belgique'),
(9, 'Tchécoslovaquie'),
(10, 'Russie'),
(11, 'Ecosse'),
(12, 'non defini'),
(13, 'Pologne'),
(14, 'Suede'),
(15, 'Argentine'),
(16, 'Pays de Galles'),
(17, 'Chine'),
(18, 'Canada'),
(19, 'Australie'),
(20, 'Danemark'),
(21, 'Chili');

INSERT INTO "livres_typelivre" ("id", "type") VALUES
(1, 'Roman'),
(2, 'Receuil de nouvelles'),
(3, 'Receuil de nouvelles2'),
(4, 'Receuil de nouvelles3'),
(5, 'Receuil de nouvelles4'),
(6, 'Receuil de nouvelles5');


SET session_replication_role = 'origin';

-- Synchronize identity sequences with loaded data
SELECT setval(pg_get_serial_sequence('livres_auteur', 'id'), COALESCE((SELECT MAX("id") FROM "livres_auteur"), 1), true);
SELECT setval(pg_get_serial_sequence('livres_editeur', 'id'), COALESCE((SELECT MAX("id") FROM "livres_editeur"), 1), true);
SELECT setval(pg_get_serial_sequence('livres_genre', 'id'), COALESCE((SELECT MAX("id") FROM "livres_genre"), 1), true);
SELECT setval(pg_get_serial_sequence('livres_illustrateur', 'id'), COALESCE((SELECT MAX("id") FROM "livres_illustrateur"), 1), true);
SELECT setval(pg_get_serial_sequence('livres_livres', 'id'), COALESCE((SELECT MAX("id") FROM "livres_livres"), 1), true);
SELECT setval(pg_get_serial_sequence('livres_pays', 'id'), COALESCE((SELECT MAX("id") FROM "livres_pays"), 1), true);
SELECT setval(pg_get_serial_sequence('livres_typelivre', 'id'), COALESCE((SELECT MAX("id") FROM "livres_typelivre"), 1), true);