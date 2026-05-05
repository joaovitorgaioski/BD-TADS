/* 2: Geração de dados usando um gerador de dados automático */

/* Inserção na tbDiretor */
INSERT INTO tbdiretor (nome_diretor) VALUES
("Pedro Paulo Matos"),
("Jorge da Penha"),
("Severino Juca"),
("Tim Burton"),
("Rob Zombie"),
("Quentin Tarantino");

/* Inserção na tbSala */
INSERT INTO tbsala (numero_sala, descricao_sala, capacidade) VALUES
 (1, 'feugiat non pretium ', 70),
 (2, 'lacus purus aliquet ', 112),
 (3, 'nec condimentum nequ', 38),
 (4, 'eros elementum pelle', 106),
 (5, 'adipiscing lorem', 107),
 (6, 'luctus cum', 112),
 (7, 'nam nulla integer pe', 82),
 (8, 'elementum nullam var', 52),
 (9, 'lacinia aenean sit a', 250),
 (10, 'condimentum curabitu', 45),
 (11, 'nisi vulputate nonum', 73),
 (12, 'pede libero quis', 105),
 (13, 'vehicula condimentum', 139),
 (14, 'sed tincidunt eu fel', 96),
 (15, 'justo aliquam quis t', 122),
 (16, 'nulla nisl nunc nisl', 184),
 (17, 'nisi venenatis trist', 114),
 (18, 'eu massa donec dapib', 169),
 (19, 'libero non mattis pu', 153),
 (20, 'ac lobortis vel', 134),
 (21, 'tortor id nulla ultr', 175),
 (22, 'faucibus orci luctus', 79),
 (23, 'ipsum dolor sit amet', 64),
 (24, 'in sagittis dui vel ', 193),
 (25, 'id massa id nisl ven', 109),
 (26, 'odio cras mi pede ma', 59),
 (27, 'in faucibus orci luc', 210),
 (28, 'eu tincidunt in leo ', 87),
 (29, 'mattis egestas', 84),
 (30, 'rutrum at lorem', 169),
 (31, 'turpis a pede posuer', 130),
 (32, 'feugiat non pretium ', 182),
 (33, 'pede venenatis non s', 95),
 (34, 'nulla eget eros elem', 82),
 (35, 'praesent lectus vest', 77),
 (36, 'curae duis faucibus ', 182),
 (37, 'elit proin interdum ', 178),
 (38, 'quis orci eget orci ', 44),
 (39, 'sapien a libero nam', 40),
 (40, 'tincidunt nulla', 104),
 (41, 'nam nulla integer pe', 81),
 (42, 'dolor sit amet conse', 115),
 (43, 'sociis natoque penat', 280),
 (44, 'sapien placerat ante', 187),
 (45, 'mollis molestie lore', 133),
 (46, 'aliquet pulvinar sed', 135),
 (47, 'ultrices posuere cub', 57),
 (48, 'ullamcorper purus si', 57),
 (49, 'sit amet justo morbi', 177),
 (50, 'donec ut dolor morbi', 108),
 (51, 'in leo maecenas pulv', 82),
 (52, 'nisl venenatis lacin', 134),
 (53, 'diam in magna bibend', 95),
 (54, 'sapien arcu sed augu', 200),
 (55, 'vel enim sit amet nu', 147),
 (56, 'nulla quisque arcu l', 52),
 (57, 'quam pede lobortis l', 171),
 (58, 'donec diam', 159),
 (59, 'erat quisque erat er', 126),
 (60, 'vel pede morbi portt', 50),
 (61, 'aliquam sit amet dia', 106),
 (62, 'tristique fusce cong', 55),
 (63, 'est congue elementum', 65),
 (64, 'vestibulum sit amet ', 155),
 (65, 'phasellus sit amet e', 197),
 (66, 'nulla nunc purus pha', 59),
 (67, 'mauris sit', 82),
 (68, 'posuere felis sed la', 183),
 (69, 'nulla neque libero', 112),
 (70, 'pharetra magna vesti', 132),
 (71, 'libero rutrum ac lob', 141),
 (72, 'vulputate luctus cum', 205),
 (73, 'eget tincidunt eget ', 155),
 (74, 'elementum pellentesq', 119),
 (75, 'varius ut', 139),
 (76, 'sed magna at nunc co', 57),
 (77, 'diam vitae quam susp', 69),
 (78, 'libero rutrum', 158),
 (79, 'orci vehicula condim', 159),
 (80, 'nulla facilisi cras ', 146),
 (81, 'quisque ut erat cura', 187),
 (82, 'pretium quis', 162),
 (83, 'quam a odio in hac h', 111),
 (84, 'suspendisse potenti ', 63),
 (85, 'tellus semper interd', 245),
 (86, 'ut suscipit a feugia', 122),
 (87, 'a nibh in', 199),
 (88, 'lobortis est phasell', 86),
 (89, 'nulla neque libero c', 154),
 (90, 'leo rhoncus sed vest', 172),
 (91, 'amet turpis elementu', 51),
 (92, 'velit vivamus vel', 41),
 (93, 'id nisl', 81),
 (94, 'sed vel', 37),
 (95, 'consequat dui nec', 52),
 (96, 'sed sagittis nam con', 290),
 (97, 'odio cras mi pede ma', 111),
 (98, 'justo sit', 67),
 (99, 'eu orci mauris lacin', 60),
 (100, 'in faucibus orci luc', 260);

/* Inserção na tbFilme */
INSERT INTO tbfilme (codigo_filme, nome_filme, ano_lancamento, codigo_diretor) VALUES 
 (1, 'The Last Five Years', 1999, 6),
 (2, 'Horror Hotel (a.k.a. City of the Dead, The)', 1988, 6),
 (3, 'Bruiser', 2004, 1),
 (4, 'Romancing the Stone', 1997, 3),
 (5, 'Bridges of Madison County, The', 2001, 5),
 (6, 'Flood', 1999, 1),
 (7, 'D.O.A.', 1999, 6),
 (8, 'Witch Who Came From the Sea, The', 1994, 5),
 (9, 'Lincoln Lawyer, The', 2005, 3),
 (10, 'American Virgin', 2011, 1),
 (11, 'Monkey Business', 1991, 3),
 (12, 'Piranha II: The Spawning', 1997, 4),
 (13, 'Salomè', 2011, 5),
 (14, 'Score, The', 2000, 3),
 (15, 'Ménage (Tenue de soirée)', 1993, 3),
 (16, 'Hush... Hush, Sweet Charlotte', 2005, 5),
 (17, 'Ernest Saves Christmas', 2006, 6),
 (18, 'All the Invisible Children', 1987, 5),
 (19, 'Overnight', 2008, 1),
 (20, 'Edge of the World, The', 2006, 3),
 (21, 'Scooby-Doo! The Mystery Begins', 1997, 4),
 (22, 'Fiddle-de-dee', 2012, 3),
 (23, 'Video Games: The Movie', 1994, 4),
 (24, 'Critical Condition', 1995, 6),
 (25, 'Shining Night: A Portrait of Composer Morten Lauri', 2011, 4),
 (26, 'Benji the Hunted', 2002, 6),
 (27, 'Machete', 2006, 1),
 (28, 'Floating Skyscrapers', 2000, 6),
 (29, 'Spanking the Monkey', 1998, 3),
 (30, 'Brothers Bloom, The', 2011, 6),
 (31, 'Titanic', 2002, 3),
 (32, 'Batman Forever', 1993, 4),
 (33, 'Katt Williams: The Pimp Chronicles Pt. 1', 2003, 2),
 (34, 'Reign Over Me', 2005, 1),
 (35, 'Education for Death', 1985, 5),
 (36, 'Pretty Good for a Human (People Not as Bad as They', 1994, 6),
 (37, 'Gangster No. 1', 1968, 6),
 (38, 'The Man in Possession', 2002, 6),
 (39, 'Beyond the Mind''s Eye', 2002, 1),
 (40, 'Man Called Peter, A', 2002, 4),
 (41, 'Baron Blood (Orrori del castello di Norimberga, Gl', 2005, 3),
 (42, 'Urban Ghost Story', 2005, 3),
 (43, 'King David', 2006, 6),
 (44, 'In the Bedroom', 1993, 5),
 (45, 'Persona non grata', 2011, 2),
 (46, 'Lucky Lady', 1996, 3),
 (47, 'Robots', 2008, 5),
 (48, 'Mail Order Bride', 1990, 4),
 (49, 'As Good as It Gets', 1998, 1),
 (50, 'Tormented', 1987, 4),
 (51, 'Golden Gate', 1996, 3),
 (52, 'Born to Fight', 1968, 3),
 (53, 'Hanussen', 1994, 4),
 (54, 'Mega Shark vs. Crocosaurus', 2012, 6),
 (55, 'Child of Rage', 1985, 5),
 (56, 'Hoffa', 2004, 2),
 (57, 'Final: The Rapture', 2007, 4),
 (58, 'Westerner, The', 2009, 1),
 (59, 'Get Educated: Paathshaala', 2008, 5),
 (60, 'Legend of the Black Scorpion (a.k.a. The Banquet) ', 2012, 4),
 (61, 'Household Saints', 2002, 3),
 (62, 'The Third Half', 1990, 2),
 (63, 'Kinyarwanda', 1991, 4),
 (64, 'Echoes of the Rainbow (Sui yuet san tau)', 2010, 5),
 (65, 'Shiver (Eskalofrío)', 2010, 1),
 (66, 'Marjorie Morningstar', 1990, 3),
 (67, 'Ray Harryhausen: Special Effects Titan', 2002, 4),
 (68, 'Bliss', 1967, 4),
 (69, 'Sin of Madelon Claudet, The', 2002, 6),
 (70, 'Generation P', 1989, 4),
 (71, 'Front Page, The', 1997, 1),
 (72, 'David and Lisa', 2009, 6),
 (73, 'Carnage', 1991, 2),
 (74, 'Once Upon a Time in China (Wong Fei Hung)', 2009, 4),
 (75, 'Project X', 2004, 2),
 (76, 'Analyze That', 1994, 3),
 (77, 'Vision (Vision - Aus dem Leben der Hildegard von B', 2010, 3),
 (78, 'Wind, The', 2004, 3),
 (79, 'Tracers', 2003, 6),
 (80, 'April''s Shower', 1992, 3),
 (81, 'Some Girls', 2002, 2),
 (82, 'Manufactured Landscapes', 2000, 6),
 (83, 'Castle in the Desert (Charlie Chan in Castle in th', 1995, 3),
 (84, 'Night Court', 1998, 1),
 (85, 'Lasa y Zabala', 1998, 1),
 (86, 'Four Nights with Anna (Cztery noce z Anna)', 2000, 2),
 (87, 'Big Stan', 2012, 5),
 (88, 'The War', 1990, 5),
 (89, 'C.S.A.: The Confederate States of America', 1998, 5),
 (90, 'Collateral', 2005, 6),
 (91, 'The Night Evelyn Came Out of the Grave', 1997, 5),
 (92, 'Frank McKlusky, C.I.', 1986, 2),
 (93, 'Cypher', 2005, 4),
 (94, 'Son of Rambow', 1994, 5),
 (95, 'Jack the Bear', 1993, 3),
 (96, 'Osama', 1993, 1),
 (97, 'Mad Monster Party?', 2007, 1),
 (98, 'Between Your Legs (Entre las piernas)', 2005, 5),
 (99, 'Devour', 2009, 5),
 (100, 'Skylark', 1996, 5);

/* Inserção na tbPremio */
INSERT INTO tbpremio (codigo_premio, nome_premio, ano_premiacao, codigo_filme) VALUES
 (1, 'Bytecard', 1995, 88),
 (2, 'Temp', 2001, 57),
 (3, 'Zontrax', 1992, 78),
 (4, 'Matsoft', 1987, 82),
 (5, 'Hatity', 2007, 66),
 (6, 'Cardify', 1995, 32),
 (7, 'Andalax', 1985, 80),
 (8, 'Fintone', 2010, 74),
 (9, 'Quo Lux', 2005, 89),
 (10, 'Redhold', 2017, 63),
 (11, 'Flexidy', 1998, 28),
 (12, 'Toughjoyfax', 1995, 46),
 (13, 'Alphazap', 2001, 65),
 (14, 'Trippledex', 1999, 11),
 (15, 'Bamity', 2017, 72),
 (16, 'Vagram', 2002, 70),
 (17, 'Temp', 1993, 77),
 (18, 'Ventosanzap', 1994, 100),
 (19, 'Zathin', 2015, 94),
 (20, 'Quo Lux', 1999, 41),
 (21, 'Flexidy', 1996, 75),
 (22, 'Zoolab', 2000, 61),
 (23, 'Kanlam', 1999, 24),
 (24, 'Matsoft', 2018, 47),
 (25, 'Cardguard', 2007, 7),
 (26, 'Ronstring', 2001, 61),
 (27, 'Zoolab', 1995, 33),
 (28, 'Andalax', 2000, 69),
 (29, 'Holdlamis', 2015, 50),
 (30, 'Tresom', 2011, 57),
 (31, 'Mat Lam Tam', 2004, 31),
 (32, 'Stim', 1990, 74),
 (33, 'Tempsoft', 2012, 47),
 (34, 'Bitwolf', 1996, 76),
 (35, 'It', 1995, 31),
 (36, 'Biodex', 2015, 64),
 (37, 'Matsoft', 2010, 13),
 (38, 'Trippledex', 1965, 53),
 (39, 'Overhold', 2016, 43),
 (40, 'Quo Lux', 2011, 72),
 (41, 'Stringtough', 1997, 39),
 (42, 'Vagram', 1995, 73),
 (43, 'Zontrax', 1993, 45),
 (44, 'Stringtough', 2008, 18),
 (45, 'Hatity', 2002, 39),
 (46, 'Y-find', 2015, 10),
 (47, 'Veribet', 2010, 47),
 (48, 'Y-find', 2009, 97),
 (49, 'Span', 2011, 87),
 (50, 'Latlux', 1998, 40),
 (51, 'Solarbreeze', 1985, 29),
 (52, 'Bytecard', 1988, 13),
 (53, 'Aerified', 2000, 68),
 (54, 'Regrant', 2005, 82),
 (55, 'Zathin', 2015, 77),
 (56, 'Alphazap', 2016, 73),
 (57, 'Sonsing', 2012, 50),
 (58, 'Cardguard', 1997, 21),
 (59, 'Fixflex', 1994, 36),
 (60, 'Opela', 1992, 96),
 (61, 'Matsoft', 2004, 36),
 (62, 'Bytecard', 1998, 65),
 (63, 'Bigtax', 2006, 93),
 (64, 'Overhold', 2009, 83),
 (65, 'Temp', 2006, 87),
 (66, 'Bitwolf', 2001, 67),
 (67, 'Temp', 1984, 94),
 (68, 'Y-Solowarm', 1985, 99),
 (69, 'Prodder', 1993, 82),
 (70, 'Fix San', 2009, 73),
 (71, 'Zoolab', 2006, 65),
 (72, 'Sonair', 2000, 73),
 (73, 'Regrant', 2005, 94),
 (74, 'Keylex', 1991, 90),
 (75, 'Sub-Ex', 2011, 68),
 (76, 'Tin', 2000, 47),
 (77, 'Overhold', 1989, 97),
 (78, 'Regrant', 1989, 33),
 (79, 'Home Ing', 2000, 69),
 (80, 'Cardify', 2009, 10),
 (81, 'Bigtax', 2000, 85),
 (82, 'Sub-Ex', 1991, 73),
 (83, 'Keylex', 1996, 21),
 (84, 'Hatity', 2012, 53),
 (85, 'Viva', 2004, 13),
 (86, 'Voltsillam', 1999, 34),
 (87, 'Sonsing', 1993, 55),
 (88, 'Otcom', 1992, 17),
 (89, 'Mat Lam Tam', 1998, 43),
 (90, 'Tresom', 2005, 62),
 (91, 'Job', 2004, 75),
 (92, 'Tresom', 2004, 17),
 (93, 'Zathin', 1989, 42),
 (94, 'Sonsing', 2007, 4),
 (95, 'Veribet', 1992, 95),
 (96, 'Rank', 1997, 49),
 (97, 'Gembucket', 2004, 66),
 (98, 'Cardguard', 2017, 20),
 (99, 'Sonair', 1996, 39),
 (100, 'Redhold', 2017, 73);

/* Inserção na tbSalaFilme */
INSERT INTO tbsalafilme (numero_sala, codigo_filme, data, horario) VALUES
 (90, 4, '2010-09-18', '00:09:39'),
 (28, 63, '2005-08-18', '17:39:23'),
 (76, 77, '2019-04-20', '00:36:14'),
 (36, 25, '2010-06-30', '21:23:38'),
 (31, 98, '2019-05-09', '01:50:31'),
 (76, 98, '2019-04-20', '09:20:42'),
 (77, 90, '2009-07-13', '19:22:07'),
 (76, 77, '2010-10-22', '13:33:27'),
 (91, 26, '2010-06-12', '05:11:04'),
 (3, 41, '2016-03-23', '22:20:41'),
 (70, 24, '2012-02-11', '04:33:28'),
 (84, 67, '2008-02-20', '17:24:54'),
 (29, 62, '2017-10-28', '09:27:32'),
 (35, 26, '2019-04-20', '21:35:54'),
 (12, 93, '2019-11-15', '11:36:28'),
 (10, 87, '2017-02-11', '08:21:42'),
 (84, 30, '2005-06-29', '03:37:14'),
 (54, 70, '2021-01-06', '14:00:39'),
 (100, 78, '2025-08-09', '13:32:46'),
 (79, 34, '2010-06-01', '12:33:14'),
 (30, 99, '2017-10-21', '23:53:49'),
 (82, 11, '2018-01-22', '18:00:16'),
 (90, 90, '2024-11-11', '01:09:22'),
 (54, 33, '2022-07-10', '09:17:27'),
 (60, 22, '2000-04-26', '21:25:56'),
 (4, 95, '2003-12-12', '12:37:14'),
 (11, 53, '2019-05-28', '19:45:46'),
 (55, 92, '2018-09-11', '22:57:16'),
 (57, 10, '2007-02-20', '11:14:21'),
 (93, 62, '2003-09-12', '04:40:13'),
 (64, 25, '2015-12-30', '00:48:57'),
 (72, 2, '2021-02-20', '13:36:06'),
 (64, 32, '2014-06-04', '01:08:11'),
 (20, 60, '2003-11-30', '07:54:11'),
 (32, 4, '2016-03-29', '04:04:02'),
 (55, 2, '2022-06-20', '07:37:26'),
 (85, 99, '2016-04-11', '19:16:36'),
 (12, 82, '2019-11-15', '12:39:46'),
 (63, 4, '2010-10-27', '05:27:41'),
 (43, 74, '2019-04-20', '13:44:07'),
 (66, 79, '2017-02-22', '03:29:12'),
 (89, 10, '2020-04-10', '16:13:19'),
 (45, 10, '2019-05-30', '12:56:15'),
 (17, 89, '2004-04-20', '20:21:22'),
 (90, 22, '2009-01-27', '03:14:13'),
 (74, 22, '2019-05-01', '13:27:51'),
 (3, 75, '2007-01-13', '15:36:22'),
 (25, 28, '2021-10-12', '08:24:17'),
 (19, 17, '2023-08-28', '15:16:16'),
 (3, 35, '2010-06-20', '10:51:58'),
 (68, 1, '2024-12-21', '06:24:09'),
 (50, 6, '2017-08-01', '23:49:00'),
 (57, 38, '2008-07-30', '12:26:05'),
 (13, 28, '2001-10-24', '03:18:33'),
 (29, 20, '2000-10-13', '03:43:51'),
 (87, 48, '2003-06-05', '02:41:02'),
 (30, 54, '2013-03-11', '06:23:33'),
 (18, 69, '2001-09-15', '16:42:48'),
 (87, 40, '2004-04-20', '04:47:54'),
 (28, 61, '2025-01-15', '16:13:58'),
 (93, 20, '2018-09-04', '07:00:23'),
 (2, 61, '2023-04-06', '05:04:53'),
 (24, 39, '2019-11-15', '17:32:55'),
 (62, 66, '2003-09-06', '06:18:42'),
 (43, 46, '2021-06-23', '04:45:10'),
 (52, 71, '2000-04-29', '10:53:43'),
 (67, 93, '2019-05-11', '06:09:29'),
 (68, 68, '2002-02-21', '15:51:37'),
 (38, 58, '2025-05-05', '17:18:45'),
 (27, 66, '2026-02-27', '12:18:12'),
 (5, 4, '2011-01-20', '19:10:03'),
 (30, 72, '2013-10-30', '21:19:42'),
 (30, 5, '2015-05-09', '04:25:03'),
 (95, 54, '2013-01-08', '00:25:55'),
 (53, 81, '2014-06-16', '10:35:01'),
 (93, 42, '2004-10-24', '07:19:05'),
 (32, 43, '2012-07-20', '21:47:09'),
 (27, 10, '2018-11-22', '05:21:19'),
 (85, 18, '2004-07-10', '16:00:50'),
 (53, 81, '2019-01-21', '00:26:38'),
 (46, 90, '2015-12-31', '15:31:10'),
 (3, 42, '2019-07-15', '08:04:40'),
 (96, 6, '2023-09-07', '11:46:49'),
 (12, 8, '2013-02-04', '05:33:21'),
 (70, 64, '2021-04-05', '11:48:05'),
 (47, 86, '2017-12-19', '11:44:42'),
 (65, 96, '2009-07-26', '14:46:24'),
 (12, 20, '2019-11-15', '16:27:59'),
 (97, 37, '2005-11-17', '00:05:02'),
 (91, 79, '2021-05-22', '02:47:33'),
 (100, 32, '2008-12-24', '16:05:42'),
 (71, 5, '2017-11-29', '23:03:30'),
 (38, 50, '2016-07-16', '10:04:41'),
 (45, 46, '2000-08-02', '15:39:39'),
 (94, 29, '2011-06-10', '14:55:12'),
 (60, 31, '2001-12-10', '06:35:09'),
 (46, 18, '2019-12-03', '16:05:59'),
 (70, 78, '2012-12-06', '23:30:43'),
 (8, 17, '2019-11-15', '07:33:35'),
 (67, 44, '2018-09-18', '10:28:04');

/* 3: Update para adicionar categorias na tbFilme */

UPDATE tbfilme
SET categoria_filme = "Terror"
WHERE codigo_filme > 0 AND codigo_filme <= 20;

UPDATE tbfilme
SET categoria_filme = "Comédia"
WHERE codigo_filme > 20 AND codigo_filme <= 40;

UPDATE tbfilme
SET categoria_filme = "Ação"
WHERE codigo_filme > 40 AND codigo_filme <= 60;

UPDATE tbfilme
SET categoria_filme = "Suspense"
WHERE codigo_filme > 60 AND codigo_filme <= 80;

UPDATE tbfilme
SET categoria_filme = "Romance"
WHERE codigo_filme > 80 AND codigo_filme <= 100;

/* 4: Adicionar atributo Produtora na tbFilme */

ALTER TABLE tbfilme
ADD COLUMN produtora VARCHAR(20);

/* 5: Update para adicionar produtoras na tbFilme */

UPDATE tbfilme
SET produtora = "Warner"
WHERE codigo_filme > 0 AND codigo_filme <= 20;

UPDATE tbfilme
SET produtora = "Universal"
WHERE codigo_filme > 20 AND codigo_filme <= 40;

UPDATE tbfilme
SET produtora = "Fox"
WHERE codigo_filme > 40 AND codigo_filme <= 60;

UPDATE tbfilme
SET produtora = "Netflix"
WHERE codigo_filme > 60 AND codigo_filme <= 80;

UPDATE tbfilme
SET produtora = "Sony"
WHERE codigo_filme > 80 AND codigo_filme <= 100;

/* 6: Consulta que retorne o nome de todos os diretores cadastrados na base de dados */

SELECT nome_diretor AS "Diretores"
FROM tbdiretor;

/* 7: Consulta que retorne o nome de todos os filmes da categoria “terror” */

SELECT nome_filme AS "Filmes",
categoria_filme AS "Categoria"
FROM tbfilme
WHERE categoria_filme LIKE "terror";

/* 8: Consulta que retorne o nome de todos os filmes da categoria “terror” do diretor Robie Zombie. */

SELECT f.nome_filme AS "Filmes",
f.categoria_filme AS "Categoria",
d.nome_diretor AS "Diretor"
FROM tbfilme f, tbdiretor d
WHERE d.codigo_diretor = f.codigo_diretor
AND f.categoria_filme LIKE "terror"
AND d.nome_diretor LIKE "Rob Zombie";

/* 9: Atualizar a capacidade da sala de número 8 */

UPDATE tbsala
SET capacidade = 200
WHERE numero_sala = 8;

/* 10: Atualizar filmes da sala 12 no dia 15/11/2019 */

UPDATE tbsalafilme
SET numero_sala = 8
WHERE data LIKE "2019-11-15"
AND numero_sala = 12;

/* 11: Exclua o diretor de nome “Quentin Tarantino”. Como fica a questão de integridade referencial? */

DELETE FROM tbdiretor
WHERE nome_diretor LIKE "Quentin Tarantino";
/*
Da forma que esta definido o banco, não foi utilizado o ON DELETE CASCADE na chave estrangeira
que referencia um diretor na tbFilme. De forma que, ao executar o delete acima, ocorrerá um
erro de integridade referencial, impedindo que a exclusão ocorra
*/

/* 12: Nome de todos os filmes dirigidos pelo diretor “Jorge da Penha” */

SELECT f.nome_filme AS "Filmes",
d.nome_diretor AS "Diretor"
FROM tbfilme f, tbdiretor d
WHERE f.codigo_diretor = d.codigo_diretor
AND d.nome_diretor LIKE "Jorge da Penha";

/* 13: Nome de todos os filmes e horários de exibição para o dia 20/04/2019 */

SELECT f.nome_filme AS "Filme",
sf.horario AS "Horário",
sf.data AS "Data de Exibição"
FROM tbfilme f, tbsalafilme sf
WHERE f.codigo_filme = sf.codigo_filme
AND sf.data LIKE "2019-04-20";

/* 14: Todos os prêmios que o filme “Titanic” ganhou */

SELECT f.nome_filme AS "Filme",
p.nome_premio AS "Prêmio",
p.ano_premiacao AS "Ano"
FROM tbfilme f, tbpremio p
WHERE f.codigo_filme = p.codigo_filme
AND f.nome_filme LIKE "Titanic";

/* 15: Filmes exibidos em sala com mais de 200 lugares */

SELECT f.nome_filme AS "Filme",
s.capacidade AS "Capacidade da Sala",
sf.data AS "Data de Exibição"
FROM tbfilme f, tbsala s, tbsalafilme sf
WHERE sf.codigo_filme = f.codigo_filme
AND sf.numero_sala = s.numero_sala
AND s.capacidade > 200;

/* 16: Nome dos filmes, número da sala e horário de exibição no mês de maio de 2019 */

SELECT f.nome_filme AS "Filmes",
sf.numero_sala AS "Número da Sala",
sf.horario AS "Horário de Exibição",
sf.data AS "Data"
FROM tbfilme f, tbsalafilme sf
WHERE sf.codigo_filme = f.codigo_filme
AND sf.data BETWEEN "2019-05-01" AND "2019-05-31";

/* 17: Filmes que receberam prêmios em 2015, 16, 17 e 18 */

SELECT f.nome_filme AS "Filme",
p.nome_premio AS "Prêmio",
p.ano_premiacao AS "Ano da Premiação"
FROM tbfilme f, tbpremio p
WHERE f.codigo_filme = p.codigo_filme
AND p.ano_premiacao BETWEEN 2015 AND 2018
ORDER BY p.ano_premiacao ASC;

/* 18: Filmes de comédia exibidos em junho de 2010 */

SELECT f.nome_filme AS "Filme",
f.categoria_filme AS "Categoria",
sf.data AS "Data"
FROM tbfilme f, tbsalafilme sf
WHERE sf.codigo_filme = f.codigo_filme
AND f.categoria_filme LIKE "Comédia"
AND sf.data BETWEEN "2010-06-01" AND "2010-06-30";

/* 19: Descrição da sala, a categoria e o nome dos filmes dirigidos por “Severino Juca” */

SELECT s.descricao_sala AS "Descrição da Sala",
f.nome_filme AS "Filme",
f.categoria_filme AS "Categoria do Filme",
d.nome_diretor AS "Diretor do Filme"
FROM tbfilme f, tbsala s, tbdiretor d, tbsalafilme sf
WHERE f.codigo_diretor = d.codigo_diretor
AND sf.codigo_filme = f.codigo_filme
AND sf.numero_sala = s.numero_sala
AND d.nome_diretor LIKE "Severino Juca";

/* 20: Todos os filmes premiados de Tim Burton */

SELECT f.nome_filme AS "Filme Premiado",
f.ano_lancamento AS "Ano de Lançamento",
p.nome_premio AS "Prêmio",
p.ano_premiacao AS "Ano da Premiação",
d.nome_diretor AS "Diretor"
FROM tbfilme f, tbdiretor d, tbpremio p
WHERE f.codigo_diretor = d.codigo_diretor
AND f.codigo_filme = p.codigo_filme
AND d.nome_diretor LIKE "Tim Burton";

/* 21: Alterar as categorias dos filmes de código entre 60 a 70 */

UPDATE tbfilme
SET categoria_filme = "Realidade Virtual"
WHERE codigo_filme BETWEEN 60 AND 70;

/* 22: Mudando ação para ação/aventura */

UPDATE tbfilme
SET categoria_filme = "Ação/Aventura"
WHERE categoria_filme LIKE "Ação";
