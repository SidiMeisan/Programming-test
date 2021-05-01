-- T01 --
SELECT `nm_film`,  `nominasi` FROM `testsql`.`film` ORDER BY `nominasi` DESC;
-- T02 --
SELECT `nm_film`,  `nominasi` FROM `film` ORDER BY `nominasi` DESC LIMIT 1;
-- T03 --
SELECT `nm_film`,  `nominasi` FROM `film` WHERE `nominasi` = 0;
-- T04 --
SELECT `nm_film`,  `pendapatan` FROM `testsql`.`film` ORDER BY `pendapatan` ASC;
-- T05 --
SELECT `nm_film`,  `pendapatan` FROM `testsql`.`film` ORDER BY `pendapatan` DESC LIMIT 1;
-- T06 --
SELECT `nm_film`,  `pendapatan` FROM `testsql`.`film` ORDER BY `pendapatan` ASC LIMIT 1;
-- T07 --
SELECT AVG(pendapatan) AS AveragePendapatan FROM `film`;
-- T08 --
SELECT AVG(nominasi) AS AverageNominasi FROM `film`;
-- T09 --
SELECT `nm_film` FROM `film` WHERE `nm_film` LIKE 'p%';
-- T09 --
SELECT `nm_film` FROM `film` WHERE `nm_film` LIKE '%h';
-- T10 --
SELECT `nm_film` FROM `film` WHERE `nm_film` LIKE '%h';
-- T11 --
SELECT `nm_film` FROM `film` WHERE `nm_film` LIKE '%d%';
-- T12 --
SELECT `nm_film` FROM `film` WHERE `nm_film` LIKE '%d%';
-- T13 --
SELECT `nm_film` FROM `film` WHERE `nm_film` LIKE '%o%' ORDER BY `pendapatan` DESC LIMIT 1;
-- T14 --
SELECT `nm_film` FROM `film` WHERE `nm_film` LIKE '%o%' ORDER BY `pendapatan` ASC LIMIT 1;
-- T15 --
SELECT `film`.`nm_film` FROM `film` JOIN `artis` ON `film`.`artis` = `artis`.`id_artis` join `negara` ON `artis`.`negara` = `negara`.`id_negara` WHERE `negara`.'nama' = 'hongkong';
-- T16 --
-- T17 --
SELECT `film`.`nm_film` FROM `film` JOIN `artis` ON `film`.`artis` = `artis`.`id_artis` ORDER BY `artis`.'award' DESC LIMIT 1;
-- T18 --
SELECT `film`.`nm_film` FROM `film` JOIN `artis` ON  `film`.`artis` = `artis`.`id_artis` ORDER BY `artis`.'bayaran' ASC LIMIT 1;
-- T19 --
SELECT `artis`.`nm_artis` FROM `film` JOIN `artis` NOT ON  `film`.`artis` = `artis`.`id_artis`;
-- T20 --
-- T21 --
-- T22 --
SELECT DISTINCT `artis`.`nm_artis` from artis JOIN `film` ON `artis`.`id_artis` = `film`.`artis` JOIN `genre` ON `film`.`genre` = `genre`.`id_genre` WHERE `genre`.`nm_genre` = 'horor';
-- T21 --
SELECT `film`.`nm_film` FROM `film` JOIN `artis` ON `film`.`artis` = `artis`.`id_artis` WHERE `artis`.`nm_artis` LIKE 'j%';
-- T24 --
-- T25 --
-- T26 --
SELECT 'nm_produser' FROM `produser` WHERE `international` = 'yes';
-- T27 --
SELECT COUNT(*) FROM `produser` WHERE `international` = 'yes';
-- T28 --
-- T29 --
-- T30 --
-- T31 --
-- T32 --
SELECT DISTINCT `produser`.`nm_produser` FROM `produser` JOIN `film` NOT ON  `film`.`produser` = `produser`.`id_produser`;
-- T33 --
-- T34 --
-- T35 --
