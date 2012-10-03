CREATE TABLE IF NOT EXISTS `aowow_version` (
  `version` mediumint(11) unsigned NOT NULL,
  `sql_version` varchar(255) NOT NULL,
  `revision` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8

INSERT INTO `aowow_version` (`version`, `sql_version`, `revision`) VALUES ('1', '1', '1');