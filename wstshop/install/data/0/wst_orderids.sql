SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `wst_orderids`;
CREATE TABLE `wst_orderids` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `rnd` float(16,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10000013 DEFAULT CHARSET=utf8;