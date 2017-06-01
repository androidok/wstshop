SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `wst_orderids`;
CREATE TABLE `wst_orderids` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `rnd` float(16,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10000013 DEFAULT CHARSET=utf8;


INSERT INTO `wst_orderids` VALUES ('10000000', '1482720512.00'),
('10000001', '1482721536.00'),
('10000002', '1482721920.00'),
('10000003', '1482722304.00'),
('10000004', '1482740480.00'),
('10000005', '1482741632.00'),
('10000006', '1482741632.00'),
('10000007', '1482741632.00'),
('10000008', '1482741760.00'),
('10000009', '1482805888.00'),
('10000010', '1482807296.00'),
('10000011', '1482809984.00'),
('10000012', '1482810368.00');
