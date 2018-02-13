#
# TABLE STRUCTURE FOR: tblactivitylog
#

DROP TABLE IF EXISTS `tblactivitylog`;

CREATE TABLE `tblactivitylog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` mediumtext NOT NULL,
  `date` datetime NOT NULL,
  `staffid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `staffid` (`staffid`)
) ENGINE=MyISAM AUTO_INCREMENT=210 DEFAULT CHARSET=utf8;

INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('1', 'Failed Login Attempt [Email:ahmet.gudenoglu@gmail.com, Is Staff Member:Yes, IP:127.0.0.1]', '2018-01-05 13:02:42', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('2', 'New Client Created [MediaWorx From Staff: 1]', '2018-01-05 13:05:07', ' ');
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('3', 'Customer Info Updated [Telenor]', '2018-01-05 13:15:38', ' ');
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('4', 'Customer Status Changed [CustomerID: 1 Status(Active/Inactive): 0]', '2018-01-10 13:26:18', ' ');
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('5', 'Contact Created [Demo Demo]', '2018-01-11 11:41:29', ' ');
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('6', 'Contact Updated [Demo Demo]', '2018-01-11 11:47:11', ' ');
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('7', 'Failed Login Attempt [Email:ahmet.gudenoglu@gmail.com, Is Staff Member:No, IP:127.0.0.1]', '2018-01-18 14:09:22', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('8', 'Agent Status Changed [ClientID: 1 Status(Active/Inactive): 0]', '2018-01-26 09:07:34', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('9', 'Agent Status Changed [ClientID: 1 Status(Active/Inactive): 1]', '2018-01-26 09:07:44', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('10', 'Agent Status Changed [ClientID: 1 Status(Active/Inactive): 0]', '2018-01-26 09:07:52', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('11', 'Agent Status Changed [ClientID: 1 Status(Active/Inactive): 1]', '2018-01-26 09:07:56', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('12', 'Agent Delete [ID:1]', '2018-01-26 09:08:00', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('13', 'Agent Status Changed [ClientID: 1 Status(Active/Inactive): 0]', '2018-01-26 09:10:01', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('14', 'Agent Status Changed [ClientID: 1 Status(Active/Inactive): 1]', '2018-01-26 09:10:02', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('15', 'Agent Status Changed [ClientID: 1 Status(Active/Inactive): 0]', '2018-01-26 09:10:04', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('16', 'Agent Status Changed [ClientID: 1 Status(Active/Inactive): 1]', '2018-01-26 09:10:06', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('17', 'Agent Status Changed [ClientID: 1 Status(Active/Inactive): 0]', '2018-01-29 11:55:45', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('18', 'Agent Status Changed [ClientID: 1 Status(Active/Inactive): 1]', '2018-01-29 11:55:49', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('19', 'Agent Status Changed [ClientID: 2 Status(Active/Inactive): 0]', '2018-01-29 12:09:55', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('20', 'Agent Status Changed [ClientID: 1 Status(Active/Inactive): 0]', '2018-01-29 12:09:59', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('21', 'Agent Status Changed [ClientID: 2 Status(Active/Inactive): 1]', '2018-01-29 12:10:02', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('22', 'Agent Status Changed [ClientID: 1 Status(Active/Inactive): 1]', '2018-01-29 12:10:03', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('23', 'Agent Status Changed [ClientID: 2 Status(Active/Inactive): 0]', '2018-01-30 10:30:28', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('24', 'Agent Status Changed [ClientID: 2 Status(Active/Inactive): 1]', '2018-01-30 10:30:29', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('25', 'Agent Status Changed [ClientID: 1 Status(Active/Inactive): 0]', '2018-01-30 10:30:31', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('26', 'Agent Status Changed [ClientID: 1 Status(Active/Inactive): 1]', '2018-01-30 10:30:32', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('27', 'Agent Status Changed [ClientID: 1 Status(Active/Inactive): 0]', '2018-01-30 10:30:37', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('28', 'Agent Status Changed [ClientID: 1 Status(Active/Inactive): 1]', '2018-01-30 10:30:38', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('29', 'Agent Delete [ID:2]', '2018-01-30 10:38:23', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('30', 'New Agent Created [ID:1]', '2018-01-31 08:09:44', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('31', 'New Agent Created [ID:1]', '2018-01-31 08:12:13', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('32', 'Agent Delete [ID:2]', '2018-01-31 08:12:29', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('33', 'Agent Delete [ID:1]', '2018-01-31 08:12:30', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('34', 'Agent Delete [ID:3]', '2018-01-31 08:12:31', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('35', 'Agent Delete [ID:4]', '2018-01-31 08:12:32', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('36', 'New Agent Created [ID:1]', '2018-01-31 08:12:53', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('37', 'Agent Delete [ID:5]', '2018-01-31 08:14:04', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('38', 'New Agent Created [ID:1]', '2018-01-31 08:14:17', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('39', 'Agent Status Changed [ClientID: 6 Status(Active/Inactive): 0]', '2018-01-31 08:14:32', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('40', 'Agent Status Changed [ClientID: 6 Status(Active/Inactive): 1]', '2018-01-31 08:14:34', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('41', 'Agent Status Changed [ClientID: 6 Status(Active/Inactive): 0]', '2018-01-31 09:42:06', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('42', 'Agent Status Changed [ClientID: 6 Status(Active/Inactive): 1]', '2018-01-31 09:42:07', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('43', 'Agent Logging Changed [ClientID: 6 Status(Active/Inactive): 1]', '2018-01-31 10:01:51', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('44', 'Agent Logging Changed [ClientID: 6 Status(Active/Inactive): 0]', '2018-01-31 10:01:56', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('45', 'Agent Logging Changed [ClientID: 6 Status(Active/Inactive): 1]', '2018-01-31 10:01:58', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('46', 'New Agent Created [ID:1]', '2018-01-31 10:10:17', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('47', 'Agent Delete [ID:7]', '2018-01-31 10:15:12', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('48', 'Agent Delete [ID:6]', '2018-01-31 10:15:13', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('49', 'New Agent Created [ID:1]', '2018-01-31 10:16:52', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('50', 'Agent Delete [ID:8]', '2018-01-31 10:18:30', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('51', 'New Agent Created [ID:1]', '2018-01-31 10:18:41', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('52', 'Agent Logging Changed [ClientID: 9 Status(Active/Inactive): 1]', '2018-01-31 12:58:02', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('53', 'Agent Delete [ID:9]', '2018-01-31 13:58:58', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('54', 'New Agent Created [ID:1]', '2018-01-31 13:59:24', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('55', 'Agent Status Changed [ClientID: 10 Status(Active/Inactive): 0]', '2018-02-01 09:46:32', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('56', 'Agent Status Changed [ClientID: 10 Status(Active/Inactive): 1]', '2018-02-01 09:46:36', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('57', 'Agent Status Changed [ClientID: 10 Status(Active/Inactive): 0]', '2018-02-01 10:33:25', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('58', 'Agent Status Changed [ClientID: 10 Status(Active/Inactive): 1]', '2018-02-01 10:33:30', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('59', 'Agent Status Changed [ClientID: 10 Status(Active/Inactive): 0]', '2018-02-01 10:33:31', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('60', 'Agent Status Changed [ClientID: 10 Status(Active/Inactive): 1]', '2018-02-01 10:33:33', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('61', 'Agent Status Changed [ClientID: 10 Status(Active/Inactive): 0]', '2018-02-01 10:33:33', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('62', 'Agent Status Changed [ClientID: 10 Status(Active/Inactive): 1]', '2018-02-01 10:34:06', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('63', 'Agent Status Changed [ClientID: 10 Status(Active/Inactive): 0]', '2018-02-01 10:34:12', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('64', 'Agent Status Changed [ClientID: 10 Status(Active/Inactive): 1]', '2018-02-01 10:35:00', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('65', 'Agent Status Changed [ClientID: 10 Status(Active/Inactive): 0]', '2018-02-01 10:35:04', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('66', 'Agent Status Changed [ClientID: 10 Status(Active/Inactive): 1]', '2018-02-01 10:35:05', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('67', 'New Agent Created [ID:1]', '2018-02-01 11:37:01', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('68', 'Entity Delete [ID:3]', '2018-02-01 16:00:31', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('69', 'Entity Delete [ID:4]', '2018-02-01 16:00:33', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('70', 'Entity Delete [ID:2]', '2018-02-01 16:00:38', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('71', 'Entity Delete [ID:1]', '2018-02-01 16:00:40', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('72', 'Agent Delete [ID:10]', '2018-02-01 16:01:25', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('73', 'New Entity Created [ID:1]', '2018-02-01 16:51:18', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('74', 'Entity Delete [ID:5]', '2018-02-01 16:51:22', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('75', 'New Entity Created [ID:1]', '2018-02-01 16:51:47', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('76', 'New Entity Created [ID:1]', '2018-02-01 16:52:00', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('77', 'New Entity Created [ID:1]', '2018-02-01 16:52:12', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('78', 'New Entity Created [ID:1]', '2018-02-01 16:52:30', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('79', 'New Entity Created [ID:1]', '2018-02-01 16:52:38', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('80', 'New Entity Created [ID:1]', '2018-02-01 16:52:51', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('81', 'New Entity Created [ID:1]', '2018-02-01 16:52:59', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('82', 'New Entity Created [ID:1]', '2018-02-01 16:53:32', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('83', 'New Intent Created [ID:1]', '2018-02-01 20:29:19', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('84', 'New Intent Created [ID:1]', '2018-02-01 20:29:43', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('85', 'New Intent Created [ID:1]', '2018-02-01 20:29:56', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('86', 'New Intent Created [ID:1]', '2018-02-01 20:30:14', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('87', 'Agent Delete [ID:11]', '2018-02-03 13:33:21', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('88', 'New Agent Created [ID:1]', '2018-02-03 16:33:36', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('89', 'Agent Delete [ID:12]', '2018-02-03 16:42:59', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('90', 'New Agent Created [ID:1]', '2018-02-04 12:27:06', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('91', 'Agent Delete [ID:1]', '2018-02-04 12:27:25', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('92', 'New Agent Created [ID:1]', '2018-02-04 15:36:39', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('93', 'Intent Delete [ID:1]', '2018-02-04 15:36:50', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('94', 'Agent Delete [ID:2]', '2018-02-04 15:36:57', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('95', 'New Agent Created [ID:1]', '2018-02-04 15:45:16', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('96', 'Agent Delete [ID:3]', '2018-02-04 15:48:23', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('97', 'Intent Delete [ID:2]', '2018-02-04 15:48:28', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('98', 'New Agent Created [ID:1]', '2018-02-04 15:49:39', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('99', 'Intent Delete [ID:3]', '2018-02-04 15:52:36', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('100', 'Agent Delete [ID:4]', '2018-02-04 15:52:39', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('101', 'New Agent Created [ID:1]', '2018-02-04 15:52:52', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('102', 'Agent Delete [ID:5]', '2018-02-04 15:53:01', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('103', 'Intent Delete [ID:4]', '2018-02-04 15:53:05', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('104', 'Agent Delete [ID:6]', '2018-02-04 15:54:32', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('105', 'New Agent Created [ID:7]', '2018-02-04 15:56:53', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('106', 'Agent Delete [ID:7]', '2018-02-04 15:57:50', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('107', 'New Agent Created [ID:8]', '2018-02-04 15:58:50', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('108', 'Agent Delete [ID:8]', '2018-02-04 15:59:29', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('109', 'New Agent Created [ID:9]', '2018-02-04 16:01:11', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('110', 'Agent Delete [ID:9]', '2018-02-04 16:18:11', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('111', 'Failed Login Attempt [Email:ahmet.gudenoglu@gmail.com, Is Staff Member:No, IP:127.0.0.1]', '2018-02-05 12:38:55', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('112', 'New Agent Created [ID:1]', '2018-02-05 19:13:07', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('113', 'Agent Delete [ID:1]', '2018-02-05 19:31:50', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('114', 'New Agent Created [ID:2]', '2018-02-05 19:32:17', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('115', 'Agent Delete [ID:2]', '2018-02-05 19:34:32', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('116', 'New Agent Created [ID:3]', '2018-02-05 19:34:48', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('117', 'Agent Delete [ID:3]', '2018-02-05 22:11:18', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('118', 'New Agent Created [ID:4]', '2018-02-05 22:16:32', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('119', 'Agent Delete [ID:4]', '2018-02-05 22:17:47', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('120', 'New Agent Created [ID:5]', '2018-02-05 22:18:07', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('121', 'Agent Delete [ID:5]', '2018-02-05 22:18:19', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('122', 'New Agent Created [ID:6]', '2018-02-05 22:25:32', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('123', 'Agent Delete [ID:6]', '2018-02-05 22:32:54', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('124', 'New Agent Created [ID:7]', '2018-02-05 22:35:45', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('125', 'Agent Delete [ID:7]', '2018-02-06 08:46:34', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('126', 'New Agent Created [ID:8]', '2018-02-06 09:59:29', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('127', 'Agent Delete [ID:8]', '2018-02-06 10:13:32', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('128', 'New Agent Created [ID:9]', '2018-02-06 10:13:51', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('129', 'Agent Delete [ID:9]', '2018-02-06 14:19:16', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('130', 'New Agent Created [ID:10]', '2018-02-06 14:19:49', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('131', 'Entity Delete [ID:1]', '2018-02-06 14:46:10', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('132', 'New Entity Created [ID:2]', '2018-02-07 11:36:10', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('133', 'New Entity Created [ID:3]', '2018-02-07 11:38:13', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('134', 'Entity Delete [ID:3]', '2018-02-07 11:38:49', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('135', 'New Entity Created [ID:4]', '2018-02-07 11:39:05', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('136', 'Entity Delete [ID:4]', '2018-02-07 11:43:37', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('137', 'New Entity Created [ID:5]', '2018-02-07 11:44:01', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('138', 'Entity Delete [ID:6]', '2018-02-07 13:01:26', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('139', 'Entity Delete [ID:5]', '2018-02-07 13:01:28', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('140', 'Entity Delete [ID:7]', '2018-02-07 13:05:46', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('141', 'New Entity Created [ID:8]', '2018-02-07 13:06:04', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('142', 'New Entity Created [ID:9]', '2018-02-07 13:12:38', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('143', 'New Entity Created [ID:10]', '2018-02-07 13:12:55', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('144', 'New Entity Created [ID:11]', '2018-02-07 13:13:05', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('145', 'New Entity Created [ID:12]', '2018-02-07 13:13:15', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('146', 'New Entity Created [ID:13]', '2018-02-07 13:13:25', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('147', 'New Entity Created [ID:14]', '2018-02-07 13:13:42', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('148', 'New Entity Created [ID:15]', '2018-02-07 13:13:53', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('149', 'Agent Delete [ID:10]', '2018-02-07 15:00:25', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('150', 'New Intent Created [ID:1]', '2018-02-07 15:15:18', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('151', 'New Intent Created [ID:2]', '2018-02-07 15:15:46', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('152', 'New Intent Created [ID:3]', '2018-02-07 15:15:59', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('153', 'New Intent Created [ID:4]', '2018-02-07 15:16:12', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('154', 'New Intent Created [ID:5]', '2018-02-07 15:30:58', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('155', 'New Intent Created [ID:6]', '2018-02-07 15:31:09', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('156', 'New Agent Created [ID:11]', '2018-02-07 17:15:16', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('157', 'New Entity Created [ID:16]', '2018-02-07 17:18:25', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('158', 'New Intent Created [ID:7]', '2018-02-07 17:19:39', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('159', 'New Entity Created [ID:17]', '2018-02-07 17:26:26', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('160', 'New Entity Created [ID:18]', '2018-02-07 17:26:41', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('161', 'Entity Delete [ID:18]', '2018-02-07 17:27:15', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('162', 'Entity Delete [ID:17]', '2018-02-07 17:27:18', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('163', 'Entity Delete [ID:16]', '2018-02-07 17:27:21', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('164', 'New Intent Created [ID:8]', '2018-02-07 17:27:47', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('165', 'New Intent Created [ID:9]', '2018-02-07 17:27:58', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('166', 'New Intent Created [ID:10]', '2018-02-07 17:28:08', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('167', 'New Intent Created [ID:11]', '2018-02-07 17:28:19', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('168', 'New Intent Created [ID:12]', '2018-02-07 17:28:27', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('169', 'New Entity Created [ID:19]', '2018-02-07 17:29:13', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('170', 'New Entity Created [ID:20]', '2018-02-07 17:29:22', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('171', 'New Entity Created [ID:21]', '2018-02-07 17:29:29', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('172', 'New Entity Created [ID:22]', '2018-02-07 17:29:39', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('173', 'New Entity Created [ID:23]', '2018-02-07 17:29:46', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('174', 'New Entity Created [ID:24]', '2018-02-07 17:29:54', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('175', 'New Entity Created [ID:25]', '2018-02-07 17:30:00', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('176', 'New Entity Created [ID:26]', '2018-02-07 17:30:13', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('177', 'New Entity Created [ID:27]', '2018-02-07 19:24:44', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('178', 'Agent Delete [ID:11]', '2018-02-12 09:06:13', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('179', 'New Agent Created [ID:12]', '2018-02-12 09:22:33', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('180', 'Agent Delete [ID:12]', '2018-02-12 09:22:46', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('181', 'New Agent Created [ID:13]', '2018-02-12 09:23:09', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('182', 'New Intent Created [ID:13]', '2018-02-12 10:03:32', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('183', 'New Entity Created [ID:28]', '2018-02-12 10:31:36', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('184', 'New Entity Created [ID:29]', '2018-02-12 10:32:51', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('185', 'New Entity Created [ID:30]', '2018-02-12 14:02:54', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('186', 'Agent Delete [ID:13]', '2018-02-12 14:24:45', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('187', 'New Agent Created [ID:14]', '2018-02-13 08:58:35', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('188', 'Staff Status Changed [StaffID: 1 - Status(Active/Inactive): 0]', '2018-02-13 09:11:05', ' ');
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('189', 'Staff Status Changed [StaffID: 1 - Status(Active/Inactive): 1]', '2018-02-13 09:11:06', ' ');
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('190', 'New Entity Created [ID:31]', '2018-02-13 09:24:57', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('191', 'Entity Delete [ID:31]', '2018-02-13 09:34:25', ' ');
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('192', 'New Entity Created [ID:32]', '2018-02-13 09:36:40', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('193', 'New Entity Created [ID:33]', '2018-02-13 09:49:18', ' ');
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('194', 'New Entity Created [ID:34]', '2018-02-13 09:50:29', ' ');
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('195', 'New Entity Created [ID:35]', '2018-02-13 09:51:52', ' ');
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('196', 'New Entity Created [ID:36]', '2018-02-13 09:53:39', ' ');
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('197', 'Entity Delete [ID:36]', '2018-02-13 09:53:47', ' ');
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('198', 'Database Backup [database_backup_2018-02-13-10-24-32.zip]', '2018-02-13 10:24:32', ' ');
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('199', 'Agent Delete [ID:14]', '2018-02-13 10:33:42', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('200', 'New Agent Created [ID:15]', '2018-02-13 10:46:32', NULL);
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('201', 'New Entity Created [ID:37]', '2018-02-13 10:51:24', ' ');
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('202', 'New Entity Created [ID:38]', '2018-02-13 10:57:02', ' ');
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('203', 'New Entity Created [ID:39]', '2018-02-13 10:57:16', ' ');
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('204', 'New Staff Member Added [ID: 2, Nikola Jankovic]', '2018-02-13 11:09:32', ' ');
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('205', 'Staff Member Updated [ID: 1, Ahmet Goudenoglu]', '2018-02-13 11:20:26', 'Ahmet Goudenoglu');
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('206', 'New Staff Member Added [ID: 3, Radosav Brajic]', '2018-02-13 11:21:39', 'Ahmet Goudenoglu');
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('207', 'Customer Info Updated [WediaWorks]', '2018-02-13 11:22:20', 'Ahmet Goudenoglu');
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('208', 'Database Backup [database_backup_2018-02-13-13-49-10.zip]', '2018-02-13 13:49:10', 'Ahmet Goudenoglu');
INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES ('209', 'Database Backup [database_backup_2018-02-13-14-16-08.zip]', '2018-02-13 14:16:08', 'Ahmet Goudenoglu');


#
# TABLE STRUCTURE FOR: tblagents
#

DROP TABLE IF EXISTS `tblagents`;

CREATE TABLE `tblagents` (
  `agentid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `agent_name` varchar(32) CHARACTER SET utf8 NOT NULL,
  `default_language` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `default_timezone` varchar(32) CHARACTER SET utf8 NOT NULL,
  `google_project` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `agent_image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `client_access_token` varchar(64) CHARACTER SET utf8 NOT NULL,
  `developer_access_token` varchar(64) CHARACTER SET utf8 NOT NULL,
  `logging` tinyint(1) DEFAULT '0',
  `matchmode` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `threshold` decimal(9,2) DEFAULT NULL,
  PRIMARY KEY (`agentid`,`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `tblagents` (`agentid`, `userid`, `agent_name`, `default_language`, `default_timezone`, `google_project`, `agent_image`, `description`, `client_access_token`, `developer_access_token`, `logging`, `matchmode`, `threshold`) VALUES ('15', '1', 'TestBots', 'english', 'Europe/Belgrade', '', NULL, NULL, 'e17a1f36-79b0-5d1b-826a-1cb4f68c0771', 'beb3a778-7101-50f8-9aaa-b010ca282c1e', '0', NULL, NULL);


#
# TABLE STRUCTURE FOR: tblannouncements
#

DROP TABLE IF EXISTS `tblannouncements`;

CREATE TABLE `tblannouncements` (
  `announcementid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `message` text,
  `showtousers` int(11) NOT NULL,
  `showtostaff` int(11) NOT NULL,
  `showname` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `userid` varchar(100) NOT NULL,
  PRIMARY KEY (`announcementid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblclients
#

DROP TABLE IF EXISTS `tblclients`;

CREATE TABLE `tblclients` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(100) DEFAULT NULL,
  `vat` varchar(50) DEFAULT NULL,
  `phonenumber` varchar(30) DEFAULT NULL,
  `country` int(11) NOT NULL DEFAULT '0',
  `city` varchar(100) DEFAULT NULL,
  `zip` varchar(15) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `website` varchar(150) DEFAULT NULL,
  `datecreated` datetime NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `leadid` int(11) DEFAULT NULL,
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT '0',
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT '0',
  `longitude` varchar(300) DEFAULT NULL,
  `latitude` varchar(300) DEFAULT NULL,
  `default_language` varchar(40) DEFAULT NULL,
  `default_currency` int(11) NOT NULL DEFAULT '0',
  `show_primary_contact` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`),
  KEY `country` (`country`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `tblclients` (`userid`, `company`, `vat`, `phonenumber`, `country`, `city`, `zip`, `state`, `address`, `website`, `datecreated`, `active`, `leadid`, `billing_street`, `billing_city`, `billing_state`, `billing_zip`, `billing_country`, `shipping_street`, `shipping_city`, `shipping_state`, `shipping_zip`, `shipping_country`, `longitude`, `latitude`, `default_language`, `default_currency`, `show_primary_contact`) VALUES ('1', 'WediaWorks', '', '', '0', '', '', '', '', '', '2018-01-05 13:05:07', '1', NULL, '', '', '', '', '0', '', '', '', '', '0', '', '', 'english', '2', '0');


#
# TABLE STRUCTURE FOR: tblcommentlikes
#

DROP TABLE IF EXISTS `tblcommentlikes`;

CREATE TABLE `tblcommentlikes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `postid` int(11) NOT NULL,
  `commentid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `dateliked` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblcontactpermissions
#

DROP TABLE IF EXISTS `tblcontactpermissions`;

CREATE TABLE `tblcontactpermissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `tblcontactpermissions` (`id`, `permission_id`, `userid`) VALUES ('1', '7', '1');


#
# TABLE STRUCTURE FOR: tblcontacts
#

DROP TABLE IF EXISTS `tblcontacts`;

CREATE TABLE `tblcontacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `is_primary` int(11) NOT NULL DEFAULT '1',
  `firstname` varchar(300) NOT NULL,
  `lastname` varchar(300) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phonenumber` varchar(100) NOT NULL,
  `title` varchar(200) NOT NULL,
  `datecreated` datetime NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `new_pass_key` varchar(32) DEFAULT NULL,
  `new_pass_key_requested` datetime DEFAULT NULL,
  `last_ip` varchar(40) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_password_change` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `profile_image` varchar(300) DEFAULT NULL,
  `direction` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `is_primary` (`is_primary`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `tblcontacts` (`id`, `userid`, `is_primary`, `firstname`, `lastname`, `email`, `phonenumber`, `title`, `datecreated`, `password`, `new_pass_key`, `new_pass_key_requested`, `last_ip`, `last_login`, `last_password_change`, `active`, `profile_image`, `direction`) VALUES ('1', '1', '1', 'Demo', 'Demo', 'demo@demo.com', '', 'Demo', '2018-01-11 11:41:28', '$2a$08$nyGsIK0nYsTGnjh3Ez/Ns.F/eqF03jgr9Ykq37lWxto2kpKaRCo0a', NULL, NULL, '127.0.0.1', '2018-02-13 11:39:03', NULL, '1', NULL, '');


#
# TABLE STRUCTURE FOR: tblcontractrenewals
#

DROP TABLE IF EXISTS `tblcontractrenewals`;

CREATE TABLE `tblcontractrenewals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contractid` int(11) NOT NULL,
  `old_start_date` date NOT NULL,
  `new_start_date` date NOT NULL,
  `old_end_date` date DEFAULT NULL,
  `new_end_date` date DEFAULT NULL,
  `old_value` decimal(11,2) DEFAULT NULL,
  `new_value` decimal(11,2) DEFAULT NULL,
  `date_renewed` datetime NOT NULL,
  `renewed_by` varchar(100) NOT NULL,
  `renewed_by_staff_id` int(11) NOT NULL DEFAULT '0',
  `is_on_old_expiry_notified` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblcontracts
#

DROP TABLE IF EXISTS `tblcontracts`;

CREATE TABLE `tblcontracts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext,
  `description` text,
  `subject` varchar(300) DEFAULT NULL,
  `client` int(11) NOT NULL,
  `datestart` date DEFAULT NULL,
  `dateend` date DEFAULT NULL,
  `contract_type` int(11) DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `isexpirynotified` int(11) NOT NULL DEFAULT '0',
  `contract_value` decimal(11,2) DEFAULT NULL,
  `trash` tinyint(1) DEFAULT '0',
  `not_visible_to_client` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `client` (`client`),
  KEY `contract_type` (`contract_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblcontracttypes
#

DROP TABLE IF EXISTS `tblcontracttypes`;

CREATE TABLE `tblcontracttypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblcountries
#

DROP TABLE IF EXISTS `tblcountries`;

CREATE TABLE `tblcountries` (
  `country_id` int(5) NOT NULL AUTO_INCREMENT,
  `iso2` char(2) DEFAULT NULL,
  `short_name` varchar(80) NOT NULL DEFAULT '',
  `long_name` varchar(80) NOT NULL DEFAULT '',
  `iso3` char(3) DEFAULT NULL,
  `numcode` varchar(6) DEFAULT NULL,
  `un_member` varchar(12) DEFAULT NULL,
  `calling_code` varchar(8) DEFAULT NULL,
  `cctld` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=251 DEFAULT CHARSET=utf8;

INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('1', 'AF', 'Afghanistan', 'Islamic Republic of Afghanistan', 'AFG', '004', 'yes', '93', '.af');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('2', 'AX', 'Aland Islands', '&Aring;land Islands', 'ALA', '248', 'no', '358', '.ax');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('3', 'AL', 'Albania', 'Republic of Albania', 'ALB', '008', 'yes', '355', '.al');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('4', 'DZ', 'Algeria', 'People\'s Democratic Republic of Algeria', 'DZA', '012', 'yes', '213', '.dz');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('5', 'AS', 'American Samoa', 'American Samoa', 'ASM', '016', 'no', '1+684', '.as');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('6', 'AD', 'Andorra', 'Principality of Andorra', 'AND', '020', 'yes', '376', '.ad');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('7', 'AO', 'Angola', 'Republic of Angola', 'AGO', '024', 'yes', '244', '.ao');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('8', 'AI', 'Anguilla', 'Anguilla', 'AIA', '660', 'no', '1+264', '.ai');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('9', 'AQ', 'Antarctica', 'Antarctica', 'ATA', '010', 'no', '672', '.aq');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('10', 'AG', 'Antigua and Barbuda', 'Antigua and Barbuda', 'ATG', '028', 'yes', '1+268', '.ag');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('11', 'AR', 'Argentina', 'Argentine Republic', 'ARG', '032', 'yes', '54', '.ar');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('12', 'AM', 'Armenia', 'Republic of Armenia', 'ARM', '051', 'yes', '374', '.am');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('13', 'AW', 'Aruba', 'Aruba', 'ABW', '533', 'no', '297', '.aw');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('14', 'AU', 'Australia', 'Commonwealth of Australia', 'AUS', '036', 'yes', '61', '.au');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('15', 'AT', 'Austria', 'Republic of Austria', 'AUT', '040', 'yes', '43', '.at');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('16', 'AZ', 'Azerbaijan', 'Republic of Azerbaijan', 'AZE', '031', 'yes', '994', '.az');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('17', 'BS', 'Bahamas', 'Commonwealth of The Bahamas', 'BHS', '044', 'yes', '1+242', '.bs');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('18', 'BH', 'Bahrain', 'Kingdom of Bahrain', 'BHR', '048', 'yes', '973', '.bh');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('19', 'BD', 'Bangladesh', 'People\'s Republic of Bangladesh', 'BGD', '050', 'yes', '880', '.bd');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('20', 'BB', 'Barbados', 'Barbados', 'BRB', '052', 'yes', '1+246', '.bb');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('21', 'BY', 'Belarus', 'Republic of Belarus', 'BLR', '112', 'yes', '375', '.by');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('22', 'BE', 'Belgium', 'Kingdom of Belgium', 'BEL', '056', 'yes', '32', '.be');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('23', 'BZ', 'Belize', 'Belize', 'BLZ', '084', 'yes', '501', '.bz');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('24', 'BJ', 'Benin', 'Republic of Benin', 'BEN', '204', 'yes', '229', '.bj');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('25', 'BM', 'Bermuda', 'Bermuda Islands', 'BMU', '060', 'no', '1+441', '.bm');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('26', 'BT', 'Bhutan', 'Kingdom of Bhutan', 'BTN', '064', 'yes', '975', '.bt');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('27', 'BO', 'Bolivia', 'Plurinational State of Bolivia', 'BOL', '068', 'yes', '591', '.bo');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('28', 'BQ', 'Bonaire, Sint Eustatius and Saba', 'Bonaire, Sint Eustatius and Saba', 'BES', '535', 'no', '599', '.bq');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('29', 'BA', 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', 'BIH', '070', 'yes', '387', '.ba');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('30', 'BW', 'Botswana', 'Republic of Botswana', 'BWA', '072', 'yes', '267', '.bw');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('31', 'BV', 'Bouvet Island', 'Bouvet Island', 'BVT', '074', 'no', 'NONE', '.bv');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('32', 'BR', 'Brazil', 'Federative Republic of Brazil', 'BRA', '076', 'yes', '55', '.br');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('33', 'IO', 'British Indian Ocean Territory', 'British Indian Ocean Territory', 'IOT', '086', 'no', '246', '.io');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('34', 'BN', 'Brunei', 'Brunei Darussalam', 'BRN', '096', 'yes', '673', '.bn');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('35', 'BG', 'Bulgaria', 'Republic of Bulgaria', 'BGR', '100', 'yes', '359', '.bg');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('36', 'BF', 'Burkina Faso', 'Burkina Faso', 'BFA', '854', 'yes', '226', '.bf');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('37', 'BI', 'Burundi', 'Republic of Burundi', 'BDI', '108', 'yes', '257', '.bi');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('38', 'KH', 'Cambodia', 'Kingdom of Cambodia', 'KHM', '116', 'yes', '855', '.kh');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('39', 'CM', 'Cameroon', 'Republic of Cameroon', 'CMR', '120', 'yes', '237', '.cm');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('40', 'CA', 'Canada', 'Canada', 'CAN', '124', 'yes', '1', '.ca');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('41', 'CV', 'Cape Verde', 'Republic of Cape Verde', 'CPV', '132', 'yes', '238', '.cv');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('42', 'KY', 'Cayman Islands', 'The Cayman Islands', 'CYM', '136', 'no', '1+345', '.ky');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('43', 'CF', 'Central African Republic', 'Central African Republic', 'CAF', '140', 'yes', '236', '.cf');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('44', 'TD', 'Chad', 'Republic of Chad', 'TCD', '148', 'yes', '235', '.td');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('45', 'CL', 'Chile', 'Republic of Chile', 'CHL', '152', 'yes', '56', '.cl');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('46', 'CN', 'China', 'People\'s Republic of China', 'CHN', '156', 'yes', '86', '.cn');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('47', 'CX', 'Christmas Island', 'Christmas Island', 'CXR', '162', 'no', '61', '.cx');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('48', 'CC', 'Cocos (Keeling) Islands', 'Cocos (Keeling) Islands', 'CCK', '166', 'no', '61', '.cc');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('49', 'CO', 'Colombia', 'Republic of Colombia', 'COL', '170', 'yes', '57', '.co');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('50', 'KM', 'Comoros', 'Union of the Comoros', 'COM', '174', 'yes', '269', '.km');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('51', 'CG', 'Congo', 'Republic of the Congo', 'COG', '178', 'yes', '242', '.cg');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('52', 'CK', 'Cook Islands', 'Cook Islands', 'COK', '184', 'some', '682', '.ck');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('53', 'CR', 'Costa Rica', 'Republic of Costa Rica', 'CRI', '188', 'yes', '506', '.cr');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('54', 'CI', 'Cote d\'ivoire (Ivory Coast)', 'Republic of C&ocirc;te D\'Ivoire (Ivory Coast)', 'CIV', '384', 'yes', '225', '.ci');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('55', 'HR', 'Croatia', 'Republic of Croatia', 'HRV', '191', 'yes', '385', '.hr');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('56', 'CU', 'Cuba', 'Republic of Cuba', 'CUB', '192', 'yes', '53', '.cu');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('57', 'CW', 'Curacao', 'Cura&ccedil;ao', 'CUW', '531', 'no', '599', '.cw');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('58', 'CY', 'Cyprus', 'Republic of Cyprus', 'CYP', '196', 'yes', '357', '.cy');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('59', 'CZ', 'Czech Republic', 'Czech Republic', 'CZE', '203', 'yes', '420', '.cz');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('60', 'CD', 'Democratic Republic of the Congo', 'Democratic Republic of the Congo', 'COD', '180', 'yes', '243', '.cd');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('61', 'DK', 'Denmark', 'Kingdom of Denmark', 'DNK', '208', 'yes', '45', '.dk');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('62', 'DJ', 'Djibouti', 'Republic of Djibouti', 'DJI', '262', 'yes', '253', '.dj');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('63', 'DM', 'Dominica', 'Commonwealth of Dominica', 'DMA', '212', 'yes', '1+767', '.dm');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('64', 'DO', 'Dominican Republic', 'Dominican Republic', 'DOM', '214', 'yes', '1+809, 8', '.do');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('65', 'EC', 'Ecuador', 'Republic of Ecuador', 'ECU', '218', 'yes', '593', '.ec');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('66', 'EG', 'Egypt', 'Arab Republic of Egypt', 'EGY', '818', 'yes', '20', '.eg');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('67', 'SV', 'El Salvador', 'Republic of El Salvador', 'SLV', '222', 'yes', '503', '.sv');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('68', 'GQ', 'Equatorial Guinea', 'Republic of Equatorial Guinea', 'GNQ', '226', 'yes', '240', '.gq');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('69', 'ER', 'Eritrea', 'State of Eritrea', 'ERI', '232', 'yes', '291', '.er');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('70', 'EE', 'Estonia', 'Republic of Estonia', 'EST', '233', 'yes', '372', '.ee');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('71', 'ET', 'Ethiopia', 'Federal Democratic Republic of Ethiopia', 'ETH', '231', 'yes', '251', '.et');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('72', 'FK', 'Falkland Islands (Malvinas)', 'The Falkland Islands (Malvinas)', 'FLK', '238', 'no', '500', '.fk');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('73', 'FO', 'Faroe Islands', 'The Faroe Islands', 'FRO', '234', 'no', '298', '.fo');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('74', 'FJ', 'Fiji', 'Republic of Fiji', 'FJI', '242', 'yes', '679', '.fj');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('75', 'FI', 'Finland', 'Republic of Finland', 'FIN', '246', 'yes', '358', '.fi');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('76', 'FR', 'France', 'French Republic', 'FRA', '250', 'yes', '33', '.fr');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('77', 'GF', 'French Guiana', 'French Guiana', 'GUF', '254', 'no', '594', '.gf');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('78', 'PF', 'French Polynesia', 'French Polynesia', 'PYF', '258', 'no', '689', '.pf');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('79', 'TF', 'French Southern Territories', 'French Southern Territories', 'ATF', '260', 'no', NULL, '.tf');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('80', 'GA', 'Gabon', 'Gabonese Republic', 'GAB', '266', 'yes', '241', '.ga');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('81', 'GM', 'Gambia', 'Republic of The Gambia', 'GMB', '270', 'yes', '220', '.gm');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('82', 'GE', 'Georgia', 'Georgia', 'GEO', '268', 'yes', '995', '.ge');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('83', 'DE', 'Germany', 'Federal Republic of Germany', 'DEU', '276', 'yes', '49', '.de');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('84', 'GH', 'Ghana', 'Republic of Ghana', 'GHA', '288', 'yes', '233', '.gh');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('85', 'GI', 'Gibraltar', 'Gibraltar', 'GIB', '292', 'no', '350', '.gi');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('86', 'GR', 'Greece', 'Hellenic Republic', 'GRC', '300', 'yes', '30', '.gr');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('87', 'GL', 'Greenland', 'Greenland', 'GRL', '304', 'no', '299', '.gl');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('88', 'GD', 'Grenada', 'Grenada', 'GRD', '308', 'yes', '1+473', '.gd');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('89', 'GP', 'Guadaloupe', 'Guadeloupe', 'GLP', '312', 'no', '590', '.gp');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('90', 'GU', 'Guam', 'Guam', 'GUM', '316', 'no', '1+671', '.gu');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('91', 'GT', 'Guatemala', 'Republic of Guatemala', 'GTM', '320', 'yes', '502', '.gt');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('92', 'GG', 'Guernsey', 'Guernsey', 'GGY', '831', 'no', '44', '.gg');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('93', 'GN', 'Guinea', 'Republic of Guinea', 'GIN', '324', 'yes', '224', '.gn');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('94', 'GW', 'Guinea-Bissau', 'Republic of Guinea-Bissau', 'GNB', '624', 'yes', '245', '.gw');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('95', 'GY', 'Guyana', 'Co-operative Republic of Guyana', 'GUY', '328', 'yes', '592', '.gy');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('96', 'HT', 'Haiti', 'Republic of Haiti', 'HTI', '332', 'yes', '509', '.ht');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('97', 'HM', 'Heard Island and McDonald Islands', 'Heard Island and McDonald Islands', 'HMD', '334', 'no', 'NONE', '.hm');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('98', 'HN', 'Honduras', 'Republic of Honduras', 'HND', '340', 'yes', '504', '.hn');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('99', 'HK', 'Hong Kong', 'Hong Kong', 'HKG', '344', 'no', '852', '.hk');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('100', 'HU', 'Hungary', 'Hungary', 'HUN', '348', 'yes', '36', '.hu');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('101', 'IS', 'Iceland', 'Republic of Iceland', 'ISL', '352', 'yes', '354', '.is');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('102', 'IN', 'India', 'Republic of India', 'IND', '356', 'yes', '91', '.in');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('103', 'ID', 'Indonesia', 'Republic of Indonesia', 'IDN', '360', 'yes', '62', '.id');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('104', 'IR', 'Iran', 'Islamic Republic of Iran', 'IRN', '364', 'yes', '98', '.ir');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('105', 'IQ', 'Iraq', 'Republic of Iraq', 'IRQ', '368', 'yes', '964', '.iq');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('106', 'IE', 'Ireland', 'Ireland', 'IRL', '372', 'yes', '353', '.ie');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('107', 'IM', 'Isle of Man', 'Isle of Man', 'IMN', '833', 'no', '44', '.im');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('108', 'IL', 'Israel', 'State of Israel', 'ISR', '376', 'yes', '972', '.il');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('109', 'IT', 'Italy', 'Italian Republic', 'ITA', '380', 'yes', '39', '.jm');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('110', 'JM', 'Jamaica', 'Jamaica', 'JAM', '388', 'yes', '1+876', '.jm');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('111', 'JP', 'Japan', 'Japan', 'JPN', '392', 'yes', '81', '.jp');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('112', 'JE', 'Jersey', 'The Bailiwick of Jersey', 'JEY', '832', 'no', '44', '.je');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('113', 'JO', 'Jordan', 'Hashemite Kingdom of Jordan', 'JOR', '400', 'yes', '962', '.jo');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('114', 'KZ', 'Kazakhstan', 'Republic of Kazakhstan', 'KAZ', '398', 'yes', '7', '.kz');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('115', 'KE', 'Kenya', 'Republic of Kenya', 'KEN', '404', 'yes', '254', '.ke');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('116', 'KI', 'Kiribati', 'Republic of Kiribati', 'KIR', '296', 'yes', '686', '.ki');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('117', 'XK', 'Kosovo', 'Republic of Kosovo', '---', '---', 'some', '381', '');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('118', 'KW', 'Kuwait', 'State of Kuwait', 'KWT', '414', 'yes', '965', '.kw');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('119', 'KG', 'Kyrgyzstan', 'Kyrgyz Republic', 'KGZ', '417', 'yes', '996', '.kg');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('120', 'LA', 'Laos', 'Lao People\'s Democratic Republic', 'LAO', '418', 'yes', '856', '.la');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('121', 'LV', 'Latvia', 'Republic of Latvia', 'LVA', '428', 'yes', '371', '.lv');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('122', 'LB', 'Lebanon', 'Republic of Lebanon', 'LBN', '422', 'yes', '961', '.lb');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('123', 'LS', 'Lesotho', 'Kingdom of Lesotho', 'LSO', '426', 'yes', '266', '.ls');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('124', 'LR', 'Liberia', 'Republic of Liberia', 'LBR', '430', 'yes', '231', '.lr');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('125', 'LY', 'Libya', 'Libya', 'LBY', '434', 'yes', '218', '.ly');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('126', 'LI', 'Liechtenstein', 'Principality of Liechtenstein', 'LIE', '438', 'yes', '423', '.li');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('127', 'LT', 'Lithuania', 'Republic of Lithuania', 'LTU', '440', 'yes', '370', '.lt');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('128', 'LU', 'Luxembourg', 'Grand Duchy of Luxembourg', 'LUX', '442', 'yes', '352', '.lu');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('129', 'MO', 'Macao', 'The Macao Special Administrative Region', 'MAC', '446', 'no', '853', '.mo');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('130', 'MK', 'Macedonia', 'The Former Yugoslav Republic of Macedonia', 'MKD', '807', 'yes', '389', '.mk');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('131', 'MG', 'Madagascar', 'Republic of Madagascar', 'MDG', '450', 'yes', '261', '.mg');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('132', 'MW', 'Malawi', 'Republic of Malawi', 'MWI', '454', 'yes', '265', '.mw');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('133', 'MY', 'Malaysia', 'Malaysia', 'MYS', '458', 'yes', '60', '.my');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('134', 'MV', 'Maldives', 'Republic of Maldives', 'MDV', '462', 'yes', '960', '.mv');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('135', 'ML', 'Mali', 'Republic of Mali', 'MLI', '466', 'yes', '223', '.ml');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('136', 'MT', 'Malta', 'Republic of Malta', 'MLT', '470', 'yes', '356', '.mt');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('137', 'MH', 'Marshall Islands', 'Republic of the Marshall Islands', 'MHL', '584', 'yes', '692', '.mh');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('138', 'MQ', 'Martinique', 'Martinique', 'MTQ', '474', 'no', '596', '.mq');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('139', 'MR', 'Mauritania', 'Islamic Republic of Mauritania', 'MRT', '478', 'yes', '222', '.mr');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('140', 'MU', 'Mauritius', 'Republic of Mauritius', 'MUS', '480', 'yes', '230', '.mu');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('141', 'YT', 'Mayotte', 'Mayotte', 'MYT', '175', 'no', '262', '.yt');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('142', 'MX', 'Mexico', 'United Mexican States', 'MEX', '484', 'yes', '52', '.mx');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('143', 'FM', 'Micronesia', 'Federated States of Micronesia', 'FSM', '583', 'yes', '691', '.fm');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('144', 'MD', 'Moldava', 'Republic of Moldova', 'MDA', '498', 'yes', '373', '.md');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('145', 'MC', 'Monaco', 'Principality of Monaco', 'MCO', '492', 'yes', '377', '.mc');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('146', 'MN', 'Mongolia', 'Mongolia', 'MNG', '496', 'yes', '976', '.mn');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('147', 'ME', 'Montenegro', 'Montenegro', 'MNE', '499', 'yes', '382', '.me');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('148', 'MS', 'Montserrat', 'Montserrat', 'MSR', '500', 'no', '1+664', '.ms');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('149', 'MA', 'Morocco', 'Kingdom of Morocco', 'MAR', '504', 'yes', '212', '.ma');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('150', 'MZ', 'Mozambique', 'Republic of Mozambique', 'MOZ', '508', 'yes', '258', '.mz');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('151', 'MM', 'Myanmar (Burma)', 'Republic of the Union of Myanmar', 'MMR', '104', 'yes', '95', '.mm');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('152', 'NA', 'Namibia', 'Republic of Namibia', 'NAM', '516', 'yes', '264', '.na');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('153', 'NR', 'Nauru', 'Republic of Nauru', 'NRU', '520', 'yes', '674', '.nr');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('154', 'NP', 'Nepal', 'Federal Democratic Republic of Nepal', 'NPL', '524', 'yes', '977', '.np');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('155', 'NL', 'Netherlands', 'Kingdom of the Netherlands', 'NLD', '528', 'yes', '31', '.nl');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('156', 'NC', 'New Caledonia', 'New Caledonia', 'NCL', '540', 'no', '687', '.nc');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('157', 'NZ', 'New Zealand', 'New Zealand', 'NZL', '554', 'yes', '64', '.nz');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('158', 'NI', 'Nicaragua', 'Republic of Nicaragua', 'NIC', '558', 'yes', '505', '.ni');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('159', 'NE', 'Niger', 'Republic of Niger', 'NER', '562', 'yes', '227', '.ne');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('160', 'NG', 'Nigeria', 'Federal Republic of Nigeria', 'NGA', '566', 'yes', '234', '.ng');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('161', 'NU', 'Niue', 'Niue', 'NIU', '570', 'some', '683', '.nu');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('162', 'NF', 'Norfolk Island', 'Norfolk Island', 'NFK', '574', 'no', '672', '.nf');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('163', 'KP', 'North Korea', 'Democratic People\'s Republic of Korea', 'PRK', '408', 'yes', '850', '.kp');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('164', 'MP', 'Northern Mariana Islands', 'Northern Mariana Islands', 'MNP', '580', 'no', '1+670', '.mp');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('165', 'NO', 'Norway', 'Kingdom of Norway', 'NOR', '578', 'yes', '47', '.no');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('166', 'OM', 'Oman', 'Sultanate of Oman', 'OMN', '512', 'yes', '968', '.om');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('167', 'PK', 'Pakistan', 'Islamic Republic of Pakistan', 'PAK', '586', 'yes', '92', '.pk');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('168', 'PW', 'Palau', 'Republic of Palau', 'PLW', '585', 'yes', '680', '.pw');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('169', 'PS', 'Palestine', 'State of Palestine (or Occupied Palestinian Territory)', 'PSE', '275', 'some', '970', '.ps');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('170', 'PA', 'Panama', 'Republic of Panama', 'PAN', '591', 'yes', '507', '.pa');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('171', 'PG', 'Papua New Guinea', 'Independent State of Papua New Guinea', 'PNG', '598', 'yes', '675', '.pg');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('172', 'PY', 'Paraguay', 'Republic of Paraguay', 'PRY', '600', 'yes', '595', '.py');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('173', 'PE', 'Peru', 'Republic of Peru', 'PER', '604', 'yes', '51', '.pe');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('174', 'PH', 'Phillipines', 'Republic of the Philippines', 'PHL', '608', 'yes', '63', '.ph');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('175', 'PN', 'Pitcairn', 'Pitcairn', 'PCN', '612', 'no', 'NONE', '.pn');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('176', 'PL', 'Poland', 'Republic of Poland', 'POL', '616', 'yes', '48', '.pl');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('177', 'PT', 'Portugal', 'Portuguese Republic', 'PRT', '620', 'yes', '351', '.pt');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('178', 'PR', 'Puerto Rico', 'Commonwealth of Puerto Rico', 'PRI', '630', 'no', '1+939', '.pr');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('179', 'QA', 'Qatar', 'State of Qatar', 'QAT', '634', 'yes', '974', '.qa');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('180', 'RE', 'Reunion', 'R&eacute;union', 'REU', '638', 'no', '262', '.re');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('181', 'RO', 'Romania', 'Romania', 'ROU', '642', 'yes', '40', '.ro');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('182', 'RU', 'Russia', 'Russian Federation', 'RUS', '643', 'yes', '7', '.ru');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('183', 'RW', 'Rwanda', 'Republic of Rwanda', 'RWA', '646', 'yes', '250', '.rw');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('184', 'BL', 'Saint Barthelemy', 'Saint Barth&eacute;lemy', 'BLM', '652', 'no', '590', '.bl');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('185', 'SH', 'Saint Helena', 'Saint Helena, Ascension and Tristan da Cunha', 'SHN', '654', 'no', '290', '.sh');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('186', 'KN', 'Saint Kitts and Nevis', 'Federation of Saint Christopher and Nevis', 'KNA', '659', 'yes', '1+869', '.kn');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('187', 'LC', 'Saint Lucia', 'Saint Lucia', 'LCA', '662', 'yes', '1+758', '.lc');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('188', 'MF', 'Saint Martin', 'Saint Martin', 'MAF', '663', 'no', '590', '.mf');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('189', 'PM', 'Saint Pierre and Miquelon', 'Saint Pierre and Miquelon', 'SPM', '666', 'no', '508', '.pm');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('190', 'VC', 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', 'VCT', '670', 'yes', '1+784', '.vc');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('191', 'WS', 'Samoa', 'Independent State of Samoa', 'WSM', '882', 'yes', '685', '.ws');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('192', 'SM', 'San Marino', 'Republic of San Marino', 'SMR', '674', 'yes', '378', '.sm');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('193', 'ST', 'Sao Tome and Principe', 'Democratic Republic of S&atilde;o Tom&eacute; and Pr&iacute;ncipe', 'STP', '678', 'yes', '239', '.st');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('194', 'SA', 'Saudi Arabia', 'Kingdom of Saudi Arabia', 'SAU', '682', 'yes', '966', '.sa');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('195', 'SN', 'Senegal', 'Republic of Senegal', 'SEN', '686', 'yes', '221', '.sn');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('196', 'RS', 'Serbia', 'Republic of Serbia', 'SRB', '688', 'yes', '381', '.rs');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('197', 'SC', 'Seychelles', 'Republic of Seychelles', 'SYC', '690', 'yes', '248', '.sc');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('198', 'SL', 'Sierra Leone', 'Republic of Sierra Leone', 'SLE', '694', 'yes', '232', '.sl');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('199', 'SG', 'Singapore', 'Republic of Singapore', 'SGP', '702', 'yes', '65', '.sg');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('200', 'SX', 'Sint Maarten', 'Sint Maarten', 'SXM', '534', 'no', '1+721', '.sx');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('201', 'SK', 'Slovakia', 'Slovak Republic', 'SVK', '703', 'yes', '421', '.sk');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('202', 'SI', 'Slovenia', 'Republic of Slovenia', 'SVN', '705', 'yes', '386', '.si');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('203', 'SB', 'Solomon Islands', 'Solomon Islands', 'SLB', '090', 'yes', '677', '.sb');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('204', 'SO', 'Somalia', 'Somali Republic', 'SOM', '706', 'yes', '252', '.so');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('205', 'ZA', 'South Africa', 'Republic of South Africa', 'ZAF', '710', 'yes', '27', '.za');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('206', 'GS', 'South Georgia and the South Sandwich Islands', 'South Georgia and the South Sandwich Islands', 'SGS', '239', 'no', '500', '.gs');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('207', 'KR', 'South Korea', 'Republic of Korea', 'KOR', '410', 'yes', '82', '.kr');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('208', 'SS', 'South Sudan', 'Republic of South Sudan', 'SSD', '728', 'yes', '211', '.ss');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('209', 'ES', 'Spain', 'Kingdom of Spain', 'ESP', '724', 'yes', '34', '.es');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('210', 'LK', 'Sri Lanka', 'Democratic Socialist Republic of Sri Lanka', 'LKA', '144', 'yes', '94', '.lk');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('211', 'SD', 'Sudan', 'Republic of the Sudan', 'SDN', '729', 'yes', '249', '.sd');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('212', 'SR', 'Suriname', 'Republic of Suriname', 'SUR', '740', 'yes', '597', '.sr');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('213', 'SJ', 'Svalbard and Jan Mayen', 'Svalbard and Jan Mayen', 'SJM', '744', 'no', '47', '.sj');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('214', 'SZ', 'Swaziland', 'Kingdom of Swaziland', 'SWZ', '748', 'yes', '268', '.sz');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('215', 'SE', 'Sweden', 'Kingdom of Sweden', 'SWE', '752', 'yes', '46', '.se');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('216', 'CH', 'Switzerland', 'Swiss Confederation', 'CHE', '756', 'yes', '41', '.ch');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('217', 'SY', 'Syria', 'Syrian Arab Republic', 'SYR', '760', 'yes', '963', '.sy');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('218', 'TW', 'Taiwan', 'Republic of China (Taiwan)', 'TWN', '158', 'former', '886', '.tw');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('219', 'TJ', 'Tajikistan', 'Republic of Tajikistan', 'TJK', '762', 'yes', '992', '.tj');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('220', 'TZ', 'Tanzania', 'United Republic of Tanzania', 'TZA', '834', 'yes', '255', '.tz');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('221', 'TH', 'Thailand', 'Kingdom of Thailand', 'THA', '764', 'yes', '66', '.th');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('222', 'TL', 'Timor-Leste (East Timor)', 'Democratic Republic of Timor-Leste', 'TLS', '626', 'yes', '670', '.tl');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('223', 'TG', 'Togo', 'Togolese Republic', 'TGO', '768', 'yes', '228', '.tg');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('224', 'TK', 'Tokelau', 'Tokelau', 'TKL', '772', 'no', '690', '.tk');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('225', 'TO', 'Tonga', 'Kingdom of Tonga', 'TON', '776', 'yes', '676', '.to');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('226', 'TT', 'Trinidad and Tobago', 'Republic of Trinidad and Tobago', 'TTO', '780', 'yes', '1+868', '.tt');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('227', 'TN', 'Tunisia', 'Republic of Tunisia', 'TUN', '788', 'yes', '216', '.tn');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('228', 'TR', 'Turkey', 'Republic of Turkey', 'TUR', '792', 'yes', '90', '.tr');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('229', 'TM', 'Turkmenistan', 'Turkmenistan', 'TKM', '795', 'yes', '993', '.tm');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('230', 'TC', 'Turks and Caicos Islands', 'Turks and Caicos Islands', 'TCA', '796', 'no', '1+649', '.tc');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('231', 'TV', 'Tuvalu', 'Tuvalu', 'TUV', '798', 'yes', '688', '.tv');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('232', 'UG', 'Uganda', 'Republic of Uganda', 'UGA', '800', 'yes', '256', '.ug');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('233', 'UA', 'Ukraine', 'Ukraine', 'UKR', '804', 'yes', '380', '.ua');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('234', 'AE', 'United Arab Emirates', 'United Arab Emirates', 'ARE', '784', 'yes', '971', '.ae');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('235', 'GB', 'United Kingdom', 'United Kingdom of Great Britain and Nothern Ireland', 'GBR', '826', 'yes', '44', '.uk');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('236', 'US', 'United States', 'United States of America', 'USA', '840', 'yes', '1', '.us');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('237', 'UM', 'United States Minor Outlying Islands', 'United States Minor Outlying Islands', 'UMI', '581', 'no', 'NONE', 'NONE');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('238', 'UY', 'Uruguay', 'Eastern Republic of Uruguay', 'URY', '858', 'yes', '598', '.uy');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('239', 'UZ', 'Uzbekistan', 'Republic of Uzbekistan', 'UZB', '860', 'yes', '998', '.uz');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('240', 'VU', 'Vanuatu', 'Republic of Vanuatu', 'VUT', '548', 'yes', '678', '.vu');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('241', 'VA', 'Vatican City', 'State of the Vatican City', 'VAT', '336', 'no', '39', '.va');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('242', 'VE', 'Venezuela', 'Bolivarian Republic of Venezuela', 'VEN', '862', 'yes', '58', '.ve');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('243', 'VN', 'Vietnam', 'Socialist Republic of Vietnam', 'VNM', '704', 'yes', '84', '.vn');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('244', 'VG', 'Virgin Islands, British', 'British Virgin Islands', 'VGB', '092', 'no', '1+284', '.vg');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('245', 'VI', 'Virgin Islands, US', 'Virgin Islands of the United States', 'VIR', '850', 'no', '1+340', '.vi');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('246', 'WF', 'Wallis and Futuna', 'Wallis and Futuna', 'WLF', '876', 'no', '681', '.wf');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('247', 'EH', 'Western Sahara', 'Western Sahara', 'ESH', '732', 'no', '212', '.eh');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('248', 'YE', 'Yemen', 'Republic of Yemen', 'YEM', '887', 'yes', '967', '.ye');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('249', 'ZM', 'Zambia', 'Republic of Zambia', 'ZMB', '894', 'yes', '260', '.zm');
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES ('250', 'ZW', 'Zimbabwe', 'Republic of Zimbabwe', 'ZWE', '716', 'yes', '263', '.zw');


#
# TABLE STRUCTURE FOR: tblcurrencies
#

DROP TABLE IF EXISTS `tblcurrencies`;

CREATE TABLE `tblcurrencies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `symbol` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `tblcurrencies` (`id`, `symbol`, `name`, `isdefault`) VALUES ('1', '$', 'USD', '1');
INSERT INTO `tblcurrencies` (`id`, `symbol`, `name`, `isdefault`) VALUES ('2', '€', 'EUR', '0');


#
# TABLE STRUCTURE FOR: tblcustomeradmins
#

DROP TABLE IF EXISTS `tblcustomeradmins`;

CREATE TABLE `tblcustomeradmins` (
  `staff_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `date_assigned` text NOT NULL,
  KEY `customer_id` (`customer_id`),
  KEY `staff_id` (`staff_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblcustomerfiles_shares
#

DROP TABLE IF EXISTS `tblcustomerfiles_shares`;

CREATE TABLE `tblcustomerfiles_shares` (
  `file_id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `tblcustomerfiles_shares` (`file_id`, `contact_id`) VALUES ('1', '1');


#
# TABLE STRUCTURE FOR: tblcustomergroups_in
#

DROP TABLE IF EXISTS `tblcustomergroups_in`;

CREATE TABLE `tblcustomergroups_in` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupid` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `groupid` (`groupid`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblcustomersgroups
#

DROP TABLE IF EXISTS `tblcustomersgroups`;

CREATE TABLE `tblcustomersgroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(600) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblcustomfields
#

DROP TABLE IF EXISTS `tblcustomfields`;

CREATE TABLE `tblcustomfields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldto` varchar(50) NOT NULL,
  `name` varchar(150) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL,
  `options` mediumtext,
  `field_order` int(11) DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '1',
  `show_on_pdf` int(11) NOT NULL DEFAULT '0',
  `only_admin` tinyint(1) NOT NULL DEFAULT '0',
  `show_on_table` tinyint(1) NOT NULL DEFAULT '0',
  `show_on_client_portal` int(11) NOT NULL DEFAULT '0',
  `disalow_client_to_edit` int(11) NOT NULL DEFAULT '0',
  `bs_column` int(11) NOT NULL DEFAULT '12',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblcustomfieldsvalues
#

DROP TABLE IF EXISTS `tblcustomfieldsvalues`;

CREATE TABLE `tblcustomfieldsvalues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `relid` int(11) NOT NULL,
  `fieldid` int(11) NOT NULL,
  `fieldto` varchar(50) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `relid` (`relid`),
  KEY `fieldid` (`fieldid`),
  KEY `fieldto` (`fieldto`),
  KEY `relid_2` (`relid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tbldepartments
#

DROP TABLE IF EXISTS `tbldepartments`;

CREATE TABLE `tbldepartments` (
  `departmentid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `imap_username` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `host` varchar(150) DEFAULT NULL,
  `password` mediumtext,
  `encryption` varchar(3) DEFAULT NULL,
  `delete_after_import` int(11) NOT NULL DEFAULT '0',
  `calendar_id` mediumtext,
  `hidefromclient` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`departmentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tbldismissedannouncements
#

DROP TABLE IF EXISTS `tbldismissedannouncements`;

CREATE TABLE `tbldismissedannouncements` (
  `dismissedannouncementid` int(11) NOT NULL AUTO_INCREMENT,
  `announcementid` int(11) NOT NULL,
  `staff` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`dismissedannouncementid`),
  KEY `announcementid` (`announcementid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblemaillists
#

DROP TABLE IF EXISTS `tblemaillists`;

CREATE TABLE `tblemaillists` (
  `listid` int(11) NOT NULL AUTO_INCREMENT,
  `name` mediumtext NOT NULL,
  `creator` varchar(100) NOT NULL,
  `datecreated` datetime NOT NULL,
  PRIMARY KEY (`listid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblemailtemplates
#

DROP TABLE IF EXISTS `tblemailtemplates`;

CREATE TABLE `tblemailtemplates` (
  `emailtemplateid` int(11) NOT NULL AUTO_INCREMENT,
  `type` mediumtext NOT NULL,
  `slug` varchar(100) NOT NULL,
  `language` varchar(40) DEFAULT NULL,
  `name` mediumtext NOT NULL,
  `subject` mediumtext NOT NULL,
  `message` text NOT NULL,
  `fromname` mediumtext NOT NULL,
  `fromemail` varchar(100) DEFAULT NULL,
  `plaintext` int(11) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL,
  PRIMARY KEY (`emailtemplateid`)
) ENGINE=MyISAM AUTO_INCREMENT=781 DEFAULT CHARSET=utf8;

INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('1', 'client', 'new-client-created', 'english', 'New Contact Added/Registered (Welcome Email)', 'Welcome aboard', '<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Dear {contact_firstname}&nbsp;{contact_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><br /></span><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Thank you for registering on the {companyname} CRM System.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">We just wanted to say welcome.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Please contact us if you need any help.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Click here to view your profile: <a href=\"{crm_url}\">{crm_url}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">(This is an automated email, so please don\'t reply to this email address)</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>', '{companyname} | CRM', '', '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('2', 'invoice', 'invoice-send-to-client', 'english', 'Send Invoice to Customer', 'Invoice with number {invoice_number} created', '<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Dear {contact_firstname}&nbsp;{contact_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">We have prepared the following invoice for you: #&nbsp;{invoice_number}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Invoice status:&nbsp;<strong style=\"font-family: Helvetica, Arial, sans-serif;\">{invoice_status}</strong></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span>&nbsp;</div>\r\n<div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">You can view the invoice on the following link: <a href=\"{invoice_link}\">{invoice_number}</a></span></div>\r\n</div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Please contact us for more information.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>', '{companyname} | CRM', '', '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('3', 'ticket', 'new-ticket-opened-admin', 'english', 'New Ticket Opened (Opened by Staff, Sent to Customer)', 'New Support Ticket Opened', '<div><span style=\"color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi&nbsp;{contact_firstname} {contact_lastname}</span></div>\r\n<div><span style=\"color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12pt;\">New support ticket has been opened.</span></div>\r\n<div><span style=\"color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Subject: <span style=\"background-color: inherit;\">{ticket_subject}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; color: #000000; font-size: 12pt; background-color: inherit;\">Department: {ticket_department}</span></div>\r\n<div><span style=\"color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Priority: <span style=\"background-color: inherit;\">{ticket_priority}</span></span></div>\r\n<div><span style=\"color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">Ticket message:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; color: #000000; font-size: 12pt; background-color: inherit;\">{ticket_message}<br /><br />You can view the ticket on the following link:&nbsp;<a href=\"{ticket_url}\">#{ticket_id}</a><br /></span></div>\r\n<div>&nbsp;</div>\r\n<div><span style=\"color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>', '{companyname} | CRM', '', '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('4', 'ticket', 'ticket-reply', 'english', 'Ticket Reply (Sent to Customer)', 'New Ticket Reply', '<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi&nbsp;<span style=\"background-color: inherit;\">{contact_firstname} </span>{contact_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">You have a new ticket reply to ticket #{ticket_id}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Subject: <span style=\"background-color: inherit;\">{ticket_subject}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">Department: {ticket_department}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Priority: <span style=\"background-color: inherit;\">{ticket_priority}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">Ticket message:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">{ticket_message}<br /><br />You can view the ticket on the following link:&nbsp;<a href=\"{ticket_url}\">#{ticket_id}</a><br /></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>', '{companyname} | CRM', '', '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('5', 'ticket', 'ticket-autoresponse', 'english', 'New Ticket Opened - Autoresponse', 'New Support Ticket Opened', '<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi&nbsp;{contact_firstname} {contact_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Thank you for contacting our support team. A support ticket has now been opened for your request. You will be notified when a response is made by email.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Subject: {ticket_subject}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Department: {ticket_department}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Priority: {ticket_priority}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">Ticket message:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">{ticket_message}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>', '{companyname} | CRM', '', '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('6', 'invoice', 'invoice-payment-recorded', 'english', 'Invoice Payment Recorded (Sent to Customer)', 'Invoice Payment Recorded', '<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Payment recorded for invoice&nbsp;# {invoice_number}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>', '{companyname} | CRM', '', '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('7', 'invoice', 'invoice-overdue-notice', 'english', 'Invoice Overdue Notice', 'Invoice Overdue Notice - {invoice_number}', '<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">This is an overdue notice for invoice # {invoice_number}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">This invoice was due: {invoice_duedate}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span>&nbsp;</div>\r\n<div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">You can view the invoice on the following link: <a href=\"{invoice_link}\">{invoice_number}</a></span></div>\r\n</div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>', '{companyname} | CRM', '', '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('8', 'invoice', 'invoice-already-send', 'english', 'Invoice Already Sent to Customer', 'On your command here is the invoice', '<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi <span style=\"background-color: inherit;\">{contact_firstname} {contact_lastname}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">At your request, here is the invoice with number #{invoice_number}</span></div>\r\n<div>\r\n<div>&nbsp;</div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">You can view the invoice on the following link: <a href=\"{invoice_link}\">{invoice_number}</a></span></div>\r\n</div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Please contact us for more information.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>', '{companyname} | CRM', '', '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('9', 'ticket', 'new-ticket-created-staff', 'english', 'New Ticket Created (Opened by Customer, Sent to Staff Members)', 'New Ticket Created', '<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">A new support ticket has been opened.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Subject: <span style=\"background-color: inherit;\">{ticket_subject}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">Department: {ticket_department}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Priority: <span style=\"background-color: inherit;\">{ticket_priority}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">Ticket message:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">{ticket_message}<br /><br />You can view the ticket on the following link:&nbsp;<a href=\"{ticket_url}\">#{ticket_id}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>', '{companyname} | CRM', '', '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('10', 'estimate', 'estimate-send-to-client', 'english', 'Send Estimate to Customer', 'Estimate # {estimate_number} created', '<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Dear {contact_firstname}&nbsp;{contact_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Please find the attached estimate # {estimate_number}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Estimate status:&nbsp;<strong>{estimate_status}<br /><br /></strong>You can view the estimate on the following link:&nbsp;<a href=\"{estimate_link}\">{estimate_number}</a><br /></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">We look forward to your communication.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>', '{companyname} | CRM', '', '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('11', 'ticket', 'ticket-reply-to-admin', 'english', 'Ticket Reply (Sent to Staff)', 'New Support Ticket Reply', '<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">A new support ticket reply from {contact_firstname} {contact_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Subject: <span style=\"background-color: inherit;\">{ticket_subject}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">Department: {ticket_department}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Priority: <span style=\"background-color: inherit;\">{ticket_priority}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Ticket message:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">{ticket_message}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-size: 12pt;\">You can view the ticket on the following link: <a href=\"{ticket_url}\">#{ticket_id}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>', '{companyname} | CRM', '', '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('12', 'estimate', 'estimate-already-send', 'english', 'Estimate Already Sent to Customer', 'Estimate # {estimate_number} ', '<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Dear {contact_firstname}&nbsp;{contact_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Thank you for your estimate request.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">You can view the estimate on the following link:&nbsp;<a href=\"{estimate_link}\">{estimate_number}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Please contact us for more information.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>', '{companyname} | CRM', '', '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('13', 'contract', 'contract-expiration', 'english', 'Contract Expiration', 'Contract Expiration Reminder', '<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Dear {client_company}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">This is a reminder that the following contract will expire soon:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Subject: {contract_subject}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Description: {contract_description}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Date Start: {contract_datestart}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Date End: {contract_dateend}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Value: {contract_contract_value}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Please contact us for more information.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>', '{companyname} | CRM', '', '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('14', 'tasks', 'task-assigned', 'english', 'New Task Assigned (Sent to Staff)', 'New Task Assigned to You - {task_name}', '<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Dear {staff_firstname} {staff_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">You have been assigned a new task:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Name: <span style=\"background-color: #ffffff;\">{task_name}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Due date: <span style=\"background-color: #ffffff;\">{task_duedate}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Priority: <span style=\"background-color: #ffffff;\">{task_priority}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">Click on the following link to view: <a href=\"{task_link}\">{task_name}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>', '{companyname} | CRM', '', '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('15', 'tasks', 'task-added-as-follower', 'english', 'Staff Member Added as Follower on Task', 'You are added as follower on task - {task_name}', '<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi {staff_firstname} <span style=\"background-color: #ffffff;\">{staff_lastname}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">You have been added as follower on the following task:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Name: {task_name}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Description: {task_description}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Priority: {task_priority}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Start date: {task_startdate}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Due date: {task_duedate}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Click on the following link to view: <a href=\"{task_link}\">{task_name}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>\r\n<div>&nbsp;</div>', '{companyname} | CRM', '', '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('16', 'tasks', 'task-commented', 'english', 'New Comment on Task (Sent to Staff)', 'New Comment on Task - {task_name}', '<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Dear {staff_firstname} {staff_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">A comment has been made on the following task:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Name: &nbsp;{task_name}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Description: &nbsp;{task_description}<br />Comment: {task_comment}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Click on the following link to view: <a href=\"{task_link}\">{task_name}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>', '{companyname} | CRM', '', '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('17', 'tasks', 'task-marked-as-finished', 'english', 'Task Marked as Finished (Sent to Staff)', 'Task Marked as Finished - {task_name}', '<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi {staff_firstname} {staff_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{task_user_take_action} marked the following task as complete:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><span style=\"background-color: inherit;\">Name: </span>{task_name}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><span style=\"background-color: inherit;\">Description: </span><span style=\"background-color: inherit;\">{task_description}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Due date: <span style=\"background-color: #ffffff;\">{task_duedate}<br /></span></span><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">Click on the following link to view: <a href=\"{task_link}\">{task_name}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>', '{companyname} | CRM', '', '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('18', 'tasks', 'task-added-attachment', 'english', 'New Attachment on Task (Sent to Staff)', 'New Attachment on Task - {task_name}', '<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi {staff_firstname} {staff_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{task_user_take_action} added an attachment on the following task:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><span style=\"background-color: inherit;\">Name: </span>{task_name}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><span style=\"background-color: inherit;\">Description: </span><span style=\"background-color: inherit;\">{task_description}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Click on the following link to view: <a href=\"{task_link}\">{task_name}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>', '{companyname} | CRM', '', '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('19', 'tasks', 'task-unmarked-as-finished', 'english', 'Task Unmarked as Finished (Sent to Staff)', 'Task UN-marked as finished - {task_name}', '<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi {staff_firstname} {staff_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{task_user_take_action} <span style=\"background-color: inherit;\">marked the </span>following task as <strong>in-complete / unfinished</strong></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><span style=\"background-color: inherit;\">Name: </span><span style=\"background-color: inherit;\">{task_name}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><span style=\"background-color: inherit;\">Description: </span><span style=\"background-color: inherit;\">{task_description}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Due date: {task_duedate}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Click on the following link to view: <a href=\"{task_link}\">{task_name}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>', '{companyname} | CRM', '', '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('20', 'estimate', 'estimate-declined-to-staff', 'english', 'Estimate Declined (Sent to Staff)', 'Customer Declined Estimate', '<div><span style=\"font-size: 12pt;\">Hi</span></div>\r\n<div><span style=\"font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-size: 12pt;\">Customer ({client_company}) declined estimate with number <span style=\"background-color: inherit;\">{estimate_number}</span></span></div>\r\n<div><span style=\"font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-size: 12pt;\">You can view the estimate on the following link:&nbsp;<a href=\"{estimate_link}\">{estimate_number}</a></span></div>\r\n<div><span style=\"font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-size: 12pt;\">{email_signature}</span></div>\r\n<div><span style=\"font-size: 12pt;\">&nbsp;</span></div>', '{companyname} | CRM', '', '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('21', 'estimate', 'estimate-accepted-to-staff', 'english', 'Estimate Accepted (Sent to Staff)', 'Customer Accepted Estimate', '<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Customer ({client_company}) accepted estimate with number <span style=\"background-color: inherit;\">{estimate_number}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">You can view the estimate on the following link:&nbsp;<a href=\"{estimate_link}\">{estimate_number}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>', '{companyname} | CRM', '', '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('22', 'proposals', 'proposal-client-accepted', 'english', 'Customer Action - Accepted (Sent to Staff)', 'Customer Accepted Proposal', '<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Client {proposal_proposal_to} accepted the following proposal:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Subject: {proposal_subject}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Total: {proposal_total}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">View the proposal on the following link: <a href=\"{proposal_link}\">{proposal_subject}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;</div>', '{companyname} | CRM', '', '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('23', 'proposals', 'proposal-send-to-customer', 'english', 'Send Proposal to Customer', 'Proposal', '<div>Dear {proposal_proposal_to}</div>\r\n<div>&nbsp;</div>\r\n<div>Please find our attached proposal.</div>\r\n<div>&nbsp;</div>\r\n<div>This proposal is valid until: {proposal_open_till}</div>\r\n<div>You can view the proposal on the following link: <a href=\"{proposal_link}\">{proposal_subject}</a></div>\r\n<div>&nbsp;</div>\r\n<div>Please don\'t hesitate to comment online if you have any questions.</div>\r\n<div>&nbsp;</div>\r\n<div>We look forward to your communication.</div>\r\n<div>&nbsp;</div>\r\n<div>Kind regards</div>\r\n<div>&nbsp;</div>\r\n<div>{email_signature}</div>', '{companyname} | CRM', '', '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('24', 'proposals', 'proposal-client-declined', 'english', 'Customer Action - Declined (Sent to Staff)', 'Client Declined Proposal', '<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Customer {proposal_proposal_to} declined the proposal {proposal_subject}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">View the proposal on the following link <a href=\"{proposal_link}\">{proposal_subject}</a>&nbsp;or from the admin area.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div>&nbsp;</div>', '{companyname} | CRM', '', '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('25', 'proposals', 'proposal-client-thank-you', 'english', 'Thank You Email (Sent to Customer After Accept)', 'Thank for you accepting proposal', '<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Dear {proposal_proposal_to}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Thank for for accepting the proposal.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">We look forward to doing business with you.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">We will contact you as soon as possible</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>', '{companyname} | CRM', '', '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('26', 'proposals', 'proposal-comment-to-client', 'english', 'New Comment  (Sent to Customer Contacts)', 'New Proposal Comment', '<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Dear {proposal_proposal_to}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">A new comment has been made on the following proposal: {proposal_subject}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">You can view and reply to the comment on the following link: <a href=\"{proposal_link}\">{proposal_subject}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>', '{companyname} | CRM', '', '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('27', 'proposals', 'proposal-comment-to-admin', 'english', 'New Comment (Sent to Staff) ', 'New Proposal Comment', '<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hello</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">A new <strong>comment</strong> has been made to the proposal <span style=\"background-color: inherit;\">{proposal_subject}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">You can view and reply to the comment on the following link: <a href=\"{proposal_link}\">{proposal_subject}</a><span style=\"background-color: inherit;\">&nbsp;or from the admin area.</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>', '{companyname} | CRM', '', '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('28', 'estimate', 'estimate-thank-you-to-customer', 'english', 'Thank You Email (Sent to Customer After Accept)', 'Thank for you accepting estimate', '<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Dear {contact_firstname}&nbsp;{contact_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Thank for for accepting the estimate.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">We look forward to doing business with you.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">We will contact you as soon as possible.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>', '{companyname} | CRM', '', '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('29', 'tasks', 'task-deadline-notification', 'english', 'Task Deadline Reminder - Sent to Assigned Members', 'Task Deadline Reminder', '<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi {staff_firstname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">This is an automated email from {companyname}.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">The task {task_name} deadline is on {task_duedate}. This task is still not finished.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">Click on the following link to view: <a href=\"{task_link}\">{task_name}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>', '{companyname} | CRM', '', '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('30', 'contract', 'send-contract', 'english', 'Send Contract to Customer', 'Contract - {contract_subject}', '<p>Hi&nbsp;{client_company}</p>\r\n<p>Please find the {contract_subject}&nbsp;attached.</p>\r\n<p>Regards,</p>\r\n<p>{email_signature}</p>', '{companyname} | CRM', '', '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('31', 'invoice', 'invoice-payment-recorded-to-staff', 'english', 'Invoice Payment Recorded (Sent to Staff)', 'New Invoice Payment', '<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Customer recorded payment for invoice # {invoice_number}</span></div>\r\n<div>&nbsp;</div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">You can view the invoice on the following link: <a href=\"{invoice_link}\">{invoice_number}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>', '{companyname} | CRM', '', '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('32', 'ticket', 'auto-close-ticket', 'english', 'Auto Close Ticket', 'Ticket Auto Closed', '<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi&nbsp;{contact_firstname}&nbsp;{contact_lastname}</span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Ticket&nbsp;{ticket_subject} has been auto close due to inactivity.</span></p>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Ticket #: <span style=\"background-color: inherit;\">{ticket_id}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">Department: {ticket_department}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Priority: <span style=\"background-color: inherit;\">{ticket_priority}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">Ticket message:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">{ticket_message}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>', '{companyname} | CRM', '', '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('33', 'project', 'new-project-discussion-created-to-staff', 'english', 'New Project Discussion (Sent to Project Members)', 'New Project Discussion Created', '<p>Hello&nbsp;{staff_firstname}&nbsp;{staff_lastname}</p>\r\n<p>New project discussion created from&nbsp;{discussion_creator}</p>\r\n<p>Subject:&nbsp;{discussion_subject}</p>\r\n<p>Description:&nbsp;{discussion_description}</p>\r\n<p>You can view the discussion on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a></p>\r\n<p>Kind Regards,</p>\r\n<p>{email_signature}</p>', '{companyname} | CRM', '', '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('34', 'project', 'new-project-discussion-created-to-customer', 'english', 'New Project Discussion (Sent to Customer Contacts)', 'New Project Discussion Created', '<p>Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}</p>\r\n<p>New project discussion created from&nbsp;{discussion_creator}</p>\r\n<p>Subject:&nbsp;{discussion_subject}</p>\r\n<p>Description:&nbsp;{discussion_description}</p>\r\n<p>You can view the discussion on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a></p>\r\n<p>Kind Regards,</p>\r\n<p>{email_signature}</p>', '{companyname} | CRM', '', '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('35', 'project', 'new-project-file-uploaded-to-customer', 'english', 'New Project File Uploaded (Sent to Customer Contacts)', 'New Project File Uploaded', '<p>Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}</p>\r\n<p>New project&nbsp;file is uploaded on&nbsp;{project_name} from&nbsp;{file_creator}</p>\r\n<p>You can view the project on the following link: <a href=\"{project_link}\">{project_name}</a><br />To view&nbsp;the file in our CRM&nbsp;you can click on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a></p>\r\n<p>Kind Regards,</p>\r\n<p>{email_signature}</p>', '{companyname} | CRM', '', '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('36', 'project', 'new-project-file-uploaded-to-staff', 'english', 'New Project File Uploaded (Sent to Project Members)', 'New Project File Uploaded', '<p>Hello&nbsp;{staff_firstname}&nbsp;{staff_lastname}</p>\r\n<p>New project&nbsp;file is uploaded on&nbsp;{project_name} from&nbsp;{file_creator}</p>\r\n<p>You can view the project on the following link: <a href=\"{project_link}\">{project_name}</a><br />To view&nbsp;the file you can click on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a></p>\r\n<p>Kind Regards,</p>\r\n<p>{email_signature}</p>', '{companyname} | CRM', '', '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('37', 'project', 'new-project-discussion-comment-to-customer', 'english', 'New Discussion Comment  (Sent to Customer Contacts)', 'New Discussion Comment', '<p>Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}</p>\r\n<p>New discussion comment has been made on {discussion_subject} from&nbsp;{comment_creator}</p>\r\n<p>Discussion subject:&nbsp;{discussion_subject}</p>\r\n<p>Comment:&nbsp;{discussion_comment}</p>\r\n<p>You can view the discussion on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a></p>\r\n<p>Kind Regards,</p>\r\n<p>{email_signature}</p>', '{companyname} | CRM', '', '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('38', 'project', 'new-project-discussion-comment-to-staff', 'english', 'New Discussion Comment (Sent to Project Members)', 'New Discussion Comment', '<p>Hello&nbsp;{staff_firstname}&nbsp;{staff_lastname}</p>\r\n<p>New discussion comment has been made on {discussion_subject} from&nbsp;{comment_creator}</p>\r\n<p>Discussion subject:&nbsp;{discussion_subject}</p>\r\n<p>Comment:&nbsp;{discussion_comment}</p>\r\n<p>You can view the discussion on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a></p>\r\n<p>Kind Regards,</p>\r\n<p>{email_signature}</p>', '{companyname} | CRM', '', '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('39', 'project', 'staff-added-as-project-member', 'english', 'Staff Added as Project Member', 'New project assigned to you', '<p>Hello&nbsp;{staff_firstname}&nbsp;{staff_lastname}</p>\r\n<p>New project has been assigned to you.</p>\r\n<p>You can view the project on the following link <a href=\"{project_link}\">{project_name}</a></p>\r\n<p>{email_signature}</p>', '{companyname} | CRM', '', '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('40', 'estimate', 'estimate-expiry-reminder', 'english', 'Estimate Expiration Reminder', 'Estimate Expiration Reminder', '<p>Hello&nbsp;{client_company}</p>\r\n<p>The estimate with&nbsp;{estimate_number} will expire on&nbsp;{estimate_expirydate}</p>\r\n<p>You can view the estimate on the following link: <a href=\"{estimate_link}\">{estimate_number}</a></p>\r\n<p>Regards,</p>\r\n<p>{email_signature}</p>', '{companyname} | CRM', '', '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('41', 'proposals', 'proposal-expiry-reminder', 'english', 'Proposal Expiration Reminder', 'Proposal Expiration Reminder', '<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hello&nbsp;{proposal_proposal_to}</span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">The proposal {proposal_subject} will expire on&nbsp;{proposal_open_till}</span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">You can view the proposal on the following link: <a href=\"{proposal_link}\">{proposal_subject}</a></span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Regards,</span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></p>', '{companyname} | CRM', '', '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('42', 'staff', 'new-staff-created', 'english', 'New Staff Created (Welcome Email)', 'You are added as staff member', 'Hello&nbsp;{staff_firstname}&nbsp;{staff_lastname}<br /><br />You are added as member on our CRM.<br />You can login at {admin_url}<br /><br />Please use the following&nbsp;logic credentials:<br /><br />Email:&nbsp;{staff_email}<br />Password:&nbsp;{password}<br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('43', 'client', 'contact-forgot-password', 'english', 'Forgot Password', 'Create New Password', '<h2>Create a new password</h2>\r\nForgot your password?<br /> To create a new password, just follow this link:<br /> <br /><a href=\"{reset_password_url}\">Reset Password</a><br /> <br /> You received this email, because it was requested by a {companyname}&nbsp;user. This is part of the procedure to create a new password on the system. If you DID NOT request a new password then please ignore this email and your password will remain the same. <br /><br /> {email_signature}', '{companyname} | CRM', '', '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('44', 'client', 'contact-password-reseted', 'english', 'Password Reset - Confirmation', 'Your password has been changed', '<strong>You have changed your password.<br /></strong><br /> Please, keep it in your records so you don\'t forget it.<br /> <br /> Your email address for login is: {contact_email}<br />If this wasnt you, please contact us.<br /><br />{email_signature}', '{companyname} | CRM', '', '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('45', 'client', 'contact-set-password', 'english', 'Set New Password', 'Set new password on {companyname} ', '<h2>Setup your new password on {companyname}</h2>\r\nPlease use the following link to setup your new password.<br /><br />Keep it in your records so you don\'t forget it.<br /><br /> Please set your new password in 48 hours. After that you wont be able to set your password. <br /><br />You can login at: {crm_url}<br /> Your email address for login: {contact_email}<br /> <br /><a href=\"{set_password_url}\">Set New Password</a><br /> <br />{email_signature}', '{companyname} | CRM', '', '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('46', 'staff', 'staff-forgot-password', 'english', 'Forgot Password', 'Create New Password', '<h2>Create a new password</h2>\r\nForgot your password?<br /> To create a new password, just follow this link:<br /> <br /><a href=\"{reset_password_url}\">Reset Password</a><br /> <br /> You received this email, because it was requested by a {companyname}&nbsp;user. This is part of the procedure to create a new password on the system. If you DID NOT request a new password then please ignore this email and your password will remain the same. <br /><br /> {email_signature}', '{companyname} | CRM', '', '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('47', 'staff', 'staff-password-reseted', 'english', 'Password Reset - Confirmation', 'Your password has been changed', '<strong>You have changed your password.<br /></strong><br /> Please, keep it in your records so you don\'t forget it.<br /> <br /> Your email address for login is: {staff_email}<br /> If this wasnt you, please contact us.<br /><br />{email_signature}', '{companyname} | CRM', '', '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('48', 'project', 'assigned-to-project', 'english', 'New Project Created (Sent to Customer Contacts)', 'New Project Created', '<p>Hello&nbsp;{contact_firstname}</p>\r\n<p>New project is assigned to your company.<br />Project Name:&nbsp;{project_name}</p>\r\n<p>You can view the project on the following link:&nbsp;<a href=\"{project_link}\">{project_name}</a></p>\r\n<p>We are looking forward hearing from you.</p>\r\n<p>{email_signature}</p>', '{companyname} | CRM', '', '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('49', 'tasks', 'task-marked-as-finished-to-contacts', 'english', 'Task Marked as Finished (Sent to customer contacts)', 'Task Marked as Finished - {task_name}', '<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{task_user_take_action} marked the following task as complete:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><span style=\"background-color: inherit;\">Name: </span>{task_name}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><span style=\"background-color: inherit;\">Description: </span><span style=\"background-color: inherit;\">{task_description}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Due date: <span style=\"background-color: #ffffff;\">{task_duedate}<br /></span></span><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">Click on the following link to view: <a href=\"{task_link}\">{task_name}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>', '{companyname} | CRM', '', '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('50', 'tasks', 'task-added-attachment-to-contacts', 'english', 'New Attachment on Task (Sent to Customer Contacts)', 'New Attachment on Task - {task_name}', '<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{task_user_take_action} added an attachment on the following task:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><span style=\"background-color: inherit;\">Name: </span>{task_name}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><span style=\"background-color: inherit;\">Description: </span><span style=\"background-color: inherit;\">{task_description}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">Click on the following link to view: <a href=\"{task_link}\">{task_name}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>', '{companyname} | CRM', '', '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('51', 'tasks', 'task-commented-to-contacts', 'english', 'New Comment on Task (Sent to Customer Contacts)', 'New Comment on Task - {task_name}', '<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Dear {contact_firstname} {contact_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">A comment has been made on the following task:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Name: &nbsp;{task_name}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Description: &nbsp;{task_description}<br />Comment: {task_comment}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Click on the following link to view: <a href=\"{task_link}\">{task_name}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>', '{companyname} | CRM', '', '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('52', 'leads', 'new-lead-assigned', 'english', 'New Lead Assigned to Staff Member', 'New lead assigned to you', '<p>Hello {lead_assigned}</p>\r\n<p>New&nbsp;lead is assigned to you.<br /><br />You can view the lead on the following link: <a href=\"{lead_link}\">{lead_name}<br /><br /></a>Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('53', 'client', 'new-client-created', 'portuguese', 'New Contact Added/Registered (Welcome Email) [portuguese]', 'Welcome aboard', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('54', 'invoice', 'invoice-send-to-client', 'portuguese', 'Send Invoice to Customer [portuguese]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('55', 'ticket', 'new-ticket-opened-admin', 'portuguese', 'New Ticket Opened (Opened by Staff, Sent to Customer) [portuguese]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('56', 'ticket', 'ticket-reply', 'portuguese', 'Ticket Reply (Sent to Customer) [portuguese]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('57', 'ticket', 'ticket-autoresponse', 'portuguese', 'New Ticket Opened - Autoresponse [portuguese]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('58', 'invoice', 'invoice-payment-recorded', 'portuguese', 'Invoice Payment Recorded (Sent to Customer) [portuguese]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('59', 'invoice', 'invoice-overdue-notice', 'portuguese', 'Invoice Overdue Notice [portuguese]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('60', 'invoice', 'invoice-already-send', 'portuguese', 'Invoice Already Sent to Customer [portuguese]', 'On your command here is the invoice', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('61', 'ticket', 'new-ticket-created-staff', 'portuguese', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [portuguese]', 'New Ticket Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('62', 'estimate', 'estimate-send-to-client', 'portuguese', 'Send Estimate to Customer [portuguese]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('63', 'ticket', 'ticket-reply-to-admin', 'portuguese', 'Ticket Reply (Sent to Staff) [portuguese]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('64', 'estimate', 'estimate-already-send', 'portuguese', 'Estimate Already Sent to Customer [portuguese]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('65', 'contract', 'contract-expiration', 'portuguese', 'Contract Expiration [portuguese]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('66', 'tasks', 'task-assigned', 'portuguese', 'New Task Assigned (Sent to Staff) [portuguese]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('67', 'tasks', 'task-added-as-follower', 'portuguese', 'Staff Member Added as Follower on Task [portuguese]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('68', 'tasks', 'task-commented', 'portuguese', 'New Comment on Task (Sent to Staff) [portuguese]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('69', 'tasks', 'task-marked-as-finished', 'portuguese', 'Task Marked as Finished (Sent to Staff) [portuguese]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('70', 'tasks', 'task-added-attachment', 'portuguese', 'New Attachment on Task (Sent to Staff) [portuguese]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('71', 'tasks', 'task-unmarked-as-finished', 'portuguese', 'Task Unmarked as Finished (Sent to Staff) [portuguese]', 'Task UN-marked as finished - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('72', 'estimate', 'estimate-declined-to-staff', 'portuguese', 'Estimate Declined (Sent to Staff) [portuguese]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('73', 'estimate', 'estimate-accepted-to-staff', 'portuguese', 'Estimate Accepted (Sent to Staff) [portuguese]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('74', 'proposals', 'proposal-client-accepted', 'portuguese', 'Customer Action - Accepted (Sent to Staff) [portuguese]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('75', 'proposals', 'proposal-send-to-customer', 'portuguese', 'Send Proposal to Customer [portuguese]', 'Proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('76', 'proposals', 'proposal-client-declined', 'portuguese', 'Customer Action - Declined (Sent to Staff) [portuguese]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('77', 'proposals', 'proposal-client-thank-you', 'portuguese', 'Thank You Email (Sent to Customer After Accept) [portuguese]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('78', 'proposals', 'proposal-comment-to-client', 'portuguese', 'New Comment  (Sent to Customer Contacts) [portuguese]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('79', 'proposals', 'proposal-comment-to-admin', 'portuguese', 'New Comment (Sent to Staff)  [portuguese]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('80', 'estimate', 'estimate-thank-you-to-customer', 'portuguese', 'Thank You Email (Sent to Customer After Accept) [portuguese]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('81', 'tasks', 'task-deadline-notification', 'portuguese', 'Task Deadline Reminder - Sent to Assigned Members [portuguese]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('82', 'contract', 'send-contract', 'portuguese', 'Send Contract to Customer [portuguese]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('83', 'invoice', 'invoice-payment-recorded-to-staff', 'portuguese', 'Invoice Payment Recorded (Sent to Staff) [portuguese]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('84', 'ticket', 'auto-close-ticket', 'portuguese', 'Auto Close Ticket [portuguese]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('85', 'project', 'new-project-discussion-created-to-staff', 'portuguese', 'New Project Discussion (Sent to Project Members) [portuguese]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('86', 'project', 'new-project-discussion-created-to-customer', 'portuguese', 'New Project Discussion (Sent to Customer Contacts) [portuguese]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('87', 'project', 'new-project-file-uploaded-to-customer', 'portuguese', 'New Project File Uploaded (Sent to Customer Contacts) [portuguese]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('88', 'project', 'new-project-file-uploaded-to-staff', 'portuguese', 'New Project File Uploaded (Sent to Project Members) [portuguese]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('89', 'project', 'new-project-discussion-comment-to-customer', 'portuguese', 'New Discussion Comment  (Sent to Customer Contacts) [portuguese]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('90', 'project', 'new-project-discussion-comment-to-staff', 'portuguese', 'New Discussion Comment (Sent to Project Members) [portuguese]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('91', 'project', 'staff-added-as-project-member', 'portuguese', 'Staff Added as Project Member [portuguese]', 'New project assigned to you', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('92', 'estimate', 'estimate-expiry-reminder', 'portuguese', 'Estimate Expiration Reminder [portuguese]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('93', 'proposals', 'proposal-expiry-reminder', 'portuguese', 'Proposal Expiration Reminder [portuguese]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('94', 'staff', 'new-staff-created', 'portuguese', 'New Staff Created (Welcome Email) [portuguese]', 'You are added as staff member', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('95', 'client', 'contact-forgot-password', 'portuguese', 'Forgot Password [portuguese]', 'Create New Password', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('96', 'client', 'contact-password-reseted', 'portuguese', 'Password Reset - Confirmation [portuguese]', 'Your password has been changed', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('97', 'client', 'contact-set-password', 'portuguese', 'Set New Password [portuguese]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('98', 'staff', 'staff-forgot-password', 'portuguese', 'Forgot Password [portuguese]', 'Create New Password', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('99', 'staff', 'staff-password-reseted', 'portuguese', 'Password Reset - Confirmation [portuguese]', 'Your password has been changed', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('100', 'project', 'assigned-to-project', 'portuguese', 'New Project Created (Sent to Customer Contacts) [portuguese]', 'New Project Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('101', 'tasks', 'task-marked-as-finished-to-contacts', 'portuguese', 'Task Marked as Finished (Sent to customer contacts) [portuguese]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('102', 'tasks', 'task-added-attachment-to-contacts', 'portuguese', 'New Attachment on Task (Sent to Customer Contacts) [portuguese]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('103', 'tasks', 'task-commented-to-contacts', 'portuguese', 'New Comment on Task (Sent to Customer Contacts) [portuguese]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('104', 'leads', 'new-lead-assigned', 'portuguese', 'New Lead Assigned to Staff Member [portuguese]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('105', 'client', 'new-client-created', 'french', 'New Contact Added/Registered (Welcome Email) [french]', 'Welcome aboard', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('106', 'invoice', 'invoice-send-to-client', 'french', 'Send Invoice to Customer [french]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('107', 'ticket', 'new-ticket-opened-admin', 'french', 'New Ticket Opened (Opened by Staff, Sent to Customer) [french]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('108', 'ticket', 'ticket-reply', 'french', 'Ticket Reply (Sent to Customer) [french]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('109', 'ticket', 'ticket-autoresponse', 'french', 'New Ticket Opened - Autoresponse [french]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('110', 'invoice', 'invoice-payment-recorded', 'french', 'Invoice Payment Recorded (Sent to Customer) [french]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('111', 'invoice', 'invoice-overdue-notice', 'french', 'Invoice Overdue Notice [french]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('112', 'invoice', 'invoice-already-send', 'french', 'Invoice Already Sent to Customer [french]', 'On your command here is the invoice', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('113', 'ticket', 'new-ticket-created-staff', 'french', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [french]', 'New Ticket Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('114', 'estimate', 'estimate-send-to-client', 'french', 'Send Estimate to Customer [french]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('115', 'ticket', 'ticket-reply-to-admin', 'french', 'Ticket Reply (Sent to Staff) [french]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('116', 'estimate', 'estimate-already-send', 'french', 'Estimate Already Sent to Customer [french]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('117', 'contract', 'contract-expiration', 'french', 'Contract Expiration [french]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('118', 'tasks', 'task-assigned', 'french', 'New Task Assigned (Sent to Staff) [french]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('119', 'tasks', 'task-added-as-follower', 'french', 'Staff Member Added as Follower on Task [french]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('120', 'tasks', 'task-commented', 'french', 'New Comment on Task (Sent to Staff) [french]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('121', 'tasks', 'task-marked-as-finished', 'french', 'Task Marked as Finished (Sent to Staff) [french]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('122', 'tasks', 'task-added-attachment', 'french', 'New Attachment on Task (Sent to Staff) [french]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('123', 'tasks', 'task-unmarked-as-finished', 'french', 'Task Unmarked as Finished (Sent to Staff) [french]', 'Task UN-marked as finished - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('124', 'estimate', 'estimate-declined-to-staff', 'french', 'Estimate Declined (Sent to Staff) [french]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('125', 'estimate', 'estimate-accepted-to-staff', 'french', 'Estimate Accepted (Sent to Staff) [french]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('126', 'proposals', 'proposal-client-accepted', 'french', 'Customer Action - Accepted (Sent to Staff) [french]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('127', 'proposals', 'proposal-send-to-customer', 'french', 'Send Proposal to Customer [french]', 'Proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('128', 'proposals', 'proposal-client-declined', 'french', 'Customer Action - Declined (Sent to Staff) [french]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('129', 'proposals', 'proposal-client-thank-you', 'french', 'Thank You Email (Sent to Customer After Accept) [french]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('130', 'proposals', 'proposal-comment-to-client', 'french', 'New Comment  (Sent to Customer Contacts) [french]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('131', 'proposals', 'proposal-comment-to-admin', 'french', 'New Comment (Sent to Staff)  [french]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('132', 'estimate', 'estimate-thank-you-to-customer', 'french', 'Thank You Email (Sent to Customer After Accept) [french]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('133', 'tasks', 'task-deadline-notification', 'french', 'Task Deadline Reminder - Sent to Assigned Members [french]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('134', 'contract', 'send-contract', 'french', 'Send Contract to Customer [french]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('135', 'invoice', 'invoice-payment-recorded-to-staff', 'french', 'Invoice Payment Recorded (Sent to Staff) [french]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('136', 'ticket', 'auto-close-ticket', 'french', 'Auto Close Ticket [french]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('137', 'project', 'new-project-discussion-created-to-staff', 'french', 'New Project Discussion (Sent to Project Members) [french]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('138', 'project', 'new-project-discussion-created-to-customer', 'french', 'New Project Discussion (Sent to Customer Contacts) [french]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('139', 'project', 'new-project-file-uploaded-to-customer', 'french', 'New Project File Uploaded (Sent to Customer Contacts) [french]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('140', 'project', 'new-project-file-uploaded-to-staff', 'french', 'New Project File Uploaded (Sent to Project Members) [french]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('141', 'project', 'new-project-discussion-comment-to-customer', 'french', 'New Discussion Comment  (Sent to Customer Contacts) [french]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('142', 'project', 'new-project-discussion-comment-to-staff', 'french', 'New Discussion Comment (Sent to Project Members) [french]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('143', 'project', 'staff-added-as-project-member', 'french', 'Staff Added as Project Member [french]', 'New project assigned to you', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('144', 'estimate', 'estimate-expiry-reminder', 'french', 'Estimate Expiration Reminder [french]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('145', 'proposals', 'proposal-expiry-reminder', 'french', 'Proposal Expiration Reminder [french]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('146', 'staff', 'new-staff-created', 'french', 'New Staff Created (Welcome Email) [french]', 'You are added as staff member', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('147', 'client', 'contact-forgot-password', 'french', 'Forgot Password [french]', 'Create New Password', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('148', 'client', 'contact-password-reseted', 'french', 'Password Reset - Confirmation [french]', 'Your password has been changed', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('149', 'client', 'contact-set-password', 'french', 'Set New Password [french]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('150', 'staff', 'staff-forgot-password', 'french', 'Forgot Password [french]', 'Create New Password', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('151', 'staff', 'staff-password-reseted', 'french', 'Password Reset - Confirmation [french]', 'Your password has been changed', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('152', 'project', 'assigned-to-project', 'french', 'New Project Created (Sent to Customer Contacts) [french]', 'New Project Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('153', 'tasks', 'task-marked-as-finished-to-contacts', 'french', 'Task Marked as Finished (Sent to customer contacts) [french]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('154', 'tasks', 'task-added-attachment-to-contacts', 'french', 'New Attachment on Task (Sent to Customer Contacts) [french]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('155', 'tasks', 'task-commented-to-contacts', 'french', 'New Comment on Task (Sent to Customer Contacts) [french]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('156', 'leads', 'new-lead-assigned', 'french', 'New Lead Assigned to Staff Member [french]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('157', 'client', 'new-client-created', 'dutch', 'New Contact Added/Registered (Welcome Email) [dutch]', 'Welcome aboard', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('158', 'invoice', 'invoice-send-to-client', 'dutch', 'Send Invoice to Customer [dutch]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('159', 'ticket', 'new-ticket-opened-admin', 'dutch', 'New Ticket Opened (Opened by Staff, Sent to Customer) [dutch]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('160', 'ticket', 'ticket-reply', 'dutch', 'Ticket Reply (Sent to Customer) [dutch]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('161', 'ticket', 'ticket-autoresponse', 'dutch', 'New Ticket Opened - Autoresponse [dutch]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('162', 'invoice', 'invoice-payment-recorded', 'dutch', 'Invoice Payment Recorded (Sent to Customer) [dutch]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('163', 'invoice', 'invoice-overdue-notice', 'dutch', 'Invoice Overdue Notice [dutch]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('164', 'invoice', 'invoice-already-send', 'dutch', 'Invoice Already Sent to Customer [dutch]', 'On your command here is the invoice', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('165', 'ticket', 'new-ticket-created-staff', 'dutch', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [dutch]', 'New Ticket Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('166', 'estimate', 'estimate-send-to-client', 'dutch', 'Send Estimate to Customer [dutch]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('167', 'ticket', 'ticket-reply-to-admin', 'dutch', 'Ticket Reply (Sent to Staff) [dutch]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('168', 'estimate', 'estimate-already-send', 'dutch', 'Estimate Already Sent to Customer [dutch]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('169', 'contract', 'contract-expiration', 'dutch', 'Contract Expiration [dutch]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('170', 'tasks', 'task-assigned', 'dutch', 'New Task Assigned (Sent to Staff) [dutch]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('171', 'tasks', 'task-added-as-follower', 'dutch', 'Staff Member Added as Follower on Task [dutch]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('172', 'tasks', 'task-commented', 'dutch', 'New Comment on Task (Sent to Staff) [dutch]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('173', 'tasks', 'task-marked-as-finished', 'dutch', 'Task Marked as Finished (Sent to Staff) [dutch]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('174', 'tasks', 'task-added-attachment', 'dutch', 'New Attachment on Task (Sent to Staff) [dutch]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('175', 'tasks', 'task-unmarked-as-finished', 'dutch', 'Task Unmarked as Finished (Sent to Staff) [dutch]', 'Task UN-marked as finished - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('176', 'estimate', 'estimate-declined-to-staff', 'dutch', 'Estimate Declined (Sent to Staff) [dutch]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('177', 'estimate', 'estimate-accepted-to-staff', 'dutch', 'Estimate Accepted (Sent to Staff) [dutch]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('178', 'proposals', 'proposal-client-accepted', 'dutch', 'Customer Action - Accepted (Sent to Staff) [dutch]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('179', 'proposals', 'proposal-send-to-customer', 'dutch', 'Send Proposal to Customer [dutch]', 'Proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('180', 'proposals', 'proposal-client-declined', 'dutch', 'Customer Action - Declined (Sent to Staff) [dutch]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('181', 'proposals', 'proposal-client-thank-you', 'dutch', 'Thank You Email (Sent to Customer After Accept) [dutch]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('182', 'proposals', 'proposal-comment-to-client', 'dutch', 'New Comment  (Sent to Customer Contacts) [dutch]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('183', 'proposals', 'proposal-comment-to-admin', 'dutch', 'New Comment (Sent to Staff)  [dutch]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('184', 'estimate', 'estimate-thank-you-to-customer', 'dutch', 'Thank You Email (Sent to Customer After Accept) [dutch]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('185', 'tasks', 'task-deadline-notification', 'dutch', 'Task Deadline Reminder - Sent to Assigned Members [dutch]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('186', 'contract', 'send-contract', 'dutch', 'Send Contract to Customer [dutch]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('187', 'invoice', 'invoice-payment-recorded-to-staff', 'dutch', 'Invoice Payment Recorded (Sent to Staff) [dutch]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('188', 'ticket', 'auto-close-ticket', 'dutch', 'Auto Close Ticket [dutch]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('189', 'project', 'new-project-discussion-created-to-staff', 'dutch', 'New Project Discussion (Sent to Project Members) [dutch]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('190', 'project', 'new-project-discussion-created-to-customer', 'dutch', 'New Project Discussion (Sent to Customer Contacts) [dutch]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('191', 'project', 'new-project-file-uploaded-to-customer', 'dutch', 'New Project File Uploaded (Sent to Customer Contacts) [dutch]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('192', 'project', 'new-project-file-uploaded-to-staff', 'dutch', 'New Project File Uploaded (Sent to Project Members) [dutch]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('193', 'project', 'new-project-discussion-comment-to-customer', 'dutch', 'New Discussion Comment  (Sent to Customer Contacts) [dutch]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('194', 'project', 'new-project-discussion-comment-to-staff', 'dutch', 'New Discussion Comment (Sent to Project Members) [dutch]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('195', 'project', 'staff-added-as-project-member', 'dutch', 'Staff Added as Project Member [dutch]', 'New project assigned to you', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('196', 'estimate', 'estimate-expiry-reminder', 'dutch', 'Estimate Expiration Reminder [dutch]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('197', 'proposals', 'proposal-expiry-reminder', 'dutch', 'Proposal Expiration Reminder [dutch]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('198', 'staff', 'new-staff-created', 'dutch', 'New Staff Created (Welcome Email) [dutch]', 'You are added as staff member', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('199', 'client', 'contact-forgot-password', 'dutch', 'Forgot Password [dutch]', 'Create New Password', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('200', 'client', 'contact-password-reseted', 'dutch', 'Password Reset - Confirmation [dutch]', 'Your password has been changed', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('201', 'client', 'contact-set-password', 'dutch', 'Set New Password [dutch]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('202', 'staff', 'staff-forgot-password', 'dutch', 'Forgot Password [dutch]', 'Create New Password', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('203', 'staff', 'staff-password-reseted', 'dutch', 'Password Reset - Confirmation [dutch]', 'Your password has been changed', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('204', 'project', 'assigned-to-project', 'dutch', 'New Project Created (Sent to Customer Contacts) [dutch]', 'New Project Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('205', 'tasks', 'task-marked-as-finished-to-contacts', 'dutch', 'Task Marked as Finished (Sent to customer contacts) [dutch]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('206', 'tasks', 'task-added-attachment-to-contacts', 'dutch', 'New Attachment on Task (Sent to Customer Contacts) [dutch]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('207', 'tasks', 'task-commented-to-contacts', 'dutch', 'New Comment on Task (Sent to Customer Contacts) [dutch]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('208', 'leads', 'new-lead-assigned', 'dutch', 'New Lead Assigned to Staff Member [dutch]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('209', 'client', 'new-client-created', 'spanish', 'New Contact Added/Registered (Welcome Email) [spanish]', 'Welcome aboard', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('210', 'invoice', 'invoice-send-to-client', 'spanish', 'Send Invoice to Customer [spanish]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('211', 'ticket', 'new-ticket-opened-admin', 'spanish', 'New Ticket Opened (Opened by Staff, Sent to Customer) [spanish]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('212', 'ticket', 'ticket-reply', 'spanish', 'Ticket Reply (Sent to Customer) [spanish]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('213', 'ticket', 'ticket-autoresponse', 'spanish', 'New Ticket Opened - Autoresponse [spanish]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('214', 'invoice', 'invoice-payment-recorded', 'spanish', 'Invoice Payment Recorded (Sent to Customer) [spanish]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('215', 'invoice', 'invoice-overdue-notice', 'spanish', 'Invoice Overdue Notice [spanish]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('216', 'invoice', 'invoice-already-send', 'spanish', 'Invoice Already Sent to Customer [spanish]', 'On your command here is the invoice', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('217', 'ticket', 'new-ticket-created-staff', 'spanish', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [spanish]', 'New Ticket Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('218', 'estimate', 'estimate-send-to-client', 'spanish', 'Send Estimate to Customer [spanish]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('219', 'ticket', 'ticket-reply-to-admin', 'spanish', 'Ticket Reply (Sent to Staff) [spanish]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('220', 'estimate', 'estimate-already-send', 'spanish', 'Estimate Already Sent to Customer [spanish]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('221', 'contract', 'contract-expiration', 'spanish', 'Contract Expiration [spanish]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('222', 'tasks', 'task-assigned', 'spanish', 'New Task Assigned (Sent to Staff) [spanish]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('223', 'tasks', 'task-added-as-follower', 'spanish', 'Staff Member Added as Follower on Task [spanish]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('224', 'tasks', 'task-commented', 'spanish', 'New Comment on Task (Sent to Staff) [spanish]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('225', 'tasks', 'task-marked-as-finished', 'spanish', 'Task Marked as Finished (Sent to Staff) [spanish]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('226', 'tasks', 'task-added-attachment', 'spanish', 'New Attachment on Task (Sent to Staff) [spanish]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('227', 'tasks', 'task-unmarked-as-finished', 'spanish', 'Task Unmarked as Finished (Sent to Staff) [spanish]', 'Task UN-marked as finished - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('228', 'estimate', 'estimate-declined-to-staff', 'spanish', 'Estimate Declined (Sent to Staff) [spanish]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('229', 'estimate', 'estimate-accepted-to-staff', 'spanish', 'Estimate Accepted (Sent to Staff) [spanish]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('230', 'proposals', 'proposal-client-accepted', 'spanish', 'Customer Action - Accepted (Sent to Staff) [spanish]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('231', 'proposals', 'proposal-send-to-customer', 'spanish', 'Send Proposal to Customer [spanish]', 'Proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('232', 'proposals', 'proposal-client-declined', 'spanish', 'Customer Action - Declined (Sent to Staff) [spanish]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('233', 'proposals', 'proposal-client-thank-you', 'spanish', 'Thank You Email (Sent to Customer After Accept) [spanish]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('234', 'proposals', 'proposal-comment-to-client', 'spanish', 'New Comment  (Sent to Customer Contacts) [spanish]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('235', 'proposals', 'proposal-comment-to-admin', 'spanish', 'New Comment (Sent to Staff)  [spanish]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('236', 'estimate', 'estimate-thank-you-to-customer', 'spanish', 'Thank You Email (Sent to Customer After Accept) [spanish]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('237', 'tasks', 'task-deadline-notification', 'spanish', 'Task Deadline Reminder - Sent to Assigned Members [spanish]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('238', 'contract', 'send-contract', 'spanish', 'Send Contract to Customer [spanish]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('239', 'invoice', 'invoice-payment-recorded-to-staff', 'spanish', 'Invoice Payment Recorded (Sent to Staff) [spanish]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('240', 'ticket', 'auto-close-ticket', 'spanish', 'Auto Close Ticket [spanish]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('241', 'project', 'new-project-discussion-created-to-staff', 'spanish', 'New Project Discussion (Sent to Project Members) [spanish]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('242', 'project', 'new-project-discussion-created-to-customer', 'spanish', 'New Project Discussion (Sent to Customer Contacts) [spanish]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('243', 'project', 'new-project-file-uploaded-to-customer', 'spanish', 'New Project File Uploaded (Sent to Customer Contacts) [spanish]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('244', 'project', 'new-project-file-uploaded-to-staff', 'spanish', 'New Project File Uploaded (Sent to Project Members) [spanish]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('245', 'project', 'new-project-discussion-comment-to-customer', 'spanish', 'New Discussion Comment  (Sent to Customer Contacts) [spanish]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('246', 'project', 'new-project-discussion-comment-to-staff', 'spanish', 'New Discussion Comment (Sent to Project Members) [spanish]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('247', 'project', 'staff-added-as-project-member', 'spanish', 'Staff Added as Project Member [spanish]', 'New project assigned to you', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('248', 'estimate', 'estimate-expiry-reminder', 'spanish', 'Estimate Expiration Reminder [spanish]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('249', 'proposals', 'proposal-expiry-reminder', 'spanish', 'Proposal Expiration Reminder [spanish]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('250', 'staff', 'new-staff-created', 'spanish', 'New Staff Created (Welcome Email) [spanish]', 'You are added as staff member', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('251', 'client', 'contact-forgot-password', 'spanish', 'Forgot Password [spanish]', 'Create New Password', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('252', 'client', 'contact-password-reseted', 'spanish', 'Password Reset - Confirmation [spanish]', 'Your password has been changed', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('253', 'client', 'contact-set-password', 'spanish', 'Set New Password [spanish]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('254', 'staff', 'staff-forgot-password', 'spanish', 'Forgot Password [spanish]', 'Create New Password', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('255', 'staff', 'staff-password-reseted', 'spanish', 'Password Reset - Confirmation [spanish]', 'Your password has been changed', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('256', 'project', 'assigned-to-project', 'spanish', 'New Project Created (Sent to Customer Contacts) [spanish]', 'New Project Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('257', 'tasks', 'task-marked-as-finished-to-contacts', 'spanish', 'Task Marked as Finished (Sent to customer contacts) [spanish]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('258', 'tasks', 'task-added-attachment-to-contacts', 'spanish', 'New Attachment on Task (Sent to Customer Contacts) [spanish]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('259', 'tasks', 'task-commented-to-contacts', 'spanish', 'New Comment on Task (Sent to Customer Contacts) [spanish]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('260', 'leads', 'new-lead-assigned', 'spanish', 'New Lead Assigned to Staff Member [spanish]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('261', 'client', 'new-client-created', 'italian', 'New Contact Added/Registered (Welcome Email) [italian]', 'Welcome aboard', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('262', 'invoice', 'invoice-send-to-client', 'italian', 'Send Invoice to Customer [italian]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('263', 'ticket', 'new-ticket-opened-admin', 'italian', 'New Ticket Opened (Opened by Staff, Sent to Customer) [italian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('264', 'ticket', 'ticket-reply', 'italian', 'Ticket Reply (Sent to Customer) [italian]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('265', 'ticket', 'ticket-autoresponse', 'italian', 'New Ticket Opened - Autoresponse [italian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('266', 'invoice', 'invoice-payment-recorded', 'italian', 'Invoice Payment Recorded (Sent to Customer) [italian]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('267', 'invoice', 'invoice-overdue-notice', 'italian', 'Invoice Overdue Notice [italian]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('268', 'invoice', 'invoice-already-send', 'italian', 'Invoice Already Sent to Customer [italian]', 'On your command here is the invoice', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('269', 'ticket', 'new-ticket-created-staff', 'italian', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [italian]', 'New Ticket Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('270', 'estimate', 'estimate-send-to-client', 'italian', 'Send Estimate to Customer [italian]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('271', 'ticket', 'ticket-reply-to-admin', 'italian', 'Ticket Reply (Sent to Staff) [italian]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('272', 'estimate', 'estimate-already-send', 'italian', 'Estimate Already Sent to Customer [italian]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('273', 'contract', 'contract-expiration', 'italian', 'Contract Expiration [italian]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('274', 'tasks', 'task-assigned', 'italian', 'New Task Assigned (Sent to Staff) [italian]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('275', 'tasks', 'task-added-as-follower', 'italian', 'Staff Member Added as Follower on Task [italian]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('276', 'tasks', 'task-commented', 'italian', 'New Comment on Task (Sent to Staff) [italian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('277', 'tasks', 'task-marked-as-finished', 'italian', 'Task Marked as Finished (Sent to Staff) [italian]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('278', 'tasks', 'task-added-attachment', 'italian', 'New Attachment on Task (Sent to Staff) [italian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('279', 'tasks', 'task-unmarked-as-finished', 'italian', 'Task Unmarked as Finished (Sent to Staff) [italian]', 'Task UN-marked as finished - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('280', 'estimate', 'estimate-declined-to-staff', 'italian', 'Estimate Declined (Sent to Staff) [italian]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('281', 'estimate', 'estimate-accepted-to-staff', 'italian', 'Estimate Accepted (Sent to Staff) [italian]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('282', 'proposals', 'proposal-client-accepted', 'italian', 'Customer Action - Accepted (Sent to Staff) [italian]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('283', 'proposals', 'proposal-send-to-customer', 'italian', 'Send Proposal to Customer [italian]', 'Proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('284', 'proposals', 'proposal-client-declined', 'italian', 'Customer Action - Declined (Sent to Staff) [italian]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('285', 'proposals', 'proposal-client-thank-you', 'italian', 'Thank You Email (Sent to Customer After Accept) [italian]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('286', 'proposals', 'proposal-comment-to-client', 'italian', 'New Comment  (Sent to Customer Contacts) [italian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('287', 'proposals', 'proposal-comment-to-admin', 'italian', 'New Comment (Sent to Staff)  [italian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('288', 'estimate', 'estimate-thank-you-to-customer', 'italian', 'Thank You Email (Sent to Customer After Accept) [italian]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('289', 'tasks', 'task-deadline-notification', 'italian', 'Task Deadline Reminder - Sent to Assigned Members [italian]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('290', 'contract', 'send-contract', 'italian', 'Send Contract to Customer [italian]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('291', 'invoice', 'invoice-payment-recorded-to-staff', 'italian', 'Invoice Payment Recorded (Sent to Staff) [italian]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('292', 'ticket', 'auto-close-ticket', 'italian', 'Auto Close Ticket [italian]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('293', 'project', 'new-project-discussion-created-to-staff', 'italian', 'New Project Discussion (Sent to Project Members) [italian]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('294', 'project', 'new-project-discussion-created-to-customer', 'italian', 'New Project Discussion (Sent to Customer Contacts) [italian]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('295', 'project', 'new-project-file-uploaded-to-customer', 'italian', 'New Project File Uploaded (Sent to Customer Contacts) [italian]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('296', 'project', 'new-project-file-uploaded-to-staff', 'italian', 'New Project File Uploaded (Sent to Project Members) [italian]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('297', 'project', 'new-project-discussion-comment-to-customer', 'italian', 'New Discussion Comment  (Sent to Customer Contacts) [italian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('298', 'project', 'new-project-discussion-comment-to-staff', 'italian', 'New Discussion Comment (Sent to Project Members) [italian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('299', 'project', 'staff-added-as-project-member', 'italian', 'Staff Added as Project Member [italian]', 'New project assigned to you', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('300', 'estimate', 'estimate-expiry-reminder', 'italian', 'Estimate Expiration Reminder [italian]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('301', 'proposals', 'proposal-expiry-reminder', 'italian', 'Proposal Expiration Reminder [italian]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('302', 'staff', 'new-staff-created', 'italian', 'New Staff Created (Welcome Email) [italian]', 'You are added as staff member', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('303', 'client', 'contact-forgot-password', 'italian', 'Forgot Password [italian]', 'Create New Password', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('304', 'client', 'contact-password-reseted', 'italian', 'Password Reset - Confirmation [italian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('305', 'client', 'contact-set-password', 'italian', 'Set New Password [italian]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('306', 'staff', 'staff-forgot-password', 'italian', 'Forgot Password [italian]', 'Create New Password', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('307', 'staff', 'staff-password-reseted', 'italian', 'Password Reset - Confirmation [italian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('308', 'project', 'assigned-to-project', 'italian', 'New Project Created (Sent to Customer Contacts) [italian]', 'New Project Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('309', 'tasks', 'task-marked-as-finished-to-contacts', 'italian', 'Task Marked as Finished (Sent to customer contacts) [italian]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('310', 'tasks', 'task-added-attachment-to-contacts', 'italian', 'New Attachment on Task (Sent to Customer Contacts) [italian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('311', 'tasks', 'task-commented-to-contacts', 'italian', 'New Comment on Task (Sent to Customer Contacts) [italian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('312', 'leads', 'new-lead-assigned', 'italian', 'New Lead Assigned to Staff Member [italian]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('313', 'client', 'new-client-created', 'chinese', 'New Contact Added/Registered (Welcome Email) [chinese]', 'Welcome aboard', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('314', 'invoice', 'invoice-send-to-client', 'chinese', 'Send Invoice to Customer [chinese]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('315', 'ticket', 'new-ticket-opened-admin', 'chinese', 'New Ticket Opened (Opened by Staff, Sent to Customer) [chinese]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('316', 'ticket', 'ticket-reply', 'chinese', 'Ticket Reply (Sent to Customer) [chinese]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('317', 'ticket', 'ticket-autoresponse', 'chinese', 'New Ticket Opened - Autoresponse [chinese]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('318', 'invoice', 'invoice-payment-recorded', 'chinese', 'Invoice Payment Recorded (Sent to Customer) [chinese]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('319', 'invoice', 'invoice-overdue-notice', 'chinese', 'Invoice Overdue Notice [chinese]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('320', 'invoice', 'invoice-already-send', 'chinese', 'Invoice Already Sent to Customer [chinese]', 'On your command here is the invoice', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('321', 'ticket', 'new-ticket-created-staff', 'chinese', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [chinese]', 'New Ticket Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('322', 'estimate', 'estimate-send-to-client', 'chinese', 'Send Estimate to Customer [chinese]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('323', 'ticket', 'ticket-reply-to-admin', 'chinese', 'Ticket Reply (Sent to Staff) [chinese]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('324', 'estimate', 'estimate-already-send', 'chinese', 'Estimate Already Sent to Customer [chinese]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('325', 'contract', 'contract-expiration', 'chinese', 'Contract Expiration [chinese]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('326', 'tasks', 'task-assigned', 'chinese', 'New Task Assigned (Sent to Staff) [chinese]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('327', 'tasks', 'task-added-as-follower', 'chinese', 'Staff Member Added as Follower on Task [chinese]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('328', 'tasks', 'task-commented', 'chinese', 'New Comment on Task (Sent to Staff) [chinese]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('329', 'tasks', 'task-marked-as-finished', 'chinese', 'Task Marked as Finished (Sent to Staff) [chinese]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('330', 'tasks', 'task-added-attachment', 'chinese', 'New Attachment on Task (Sent to Staff) [chinese]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('331', 'tasks', 'task-unmarked-as-finished', 'chinese', 'Task Unmarked as Finished (Sent to Staff) [chinese]', 'Task UN-marked as finished - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('332', 'estimate', 'estimate-declined-to-staff', 'chinese', 'Estimate Declined (Sent to Staff) [chinese]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('333', 'estimate', 'estimate-accepted-to-staff', 'chinese', 'Estimate Accepted (Sent to Staff) [chinese]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('334', 'proposals', 'proposal-client-accepted', 'chinese', 'Customer Action - Accepted (Sent to Staff) [chinese]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('335', 'proposals', 'proposal-send-to-customer', 'chinese', 'Send Proposal to Customer [chinese]', 'Proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('336', 'proposals', 'proposal-client-declined', 'chinese', 'Customer Action - Declined (Sent to Staff) [chinese]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('337', 'proposals', 'proposal-client-thank-you', 'chinese', 'Thank You Email (Sent to Customer After Accept) [chinese]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('338', 'proposals', 'proposal-comment-to-client', 'chinese', 'New Comment  (Sent to Customer Contacts) [chinese]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('339', 'proposals', 'proposal-comment-to-admin', 'chinese', 'New Comment (Sent to Staff)  [chinese]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('340', 'estimate', 'estimate-thank-you-to-customer', 'chinese', 'Thank You Email (Sent to Customer After Accept) [chinese]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('341', 'tasks', 'task-deadline-notification', 'chinese', 'Task Deadline Reminder - Sent to Assigned Members [chinese]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('342', 'contract', 'send-contract', 'chinese', 'Send Contract to Customer [chinese]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('343', 'invoice', 'invoice-payment-recorded-to-staff', 'chinese', 'Invoice Payment Recorded (Sent to Staff) [chinese]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('344', 'ticket', 'auto-close-ticket', 'chinese', 'Auto Close Ticket [chinese]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('345', 'project', 'new-project-discussion-created-to-staff', 'chinese', 'New Project Discussion (Sent to Project Members) [chinese]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('346', 'project', 'new-project-discussion-created-to-customer', 'chinese', 'New Project Discussion (Sent to Customer Contacts) [chinese]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('347', 'project', 'new-project-file-uploaded-to-customer', 'chinese', 'New Project File Uploaded (Sent to Customer Contacts) [chinese]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('348', 'project', 'new-project-file-uploaded-to-staff', 'chinese', 'New Project File Uploaded (Sent to Project Members) [chinese]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('349', 'project', 'new-project-discussion-comment-to-customer', 'chinese', 'New Discussion Comment  (Sent to Customer Contacts) [chinese]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('350', 'project', 'new-project-discussion-comment-to-staff', 'chinese', 'New Discussion Comment (Sent to Project Members) [chinese]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('351', 'project', 'staff-added-as-project-member', 'chinese', 'Staff Added as Project Member [chinese]', 'New project assigned to you', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('352', 'estimate', 'estimate-expiry-reminder', 'chinese', 'Estimate Expiration Reminder [chinese]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('353', 'proposals', 'proposal-expiry-reminder', 'chinese', 'Proposal Expiration Reminder [chinese]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('354', 'staff', 'new-staff-created', 'chinese', 'New Staff Created (Welcome Email) [chinese]', 'You are added as staff member', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('355', 'client', 'contact-forgot-password', 'chinese', 'Forgot Password [chinese]', 'Create New Password', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('356', 'client', 'contact-password-reseted', 'chinese', 'Password Reset - Confirmation [chinese]', 'Your password has been changed', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('357', 'client', 'contact-set-password', 'chinese', 'Set New Password [chinese]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('358', 'staff', 'staff-forgot-password', 'chinese', 'Forgot Password [chinese]', 'Create New Password', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('359', 'staff', 'staff-password-reseted', 'chinese', 'Password Reset - Confirmation [chinese]', 'Your password has been changed', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('360', 'project', 'assigned-to-project', 'chinese', 'New Project Created (Sent to Customer Contacts) [chinese]', 'New Project Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('361', 'tasks', 'task-marked-as-finished-to-contacts', 'chinese', 'Task Marked as Finished (Sent to customer contacts) [chinese]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('362', 'tasks', 'task-added-attachment-to-contacts', 'chinese', 'New Attachment on Task (Sent to Customer Contacts) [chinese]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('363', 'tasks', 'task-commented-to-contacts', 'chinese', 'New Comment on Task (Sent to Customer Contacts) [chinese]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('364', 'leads', 'new-lead-assigned', 'chinese', 'New Lead Assigned to Staff Member [chinese]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('365', 'client', 'new-client-created', 'polish', 'New Contact Added/Registered (Welcome Email) [polish]', 'Welcome aboard', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('366', 'invoice', 'invoice-send-to-client', 'polish', 'Send Invoice to Customer [polish]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('367', 'ticket', 'new-ticket-opened-admin', 'polish', 'New Ticket Opened (Opened by Staff, Sent to Customer) [polish]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('368', 'ticket', 'ticket-reply', 'polish', 'Ticket Reply (Sent to Customer) [polish]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('369', 'ticket', 'ticket-autoresponse', 'polish', 'New Ticket Opened - Autoresponse [polish]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('370', 'invoice', 'invoice-payment-recorded', 'polish', 'Invoice Payment Recorded (Sent to Customer) [polish]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('371', 'invoice', 'invoice-overdue-notice', 'polish', 'Invoice Overdue Notice [polish]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('372', 'invoice', 'invoice-already-send', 'polish', 'Invoice Already Sent to Customer [polish]', 'On your command here is the invoice', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('373', 'ticket', 'new-ticket-created-staff', 'polish', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [polish]', 'New Ticket Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('374', 'estimate', 'estimate-send-to-client', 'polish', 'Send Estimate to Customer [polish]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('375', 'ticket', 'ticket-reply-to-admin', 'polish', 'Ticket Reply (Sent to Staff) [polish]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('376', 'estimate', 'estimate-already-send', 'polish', 'Estimate Already Sent to Customer [polish]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('377', 'contract', 'contract-expiration', 'polish', 'Contract Expiration [polish]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('378', 'tasks', 'task-assigned', 'polish', 'New Task Assigned (Sent to Staff) [polish]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('379', 'tasks', 'task-added-as-follower', 'polish', 'Staff Member Added as Follower on Task [polish]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('380', 'tasks', 'task-commented', 'polish', 'New Comment on Task (Sent to Staff) [polish]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('381', 'tasks', 'task-marked-as-finished', 'polish', 'Task Marked as Finished (Sent to Staff) [polish]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('382', 'tasks', 'task-added-attachment', 'polish', 'New Attachment on Task (Sent to Staff) [polish]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('383', 'tasks', 'task-unmarked-as-finished', 'polish', 'Task Unmarked as Finished (Sent to Staff) [polish]', 'Task UN-marked as finished - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('384', 'estimate', 'estimate-declined-to-staff', 'polish', 'Estimate Declined (Sent to Staff) [polish]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('385', 'estimate', 'estimate-accepted-to-staff', 'polish', 'Estimate Accepted (Sent to Staff) [polish]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('386', 'proposals', 'proposal-client-accepted', 'polish', 'Customer Action - Accepted (Sent to Staff) [polish]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('387', 'proposals', 'proposal-send-to-customer', 'polish', 'Send Proposal to Customer [polish]', 'Proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('388', 'proposals', 'proposal-client-declined', 'polish', 'Customer Action - Declined (Sent to Staff) [polish]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('389', 'proposals', 'proposal-client-thank-you', 'polish', 'Thank You Email (Sent to Customer After Accept) [polish]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('390', 'proposals', 'proposal-comment-to-client', 'polish', 'New Comment  (Sent to Customer Contacts) [polish]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('391', 'proposals', 'proposal-comment-to-admin', 'polish', 'New Comment (Sent to Staff)  [polish]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('392', 'estimate', 'estimate-thank-you-to-customer', 'polish', 'Thank You Email (Sent to Customer After Accept) [polish]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('393', 'tasks', 'task-deadline-notification', 'polish', 'Task Deadline Reminder - Sent to Assigned Members [polish]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('394', 'contract', 'send-contract', 'polish', 'Send Contract to Customer [polish]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('395', 'invoice', 'invoice-payment-recorded-to-staff', 'polish', 'Invoice Payment Recorded (Sent to Staff) [polish]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('396', 'ticket', 'auto-close-ticket', 'polish', 'Auto Close Ticket [polish]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('397', 'project', 'new-project-discussion-created-to-staff', 'polish', 'New Project Discussion (Sent to Project Members) [polish]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('398', 'project', 'new-project-discussion-created-to-customer', 'polish', 'New Project Discussion (Sent to Customer Contacts) [polish]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('399', 'project', 'new-project-file-uploaded-to-customer', 'polish', 'New Project File Uploaded (Sent to Customer Contacts) [polish]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('400', 'project', 'new-project-file-uploaded-to-staff', 'polish', 'New Project File Uploaded (Sent to Project Members) [polish]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('401', 'project', 'new-project-discussion-comment-to-customer', 'polish', 'New Discussion Comment  (Sent to Customer Contacts) [polish]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('402', 'project', 'new-project-discussion-comment-to-staff', 'polish', 'New Discussion Comment (Sent to Project Members) [polish]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('403', 'project', 'staff-added-as-project-member', 'polish', 'Staff Added as Project Member [polish]', 'New project assigned to you', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('404', 'estimate', 'estimate-expiry-reminder', 'polish', 'Estimate Expiration Reminder [polish]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('405', 'proposals', 'proposal-expiry-reminder', 'polish', 'Proposal Expiration Reminder [polish]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('406', 'staff', 'new-staff-created', 'polish', 'New Staff Created (Welcome Email) [polish]', 'You are added as staff member', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('407', 'client', 'contact-forgot-password', 'polish', 'Forgot Password [polish]', 'Create New Password', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('408', 'client', 'contact-password-reseted', 'polish', 'Password Reset - Confirmation [polish]', 'Your password has been changed', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('409', 'client', 'contact-set-password', 'polish', 'Set New Password [polish]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('410', 'staff', 'staff-forgot-password', 'polish', 'Forgot Password [polish]', 'Create New Password', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('411', 'staff', 'staff-password-reseted', 'polish', 'Password Reset - Confirmation [polish]', 'Your password has been changed', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('412', 'project', 'assigned-to-project', 'polish', 'New Project Created (Sent to Customer Contacts) [polish]', 'New Project Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('413', 'tasks', 'task-marked-as-finished-to-contacts', 'polish', 'Task Marked as Finished (Sent to customer contacts) [polish]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('414', 'tasks', 'task-added-attachment-to-contacts', 'polish', 'New Attachment on Task (Sent to Customer Contacts) [polish]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('415', 'tasks', 'task-commented-to-contacts', 'polish', 'New Comment on Task (Sent to Customer Contacts) [polish]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('416', 'leads', 'new-lead-assigned', 'polish', 'New Lead Assigned to Staff Member [polish]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('417', 'client', 'new-client-created', 'turkish', 'New Contact Added/Registered (Welcome Email) [turkish]', 'Welcome aboard', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('418', 'invoice', 'invoice-send-to-client', 'turkish', 'Send Invoice to Customer [turkish]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('419', 'ticket', 'new-ticket-opened-admin', 'turkish', 'New Ticket Opened (Opened by Staff, Sent to Customer) [turkish]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('420', 'ticket', 'ticket-reply', 'turkish', 'Ticket Reply (Sent to Customer) [turkish]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('421', 'ticket', 'ticket-autoresponse', 'turkish', 'New Ticket Opened - Autoresponse [turkish]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('422', 'invoice', 'invoice-payment-recorded', 'turkish', 'Invoice Payment Recorded (Sent to Customer) [turkish]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('423', 'invoice', 'invoice-overdue-notice', 'turkish', 'Invoice Overdue Notice [turkish]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('424', 'invoice', 'invoice-already-send', 'turkish', 'Invoice Already Sent to Customer [turkish]', 'On your command here is the invoice', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('425', 'ticket', 'new-ticket-created-staff', 'turkish', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [turkish]', 'New Ticket Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('426', 'estimate', 'estimate-send-to-client', 'turkish', 'Send Estimate to Customer [turkish]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('427', 'ticket', 'ticket-reply-to-admin', 'turkish', 'Ticket Reply (Sent to Staff) [turkish]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('428', 'estimate', 'estimate-already-send', 'turkish', 'Estimate Already Sent to Customer [turkish]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('429', 'contract', 'contract-expiration', 'turkish', 'Contract Expiration [turkish]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('430', 'tasks', 'task-assigned', 'turkish', 'New Task Assigned (Sent to Staff) [turkish]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('431', 'tasks', 'task-added-as-follower', 'turkish', 'Staff Member Added as Follower on Task [turkish]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('432', 'tasks', 'task-commented', 'turkish', 'New Comment on Task (Sent to Staff) [turkish]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('433', 'tasks', 'task-marked-as-finished', 'turkish', 'Task Marked as Finished (Sent to Staff) [turkish]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('434', 'tasks', 'task-added-attachment', 'turkish', 'New Attachment on Task (Sent to Staff) [turkish]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('435', 'tasks', 'task-unmarked-as-finished', 'turkish', 'Task Unmarked as Finished (Sent to Staff) [turkish]', 'Task UN-marked as finished - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('436', 'estimate', 'estimate-declined-to-staff', 'turkish', 'Estimate Declined (Sent to Staff) [turkish]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('437', 'estimate', 'estimate-accepted-to-staff', 'turkish', 'Estimate Accepted (Sent to Staff) [turkish]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('438', 'proposals', 'proposal-client-accepted', 'turkish', 'Customer Action - Accepted (Sent to Staff) [turkish]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('439', 'proposals', 'proposal-send-to-customer', 'turkish', 'Send Proposal to Customer [turkish]', 'Proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('440', 'proposals', 'proposal-client-declined', 'turkish', 'Customer Action - Declined (Sent to Staff) [turkish]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('441', 'proposals', 'proposal-client-thank-you', 'turkish', 'Thank You Email (Sent to Customer After Accept) [turkish]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('442', 'proposals', 'proposal-comment-to-client', 'turkish', 'New Comment  (Sent to Customer Contacts) [turkish]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('443', 'proposals', 'proposal-comment-to-admin', 'turkish', 'New Comment (Sent to Staff)  [turkish]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('444', 'estimate', 'estimate-thank-you-to-customer', 'turkish', 'Thank You Email (Sent to Customer After Accept) [turkish]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('445', 'tasks', 'task-deadline-notification', 'turkish', 'Task Deadline Reminder - Sent to Assigned Members [turkish]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('446', 'contract', 'send-contract', 'turkish', 'Send Contract to Customer [turkish]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('447', 'invoice', 'invoice-payment-recorded-to-staff', 'turkish', 'Invoice Payment Recorded (Sent to Staff) [turkish]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('448', 'ticket', 'auto-close-ticket', 'turkish', 'Auto Close Ticket [turkish]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('449', 'project', 'new-project-discussion-created-to-staff', 'turkish', 'New Project Discussion (Sent to Project Members) [turkish]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('450', 'project', 'new-project-discussion-created-to-customer', 'turkish', 'New Project Discussion (Sent to Customer Contacts) [turkish]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('451', 'project', 'new-project-file-uploaded-to-customer', 'turkish', 'New Project File Uploaded (Sent to Customer Contacts) [turkish]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('452', 'project', 'new-project-file-uploaded-to-staff', 'turkish', 'New Project File Uploaded (Sent to Project Members) [turkish]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('453', 'project', 'new-project-discussion-comment-to-customer', 'turkish', 'New Discussion Comment  (Sent to Customer Contacts) [turkish]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('454', 'project', 'new-project-discussion-comment-to-staff', 'turkish', 'New Discussion Comment (Sent to Project Members) [turkish]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('455', 'project', 'staff-added-as-project-member', 'turkish', 'Staff Added as Project Member [turkish]', 'New project assigned to you', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('456', 'estimate', 'estimate-expiry-reminder', 'turkish', 'Estimate Expiration Reminder [turkish]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('457', 'proposals', 'proposal-expiry-reminder', 'turkish', 'Proposal Expiration Reminder [turkish]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('458', 'staff', 'new-staff-created', 'turkish', 'New Staff Created (Welcome Email) [turkish]', 'You are added as staff member', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('459', 'client', 'contact-forgot-password', 'turkish', 'Forgot Password [turkish]', 'Create New Password', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('460', 'client', 'contact-password-reseted', 'turkish', 'Password Reset - Confirmation [turkish]', 'Your password has been changed', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('461', 'client', 'contact-set-password', 'turkish', 'Set New Password [turkish]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('462', 'staff', 'staff-forgot-password', 'turkish', 'Forgot Password [turkish]', 'Create New Password', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('463', 'staff', 'staff-password-reseted', 'turkish', 'Password Reset - Confirmation [turkish]', 'Your password has been changed', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('464', 'project', 'assigned-to-project', 'turkish', 'New Project Created (Sent to Customer Contacts) [turkish]', 'New Project Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('465', 'tasks', 'task-marked-as-finished-to-contacts', 'turkish', 'Task Marked as Finished (Sent to customer contacts) [turkish]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('466', 'tasks', 'task-added-attachment-to-contacts', 'turkish', 'New Attachment on Task (Sent to Customer Contacts) [turkish]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('467', 'tasks', 'task-commented-to-contacts', 'turkish', 'New Comment on Task (Sent to Customer Contacts) [turkish]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('468', 'leads', 'new-lead-assigned', 'turkish', 'New Lead Assigned to Staff Member [turkish]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('469', 'client', 'new-client-created', 'swedish', 'New Contact Added/Registered (Welcome Email) [swedish]', 'Welcome aboard', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('470', 'invoice', 'invoice-send-to-client', 'swedish', 'Send Invoice to Customer [swedish]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('471', 'ticket', 'new-ticket-opened-admin', 'swedish', 'New Ticket Opened (Opened by Staff, Sent to Customer) [swedish]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('472', 'ticket', 'ticket-reply', 'swedish', 'Ticket Reply (Sent to Customer) [swedish]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('473', 'ticket', 'ticket-autoresponse', 'swedish', 'New Ticket Opened - Autoresponse [swedish]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('474', 'invoice', 'invoice-payment-recorded', 'swedish', 'Invoice Payment Recorded (Sent to Customer) [swedish]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('475', 'invoice', 'invoice-overdue-notice', 'swedish', 'Invoice Overdue Notice [swedish]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('476', 'invoice', 'invoice-already-send', 'swedish', 'Invoice Already Sent to Customer [swedish]', 'On your command here is the invoice', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('477', 'ticket', 'new-ticket-created-staff', 'swedish', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [swedish]', 'New Ticket Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('478', 'estimate', 'estimate-send-to-client', 'swedish', 'Send Estimate to Customer [swedish]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('479', 'ticket', 'ticket-reply-to-admin', 'swedish', 'Ticket Reply (Sent to Staff) [swedish]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('480', 'estimate', 'estimate-already-send', 'swedish', 'Estimate Already Sent to Customer [swedish]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('481', 'contract', 'contract-expiration', 'swedish', 'Contract Expiration [swedish]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('482', 'tasks', 'task-assigned', 'swedish', 'New Task Assigned (Sent to Staff) [swedish]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('483', 'tasks', 'task-added-as-follower', 'swedish', 'Staff Member Added as Follower on Task [swedish]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('484', 'tasks', 'task-commented', 'swedish', 'New Comment on Task (Sent to Staff) [swedish]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('485', 'tasks', 'task-marked-as-finished', 'swedish', 'Task Marked as Finished (Sent to Staff) [swedish]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('486', 'tasks', 'task-added-attachment', 'swedish', 'New Attachment on Task (Sent to Staff) [swedish]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('487', 'tasks', 'task-unmarked-as-finished', 'swedish', 'Task Unmarked as Finished (Sent to Staff) [swedish]', 'Task UN-marked as finished - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('488', 'estimate', 'estimate-declined-to-staff', 'swedish', 'Estimate Declined (Sent to Staff) [swedish]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('489', 'estimate', 'estimate-accepted-to-staff', 'swedish', 'Estimate Accepted (Sent to Staff) [swedish]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('490', 'proposals', 'proposal-client-accepted', 'swedish', 'Customer Action - Accepted (Sent to Staff) [swedish]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('491', 'proposals', 'proposal-send-to-customer', 'swedish', 'Send Proposal to Customer [swedish]', 'Proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('492', 'proposals', 'proposal-client-declined', 'swedish', 'Customer Action - Declined (Sent to Staff) [swedish]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('493', 'proposals', 'proposal-client-thank-you', 'swedish', 'Thank You Email (Sent to Customer After Accept) [swedish]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('494', 'proposals', 'proposal-comment-to-client', 'swedish', 'New Comment  (Sent to Customer Contacts) [swedish]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('495', 'proposals', 'proposal-comment-to-admin', 'swedish', 'New Comment (Sent to Staff)  [swedish]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('496', 'estimate', 'estimate-thank-you-to-customer', 'swedish', 'Thank You Email (Sent to Customer After Accept) [swedish]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('497', 'tasks', 'task-deadline-notification', 'swedish', 'Task Deadline Reminder - Sent to Assigned Members [swedish]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('498', 'contract', 'send-contract', 'swedish', 'Send Contract to Customer [swedish]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('499', 'invoice', 'invoice-payment-recorded-to-staff', 'swedish', 'Invoice Payment Recorded (Sent to Staff) [swedish]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('500', 'ticket', 'auto-close-ticket', 'swedish', 'Auto Close Ticket [swedish]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('501', 'project', 'new-project-discussion-created-to-staff', 'swedish', 'New Project Discussion (Sent to Project Members) [swedish]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('502', 'project', 'new-project-discussion-created-to-customer', 'swedish', 'New Project Discussion (Sent to Customer Contacts) [swedish]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('503', 'project', 'new-project-file-uploaded-to-customer', 'swedish', 'New Project File Uploaded (Sent to Customer Contacts) [swedish]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('504', 'project', 'new-project-file-uploaded-to-staff', 'swedish', 'New Project File Uploaded (Sent to Project Members) [swedish]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('505', 'project', 'new-project-discussion-comment-to-customer', 'swedish', 'New Discussion Comment  (Sent to Customer Contacts) [swedish]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('506', 'project', 'new-project-discussion-comment-to-staff', 'swedish', 'New Discussion Comment (Sent to Project Members) [swedish]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('507', 'project', 'staff-added-as-project-member', 'swedish', 'Staff Added as Project Member [swedish]', 'New project assigned to you', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('508', 'estimate', 'estimate-expiry-reminder', 'swedish', 'Estimate Expiration Reminder [swedish]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('509', 'proposals', 'proposal-expiry-reminder', 'swedish', 'Proposal Expiration Reminder [swedish]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('510', 'staff', 'new-staff-created', 'swedish', 'New Staff Created (Welcome Email) [swedish]', 'You are added as staff member', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('511', 'client', 'contact-forgot-password', 'swedish', 'Forgot Password [swedish]', 'Create New Password', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('512', 'client', 'contact-password-reseted', 'swedish', 'Password Reset - Confirmation [swedish]', 'Your password has been changed', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('513', 'client', 'contact-set-password', 'swedish', 'Set New Password [swedish]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('514', 'staff', 'staff-forgot-password', 'swedish', 'Forgot Password [swedish]', 'Create New Password', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('515', 'staff', 'staff-password-reseted', 'swedish', 'Password Reset - Confirmation [swedish]', 'Your password has been changed', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('516', 'project', 'assigned-to-project', 'swedish', 'New Project Created (Sent to Customer Contacts) [swedish]', 'New Project Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('517', 'tasks', 'task-marked-as-finished-to-contacts', 'swedish', 'Task Marked as Finished (Sent to customer contacts) [swedish]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('518', 'tasks', 'task-added-attachment-to-contacts', 'swedish', 'New Attachment on Task (Sent to Customer Contacts) [swedish]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('519', 'tasks', 'task-commented-to-contacts', 'swedish', 'New Comment on Task (Sent to Customer Contacts) [swedish]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('520', 'leads', 'new-lead-assigned', 'swedish', 'New Lead Assigned to Staff Member [swedish]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('521', 'client', 'new-client-created', 'portuguese_br', 'New Contact Added/Registered (Welcome Email) [portuguese_br]', 'Welcome aboard', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('522', 'invoice', 'invoice-send-to-client', 'portuguese_br', 'Send Invoice to Customer [portuguese_br]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('523', 'ticket', 'new-ticket-opened-admin', 'portuguese_br', 'New Ticket Opened (Opened by Staff, Sent to Customer) [portuguese_br]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('524', 'ticket', 'ticket-reply', 'portuguese_br', 'Ticket Reply (Sent to Customer) [portuguese_br]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('525', 'ticket', 'ticket-autoresponse', 'portuguese_br', 'New Ticket Opened - Autoresponse [portuguese_br]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('526', 'invoice', 'invoice-payment-recorded', 'portuguese_br', 'Invoice Payment Recorded (Sent to Customer) [portuguese_br]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('527', 'invoice', 'invoice-overdue-notice', 'portuguese_br', 'Invoice Overdue Notice [portuguese_br]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('528', 'invoice', 'invoice-already-send', 'portuguese_br', 'Invoice Already Sent to Customer [portuguese_br]', 'On your command here is the invoice', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('529', 'ticket', 'new-ticket-created-staff', 'portuguese_br', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [portuguese_br]', 'New Ticket Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('530', 'estimate', 'estimate-send-to-client', 'portuguese_br', 'Send Estimate to Customer [portuguese_br]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('531', 'ticket', 'ticket-reply-to-admin', 'portuguese_br', 'Ticket Reply (Sent to Staff) [portuguese_br]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('532', 'estimate', 'estimate-already-send', 'portuguese_br', 'Estimate Already Sent to Customer [portuguese_br]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('533', 'contract', 'contract-expiration', 'portuguese_br', 'Contract Expiration [portuguese_br]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('534', 'tasks', 'task-assigned', 'portuguese_br', 'New Task Assigned (Sent to Staff) [portuguese_br]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('535', 'tasks', 'task-added-as-follower', 'portuguese_br', 'Staff Member Added as Follower on Task [portuguese_br]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('536', 'tasks', 'task-commented', 'portuguese_br', 'New Comment on Task (Sent to Staff) [portuguese_br]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('537', 'tasks', 'task-marked-as-finished', 'portuguese_br', 'Task Marked as Finished (Sent to Staff) [portuguese_br]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('538', 'tasks', 'task-added-attachment', 'portuguese_br', 'New Attachment on Task (Sent to Staff) [portuguese_br]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('539', 'tasks', 'task-unmarked-as-finished', 'portuguese_br', 'Task Unmarked as Finished (Sent to Staff) [portuguese_br]', 'Task UN-marked as finished - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('540', 'estimate', 'estimate-declined-to-staff', 'portuguese_br', 'Estimate Declined (Sent to Staff) [portuguese_br]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('541', 'estimate', 'estimate-accepted-to-staff', 'portuguese_br', 'Estimate Accepted (Sent to Staff) [portuguese_br]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('542', 'proposals', 'proposal-client-accepted', 'portuguese_br', 'Customer Action - Accepted (Sent to Staff) [portuguese_br]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('543', 'proposals', 'proposal-send-to-customer', 'portuguese_br', 'Send Proposal to Customer [portuguese_br]', 'Proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('544', 'proposals', 'proposal-client-declined', 'portuguese_br', 'Customer Action - Declined (Sent to Staff) [portuguese_br]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('545', 'proposals', 'proposal-client-thank-you', 'portuguese_br', 'Thank You Email (Sent to Customer After Accept) [portuguese_br]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('546', 'proposals', 'proposal-comment-to-client', 'portuguese_br', 'New Comment  (Sent to Customer Contacts) [portuguese_br]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('547', 'proposals', 'proposal-comment-to-admin', 'portuguese_br', 'New Comment (Sent to Staff)  [portuguese_br]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('548', 'estimate', 'estimate-thank-you-to-customer', 'portuguese_br', 'Thank You Email (Sent to Customer After Accept) [portuguese_br]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('549', 'tasks', 'task-deadline-notification', 'portuguese_br', 'Task Deadline Reminder - Sent to Assigned Members [portuguese_br]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('550', 'contract', 'send-contract', 'portuguese_br', 'Send Contract to Customer [portuguese_br]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('551', 'invoice', 'invoice-payment-recorded-to-staff', 'portuguese_br', 'Invoice Payment Recorded (Sent to Staff) [portuguese_br]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('552', 'ticket', 'auto-close-ticket', 'portuguese_br', 'Auto Close Ticket [portuguese_br]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('553', 'project', 'new-project-discussion-created-to-staff', 'portuguese_br', 'New Project Discussion (Sent to Project Members) [portuguese_br]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('554', 'project', 'new-project-discussion-created-to-customer', 'portuguese_br', 'New Project Discussion (Sent to Customer Contacts) [portuguese_br]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('555', 'project', 'new-project-file-uploaded-to-customer', 'portuguese_br', 'New Project File Uploaded (Sent to Customer Contacts) [portuguese_br]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('556', 'project', 'new-project-file-uploaded-to-staff', 'portuguese_br', 'New Project File Uploaded (Sent to Project Members) [portuguese_br]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('557', 'project', 'new-project-discussion-comment-to-customer', 'portuguese_br', 'New Discussion Comment  (Sent to Customer Contacts) [portuguese_br]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('558', 'project', 'new-project-discussion-comment-to-staff', 'portuguese_br', 'New Discussion Comment (Sent to Project Members) [portuguese_br]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('559', 'project', 'staff-added-as-project-member', 'portuguese_br', 'Staff Added as Project Member [portuguese_br]', 'New project assigned to you', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('560', 'estimate', 'estimate-expiry-reminder', 'portuguese_br', 'Estimate Expiration Reminder [portuguese_br]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('561', 'proposals', 'proposal-expiry-reminder', 'portuguese_br', 'Proposal Expiration Reminder [portuguese_br]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('562', 'staff', 'new-staff-created', 'portuguese_br', 'New Staff Created (Welcome Email) [portuguese_br]', 'You are added as staff member', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('563', 'client', 'contact-forgot-password', 'portuguese_br', 'Forgot Password [portuguese_br]', 'Create New Password', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('564', 'client', 'contact-password-reseted', 'portuguese_br', 'Password Reset - Confirmation [portuguese_br]', 'Your password has been changed', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('565', 'client', 'contact-set-password', 'portuguese_br', 'Set New Password [portuguese_br]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('566', 'staff', 'staff-forgot-password', 'portuguese_br', 'Forgot Password [portuguese_br]', 'Create New Password', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('567', 'staff', 'staff-password-reseted', 'portuguese_br', 'Password Reset - Confirmation [portuguese_br]', 'Your password has been changed', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('568', 'project', 'assigned-to-project', 'portuguese_br', 'New Project Created (Sent to Customer Contacts) [portuguese_br]', 'New Project Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('569', 'tasks', 'task-marked-as-finished-to-contacts', 'portuguese_br', 'Task Marked as Finished (Sent to customer contacts) [portuguese_br]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('570', 'tasks', 'task-added-attachment-to-contacts', 'portuguese_br', 'New Attachment on Task (Sent to Customer Contacts) [portuguese_br]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('571', 'tasks', 'task-commented-to-contacts', 'portuguese_br', 'New Comment on Task (Sent to Customer Contacts) [portuguese_br]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('572', 'leads', 'new-lead-assigned', 'portuguese_br', 'New Lead Assigned to Staff Member [portuguese_br]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('573', 'client', 'new-client-created', 'catalan', 'New Contact Added/Registered (Welcome Email) [catalan]', 'Welcome aboard', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('574', 'invoice', 'invoice-send-to-client', 'catalan', 'Send Invoice to Customer [catalan]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('575', 'ticket', 'new-ticket-opened-admin', 'catalan', 'New Ticket Opened (Opened by Staff, Sent to Customer) [catalan]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('576', 'ticket', 'ticket-reply', 'catalan', 'Ticket Reply (Sent to Customer) [catalan]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('577', 'ticket', 'ticket-autoresponse', 'catalan', 'New Ticket Opened - Autoresponse [catalan]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('578', 'invoice', 'invoice-payment-recorded', 'catalan', 'Invoice Payment Recorded (Sent to Customer) [catalan]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('579', 'invoice', 'invoice-overdue-notice', 'catalan', 'Invoice Overdue Notice [catalan]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('580', 'invoice', 'invoice-already-send', 'catalan', 'Invoice Already Sent to Customer [catalan]', 'On your command here is the invoice', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('581', 'ticket', 'new-ticket-created-staff', 'catalan', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [catalan]', 'New Ticket Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('582', 'estimate', 'estimate-send-to-client', 'catalan', 'Send Estimate to Customer [catalan]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('583', 'ticket', 'ticket-reply-to-admin', 'catalan', 'Ticket Reply (Sent to Staff) [catalan]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('584', 'estimate', 'estimate-already-send', 'catalan', 'Estimate Already Sent to Customer [catalan]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('585', 'contract', 'contract-expiration', 'catalan', 'Contract Expiration [catalan]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('586', 'tasks', 'task-assigned', 'catalan', 'New Task Assigned (Sent to Staff) [catalan]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('587', 'tasks', 'task-added-as-follower', 'catalan', 'Staff Member Added as Follower on Task [catalan]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('588', 'tasks', 'task-commented', 'catalan', 'New Comment on Task (Sent to Staff) [catalan]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('589', 'tasks', 'task-marked-as-finished', 'catalan', 'Task Marked as Finished (Sent to Staff) [catalan]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('590', 'tasks', 'task-added-attachment', 'catalan', 'New Attachment on Task (Sent to Staff) [catalan]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('591', 'tasks', 'task-unmarked-as-finished', 'catalan', 'Task Unmarked as Finished (Sent to Staff) [catalan]', 'Task UN-marked as finished - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('592', 'estimate', 'estimate-declined-to-staff', 'catalan', 'Estimate Declined (Sent to Staff) [catalan]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('593', 'estimate', 'estimate-accepted-to-staff', 'catalan', 'Estimate Accepted (Sent to Staff) [catalan]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('594', 'proposals', 'proposal-client-accepted', 'catalan', 'Customer Action - Accepted (Sent to Staff) [catalan]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('595', 'proposals', 'proposal-send-to-customer', 'catalan', 'Send Proposal to Customer [catalan]', 'Proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('596', 'proposals', 'proposal-client-declined', 'catalan', 'Customer Action - Declined (Sent to Staff) [catalan]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('597', 'proposals', 'proposal-client-thank-you', 'catalan', 'Thank You Email (Sent to Customer After Accept) [catalan]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('598', 'proposals', 'proposal-comment-to-client', 'catalan', 'New Comment  (Sent to Customer Contacts) [catalan]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('599', 'proposals', 'proposal-comment-to-admin', 'catalan', 'New Comment (Sent to Staff)  [catalan]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('600', 'estimate', 'estimate-thank-you-to-customer', 'catalan', 'Thank You Email (Sent to Customer After Accept) [catalan]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('601', 'tasks', 'task-deadline-notification', 'catalan', 'Task Deadline Reminder - Sent to Assigned Members [catalan]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('602', 'contract', 'send-contract', 'catalan', 'Send Contract to Customer [catalan]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('603', 'invoice', 'invoice-payment-recorded-to-staff', 'catalan', 'Invoice Payment Recorded (Sent to Staff) [catalan]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('604', 'ticket', 'auto-close-ticket', 'catalan', 'Auto Close Ticket [catalan]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('605', 'project', 'new-project-discussion-created-to-staff', 'catalan', 'New Project Discussion (Sent to Project Members) [catalan]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('606', 'project', 'new-project-discussion-created-to-customer', 'catalan', 'New Project Discussion (Sent to Customer Contacts) [catalan]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('607', 'project', 'new-project-file-uploaded-to-customer', 'catalan', 'New Project File Uploaded (Sent to Customer Contacts) [catalan]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('608', 'project', 'new-project-file-uploaded-to-staff', 'catalan', 'New Project File Uploaded (Sent to Project Members) [catalan]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('609', 'project', 'new-project-discussion-comment-to-customer', 'catalan', 'New Discussion Comment  (Sent to Customer Contacts) [catalan]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('610', 'project', 'new-project-discussion-comment-to-staff', 'catalan', 'New Discussion Comment (Sent to Project Members) [catalan]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('611', 'project', 'staff-added-as-project-member', 'catalan', 'Staff Added as Project Member [catalan]', 'New project assigned to you', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('612', 'estimate', 'estimate-expiry-reminder', 'catalan', 'Estimate Expiration Reminder [catalan]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('613', 'proposals', 'proposal-expiry-reminder', 'catalan', 'Proposal Expiration Reminder [catalan]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('614', 'staff', 'new-staff-created', 'catalan', 'New Staff Created (Welcome Email) [catalan]', 'You are added as staff member', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('615', 'client', 'contact-forgot-password', 'catalan', 'Forgot Password [catalan]', 'Create New Password', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('616', 'client', 'contact-password-reseted', 'catalan', 'Password Reset - Confirmation [catalan]', 'Your password has been changed', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('617', 'client', 'contact-set-password', 'catalan', 'Set New Password [catalan]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('618', 'staff', 'staff-forgot-password', 'catalan', 'Forgot Password [catalan]', 'Create New Password', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('619', 'staff', 'staff-password-reseted', 'catalan', 'Password Reset - Confirmation [catalan]', 'Your password has been changed', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('620', 'project', 'assigned-to-project', 'catalan', 'New Project Created (Sent to Customer Contacts) [catalan]', 'New Project Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('621', 'tasks', 'task-marked-as-finished-to-contacts', 'catalan', 'Task Marked as Finished (Sent to customer contacts) [catalan]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('622', 'tasks', 'task-added-attachment-to-contacts', 'catalan', 'New Attachment on Task (Sent to Customer Contacts) [catalan]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('623', 'tasks', 'task-commented-to-contacts', 'catalan', 'New Comment on Task (Sent to Customer Contacts) [catalan]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('624', 'leads', 'new-lead-assigned', 'catalan', 'New Lead Assigned to Staff Member [catalan]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('625', 'client', 'new-client-created', 'german', 'New Contact Added/Registered (Welcome Email) [german]', 'Welcome aboard', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('626', 'invoice', 'invoice-send-to-client', 'german', 'Send Invoice to Customer [german]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('627', 'ticket', 'new-ticket-opened-admin', 'german', 'New Ticket Opened (Opened by Staff, Sent to Customer) [german]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('628', 'ticket', 'ticket-reply', 'german', 'Ticket Reply (Sent to Customer) [german]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('629', 'ticket', 'ticket-autoresponse', 'german', 'New Ticket Opened - Autoresponse [german]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('630', 'invoice', 'invoice-payment-recorded', 'german', 'Invoice Payment Recorded (Sent to Customer) [german]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('631', 'invoice', 'invoice-overdue-notice', 'german', 'Invoice Overdue Notice [german]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('632', 'invoice', 'invoice-already-send', 'german', 'Invoice Already Sent to Customer [german]', 'On your command here is the invoice', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('633', 'ticket', 'new-ticket-created-staff', 'german', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [german]', 'New Ticket Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('634', 'estimate', 'estimate-send-to-client', 'german', 'Send Estimate to Customer [german]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('635', 'ticket', 'ticket-reply-to-admin', 'german', 'Ticket Reply (Sent to Staff) [german]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('636', 'estimate', 'estimate-already-send', 'german', 'Estimate Already Sent to Customer [german]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('637', 'contract', 'contract-expiration', 'german', 'Contract Expiration [german]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('638', 'tasks', 'task-assigned', 'german', 'New Task Assigned (Sent to Staff) [german]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('639', 'tasks', 'task-added-as-follower', 'german', 'Staff Member Added as Follower on Task [german]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('640', 'tasks', 'task-commented', 'german', 'New Comment on Task (Sent to Staff) [german]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('641', 'tasks', 'task-marked-as-finished', 'german', 'Task Marked as Finished (Sent to Staff) [german]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('642', 'tasks', 'task-added-attachment', 'german', 'New Attachment on Task (Sent to Staff) [german]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('643', 'tasks', 'task-unmarked-as-finished', 'german', 'Task Unmarked as Finished (Sent to Staff) [german]', 'Task UN-marked as finished - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('644', 'estimate', 'estimate-declined-to-staff', 'german', 'Estimate Declined (Sent to Staff) [german]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('645', 'estimate', 'estimate-accepted-to-staff', 'german', 'Estimate Accepted (Sent to Staff) [german]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('646', 'proposals', 'proposal-client-accepted', 'german', 'Customer Action - Accepted (Sent to Staff) [german]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('647', 'proposals', 'proposal-send-to-customer', 'german', 'Send Proposal to Customer [german]', 'Proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('648', 'proposals', 'proposal-client-declined', 'german', 'Customer Action - Declined (Sent to Staff) [german]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('649', 'proposals', 'proposal-client-thank-you', 'german', 'Thank You Email (Sent to Customer After Accept) [german]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('650', 'proposals', 'proposal-comment-to-client', 'german', 'New Comment  (Sent to Customer Contacts) [german]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('651', 'proposals', 'proposal-comment-to-admin', 'german', 'New Comment (Sent to Staff)  [german]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('652', 'estimate', 'estimate-thank-you-to-customer', 'german', 'Thank You Email (Sent to Customer After Accept) [german]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('653', 'tasks', 'task-deadline-notification', 'german', 'Task Deadline Reminder - Sent to Assigned Members [german]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('654', 'contract', 'send-contract', 'german', 'Send Contract to Customer [german]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('655', 'invoice', 'invoice-payment-recorded-to-staff', 'german', 'Invoice Payment Recorded (Sent to Staff) [german]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('656', 'ticket', 'auto-close-ticket', 'german', 'Auto Close Ticket [german]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('657', 'project', 'new-project-discussion-created-to-staff', 'german', 'New Project Discussion (Sent to Project Members) [german]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('658', 'project', 'new-project-discussion-created-to-customer', 'german', 'New Project Discussion (Sent to Customer Contacts) [german]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('659', 'project', 'new-project-file-uploaded-to-customer', 'german', 'New Project File Uploaded (Sent to Customer Contacts) [german]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('660', 'project', 'new-project-file-uploaded-to-staff', 'german', 'New Project File Uploaded (Sent to Project Members) [german]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('661', 'project', 'new-project-discussion-comment-to-customer', 'german', 'New Discussion Comment  (Sent to Customer Contacts) [german]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('662', 'project', 'new-project-discussion-comment-to-staff', 'german', 'New Discussion Comment (Sent to Project Members) [german]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('663', 'project', 'staff-added-as-project-member', 'german', 'Staff Added as Project Member [german]', 'New project assigned to you', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('664', 'estimate', 'estimate-expiry-reminder', 'german', 'Estimate Expiration Reminder [german]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('665', 'proposals', 'proposal-expiry-reminder', 'german', 'Proposal Expiration Reminder [german]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('666', 'staff', 'new-staff-created', 'german', 'New Staff Created (Welcome Email) [german]', 'You are added as staff member', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('667', 'client', 'contact-forgot-password', 'german', 'Forgot Password [german]', 'Create New Password', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('668', 'client', 'contact-password-reseted', 'german', 'Password Reset - Confirmation [german]', 'Your password has been changed', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('669', 'client', 'contact-set-password', 'german', 'Set New Password [german]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('670', 'staff', 'staff-forgot-password', 'german', 'Forgot Password [german]', 'Create New Password', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('671', 'staff', 'staff-password-reseted', 'german', 'Password Reset - Confirmation [german]', 'Your password has been changed', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('672', 'project', 'assigned-to-project', 'german', 'New Project Created (Sent to Customer Contacts) [german]', 'New Project Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('673', 'tasks', 'task-marked-as-finished-to-contacts', 'german', 'Task Marked as Finished (Sent to customer contacts) [german]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('674', 'tasks', 'task-added-attachment-to-contacts', 'german', 'New Attachment on Task (Sent to Customer Contacts) [german]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('675', 'tasks', 'task-commented-to-contacts', 'german', 'New Comment on Task (Sent to Customer Contacts) [german]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('676', 'leads', 'new-lead-assigned', 'german', 'New Lead Assigned to Staff Member [german]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('677', 'client', 'new-client-created', 'indonesia', 'New Contact Added/Registered (Welcome Email) [indonesia]', 'Welcome aboard', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('678', 'invoice', 'invoice-send-to-client', 'indonesia', 'Send Invoice to Customer [indonesia]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('679', 'ticket', 'new-ticket-opened-admin', 'indonesia', 'New Ticket Opened (Opened by Staff, Sent to Customer) [indonesia]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('680', 'ticket', 'ticket-reply', 'indonesia', 'Ticket Reply (Sent to Customer) [indonesia]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('681', 'ticket', 'ticket-autoresponse', 'indonesia', 'New Ticket Opened - Autoresponse [indonesia]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('682', 'invoice', 'invoice-payment-recorded', 'indonesia', 'Invoice Payment Recorded (Sent to Customer) [indonesia]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('683', 'invoice', 'invoice-overdue-notice', 'indonesia', 'Invoice Overdue Notice [indonesia]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('684', 'invoice', 'invoice-already-send', 'indonesia', 'Invoice Already Sent to Customer [indonesia]', 'On your command here is the invoice', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('685', 'ticket', 'new-ticket-created-staff', 'indonesia', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [indonesia]', 'New Ticket Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('686', 'estimate', 'estimate-send-to-client', 'indonesia', 'Send Estimate to Customer [indonesia]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('687', 'ticket', 'ticket-reply-to-admin', 'indonesia', 'Ticket Reply (Sent to Staff) [indonesia]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('688', 'estimate', 'estimate-already-send', 'indonesia', 'Estimate Already Sent to Customer [indonesia]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('689', 'contract', 'contract-expiration', 'indonesia', 'Contract Expiration [indonesia]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('690', 'tasks', 'task-assigned', 'indonesia', 'New Task Assigned (Sent to Staff) [indonesia]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('691', 'tasks', 'task-added-as-follower', 'indonesia', 'Staff Member Added as Follower on Task [indonesia]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('692', 'tasks', 'task-commented', 'indonesia', 'New Comment on Task (Sent to Staff) [indonesia]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('693', 'tasks', 'task-marked-as-finished', 'indonesia', 'Task Marked as Finished (Sent to Staff) [indonesia]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('694', 'tasks', 'task-added-attachment', 'indonesia', 'New Attachment on Task (Sent to Staff) [indonesia]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('695', 'tasks', 'task-unmarked-as-finished', 'indonesia', 'Task Unmarked as Finished (Sent to Staff) [indonesia]', 'Task UN-marked as finished - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('696', 'estimate', 'estimate-declined-to-staff', 'indonesia', 'Estimate Declined (Sent to Staff) [indonesia]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('697', 'estimate', 'estimate-accepted-to-staff', 'indonesia', 'Estimate Accepted (Sent to Staff) [indonesia]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('698', 'proposals', 'proposal-client-accepted', 'indonesia', 'Customer Action - Accepted (Sent to Staff) [indonesia]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('699', 'proposals', 'proposal-send-to-customer', 'indonesia', 'Send Proposal to Customer [indonesia]', 'Proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('700', 'proposals', 'proposal-client-declined', 'indonesia', 'Customer Action - Declined (Sent to Staff) [indonesia]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('701', 'proposals', 'proposal-client-thank-you', 'indonesia', 'Thank You Email (Sent to Customer After Accept) [indonesia]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('702', 'proposals', 'proposal-comment-to-client', 'indonesia', 'New Comment  (Sent to Customer Contacts) [indonesia]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('703', 'proposals', 'proposal-comment-to-admin', 'indonesia', 'New Comment (Sent to Staff)  [indonesia]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('704', 'estimate', 'estimate-thank-you-to-customer', 'indonesia', 'Thank You Email (Sent to Customer After Accept) [indonesia]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('705', 'tasks', 'task-deadline-notification', 'indonesia', 'Task Deadline Reminder - Sent to Assigned Members [indonesia]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('706', 'contract', 'send-contract', 'indonesia', 'Send Contract to Customer [indonesia]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('707', 'invoice', 'invoice-payment-recorded-to-staff', 'indonesia', 'Invoice Payment Recorded (Sent to Staff) [indonesia]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('708', 'ticket', 'auto-close-ticket', 'indonesia', 'Auto Close Ticket [indonesia]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('709', 'project', 'new-project-discussion-created-to-staff', 'indonesia', 'New Project Discussion (Sent to Project Members) [indonesia]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('710', 'project', 'new-project-discussion-created-to-customer', 'indonesia', 'New Project Discussion (Sent to Customer Contacts) [indonesia]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('711', 'project', 'new-project-file-uploaded-to-customer', 'indonesia', 'New Project File Uploaded (Sent to Customer Contacts) [indonesia]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('712', 'project', 'new-project-file-uploaded-to-staff', 'indonesia', 'New Project File Uploaded (Sent to Project Members) [indonesia]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('713', 'project', 'new-project-discussion-comment-to-customer', 'indonesia', 'New Discussion Comment  (Sent to Customer Contacts) [indonesia]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('714', 'project', 'new-project-discussion-comment-to-staff', 'indonesia', 'New Discussion Comment (Sent to Project Members) [indonesia]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('715', 'project', 'staff-added-as-project-member', 'indonesia', 'Staff Added as Project Member [indonesia]', 'New project assigned to you', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('716', 'estimate', 'estimate-expiry-reminder', 'indonesia', 'Estimate Expiration Reminder [indonesia]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('717', 'proposals', 'proposal-expiry-reminder', 'indonesia', 'Proposal Expiration Reminder [indonesia]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('718', 'staff', 'new-staff-created', 'indonesia', 'New Staff Created (Welcome Email) [indonesia]', 'You are added as staff member', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('719', 'client', 'contact-forgot-password', 'indonesia', 'Forgot Password [indonesia]', 'Create New Password', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('720', 'client', 'contact-password-reseted', 'indonesia', 'Password Reset - Confirmation [indonesia]', 'Your password has been changed', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('721', 'client', 'contact-set-password', 'indonesia', 'Set New Password [indonesia]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('722', 'staff', 'staff-forgot-password', 'indonesia', 'Forgot Password [indonesia]', 'Create New Password', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('723', 'staff', 'staff-password-reseted', 'indonesia', 'Password Reset - Confirmation [indonesia]', 'Your password has been changed', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('724', 'project', 'assigned-to-project', 'indonesia', 'New Project Created (Sent to Customer Contacts) [indonesia]', 'New Project Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('725', 'tasks', 'task-marked-as-finished-to-contacts', 'indonesia', 'Task Marked as Finished (Sent to customer contacts) [indonesia]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('726', 'tasks', 'task-added-attachment-to-contacts', 'indonesia', 'New Attachment on Task (Sent to Customer Contacts) [indonesia]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('727', 'tasks', 'task-commented-to-contacts', 'indonesia', 'New Comment on Task (Sent to Customer Contacts) [indonesia]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('728', 'leads', 'new-lead-assigned', 'indonesia', 'New Lead Assigned to Staff Member [indonesia]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('729', 'client', 'new-client-created', 'persian', 'New Contact Added/Registered (Welcome Email) [persian]', 'Welcome aboard', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('730', 'invoice', 'invoice-send-to-client', 'persian', 'Send Invoice to Customer [persian]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('731', 'ticket', 'new-ticket-opened-admin', 'persian', 'New Ticket Opened (Opened by Staff, Sent to Customer) [persian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('732', 'ticket', 'ticket-reply', 'persian', 'Ticket Reply (Sent to Customer) [persian]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('733', 'ticket', 'ticket-autoresponse', 'persian', 'New Ticket Opened - Autoresponse [persian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('734', 'invoice', 'invoice-payment-recorded', 'persian', 'Invoice Payment Recorded (Sent to Customer) [persian]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('735', 'invoice', 'invoice-overdue-notice', 'persian', 'Invoice Overdue Notice [persian]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('736', 'invoice', 'invoice-already-send', 'persian', 'Invoice Already Sent to Customer [persian]', 'On your command here is the invoice', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('737', 'ticket', 'new-ticket-created-staff', 'persian', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [persian]', 'New Ticket Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('738', 'estimate', 'estimate-send-to-client', 'persian', 'Send Estimate to Customer [persian]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('739', 'ticket', 'ticket-reply-to-admin', 'persian', 'Ticket Reply (Sent to Staff) [persian]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('740', 'estimate', 'estimate-already-send', 'persian', 'Estimate Already Sent to Customer [persian]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('741', 'contract', 'contract-expiration', 'persian', 'Contract Expiration [persian]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('742', 'tasks', 'task-assigned', 'persian', 'New Task Assigned (Sent to Staff) [persian]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('743', 'tasks', 'task-added-as-follower', 'persian', 'Staff Member Added as Follower on Task [persian]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('744', 'tasks', 'task-commented', 'persian', 'New Comment on Task (Sent to Staff) [persian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('745', 'tasks', 'task-marked-as-finished', 'persian', 'Task Marked as Finished (Sent to Staff) [persian]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('746', 'tasks', 'task-added-attachment', 'persian', 'New Attachment on Task (Sent to Staff) [persian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('747', 'tasks', 'task-unmarked-as-finished', 'persian', 'Task Unmarked as Finished (Sent to Staff) [persian]', 'Task UN-marked as finished - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('748', 'estimate', 'estimate-declined-to-staff', 'persian', 'Estimate Declined (Sent to Staff) [persian]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('749', 'estimate', 'estimate-accepted-to-staff', 'persian', 'Estimate Accepted (Sent to Staff) [persian]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('750', 'proposals', 'proposal-client-accepted', 'persian', 'Customer Action - Accepted (Sent to Staff) [persian]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('751', 'proposals', 'proposal-send-to-customer', 'persian', 'Send Proposal to Customer [persian]', 'Proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('752', 'proposals', 'proposal-client-declined', 'persian', 'Customer Action - Declined (Sent to Staff) [persian]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('753', 'proposals', 'proposal-client-thank-you', 'persian', 'Thank You Email (Sent to Customer After Accept) [persian]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('754', 'proposals', 'proposal-comment-to-client', 'persian', 'New Comment  (Sent to Customer Contacts) [persian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('755', 'proposals', 'proposal-comment-to-admin', 'persian', 'New Comment (Sent to Staff)  [persian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('756', 'estimate', 'estimate-thank-you-to-customer', 'persian', 'Thank You Email (Sent to Customer After Accept) [persian]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('757', 'tasks', 'task-deadline-notification', 'persian', 'Task Deadline Reminder - Sent to Assigned Members [persian]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('758', 'contract', 'send-contract', 'persian', 'Send Contract to Customer [persian]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('759', 'invoice', 'invoice-payment-recorded-to-staff', 'persian', 'Invoice Payment Recorded (Sent to Staff) [persian]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('760', 'ticket', 'auto-close-ticket', 'persian', 'Auto Close Ticket [persian]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('761', 'project', 'new-project-discussion-created-to-staff', 'persian', 'New Project Discussion (Sent to Project Members) [persian]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('762', 'project', 'new-project-discussion-created-to-customer', 'persian', 'New Project Discussion (Sent to Customer Contacts) [persian]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('763', 'project', 'new-project-file-uploaded-to-customer', 'persian', 'New Project File Uploaded (Sent to Customer Contacts) [persian]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('764', 'project', 'new-project-file-uploaded-to-staff', 'persian', 'New Project File Uploaded (Sent to Project Members) [persian]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('765', 'project', 'new-project-discussion-comment-to-customer', 'persian', 'New Discussion Comment  (Sent to Customer Contacts) [persian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('766', 'project', 'new-project-discussion-comment-to-staff', 'persian', 'New Discussion Comment (Sent to Project Members) [persian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('767', 'project', 'staff-added-as-project-member', 'persian', 'Staff Added as Project Member [persian]', 'New project assigned to you', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('768', 'estimate', 'estimate-expiry-reminder', 'persian', 'Estimate Expiration Reminder [persian]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('769', 'proposals', 'proposal-expiry-reminder', 'persian', 'Proposal Expiration Reminder [persian]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('770', 'staff', 'new-staff-created', 'persian', 'New Staff Created (Welcome Email) [persian]', 'You are added as staff member', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('771', 'client', 'contact-forgot-password', 'persian', 'Forgot Password [persian]', 'Create New Password', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('772', 'client', 'contact-password-reseted', 'persian', 'Password Reset - Confirmation [persian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('773', 'client', 'contact-set-password', 'persian', 'Set New Password [persian]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('774', 'staff', 'staff-forgot-password', 'persian', 'Forgot Password [persian]', 'Create New Password', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('775', 'staff', 'staff-password-reseted', 'persian', 'Password Reset - Confirmation [persian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('776', 'project', 'assigned-to-project', 'persian', 'New Project Created (Sent to Customer Contacts) [persian]', 'New Project Created', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('777', 'tasks', 'task-marked-as-finished-to-contacts', 'persian', 'Task Marked as Finished (Sent to customer contacts) [persian]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('778', 'tasks', 'task-added-attachment-to-contacts', 'persian', 'New Attachment on Task (Sent to Customer Contacts) [persian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('779', 'tasks', 'task-commented-to-contacts', 'persian', 'New Comment on Task (Sent to Customer Contacts) [persian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, '0', '1', '0');
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES ('780', 'leads', 'new-lead-assigned', 'persian', 'New Lead Assigned to Staff Member [persian]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, '0', '1', '0');


#
# TABLE STRUCTURE FOR: tblentities
#

DROP TABLE IF EXISTS `tblentities`;

CREATE TABLE `tblentities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `agentid` int(11) NOT NULL,
  `entity_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `automatedExpansion` tinyint(1) DEFAULT '0',
  `isOverridable` tinyint(1) DEFAULT '0',
  `is_system` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`,`userid`,`agentid`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `tblentities` (`id`, `userid`, `agentid`, `entity_name`, `automatedExpansion`, `isOverridable`, `is_system`) VALUES ('32', '0', '0', 'sys.number', '0', '1', '1');
INSERT INTO `tblentities` (`id`, `userid`, `agentid`, `entity_name`, `automatedExpansion`, `isOverridable`, `is_system`) VALUES ('33', '0', '0', 'sys.geo-cities', '0', '1', '1');
INSERT INTO `tblentities` (`id`, `userid`, `agentid`, `entity_name`, `automatedExpansion`, `isOverridable`, `is_system`) VALUES ('34', '0', '0', 'sys.geo-countries', '0', '1', '1');
INSERT INTO `tblentities` (`id`, `userid`, `agentid`, `entity_name`, `automatedExpansion`, `isOverridable`, `is_system`) VALUES ('35', '0', '0', 'sys.color', '0', '1', '1');
INSERT INTO `tblentities` (`id`, `userid`, `agentid`, `entity_name`, `automatedExpansion`, `isOverridable`, `is_system`) VALUES ('37', '0', '0', 'sys.date', '0', '1', '1');
INSERT INTO `tblentities` (`id`, `userid`, `agentid`, `entity_name`, `automatedExpansion`, `isOverridable`, `is_system`) VALUES ('38', '0', '0', 'sys.year', '0', '1', '1');
INSERT INTO `tblentities` (`id`, `userid`, `agentid`, `entity_name`, `automatedExpansion`, `isOverridable`, `is_system`) VALUES ('39', '0', '0', 'sys.month', '0', '1', '1');


#
# TABLE STRUCTURE FOR: tblentitiesreferences
#

DROP TABLE IF EXISTS `tblentitiesreferences`;

CREATE TABLE `tblentitiesreferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entityid` int(11) NOT NULL,
  `agentid` int(11) NOT NULL,
  `reference` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `synonym` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`,`agentid`)
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `tblentitiesreferences` (`id`, `entityid`, `agentid`, `reference`, `synonym`) VALUES ('240', '37', '0', 'Monday', 'Monday');
INSERT INTO `tblentitiesreferences` (`id`, `entityid`, `agentid`, `reference`, `synonym`) VALUES ('241', '37', '0', 'Tuesday', 'Tuesday');
INSERT INTO `tblentitiesreferences` (`id`, `entityid`, `agentid`, `reference`, `synonym`) VALUES ('242', '37', '0', 'Wednesday', 'Wednesday');
INSERT INTO `tblentitiesreferences` (`id`, `entityid`, `agentid`, `reference`, `synonym`) VALUES ('243', '37', '0', 'Thursday', 'Thursday');
INSERT INTO `tblentitiesreferences` (`id`, `entityid`, `agentid`, `reference`, `synonym`) VALUES ('244', '37', '0', 'Friday', 'Friday');
INSERT INTO `tblentitiesreferences` (`id`, `entityid`, `agentid`, `reference`, `synonym`) VALUES ('245', '37', '0', 'Saturday', 'Saturday');
INSERT INTO `tblentitiesreferences` (`id`, `entityid`, `agentid`, `reference`, `synonym`) VALUES ('246', '37', '0', 'Sunday', 'Sunday');
INSERT INTO `tblentitiesreferences` (`id`, `entityid`, `agentid`, `reference`, `synonym`) VALUES ('247', '37', '0', 'Today', 'Today');
INSERT INTO `tblentitiesreferences` (`id`, `entityid`, `agentid`, `reference`, `synonym`) VALUES ('248', '37', '0', 'Yesterday', 'Yesterday');
INSERT INTO `tblentitiesreferences` (`id`, `entityid`, `agentid`, `reference`, `synonym`) VALUES ('249', '37', '0', 'Tomorrow', 'Tomorrow');


#
# TABLE STRUCTURE FOR: tblestimates
#

DROP TABLE IF EXISTS `tblestimates`;

CREATE TABLE `tblestimates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sent` tinyint(1) NOT NULL DEFAULT '0',
  `datesend` datetime DEFAULT NULL,
  `clientid` int(11) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `number` int(11) NOT NULL,
  `prefix` varchar(50) DEFAULT NULL,
  `number_format` int(11) NOT NULL DEFAULT '0',
  `hash` varchar(32) DEFAULT NULL,
  `datecreated` datetime NOT NULL,
  `date` date NOT NULL,
  `expirydate` date DEFAULT NULL,
  `currency` int(11) NOT NULL,
  `subtotal` decimal(11,2) NOT NULL,
  `total_tax` decimal(11,2) NOT NULL DEFAULT '0.00',
  `total` decimal(11,2) NOT NULL,
  `adjustment` decimal(11,2) DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `clientnote` text,
  `adminnote` text,
  `discount_percent` decimal(11,2) DEFAULT '0.00',
  `discount_total` decimal(11,2) DEFAULT '0.00',
  `discount_type` varchar(30) DEFAULT NULL,
  `invoiceid` int(11) DEFAULT NULL,
  `invoiced_date` datetime DEFAULT NULL,
  `terms` text,
  `reference_no` varchar(100) DEFAULT NULL,
  `sale_agent` int(11) NOT NULL DEFAULT '0',
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT NULL,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT NULL,
  `include_shipping` tinyint(1) NOT NULL,
  `show_shipping_on_estimate` tinyint(1) NOT NULL DEFAULT '1',
  `show_quantity_as` int(11) NOT NULL DEFAULT '1',
  `pipeline_order` int(11) NOT NULL DEFAULT '0',
  `is_expiry_notified` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `clientid` (`clientid`),
  KEY `currency` (`currency`),
  KEY `project_id` (`project_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblevents
#

DROP TABLE IF EXISTS `tblevents`;

CREATE TABLE `tblevents` (
  `eventid` int(11) NOT NULL AUTO_INCREMENT,
  `title` mediumtext NOT NULL,
  `description` text,
  `userid` int(11) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  `public` int(11) NOT NULL DEFAULT '0',
  `color` varchar(10) DEFAULT NULL,
  `isstartnotified` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`eventid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblexpenses
#

DROP TABLE IF EXISTS `tblexpenses`;

CREATE TABLE `tblexpenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) NOT NULL,
  `currency` int(11) NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `tax` int(11) DEFAULT NULL,
  `reference_no` varchar(100) DEFAULT NULL,
  `note` text,
  `expense_name` varchar(500) DEFAULT NULL,
  `clientid` int(11) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `billable` int(11) DEFAULT '0',
  `invoiceid` int(11) DEFAULT NULL,
  `paymentmode` varchar(50) DEFAULT NULL,
  `date` date NOT NULL,
  `recurring_type` varchar(10) DEFAULT NULL,
  `repeat_every` int(11) DEFAULT NULL,
  `recurring` int(11) NOT NULL DEFAULT '0',
  `recurring_ends_on` date DEFAULT NULL,
  `custom_recurring` int(11) NOT NULL DEFAULT '0',
  `last_recurring_date` date DEFAULT NULL,
  `create_invoice_billable` tinyint(1) DEFAULT NULL,
  `send_invoice_to_customer` tinyint(1) NOT NULL,
  `recurring_from` int(11) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `addedfrom` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `clientid` (`clientid`),
  KEY `project_id` (`project_id`),
  KEY `category` (`category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblexpensescategories
#

DROP TABLE IF EXISTS `tblexpensescategories`;

CREATE TABLE `tblexpensescategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblfiles
#

DROP TABLE IF EXISTS `tblfiles`;

CREATE TABLE `tblfiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) NOT NULL,
  `file_name` varchar(600) NOT NULL,
  `filetype` varchar(40) DEFAULT NULL,
  `visible_to_customer` int(11) NOT NULL DEFAULT '0',
  `attachment_key` varchar(32) DEFAULT NULL,
  `external` varchar(40) DEFAULT NULL,
  `external_link` text,
  `thumbnail_link` text COMMENT 'For external usage',
  `staffid` int(11) NOT NULL,
  `contact_id` int(11) DEFAULT '0',
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rel_id` (`rel_id`),
  KEY `rel_type` (`rel_type`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `tblfiles` (`id`, `rel_id`, `rel_type`, `file_name`, `filetype`, `visible_to_customer`, `attachment_key`, `external`, `external_link`, `thumbnail_link`, `staffid`, `contact_id`, `dateadded`) VALUES ('1', '1', 'customer', 'logo_black@2.png', 'image/png', '1', '859326666d63d1cf1fae43f748b1ccc6', NULL, NULL, NULL, '0', '1', '2018-01-30 10:34:30');


#
# TABLE STRUCTURE FOR: tblformquestionboxes
#

DROP TABLE IF EXISTS `tblformquestionboxes`;

CREATE TABLE `tblformquestionboxes` (
  `boxid` int(11) NOT NULL AUTO_INCREMENT,
  `boxtype` varchar(10) NOT NULL,
  `questionid` int(11) NOT NULL,
  PRIMARY KEY (`boxid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblformquestionboxesdescription
#

DROP TABLE IF EXISTS `tblformquestionboxesdescription`;

CREATE TABLE `tblformquestionboxesdescription` (
  `questionboxdescriptionid` int(11) NOT NULL AUTO_INCREMENT,
  `description` mediumtext NOT NULL,
  `boxid` mediumtext NOT NULL,
  `questionid` int(11) NOT NULL,
  PRIMARY KEY (`questionboxdescriptionid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblformquestions
#

DROP TABLE IF EXISTS `tblformquestions`;

CREATE TABLE `tblformquestions` (
  `questionid` int(11) NOT NULL AUTO_INCREMENT,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) DEFAULT NULL,
  `question` mediumtext NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `question_order` int(11) NOT NULL,
  PRIMARY KEY (`questionid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblformresults
#

DROP TABLE IF EXISTS `tblformresults`;

CREATE TABLE `tblformresults` (
  `resultid` int(11) NOT NULL AUTO_INCREMENT,
  `boxid` int(11) NOT NULL,
  `boxdescriptionid` int(11) DEFAULT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) DEFAULT NULL,
  `questionid` int(11) NOT NULL,
  `answer` text,
  `resultsetid` int(11) NOT NULL,
  PRIMARY KEY (`resultid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblgoals
#

DROP TABLE IF EXISTS `tblgoals`;

CREATE TABLE `tblgoals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(400) NOT NULL,
  `description` text NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `goal_type` int(11) NOT NULL,
  `contract_type` int(11) NOT NULL DEFAULT '0',
  `achievement` int(11) NOT NULL,
  `notify_when_fail` tinyint(1) NOT NULL DEFAULT '1',
  `notify_when_achieve` tinyint(1) NOT NULL DEFAULT '1',
  `notified` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblintents
#

DROP TABLE IF EXISTS `tblintents`;

CREATE TABLE `tblintents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `agentid` int(11) NOT NULL,
  `parentid` int(11) DEFAULT NULL,
  `intent_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(32) CHARACTER SET utf8 NOT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  `active` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`,`userid`,`agentid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: tblintentsaction
#

DROP TABLE IF EXISTS `tblintentsaction`;

CREATE TABLE `tblintentsaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agentid` int(11) NOT NULL,
  `action` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `is_required` tinyint(1) DEFAULT NULL,
  `is_list` tinyint(1) DEFAULT NULL,
  `prompt` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`,`agentid`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: tblintentsresponses
#

DROP TABLE IF EXISTS `tblintentsresponses`;

CREATE TABLE `tblintentsresponses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agentid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `intentid` int(11) NOT NULL,
  `response` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`,`agentid`,`userid`,`intentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: tblintentsusersays
#

DROP TABLE IF EXISTS `tblintentsusersays`;

CREATE TABLE `tblintentsusersays` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agentid` int(11) NOT NULL,
  `intentid` int(11) NOT NULL,
  `usersay` text CHARACTER SET utf8,
  `action` varchar(32) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`,`agentid`,`intentid`)
) ENGINE=InnoDB AUTO_INCREMENT=297 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: tblintentsusersaysparameters
#

DROP TABLE IF EXISTS `tblintentsusersaysparameters`;

CREATE TABLE `tblintentsusersaysparameters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agentid` int(11) NOT NULL,
  `intentid` int(11) NOT NULL,
  `usersayid` int(11) NOT NULL,
  `parameter_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `entity` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `resolved_value` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`,`agentid`,`intentid`)
) ENGINE=InnoDB AUTO_INCREMENT=526 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: tblinvoicepaymentrecords
#

DROP TABLE IF EXISTS `tblinvoicepaymentrecords`;

CREATE TABLE `tblinvoicepaymentrecords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoiceid` int(11) NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `paymentmode` varchar(40) DEFAULT NULL,
  `paymentmethod` varchar(200) DEFAULT NULL,
  `date` date NOT NULL,
  `daterecorded` datetime NOT NULL,
  `note` text NOT NULL,
  `transactionid` mediumtext,
  PRIMARY KEY (`id`),
  KEY `invoiceid` (`invoiceid`),
  KEY `paymentmethod` (`paymentmethod`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblinvoicepaymentsmodes
#

DROP TABLE IF EXISTS `tblinvoicepaymentsmodes`;

CREATE TABLE `tblinvoicepaymentsmodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text,
  `show_on_pdf` int(11) NOT NULL DEFAULT '0',
  `invoices_only` int(11) NOT NULL DEFAULT '0',
  `expenses_only` int(11) NOT NULL DEFAULT '0',
  `selected_by_default` int(11) NOT NULL DEFAULT '1',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `tblinvoicepaymentsmodes` (`id`, `name`, `description`, `show_on_pdf`, `invoices_only`, `expenses_only`, `selected_by_default`, `active`) VALUES ('1', 'Bank', NULL, '0', '0', '0', '1', '1');


#
# TABLE STRUCTURE FOR: tblinvoices
#

DROP TABLE IF EXISTS `tblinvoices`;

CREATE TABLE `tblinvoices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sent` tinyint(1) NOT NULL DEFAULT '0',
  `datesend` datetime DEFAULT NULL,
  `clientid` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `prefix` varchar(50) DEFAULT NULL,
  `number_format` int(11) NOT NULL DEFAULT '0',
  `datecreated` datetime NOT NULL,
  `date` date NOT NULL,
  `duedate` date DEFAULT NULL,
  `currency` int(11) NOT NULL,
  `subtotal` decimal(11,2) NOT NULL,
  `total_tax` decimal(11,2) NOT NULL DEFAULT '0.00',
  `total` decimal(11,2) NOT NULL,
  `adjustment` decimal(11,2) DEFAULT NULL,
  `addedfrom` int(11) DEFAULT NULL,
  `hash` varchar(32) NOT NULL,
  `status` int(11) DEFAULT '1',
  `clientnote` text,
  `adminnote` text,
  `last_overdue_reminder` date DEFAULT NULL,
  `cancel_overdue_reminders` int(11) NOT NULL DEFAULT '0',
  `allowed_payment_modes` mediumtext,
  `token` mediumtext,
  `discount_percent` decimal(11,2) DEFAULT '0.00',
  `discount_total` decimal(11,2) DEFAULT '0.00',
  `discount_type` varchar(30) NOT NULL,
  `recurring` int(11) NOT NULL DEFAULT '0',
  `recurring_type` varchar(10) DEFAULT NULL,
  `custom_recurring` tinyint(1) NOT NULL DEFAULT '0',
  `recurring_ends_on` date DEFAULT NULL,
  `is_recurring_from` int(11) DEFAULT NULL,
  `last_recurring_date` date DEFAULT NULL,
  `terms` text,
  `sale_agent` int(11) NOT NULL DEFAULT '0',
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT NULL,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT NULL,
  `include_shipping` tinyint(1) NOT NULL,
  `show_shipping_on_invoice` tinyint(1) NOT NULL DEFAULT '1',
  `show_quantity_as` int(11) NOT NULL DEFAULT '1',
  `project_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `currency` (`currency`),
  KEY `clientid` (`clientid`),
  KEY `project_id` (`project_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblitems
#

DROP TABLE IF EXISTS `tblitems`;

CREATE TABLE `tblitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` mediumtext NOT NULL,
  `long_description` text,
  `rate` decimal(11,2) NOT NULL,
  `tax` int(11) DEFAULT NULL,
  `unit` varchar(40) DEFAULT NULL,
  `group_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblitems_groups
#

DROP TABLE IF EXISTS `tblitems_groups`;

CREATE TABLE `tblitems_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblitems_in
#

DROP TABLE IF EXISTS `tblitems_in`;

CREATE TABLE `tblitems_in` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(15) NOT NULL,
  `description` mediumtext NOT NULL,
  `long_description` mediumtext,
  `qty` decimal(11,2) NOT NULL,
  `rate` decimal(11,2) NOT NULL,
  `unit` varchar(40) DEFAULT NULL,
  `item_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rel_id` (`rel_id`),
  KEY `rel_type` (`rel_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblitemsrelated
#

DROP TABLE IF EXISTS `tblitemsrelated`;

CREATE TABLE `tblitemsrelated` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(30) NOT NULL,
  `item_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblitemstax
#

DROP TABLE IF EXISTS `tblitemstax`;

CREATE TABLE `tblitemstax` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemid` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) NOT NULL,
  `taxrate` decimal(11,2) NOT NULL,
  `taxname` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblknowledgebase
#

DROP TABLE IF EXISTS `tblknowledgebase`;

CREATE TABLE `tblknowledgebase` (
  `articleid` int(11) NOT NULL AUTO_INCREMENT,
  `articlegroup` int(11) NOT NULL,
  `subject` mediumtext NOT NULL,
  `description` text NOT NULL,
  `slug` mediumtext NOT NULL,
  `active` tinyint(4) NOT NULL,
  `datecreated` datetime NOT NULL,
  `article_order` int(11) NOT NULL DEFAULT '0',
  `staff_article` int(11) NOT NULL DEFAULT '0',
  `views` int(11) DEFAULT NULL,
  PRIMARY KEY (`articleid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblknowledgebasearticleanswers
#

DROP TABLE IF EXISTS `tblknowledgebasearticleanswers`;

CREATE TABLE `tblknowledgebasearticleanswers` (
  `articleanswerid` int(11) NOT NULL AUTO_INCREMENT,
  `articleid` int(11) NOT NULL,
  `answer` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`articleanswerid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblknowledgebasegroups
#

DROP TABLE IF EXISTS `tblknowledgebasegroups`;

CREATE TABLE `tblknowledgebasegroups` (
  `groupid` int(11) NOT NULL AUTO_INCREMENT,
  `name` mediumtext NOT NULL,
  `description` mediumtext,
  `active` tinyint(4) NOT NULL,
  `color` varchar(10) DEFAULT '#28B8DA',
  `group_order` int(11) DEFAULT '0',
  PRIMARY KEY (`groupid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblleadactivitylog
#

DROP TABLE IF EXISTS `tblleadactivitylog`;

CREATE TABLE `tblleadactivitylog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `leadid` int(11) NOT NULL,
  `description` mediumtext NOT NULL,
  `additional_data` varchar(600) DEFAULT NULL,
  `date` datetime NOT NULL,
  `staffid` int(11) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblleads
#

DROP TABLE IF EXISTS `tblleads`;

CREATE TABLE `tblleads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `company` varchar(300) DEFAULT NULL,
  `description` text,
  `country` int(11) NOT NULL DEFAULT '0',
  `zip` varchar(15) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `assigned` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `from_form_id` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL,
  `source` int(11) NOT NULL,
  `lastcontact` datetime DEFAULT NULL,
  `dateassigned` date DEFAULT NULL,
  `last_status_change` datetime DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `website` varchar(150) DEFAULT NULL,
  `leadorder` int(11) DEFAULT '1',
  `phonenumber` varchar(50) DEFAULT NULL,
  `date_converted` datetime DEFAULT NULL,
  `lost` tinyint(1) NOT NULL DEFAULT '0',
  `junk` int(11) NOT NULL DEFAULT '0',
  `last_lead_status` int(11) NOT NULL DEFAULT '0',
  `is_imported_from_email_integration` tinyint(1) NOT NULL DEFAULT '0',
  `email_integration_uid` varchar(30) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '0',
  `client_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `assigned` (`assigned`),
  KEY `source` (`source`),
  KEY `lastcontact` (`lastcontact`),
  KEY `leadorder` (`leadorder`),
  KEY `dateadded` (`dateadded`),
  KEY `from_form_id` (`from_form_id`),
  KEY `from_form_id_2` (`from_form_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblleadsemailintegrationemails
#

DROP TABLE IF EXISTS `tblleadsemailintegrationemails`;

CREATE TABLE `tblleadsemailintegrationemails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` mediumtext,
  `body` mediumtext,
  `dateadded` datetime NOT NULL,
  `leadid` int(11) NOT NULL,
  `emailid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblleadsintegration
#

DROP TABLE IF EXISTS `tblleadsintegration`;

CREATE TABLE `tblleadsintegration` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'the ID always must be 1',
  `active` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `imap_server` varchar(100) NOT NULL,
  `password` mediumtext NOT NULL,
  `check_every` int(11) NOT NULL DEFAULT '5',
  `responsible` int(11) NOT NULL,
  `lead_source` int(11) NOT NULL,
  `lead_status` int(11) NOT NULL,
  `encryption` varchar(3) DEFAULT NULL,
  `folder` varchar(100) NOT NULL,
  `last_run` varchar(50) DEFAULT NULL,
  `notify_lead_imported` tinyint(1) NOT NULL DEFAULT '1',
  `notify_lead_contact_more_times` tinyint(1) NOT NULL DEFAULT '1',
  `notify_type` varchar(20) DEFAULT NULL,
  `notify_ids` mediumtext,
  `only_loop_on_unseen_emails` tinyint(1) NOT NULL DEFAULT '1',
  `delete_after_import` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `tblleadsintegration` (`id`, `active`, `email`, `imap_server`, `password`, `check_every`, `responsible`, `lead_source`, `lead_status`, `encryption`, `folder`, `last_run`, `notify_lead_imported`, `notify_lead_contact_more_times`, `notify_type`, `notify_ids`, `only_loop_on_unseen_emails`, `delete_after_import`) VALUES ('1', '0', '', '', '', '10', '0', '0', '0', 'tls', 'inbox', '', '1', '1', 'roles', '', '1', '0');


#
# TABLE STRUCTURE FOR: tblleadssources
#

DROP TABLE IF EXISTS `tblleadssources`;

CREATE TABLE `tblleadssources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `tblleadssources` (`id`, `name`) VALUES ('1', 'Google');
INSERT INTO `tblleadssources` (`id`, `name`) VALUES ('2', 'Facebook');


#
# TABLE STRUCTURE FOR: tblleadsstatus
#

DROP TABLE IF EXISTS `tblleadsstatus`;

CREATE TABLE `tblleadsstatus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `statusorder` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT '#28B8DA',
  `isdefault` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `tblleadsstatus` (`id`, `name`, `statusorder`, `color`, `isdefault`) VALUES ('1', 'Customer', '1000', '#7cb342', '1');


#
# TABLE STRUCTURE FOR: tbllistemails
#

DROP TABLE IF EXISTS `tbllistemails`;

CREATE TABLE `tbllistemails` (
  `emailid` int(11) NOT NULL AUTO_INCREMENT,
  `listid` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`emailid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblmaillistscustomfields
#

DROP TABLE IF EXISTS `tblmaillistscustomfields`;

CREATE TABLE `tblmaillistscustomfields` (
  `customfieldid` int(11) NOT NULL AUTO_INCREMENT,
  `listid` int(11) NOT NULL,
  `fieldname` varchar(150) NOT NULL,
  `fieldslug` varchar(100) NOT NULL,
  PRIMARY KEY (`customfieldid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblmaillistscustomfieldvalues
#

DROP TABLE IF EXISTS `tblmaillistscustomfieldvalues`;

CREATE TABLE `tblmaillistscustomfieldvalues` (
  `customfieldvalueid` int(11) NOT NULL AUTO_INCREMENT,
  `listid` int(11) NOT NULL,
  `customfieldid` int(11) NOT NULL,
  `emailid` int(11) NOT NULL,
  `value` varchar(100) NOT NULL,
  PRIMARY KEY (`customfieldvalueid`),
  KEY `listid` (`listid`),
  KEY `customfieldid` (`customfieldid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblmigrations
#

DROP TABLE IF EXISTS `tblmigrations`;

CREATE TABLE `tblmigrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tblmigrations` (`version`) VALUES ('161');


#
# TABLE STRUCTURE FOR: tblmilestones
#

DROP TABLE IF EXISTS `tblmilestones`;

CREATE TABLE `tblmilestones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(400) NOT NULL,
  `description` text,
  `description_visible_to_customer` tinyint(1) DEFAULT '0',
  `due_date` date NOT NULL,
  `project_id` int(11) NOT NULL,
  `color` varchar(10) DEFAULT NULL,
  `milestone_order` int(11) NOT NULL DEFAULT '0',
  `datecreated` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblnotes
#

DROP TABLE IF EXISTS `tblnotes`;

CREATE TABLE `tblnotes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) NOT NULL,
  `description` text,
  `date_contacted` datetime DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblnotifications
#

DROP TABLE IF EXISTS `tblnotifications`;

CREATE TABLE `tblnotifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isread` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  `description` text NOT NULL,
  `fromuserid` int(11) NOT NULL,
  `fromclientid` int(11) NOT NULL DEFAULT '0',
  `from_fullname` varchar(100) NOT NULL,
  `touserid` int(11) NOT NULL,
  `fromcompany` int(11) DEFAULT NULL,
  `link` mediumtext,
  `additional_data` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tbloptions
#

DROP TABLE IF EXISTS `tbloptions`;

CREATE TABLE `tbloptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=246 DEFAULT CHARSET=utf8;

INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('1', 'dateformat', 'Y-m-d|%Y-%m-%d');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('2', 'companyname', '');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('3', 'services', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('4', 'maximum_allowed_ticket_attachments', '4');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('5', 'ticket_attachments_file_extensions', '.jpg,.png,.pdf,.doc');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('6', 'staff_access_only_assigned_departments', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('7', 'use_knowledge_base', '0');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('8', 'smtp_email', '');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('9', 'smtp_password', '');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('10', 'smtp_port', '');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('11', 'smtp_host', '');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('12', 'smtp_email_charset', 'utf-8');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('13', 'default_timezone', 'Europe/Belgrade');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('14', 'clients_default_theme', 'mediaworx');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('15', 'company_logo', 'logo.png');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('16', 'tables_pagination_limit', '25');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('17', 'main_domain', '');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('18', 'allow_registration', '0');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('19', 'knowledge_base_without_registration', '0');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('20', 'email_signature', '');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('21', 'default_staff_role', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('22', 'newsfeed_maximum_files_upload', '10');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('23', 'newsfeed_maximum_file_size', '5');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('24', 'contract_expiration_before', '4');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('25', 'invoice_prefix', 'INV-');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('26', 'decimal_separator', '.');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('27', 'thousand_separator', ',');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('28', 'currency_placement', 'before');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('29', 'invoice_company_name', '');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('30', 'invoice_company_address', '');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('31', 'invoice_company_city', '');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('32', 'invoice_company_country_code', '');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('33', 'invoice_company_postal_code', '');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('34', 'invoice_company_phonenumber', '');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('35', 'view_invoice_only_logged_in', '0');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('36', 'invoice_number_format', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('37', 'next_invoice_number', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('38', 'cron_send_invoice_overdue_reminder', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('39', 'active_language', 'english');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('40', 'invoice_number_decrement_on_delete', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('41', 'automatically_send_invoice_overdue_reminder_after', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('42', 'automatically_resend_invoice_overdue_reminder_after', '3');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('43', 'expenses_auto_operations_hour', '21');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('44', 'survey_send_emails_per_cron_run', '100');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('45', 'delete_only_on_last_invoice', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('46', 'delete_only_on_last_estimate', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('47', 'create_invoice_from_recurring_only_on_paid_invoices', '0');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('48', 'allow_payment_amount_to_be_modified', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('49', 'send_renewed_invoice_from_recurring_to_email', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('50', 'rtl_support_client', '0');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('51', 'limit_top_search_bar_results_to', '10');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('52', 'estimate_prefix', 'EST-');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('53', 'next_estimate_number', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('54', 'estimate_number_decrement_on_delete', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('55', 'estimate_number_format', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('56', 'estimate_auto_convert_to_invoice_on_client_accept', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('57', 'exclude_estimate_from_client_area_with_draft_status', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('58', 'rtl_support_admin', '0');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('59', 'last_cron_run', '');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('60', 'show_sale_agent_on_estimates', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('61', 'show_sale_agent_on_invoices', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('62', 'predefined_terms_invoice', '');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('63', 'predefined_terms_estimate', '');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('64', 'default_task_priority', '2');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('65', 'dropbox_app_key', '');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('66', 'show_expense_reminders_on_calendar', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('67', 'only_show_contact_tickets', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('68', 'predefined_clientnote_invoice', '');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('69', 'predefined_clientnote_estimate', '');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('70', 'custom_pdf_logo_image_url', '');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('71', 'favicon', 'favicon.ico');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('72', 'auto_backup_enabled', '0');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('73', 'invoice_due_after', '30');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('74', 'google_api_key', '');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('75', 'google_calendar_main_calendar', '');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('76', 'default_tax', '');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('77', 'show_invoices_on_calendar', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('78', 'show_estimates_on_calendar', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('79', 'show_contracts_on_calendar', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('80', 'show_tasks_on_calendar', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('81', 'show_customer_reminders_on_calendar', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('82', 'auto_backup_every', '7');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('83', 'last_auto_backup', '');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('84', 'output_client_pdfs_from_admin_area_in_client_language', '0');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('85', 'show_lead_reminders_on_calendar', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('86', 'aside_menu_active', '{\"aside_menu_active\":[{\"name\":\"als_dashboard\",\"url\":\"\\/\",\"permission\":\"\",\"icon\":\"fa fa-tachometer\",\"id\":\"dashboard\"},{\"name\":\"als_clients\",\"url\":\"clients\",\"permission\":\"customers\",\"icon\":\"fa fa-users\",\"id\":\"customers\"},{\"name\":\"als_dialogflow\",\"url\":\"dialogflow\",\"permission\":\"dialogflow\",\"icon\":\"fa fa-wechat\",\"id\":\"dialogflows\"},{\"name\":\"projects\",\"url\":\"projects\",\"permission\":\"\",\"icon\":\"fa fa-bars\",\"id\":\"projects\"},{\"name\":\"als_sales\",\"url\":\"#\",\"permission\":\"\",\"icon\":\"fa fa-balance-scale\",\"id\":\"sales\",\"children\":[{\"name\":\"proposals\",\"url\":\"proposals\",\"permission\":\"proposals\",\"icon\":\"\",\"id\":\"child-proposals\"},{\"name\":\"estimates\",\"url\":\"estimates\\/list_estimates\",\"permission\":\"estimates\",\"icon\":\"\",\"id\":\"child-estimates\"},{\"name\":\"invoices\",\"url\":\"invoices\\/list_invoices\",\"permission\":\"invoices\",\"icon\":\"\",\"id\":\"child-invoices\"},{\"name\":\"payments\",\"url\":\"payments\",\"permission\":\"payments\",\"icon\":\"\",\"id\":\"child-payments\"},{\"name\":\"items\",\"url\":\"invoice_items\",\"permission\":\"items\",\"icon\":\"\",\"id\":\"child-items\"}]},{\"name\":\"als_expenses\",\"url\":\"expenses\\/list_expenses\",\"permission\":\"expenses\",\"icon\":\"fa fa-heartbeat\",\"id\":\"expenses\"},{\"name\":\"support\",\"url\":\"tickets\",\"permission\":\"\",\"icon\":\"fa fa-ticket\",\"id\":\"tickets\"},{\"name\":\"als_contracts\",\"url\":\"contracts\",\"permission\":\"contracts\",\"icon\":\"fa fa-file\",\"id\":\"contracts\"},{\"name\":\"als_leads\",\"url\":\"leads\",\"permission\":\"is_staff_member\",\"icon\":\"fa fa-tty\",\"id\":\"leads\"},{\"name\":\"als_tasks\",\"url\":\"tasks\\/list_tasks\",\"permission\":\"\",\"icon\":\"fa fa-tasks\",\"id\":\"tasks\"},{\"name\":\"als_kb\",\"url\":\"#\",\"permission\":\"knowledge_base\",\"icon\":\"fa fa-folder-open-o\",\"id\":\"knowledge-base\",\"children\":[{\"name\":\"als_all_articles\",\"url\":\"knowledge_base\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-all-articles\"},{\"name\":\"als_kb_groups\",\"url\":\"knowledge_base\\/manage_groups\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-groups\"}]},{\"name\":\"als_reports\",\"url\":\"#\",\"permission\":\"reports\",\"icon\":\"fa fa-area-chart\",\"id\":\"reports\",\"children\":[{\"name\":\"als_reports_sales_submenu\",\"url\":\"reports\\/sales\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-sales\"},{\"name\":\"als_reports_expenses\",\"url\":\"reports\\/expenses\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-expenses\"},{\"name\":\"als_expenses_vs_income\",\"url\":\"reports\\/expenses_vs_income\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-expenses-vs-income\"},{\"name\":\"als_reports_leads_submenu\",\"url\":\"reports\\/leads\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-leads\"},{\"name\":\"als_kb_articles_submenu\",\"url\":\"reports\\/knowledge_base_articles\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-kb-articles\"}]},{\"name\":\"als_utilities\",\"url\":\"#\",\"permission\":\"\",\"icon\":\"fa fa-cogs\",\"id\":\"utilities\",\"children\":[{\"name\":\"als_media\",\"url\":\"utilities\\/media\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-media\"},{\"name\":\"bulk_pdf_exporter\",\"url\":\"utilities\\/bulk_pdf_exporter\",\"permission\":\"bulk_pdf_exporter\",\"icon\":\"\",\"id\":\"child-bulk-pdf-exporter\"},{\"name\":\"als_calendar_submenu\",\"url\":\"utilities\\/calendar\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-calendar\"},{\"name\":\"als_goals_tracking\",\"url\":\"goals\",\"permission\":\"goals\",\"icon\":\"\",\"id\":\"child-goals-tracking\"},{\"name\":\"als_surveys\",\"url\":\"surveys\",\"permission\":\"surveys\",\"icon\":\"\",\"id\":\"child-surveys\"},{\"name\":\"als_announcements_submenu\",\"url\":\"announcements\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"child-announcements\"},{\"name\":\"utility_backup\",\"url\":\"utilities\\/backup\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"child-database-backup\"},{\"name\":\"als_activity_log_submenu\",\"url\":\"utilities\\/activity_log\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"child-activity-log\"},{\"name\":\"ticket_pipe_log\",\"url\":\"utilities\\/pipe_log\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"ticket-pipe-log\"}]}]}');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('87', 'estimate_expiry_reminder_enabled', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('88', 'send_estimate_expiry_reminder_before', '4');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('89', 'leads_default_source', '');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('90', 'leads_default_status', '');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('91', 'proposal_expiry_reminder_enabled', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('92', 'send_proposal_expiry_reminder_before', '4');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('93', 'default_contact_permissions', 'a:6:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"4\";i:4;s:1:\"5\";i:5;s:1:\"6\";}');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('94', 'pdf_logo_width', '150');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('95', 'aside_menu_inactive', '{\"aside_menu_inactive\":[]}');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('96', 'setup_menu_active', '{\"setup_menu_active\":[{\"name\":\"als_staff\",\"url\":\"staff\",\"permission\":\"staff\",\"icon\":\"\",\"id\":\"staff\"},{\"name\":\"als_dialogflow\",\"url\":\"#\",\"permission\":\"dialogflow\",\"icon\":\"\",\"id\":\"dialogflow\",\"children\":[{\"name\":\"als_entities\",\"url\":\"entities\",\"permission\":\"dialogflow\",\"icon\":\"\",\"id\":\"entities\"},{\"name\":\"als_intents\",\"url\":\"intents\",\"permission\":\"dialogflow\",\"icon\":\"\",\"id\":\"dialogflow\"}]},{\"name\":\"clients\",\"url\":\"#\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"customers\",\"children\":[{\"name\":\"customer_groups\",\"url\":\"clients\\/groups\",\"permission\":\"\",\"icon\":\"\",\"id\":\"groups\"}]},{\"name\":\"support\",\"url\":\"#\",\"permission\":\"\",\"icon\":\"\",\"id\":\"tickets\",\"children\":[{\"name\":\"acs_departments\",\"url\":\"departments\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"departments\"},{\"name\":\"acs_ticket_predefined_replies_submenu\",\"url\":\"tickets\\/predifined_replies\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"predifined-replies\"},{\"name\":\"acs_ticket_priority_submenu\",\"url\":\"tickets\\/priorities\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"ticket-priority\"},{\"name\":\"acs_ticket_statuses_submenu\",\"url\":\"tickets\\/statuses\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"ticket-statuses\"},{\"name\":\"acs_ticket_services_submenu\",\"url\":\"tickets\\/services\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"services\"},{\"name\":\"spam_filters\",\"url\":\"tickets\\/spam_filters\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"spam-filters\"}]},{\"name\":\"acs_leads\",\"url\":\"#\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"leads\",\"children\":[{\"name\":\"acs_leads_sources_submenu\",\"url\":\"leads\\/sources\",\"permission\":\"\",\"icon\":\"\",\"id\":\"sources\"},{\"name\":\"acs_leads_statuses_submenu\",\"url\":\"leads\\/statuses\",\"permission\":\"\",\"icon\":\"\",\"id\":\"statuses\"},{\"name\":\"leads_email_integration\",\"url\":\"leads\\/email_integration\",\"permission\":\"\",\"icon\":\"\",\"id\":\"email-integration\"},{\"name\":\"web_to_lead\",\"url\":\"leads\\/forms\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"web-to-lead\"}]},{\"name\":\"acs_finance\",\"url\":\"#\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"finance\",\"children\":[{\"name\":\"acs_sales_taxes_submenu\",\"url\":\"taxes\",\"permission\":\"\",\"icon\":\"\",\"id\":\"taxes\"},{\"name\":\"acs_sales_currencies_submenu\",\"url\":\"currencies\",\"permission\":\"\",\"icon\":\"\",\"id\":\"currencies\"},{\"name\":\"acs_sales_payment_modes_submenu\",\"url\":\"paymentmodes\",\"permission\":\"\",\"icon\":\"\",\"id\":\"payment-modes\"},{\"name\":\"acs_expense_categories\",\"url\":\"expenses\\/categories\",\"permission\":\"\",\"icon\":\"\",\"id\":\"expenses-categories\"}]},{\"name\":\"acs_contracts\",\"url\":\"#\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"contracts\",\"children\":[{\"name\":\"acs_contract_types\",\"url\":\"contracts\\/types\",\"permission\":\"\",\"icon\":\"\",\"id\":\"contract-types\"}]},{\"name\":\"acs_email_templates\",\"url\":\"emails\",\"permission\":\"email_templates\",\"icon\":\"\",\"id\":\"email-templates\"},{\"name\":\"asc_custom_fields\",\"url\":\"custom_fields\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"custom-fields\"},{\"name\":\"acs_roles\",\"url\":\"roles\",\"permission\":\"roles\",\"icon\":\"\",\"id\":\"roles\"},{\"name\":\"menu_builder\",\"url\":\"#\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"menu-builder\",\"children\":[{\"name\":\"main_menu\",\"url\":\"utilities\\/main_menu\",\"permission\":\"\",\"icon\":\"\",\"id\":\"organize-sidebar\"},{\"name\":\"setup_menu\",\"url\":\"utilities\\/setup_menu\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"setup-menu\"}]},{\"name\":\"theme_style\",\"url\":\"utilities\\/theme_style\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"theme-style\"},{\"name\":\"acs_settings\",\"url\":\"settings\",\"permission\":\"settings\",\"icon\":\"\",\"id\":\"settings\"}]}');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('97', 'access_tickets_to_none_staff_members', '0');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('98', 'setup_menu_inactive', '{\"setup_menu_inactive\":[]}');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('99', 'customer_default_country', '');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('100', 'view_estimate_only_logged_in', '0');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('101', 'show_status_on_pdf_ei', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('102', 'email_piping_only_replies', '0');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('103', 'email_piping_only_registered', '0');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('104', 'default_view_calendar', 'month');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('105', 'email_piping_default_priority', '2');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('106', 'total_to_words_lowercase', '0');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('107', 'show_tax_per_item', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('108', 'last_survey_send_cron', '');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('109', 'total_to_words_enabled', '0');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('110', 'receive_notification_on_new_ticket', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('111', 'autoclose_tickets_after', '0');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('112', 'media_max_file_size_upload', '10');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('113', 'client_staff_add_edit_delete_task_comments_first_hour', '0');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('114', 'show_projects_on_calendar', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('115', 'leads_kanban_limit', '50');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('116', 'tasks_reminder_notification_before', '2');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('117', 'pdf_font', 'freesans');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('118', 'pdf_table_heading_color', '#323a45');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('119', 'pdf_table_heading_text_color', '#ffffff');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('120', 'pdf_font_size', '10');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('121', 'defaut_leads_kanban_sort', 'leadorder');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('122', 'defaut_leads_kanban_sort_type', 'asc');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('123', 'allowed_files', '.gif,.png,.jpeg,.jpg,.pdf,.doc,.txt,.docx,.xls,.zip,.rar,.xls,.mp4');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('124', 'show_all_tasks_for_project_member', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('125', 'email_protocol', 'smtp');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('126', 'calendar_first_day', '0');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('127', 'recaptcha_secret_key', '');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('128', 'show_help_on_setup_menu', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('129', 'show_proposals_on_calendar', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('130', 'smtp_encryption', '');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('131', 'recaptcha_site_key', '');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('132', 'smtp_username', '');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('133', 'auto_stop_tasks_timers_on_new_timer', '0');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('134', 'notification_when_customer_pay_invoice', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('135', 'theme_style', '[]');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('136', 'calendar_invoice_color', '#FF6F00');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('137', 'calendar_estimate_color', '#FF6F00');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('138', 'calendar_proposal_color', '#84c529');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('139', 'calendar_task_color', '#FC2D42');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('140', 'calendar_reminder_color', '#03A9F4');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('141', 'calendar_contract_color', '#B72974');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('142', 'calendar_project_color', '#B72974');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('143', 'update_info_message', '');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('144', 'show_estimate_reminders_on_calendar', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('145', 'show_invoice_reminders_on_calendar', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('146', 'show_proposal_reminders_on_calendar', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('147', 'proposal_due_after', '7');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('148', 'allow_customer_to_change_ticket_status', '0');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('149', 'lead_lock_after_convert_to_customer', '0');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('150', 'default_proposals_pipeline_sort', 'pipeline_order');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('151', 'defaut_proposals_pipeline_sort_type', 'asc');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('152', 'default_estimates_pipeline_sort', 'pipeline_order');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('153', 'defaut_estimates_pipeline_sort_type', 'asc');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('154', 'use_recaptcha_customers_area', '0');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('155', 'remove_decimals_on_zero', '0');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('156', 'remove_tax_name_from_item_table', '0');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('157', 'pdf_format_invoice', 'A4-PORTRAIT');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('158', 'pdf_format_estimate', 'A4-PORTRAIT');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('159', 'pdf_format_proposal', 'A4-PORTRAIT');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('160', 'pdf_format_payment', 'A4-PORTRAIT');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('161', 'pdf_format_contract', 'A4-PORTRAIT');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('162', 'pdf_text_color', '#000000');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('163', 'auto_check_for_new_notifications', '0');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('164', 'swap_pdf_info', '0');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('165', 'exclude_invoice_from_client_area_with_draft_status', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('166', 'cron_has_run_from_cli', '0');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('167', 'hide_cron_is_required_message', '0');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('168', 'auto_assign_customer_admin_after_lead_convert', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('169', 'show_transactions_on_invoice_pdf', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('170', 'show_pay_link_to_invoice_pdf', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('171', 'tasks_kanban_limit', '50');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('172', 'purchase_key', '');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('173', 'estimates_pipeline_limit', '50');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('174', 'proposals_pipeline_limit', '50');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('175', 'proposal_number_prefix', 'PRO-');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('176', 'number_padding_prefixes', '6');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('177', 'show_page_number_on_pdf', '0');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('178', 'calendar_events_limit', '4');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('179', 'show_setup_menu_item_only_on_hover', '0');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('180', 'company_requires_vat_number_field', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('181', 'company_is_required', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('182', 'allow_contact_to_delete_files', '0');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('183', 'company_vat', '');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('184', 'di', '1515153728');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('185', 'invoice_auto_operations_hour', '21');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('186', 'use_minified_files', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('187', 'only_own_files_contacts', '0');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('188', 'allow_primary_contact_to_view_edit_billing_and_shipping', '0');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('189', 'estimate_due_after', '7');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('190', 'delete_backups_older_then', '0');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('191', 'staff_members_open_tickets_to_all_contacts', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('192', 'paymentmethod_authorize_aim_active', '0');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('193', 'paymentmethod_authorize_aim_label', 'Authorize.net');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('194', 'paymentmethod_authorize_aim_api_login_id', '');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('195', 'paymentmethod_authorize_aim_api_transaction_key', '');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('196', 'paymentmethod_authorize_aim_currencies', 'USD');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('197', 'paymentmethod_authorize_aim_default_selected', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('198', 'paymentmethod_authorize_aim_test_mode_enabled', '0');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('199', 'paymentmethod_authorize_aim_developer_mode_enabled', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('200', 'paymentmethod_authorize_sim_active', '0');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('201', 'paymentmethod_authorize_sim_label', 'Authorize.net');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('202', 'paymentmethod_authorize_sim_api_login_id', '');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('203', 'paymentmethod_authorize_sim_api_transaction_key', '');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('204', 'paymentmethod_authorize_sim_api_secret_key', '');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('205', 'paymentmethod_authorize_sim_currencies', 'USD');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('206', 'paymentmethod_authorize_sim_default_selected', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('207', 'paymentmethod_authorize_sim_test_mode_enabled', '0');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('208', 'paymentmethod_authorize_sim_developer_mode_enabled', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('209', 'paymentmethod_mollie_active', '0');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('210', 'paymentmethod_mollie_label', 'Mollie');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('211', 'paymentmethod_mollie_api_key', '');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('212', 'paymentmethod_mollie_currencies', 'EUR');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('213', 'paymentmethod_mollie_default_selected', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('214', 'paymentmethod_mollie_test_mode_enabled', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('215', 'paymentmethod_paypal_braintree_active', '0');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('216', 'paymentmethod_paypal_braintree_label', 'Braintree');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('217', 'paymentmethod_paypal_braintree_merchant_id', '');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('218', 'paymentmethod_paypal_braintree_api_public_key', '');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('219', 'paymentmethod_paypal_braintree_api_private_key', '');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('220', 'paymentmethod_paypal_braintree_currencies', 'USD');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('221', 'paymentmethod_paypal_braintree_default_selected', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('222', 'paymentmethod_paypal_braintree_test_mode_enabled', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('223', 'paymentmethod_paypal_active', '0');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('224', 'paymentmethod_paypal_label', 'Paypal');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('225', 'paymentmethod_paypal_username', '');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('226', 'paymentmethod_paypal_password', '');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('227', 'paymentmethod_paypal_signature', '');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('228', 'paymentmethod_paypal_currencies', 'EUR,USD');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('229', 'paymentmethod_paypal_default_selected', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('230', 'paymentmethod_paypal_test_mode_enabled', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('231', 'paymentmethod_stripe_active', '0');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('232', 'paymentmethod_stripe_label', 'Stripe');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('233', 'paymentmethod_stripe_api_secret_key', '');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('234', 'paymentmethod_stripe_api_publishable_key', '');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('235', 'paymentmethod_stripe_currencies', 'USD,CAD');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('236', 'paymentmethod_stripe_default_selected', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('237', 'paymentmethod_stripe_test_mode_enabled', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('238', 'paymentmethod_two_checkout_active', '0');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('239', 'paymentmethod_two_checkout_label', '2Checkout');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('240', 'paymentmethod_two_checkout_account_number', '');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('241', 'paymentmethod_two_checkout_private_key', '');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('242', 'paymentmethod_two_checkout_publishable_key', '');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('243', 'paymentmethod_two_checkout_currencies', 'USD,EUR');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('244', 'paymentmethod_two_checkout_default_selected', '1');
INSERT INTO `tbloptions` (`id`, `name`, `value`) VALUES ('245', 'paymentmethod_two_checkout_test_mode_enabled', '1');


#
# TABLE STRUCTURE FOR: tblpermissions
#

DROP TABLE IF EXISTS `tblpermissions`;

CREATE TABLE `tblpermissions` (
  `permissionid` int(11) NOT NULL AUTO_INCREMENT,
  `name` mediumtext NOT NULL,
  `shortname` mediumtext NOT NULL,
  PRIMARY KEY (`permissionid`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

INSERT INTO `tblpermissions` (`permissionid`, `name`, `shortname`) VALUES ('1', 'Contracts', 'contracts');
INSERT INTO `tblpermissions` (`permissionid`, `name`, `shortname`) VALUES ('2', 'Tasks', 'tasks');
INSERT INTO `tblpermissions` (`permissionid`, `name`, `shortname`) VALUES ('3', 'Reports', 'reports');
INSERT INTO `tblpermissions` (`permissionid`, `name`, `shortname`) VALUES ('4', 'Settings', 'settings');
INSERT INTO `tblpermissions` (`permissionid`, `name`, `shortname`) VALUES ('5', 'Projects', 'projects');
INSERT INTO `tblpermissions` (`permissionid`, `name`, `shortname`) VALUES ('6', 'Surveys', 'surveys');
INSERT INTO `tblpermissions` (`permissionid`, `name`, `shortname`) VALUES ('7', 'Staff', 'staff');
INSERT INTO `tblpermissions` (`permissionid`, `name`, `shortname`) VALUES ('8', 'Customers', 'customers');
INSERT INTO `tblpermissions` (`permissionid`, `name`, `shortname`) VALUES ('9', 'Email Templates', 'email_templates');
INSERT INTO `tblpermissions` (`permissionid`, `name`, `shortname`) VALUES ('10', 'Roles', 'roles');
INSERT INTO `tblpermissions` (`permissionid`, `name`, `shortname`) VALUES ('11', 'Estimates', 'estimates');
INSERT INTO `tblpermissions` (`permissionid`, `name`, `shortname`) VALUES ('12', 'Knowledge base', 'knowledge_base');
INSERT INTO `tblpermissions` (`permissionid`, `name`, `shortname`) VALUES ('13', 'Proposals', 'proposals');
INSERT INTO `tblpermissions` (`permissionid`, `name`, `shortname`) VALUES ('14', 'Goals', 'goals');
INSERT INTO `tblpermissions` (`permissionid`, `name`, `shortname`) VALUES ('15', 'Expenses', 'expenses');
INSERT INTO `tblpermissions` (`permissionid`, `name`, `shortname`) VALUES ('16', 'Bulk PDF Exporter', 'bulk_pdf_exporter');
INSERT INTO `tblpermissions` (`permissionid`, `name`, `shortname`) VALUES ('17', 'Payments', 'payments');
INSERT INTO `tblpermissions` (`permissionid`, `name`, `shortname`) VALUES ('18', 'Invoices', 'invoices');
INSERT INTO `tblpermissions` (`permissionid`, `name`, `shortname`) VALUES ('19', 'Items', 'items');
INSERT INTO `tblpermissions` (`permissionid`, `name`, `shortname`) VALUES ('20', 'Dialogflow', 'dialogflow');


#
# TABLE STRUCTURE FOR: tblpinnedprojects
#

DROP TABLE IF EXISTS `tblpinnedprojects`;

CREATE TABLE `tblpinnedprojects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblpostcomments
#

DROP TABLE IF EXISTS `tblpostcomments`;

CREATE TABLE `tblpostcomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text,
  `userid` int(11) NOT NULL,
  `postid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblpostlikes
#

DROP TABLE IF EXISTS `tblpostlikes`;

CREATE TABLE `tblpostlikes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `postid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `dateliked` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblposts
#

DROP TABLE IF EXISTS `tblposts`;

CREATE TABLE `tblposts` (
  `postid` int(11) NOT NULL AUTO_INCREMENT,
  `creator` int(11) NOT NULL,
  `datecreated` datetime NOT NULL,
  `visibility` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `pinned` int(11) NOT NULL,
  `datepinned` datetime DEFAULT NULL,
  PRIMARY KEY (`postid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblpredifinedreplies
#

DROP TABLE IF EXISTS `tblpredifinedreplies`;

CREATE TABLE `tblpredifinedreplies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblpriorities
#

DROP TABLE IF EXISTS `tblpriorities`;

CREATE TABLE `tblpriorities` (
  `priorityid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`priorityid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO `tblpriorities` (`priorityid`, `name`) VALUES ('1', 'Low');
INSERT INTO `tblpriorities` (`priorityid`, `name`) VALUES ('2', 'Medium');
INSERT INTO `tblpriorities` (`priorityid`, `name`) VALUES ('3', 'High');


#
# TABLE STRUCTURE FOR: tblprojectactivity
#

DROP TABLE IF EXISTS `tblprojectactivity`;

CREATE TABLE `tblprojectactivity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL DEFAULT '0',
  `contact_id` int(11) NOT NULL DEFAULT '0',
  `fullname` varchar(100) DEFAULT NULL,
  `visible_to_customer` int(11) NOT NULL DEFAULT '0',
  `description_key` varchar(500) NOT NULL COMMENT 'Language file key',
  `additional_data` text,
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblprojectdiscussioncomments
#

DROP TABLE IF EXISTS `tblprojectdiscussioncomments`;

CREATE TABLE `tblprojectdiscussioncomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `discussion_id` int(11) NOT NULL,
  `discussion_type` varchar(10) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `content` text NOT NULL,
  `staff_id` int(11) NOT NULL,
  `contact_id` int(11) DEFAULT '0',
  `fullname` varchar(300) DEFAULT NULL,
  `file_name` varchar(300) DEFAULT NULL,
  `file_mime_type` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblprojectdiscussions
#

DROP TABLE IF EXISTS `tblprojectdiscussions`;

CREATE TABLE `tblprojectdiscussions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `description` text NOT NULL,
  `show_to_customer` tinyint(1) NOT NULL DEFAULT '0',
  `datecreated` datetime NOT NULL,
  `last_activity` datetime DEFAULT NULL,
  `staff_id` int(11) NOT NULL DEFAULT '0',
  `contact_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblprojectfiles
#

DROP TABLE IF EXISTS `tblprojectfiles`;

CREATE TABLE `tblprojectfiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_name` mediumtext NOT NULL,
  `subject` varchar(500) DEFAULT NULL,
  `description` text,
  `filetype` varchar(50) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `last_activity` datetime DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `visible_to_customer` tinyint(1) DEFAULT '0',
  `staffid` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL DEFAULT '0',
  `external` varchar(40) DEFAULT NULL,
  `external_link` text,
  `thumbnail_link` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblprojectmembers
#

DROP TABLE IF EXISTS `tblprojectmembers`;

CREATE TABLE `tblprojectmembers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`),
  KEY `staff_id` (`staff_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblprojectnotes
#

DROP TABLE IF EXISTS `tblprojectnotes`;

CREATE TABLE `tblprojectnotes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `staff_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblprojects
#

DROP TABLE IF EXISTS `tblprojects`;

CREATE TABLE `tblprojects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(600) NOT NULL,
  `description` text,
  `status` int(11) NOT NULL DEFAULT '0',
  `clientid` int(11) NOT NULL,
  `billing_type` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `deadline` date DEFAULT NULL,
  `project_created` date NOT NULL,
  `date_finished` datetime DEFAULT NULL,
  `progress` int(11) DEFAULT '0',
  `progress_from_tasks` int(11) NOT NULL DEFAULT '1',
  `project_cost` decimal(11,2) DEFAULT NULL,
  `project_rate_per_hour` decimal(11,2) DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `clientid` (`clientid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblprojectsettings
#

DROP TABLE IF EXISTS `tblprojectsettings`;

CREATE TABLE `tblprojectsettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `value` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblproposalcomments
#

DROP TABLE IF EXISTS `tblproposalcomments`;

CREATE TABLE `tblproposalcomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` mediumtext,
  `proposalid` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblproposals
#

DROP TABLE IF EXISTS `tblproposals`;

CREATE TABLE `tblproposals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(500) DEFAULT NULL,
  `content` longtext,
  `addedfrom` int(11) NOT NULL,
  `datecreated` datetime NOT NULL,
  `total` decimal(11,2) DEFAULT NULL,
  `subtotal` decimal(11,2) NOT NULL,
  `total_tax` decimal(11,2) NOT NULL DEFAULT '0.00',
  `adjustment` decimal(11,2) DEFAULT NULL,
  `discount_percent` decimal(11,2) NOT NULL,
  `discount_total` decimal(11,2) NOT NULL,
  `discount_type` varchar(30) DEFAULT NULL,
  `show_quantity_as` int(11) NOT NULL DEFAULT '1',
  `currency` int(11) NOT NULL,
  `open_till` date DEFAULT NULL,
  `date` date NOT NULL,
  `rel_id` int(11) DEFAULT NULL,
  `rel_type` varchar(40) DEFAULT NULL,
  `assigned` int(11) DEFAULT NULL,
  `hash` varchar(32) NOT NULL,
  `proposal_to` varchar(600) DEFAULT NULL,
  `country` int(11) NOT NULL DEFAULT '0',
  `zip` varchar(50) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `allow_comments` tinyint(1) NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL,
  `estimate_id` int(11) DEFAULT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `date_converted` datetime DEFAULT NULL,
  `pipeline_order` int(11) NOT NULL DEFAULT '0',
  `is_expiry_notified` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblreminders
#

DROP TABLE IF EXISTS `tblreminders`;

CREATE TABLE `tblreminders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text,
  `date` datetime NOT NULL,
  `isnotified` int(11) NOT NULL DEFAULT '0',
  `rel_id` int(11) NOT NULL,
  `staff` int(11) NOT NULL,
  `rel_type` varchar(40) NOT NULL,
  `notify_by_email` int(11) NOT NULL DEFAULT '1',
  `creator` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblrolepermissions
#

DROP TABLE IF EXISTS `tblrolepermissions`;

CREATE TABLE `tblrolepermissions` (
  `rolepermissionid` int(11) NOT NULL AUTO_INCREMENT,
  `roleid` int(11) NOT NULL,
  `can_view` tinyint(1) NOT NULL DEFAULT '0',
  `can_view_own` tinyint(1) NOT NULL DEFAULT '0',
  `can_edit` tinyint(1) DEFAULT '0',
  `can_create` tinyint(1) NOT NULL DEFAULT '0',
  `can_delete` tinyint(1) NOT NULL DEFAULT '0',
  `permissionid` int(11) NOT NULL,
  PRIMARY KEY (`rolepermissionid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblroles
#

DROP TABLE IF EXISTS `tblroles`;

CREATE TABLE `tblroles` (
  `roleid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`roleid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `tblroles` (`roleid`, `name`) VALUES ('1', 'Employee');


#
# TABLE STRUCTURE FOR: tblsalesactivity
#

DROP TABLE IF EXISTS `tblsalesactivity`;

CREATE TABLE `tblsalesactivity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rel_type` varchar(20) DEFAULT NULL,
  `rel_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `additional_data` varchar(600) DEFAULT NULL,
  `staffid` varchar(11) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblservices
#

DROP TABLE IF EXISTS `tblservices`;

CREATE TABLE `tblservices` (
  `serviceid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`serviceid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblsessions
#

DROP TABLE IF EXISTS `tblsessions`;

CREATE TABLE `tblsessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('7grhtr8mbhc9adk6spsinl07qg16kl6n', '127.0.0.1', '1515154057', '__ci_last_regenerate|i:1515154057;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('6q3r9sm5550skvpoo9mq9ilbm27ptv61', '127.0.0.1', '1515154401', '__ci_last_regenerate|i:1515154401;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('aens797710ufin1jge0fb2pp9o4g9cdv', '127.0.0.1', '1515173040', '__ci_last_regenerate|i:1515173040;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ieau6s45cv89mccev952blr2p6p3rd6r', '127.0.0.1', '1515173360', '__ci_last_regenerate|i:1515173360;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('kqgvs8eknsg7vgho2phuuf6q62cbu1m3', '127.0.0.1', '1515173674', '__ci_last_regenerate|i:1515173674;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('htqcnflpgmqurqraj10k1k41uas9pbij', '127.0.0.1', '1515174859', '__ci_last_regenerate|i:1515174859;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('pfd9gfvt7guj68697ed5pk2di6jjen9f', '127.0.0.1', '1515174902', '__ci_last_regenerate|i:1515174859;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('9tl3st4v48ab3gug8sreo77gepb6je7n', '127.0.0.1', '1515319863', '__ci_last_regenerate|i:1515319863;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('do9u3msge3t8sfrkahkiuda9mqvrj5ie', '127.0.0.1', '1515320164', '__ci_last_regenerate|i:1515320164;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ps8e3qmvvdhhij97f2ehbv4iq99mmt06', '127.0.0.1', '1515321151', '__ci_last_regenerate|i:1515321151;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ea0invburl93gcec2pqpadqmrguvu4de', '127.0.0.1', '1515321474', '__ci_last_regenerate|i:1515321474;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('439069ntsugagefdjr4hllre2v6165du', '127.0.0.1', '1515321808', '__ci_last_regenerate|i:1515321808;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('5gr2cnivrh9rvmpmq2hoctdegl0l0srt', '127.0.0.1', '1515322177', '__ci_last_regenerate|i:1515322177;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('12art2tiohnib9fu19el37uameoe2cld', '127.0.0.1', '1515322509', '__ci_last_regenerate|i:1515322509;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('pj2p5lv1k3nn8ltestuba4afalrndqrd', '127.0.0.1', '1515322884', '__ci_last_regenerate|i:1515322884;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('2e6a4lho5f80rjsjmddmjr6h2elljc6l', '127.0.0.1', '1515325751', '__ci_last_regenerate|i:1515325751;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('990o67refr4sh35hmlbe021g69t7t4sj', '127.0.0.1', '1515325871', '__ci_last_regenerate|i:1515325751;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('la3af0p6uon4ph6u1tj07musfo531snk', '127.0.0.1', '1515579660', 'red_url|s:32:\"admin/misc/set_setup_menu_closed\";__ci_last_regenerate|i:1515579660;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('953j495ufgebkfqf0mm034qo9cl9l4fn', '127.0.0.1', '1515579982', '__ci_last_regenerate|i:1515579982;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('716scbr0uhaealmmie4kd6mlo38eooqj', '127.0.0.1', '1515580306', '__ci_last_regenerate|i:1515580306;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('qoipuaqhk3pgmivp8e1hg7mahcatt7ko', '127.0.0.1', '1515580757', '__ci_last_regenerate|i:1515580757;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('212b7fhuk87ep5plrn80gpg2c48ul5r5', '127.0.0.1', '1515581265', '__ci_last_regenerate|i:1515581265;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('tp2t3qblhnc5il2d642dsle5cpi82bia', '127.0.0.1', '1515581583', '__ci_last_regenerate|i:1515581583;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('25qr9d8ekk5eth1gi2b560hc2jpn9g7h', '127.0.0.1', '1515581932', '__ci_last_regenerate|i:1515581932;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('5i8oeu1k6ujrh57aufkt4t2qgmlfl1tu', '127.0.0.1', '1515582303', '__ci_last_regenerate|i:1515582303;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('diusrbvtnj6ucoa1le3me9iuruq1vkjr', '127.0.0.1', '1515582650', '__ci_last_regenerate|i:1515582650;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('p283h68pgf35vjd62m1f3n69ceuk1iod', '127.0.0.1', '1515585360', '__ci_last_regenerate|i:1515585360;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('bim8n16oi0oq1n1ucqegv1cj3mp1o3ts', '127.0.0.1', '1515585760', '__ci_last_regenerate|i:1515585760;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";message-danger|s:15:\"Agent Not Found\";__ci_vars|a:1:{s:14:\"message-danger\";s:3:\"old\";}');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('1qee6un3rid3vmjcnoujshmjnlpe8k8h', '127.0.0.1', '1515586855', '__ci_last_regenerate|i:1515586855;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ljmi32pkq516jhma028mgr2m639n1ak9', '127.0.0.1', '1515587167', '__ci_last_regenerate|i:1515587167;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('4lgs47dme11o7fvn54dj045febc3rkev', '127.0.0.1', '1515587501', '__ci_last_regenerate|i:1515587501;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('h1b1btuu93t3m04olvkn6tpc869vvsqn', '127.0.0.1', '1515587852', '__ci_last_regenerate|i:1515587852;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('tibj3r3vufp8t1av7v10puru17j4q29i', '127.0.0.1', '1515590702', '__ci_last_regenerate|i:1515590702;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('i914ggrv7kei5km2r1g8n8g35migdue5', '127.0.0.1', '1515591098', '__ci_last_regenerate|i:1515591098;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('euhdj1kjgr0mtg9278ijdum6is32fsf3', '127.0.0.1', '1515591607', '__ci_last_regenerate|i:1515591607;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('6ugg6rb9shqvk3jka4ca40idu0okckgf', '127.0.0.1', '1515591914', '__ci_last_regenerate|i:1515591914;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('kb7uh27od3bqv2m5a3mtl346v5c9d19j', '127.0.0.1', '1515592254', '__ci_last_regenerate|i:1515592254;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('lnep9im6v3mknq8f333auqara3jbjjbu', '127.0.0.1', '1515592646', '__ci_last_regenerate|i:1515592646;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('nh11n515notiiplejneh2ntth3t07eqb', '127.0.0.1', '1515592954', '__ci_last_regenerate|i:1515592954;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('gh3bvt94hh27nprvrh81qsjolsvdv1u4', '127.0.0.1', '1515614305', '__ci_last_regenerate|i:1515614305;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('91s9thpd9ejumu8au1sg18k2ch44417m', '127.0.0.1', '1515614380', '__ci_last_regenerate|i:1515614305;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ep44u3ilmdgjk8mvrn6lg80khe4rjhie', '127.0.0.1', '1515667711', '__ci_last_regenerate|i:1515667711;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('3nakltp2ov4mqfhd6b590rk1pcml5nt7', '127.0.0.1', '1515669964', '__ci_last_regenerate|i:1515669964;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('m900mb3nf4jvojppdavgmqed08ans10r', '127.0.0.1', '1515668060', '__ci_last_regenerate|i:1515668060;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('frpvep1j5grevm438gajkub4v620fflc', '127.0.0.1', '1515668828', '__ci_last_regenerate|i:1515668828;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('sq39rtno4j67be0oqr8fi04uvpqi26b1', '127.0.0.1', '1515668498', '__ci_last_regenerate|i:1515668497;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('081dorbf315hrplov6j836596bei0q9d', '127.0.0.1', '1515670044', '__ci_last_regenerate|i:1515670044;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('4qqr2mgtvlfecrh5i5mqqff8rlma0vm6', '127.0.0.1', '1515670496', '__ci_last_regenerate|i:1515670496;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ieggkve6eek99al41b160utf88n2b6dc', '127.0.0.1', '1515670383', '__ci_last_regenerate|i:1515670383;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('c4sh7krjs1q4eiccebqu3da95qvu379c', '127.0.0.1', '1515671686', '__ci_last_regenerate|i:1515671686;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('mb143k2hr7ahe5me1ha8mqt16jl3slrj', '127.0.0.1', '1515670634', '__ci_last_regenerate|i:1515670496;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;message-success|s:16:\"Settings Updated\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('qn1sh8mrg4269hgl00opdb3gg5b4370c', '127.0.0.1', '1515672949', '__ci_last_regenerate|i:1515672949;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('hifhbtimbfngdvoia79snshor7pqme1o', '127.0.0.1', '1515672964', '__ci_last_regenerate|i:1515672949;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('poskkan4enn30t734566mot6q6mmj0ur', '127.0.0.1', '1516264026', '__ci_last_regenerate|i:1516264026;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('qnu4q9sic5687o62qkovnkae4ctvjnsu', '127.0.0.1', '1516264414', '__ci_last_regenerate|i:1516264414;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ecjbc6ee8j4a5alrc4mis4bhliiji2jr', '127.0.0.1', '1516264801', '__ci_last_regenerate|i:1516264801;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('vqrio1eftbm1llaid5kqe45pdposgk7i', '127.0.0.1', '1516265119', '__ci_last_regenerate|i:1516265119;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('g9lfal00t5b7im4dff29cqp5kmm08roj', '127.0.0.1', '1516265456', '__ci_last_regenerate|i:1516265456;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('sjt2b8gelpduvgka1d7cbkng3mr9m7co', '127.0.0.1', '1516265891', '__ci_last_regenerate|i:1516265891;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('iqrn4ainecqai1so6br03499e70aean0', '127.0.0.1', '1516266197', '__ci_last_regenerate|i:1516266197;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('2okkbbror7mma5v0vo2nck9vrpbqj28f', '127.0.0.1', '1516266501', '__ci_last_regenerate|i:1516266501;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('5bh1ngiqfiuj0974s356v42en71aonbq', '127.0.0.1', '1516266817', '__ci_last_regenerate|i:1516266817;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('5kvh1vh11dh5fe6gd1skmjeaviadv42s', '127.0.0.1', '1516267128', '__ci_last_regenerate|i:1516267128;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('26igi1eial7eet31qn2hsss1pdae9tln', '127.0.0.1', '1516267985', '__ci_last_regenerate|i:1516267985;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('iq9h0jbsp69316u7qnp9nhjooigoj9cg', '127.0.0.1', '1516268304', '__ci_last_regenerate|i:1516268304;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('1corfkpasafn6gd9lphlhgva8u3444tf', '127.0.0.1', '1516268608', '__ci_last_regenerate|i:1516268608;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('necrkjrlc9nf9d0out9p87qmc1n4jpaf', '127.0.0.1', '1516269031', '__ci_last_regenerate|i:1516269031;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('209cpi2sjhn4p4mc9np5mh2oar66u1s2', '127.0.0.1', '1516269363', '__ci_last_regenerate|i:1516269363;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('r9bi893gh5t703u0ut573semq1b3m06e', '127.0.0.1', '1516269676', '__ci_last_regenerate|i:1516269676;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('234e8pfcek1f8sn9q3uehjtu0j7urklg', '127.0.0.1', '1516279705', '__ci_last_regenerate|i:1516279705;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('7u8knbbfsoojoclfbodulaqn6h8eo94n', '127.0.0.1', '1516280061', '__ci_last_regenerate|i:1516280061;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('spsf23v41ji6g32noktblck9etfeu1hk', '127.0.0.1', '1516280560', '__ci_last_regenerate|i:1516280560;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('pe06qemufmjs4liggdlsr87bqodobneo', '127.0.0.1', '1516280924', '__ci_last_regenerate|i:1516280924;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('7lsmjcl5iuj2rti5iatlbedtpru7avls', '127.0.0.1', '1516281760', '__ci_last_regenerate|i:1516281760;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('c8k5a1g43a7updjr55r02uqcr43b6thl', '127.0.0.1', '1516282081', '__ci_last_regenerate|i:1516282081;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('sqr97nh7ro33s793b8kar34tq36j0jkd', '127.0.0.1', '1516282382', '__ci_last_regenerate|i:1516282382;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('04jmiqs8e8c5lrn32mo0ofqpf976lbch', '127.0.0.1', '1516282695', '__ci_last_regenerate|i:1516282695;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('runuhhamu97sp0ge3h6ok3rafg21kuig', '127.0.0.1', '1516282996', '__ci_last_regenerate|i:1516282996;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('hgbp3bj0mbvoglkv46hsvaife722h2kt', '127.0.0.1', '1516283297', '__ci_last_regenerate|i:1516283297;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('lrah7ihmbg3bn9u7i97fp9s3j8ns5if9', '127.0.0.1', '1516283610', '__ci_last_regenerate|i:1516283610;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('tmbvg55ca6h6v1jb7lk73ui7e6hlu855', '127.0.0.1', '1516285962', '__ci_last_regenerate|i:1516285962;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('lh0lg80ltjhr2uhmnsps8t17obq17sjk', '127.0.0.1', '1516286532', '__ci_last_regenerate|i:1516286532;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('no1rkku9se2l8vv8qsj7j02tq4i17prp', '127.0.0.1', '1516291002', '__ci_last_regenerate|i:1516291002;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('0cq49kafjrcc5s6ivfaa6bthg84f2nec', '127.0.0.1', '1516297223', '__ci_last_regenerate|i:1516297223;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('uompcp617buhbml48bvtleqnf05v2hmj', '127.0.0.1', '1516297315', '__ci_last_regenerate|i:1516297223;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('oojif244nbqhgfk3tuimeccca7pe42o8', '127.0.0.1', '1516474397', '__ci_last_regenerate|i:1516474396;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('42iubjtih1k1lum8hvk96pv9o9tfod1m', '127.0.0.1', '1516882707', '__ci_last_regenerate|i:1516882707;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('a832q109ok3qdl4bbiat8ugtu3843seh', '127.0.0.1', '1516883028', '__ci_last_regenerate|i:1516883028;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ps5i40hntk9baplpjk0hjrl461le5tnq', '127.0.0.1', '1516883002', '__ci_last_regenerate|i:1516883001;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('far4d2tl0bvrpcoovicav571s8kpq6h9', '127.0.0.1', '1516883002', '__ci_last_regenerate|i:1516883002;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('dkmo5l46v59414gp7l82nn1r8dp115co', '127.0.0.1', '1516883446', '__ci_last_regenerate|i:1516883446;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('2e6prg6giqc4gqeb8h8q6us5jneeofjf', '127.0.0.1', '1516883765', '__ci_last_regenerate|i:1516883765;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('5frlgl1985qsra66pi0g3nhsqd05io8n', '127.0.0.1', '1516884073', '__ci_last_regenerate|i:1516884073;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('lfihtogp0lskstr284t07gsqusnsumce', '127.0.0.1', '1516884434', '__ci_last_regenerate|i:1516884434;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('83nvtub9i55qgh3pcg52r25ae35d6l06', '127.0.0.1', '1516884458', '__ci_last_regenerate|i:1516884434;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('h87qtpa1p7rb98sde8k08r5qvgns4ooe', '127.0.0.1', '1516948625', '__ci_last_regenerate|i:1516948625;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('4qrlt3f5t0dg4urcpi66m7g2a97hnmin', '127.0.0.1', '1516949092', '__ci_last_regenerate|i:1516949092;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('nvl0ptcgl6k7ho3gbq02oaajvdkcoj4j', '127.0.0.1', '1516949548', '__ci_last_regenerate|i:1516949548;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('vemnd04oh1k9uthr78hr9dsv9akgue2d', '127.0.0.1', '1516950069', '__ci_last_regenerate|i:1516950069;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('die6gpfqho09fpn2gbihmi25l088nre8', '127.0.0.1', '1516950470', '__ci_last_regenerate|i:1516950470;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('m23m288d7am54e6fo4gsp36fo2vqr8ae', '127.0.0.1', '1516950908', '__ci_last_regenerate|i:1516950908;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('rup8eaml13gu51nkq5r7r57dp8f82l29', '127.0.0.1', '1516950806', '__ci_last_regenerate|i:1516950806;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('sc7shr1pkdeupusr7ji2c1t21jtj01sa', '127.0.0.1', '1516951346', '__ci_last_regenerate|i:1516951346;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('3h44nb5g2579sjkddgfvd0c13bbjavid', '127.0.0.1', '1516951669', '__ci_last_regenerate|i:1516951669;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('gihmn3edjauqu0df7rqqtgdu857u8kkn', '127.0.0.1', '1516952245', '__ci_last_regenerate|i:1516952245;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('dvfchq4kkl6q4l2e57cfmqfd8lf8m0mg', '127.0.0.1', '1516952756', '__ci_last_regenerate|i:1516952756;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('3cr4a7vmd43kpfe57l7ejouvc94tibjf', '127.0.0.1', '1516953108', '__ci_last_regenerate|i:1516953108;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('kiijr1pvq5dkgq0kfbbe03570e5tns4f', '127.0.0.1', '1516953665', '__ci_last_regenerate|i:1516953665;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('h9k4g6uha44pl0ur0fn70f596toqh72n', '127.0.0.1', '1516953980', '__ci_last_regenerate|i:1516953980;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('uu5ajnlpuhlvgpvf6un68garchtg261k', '127.0.0.1', '1516954220', '__ci_last_regenerate|i:1516953980;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ju91is5toqp16abi6m619b2r77t8pbr5', '127.0.0.1', '1517062985', '__ci_last_regenerate|i:1517062959;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ts281ug1tmpb53i47f28lbut6nkhsk8a', '127.0.0.1', '1517062958', '');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('o6sh5amt745lodll91cn1j9137n5tuts', '127.0.0.1', '1517217651', '__ci_last_regenerate|i:1517217651;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('c4s7e5mj1guutruvnprmlmqh6bm5llel', '127.0.0.1', '1517221040', '__ci_last_regenerate|i:1517221040;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('i6n94lc269o3a9n50j5uj6m6d35516b2', '127.0.0.1', '1517221367', '__ci_last_regenerate|i:1517221367;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('4q1o09otbakfls4j61c982mqkrnu03sv', '127.0.0.1', '1517223028', '__ci_last_regenerate|i:1517223028;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('5lbvtdhgtqkpuqdh931npe1dl0bnubgg', '127.0.0.1', '1517223331', '__ci_last_regenerate|i:1517223331;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('tv08n9auhu19ol1prsdvflppvbmc03e5', '127.0.0.1', '1517223763', '__ci_last_regenerate|i:1517223763;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('f0ljaq6vgfgkrt4ktldhu39eoljo6vu0', '127.0.0.1', '1517224065', '__ci_last_regenerate|i:1517224065;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('6h48jbclp6b65an7bb95lv7pm4elrh8g', '127.0.0.1', '1517224262', '__ci_last_regenerate|i:1517224065;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('3nfo7jl7pp1du970sdh75cjb1heh07lb', '127.0.0.1', '1517305080', '__ci_last_regenerate|i:1517305080;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('bj3oh7f2016drl52airt63nn7qchceic', '127.0.0.1', '1517306878', '__ci_last_regenerate|i:1517306878;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('j95aobe4gkkhbuhd89r2rkcv795v3t4f', '127.0.0.1', '1517307264', '__ci_last_regenerate|i:1517307264;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ikglvkjfteqtkqt0h1nl5ki8n2lpgu9l', '127.0.0.1', '1517307596', '__ci_last_regenerate|i:1517307596;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('93kv5v9itnbu0noptb922avq5rnc50ie', '127.0.0.1', '1517307504', '__ci_last_regenerate|i:1517307504;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('dbvkr7eliujcf679rb06ah0a2u7vadol', '127.0.0.1', '1517307504', '__ci_last_regenerate|i:1517307504;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('sj5s75jeoj0poi4d2ahr8o5bs2tcpcv5', '127.0.0.1', '1517308151', '__ci_last_regenerate|i:1517308151;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('cies5qm8849699t2rat8fm1tn3uuleup', '127.0.0.1', '1517308462', '__ci_last_regenerate|i:1517308462;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('8gs0ad2hio1gibo2f60jnfvlj692phb6', '127.0.0.1', '1517308789', '__ci_last_regenerate|i:1517308789;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('r0p9fkd6tvi69ol2uclgnd7qea6q124q', '127.0.0.1', '1517309099', '__ci_last_regenerate|i:1517309099;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('dcih42ml9n2cqpb3uivj200rn0ls8tk9', '127.0.0.1', '1517309695', '__ci_last_regenerate|i:1517309695;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('03cshquus6psdgg3cf7h6qh6uhb777ci', '127.0.0.1', '1517310168', '__ci_last_regenerate|i:1517310168;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('d9i9f5rquvj3teqhjlnk760tpqts55ge', '127.0.0.1', '1517310470', '__ci_last_regenerate|i:1517310470;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('t0poggcreo7gdci6v5llugod7u8gv30s', '127.0.0.1', '1517336664', '__ci_last_regenerate|i:1517336664;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('p0p4vm68c3rfmq3226oif61p6uaser7q', '127.0.0.1', '1517336679', '__ci_last_regenerate|i:1517336664;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('8afdrnhlgb6lga8elpj3hibnjucbtvgo', '127.0.0.1', '1517380226', '__ci_last_regenerate|i:1517380226;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('8b3besnla0rp7f8udih9e7q6u4ht1fds', '127.0.0.1', '1517380551', '__ci_last_regenerate|i:1517380551;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('75c9fq076ttprec9g2b8vtjjk038g807', '127.0.0.1', '1517380859', '__ci_last_regenerate|i:1517380859;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('g6d2gll7s3eti0al5tjp5vc35en7aqlr', '127.0.0.1', '1517381169', '__ci_last_regenerate|i:1517381169;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('mifr0tk92plp3ufd5fonbti6fud0a85q', '127.0.0.1', '1517381499', '__ci_last_regenerate|i:1517381499;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;message-warning|s:11:\"agent_exist\";__ci_vars|a:1:{s:15:\"message-warning\";s:3:\"old\";}');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('rcu4g88tkgsfjug3o5kteef0c66cu7kc', '127.0.0.1', '1517381908', '__ci_last_regenerate|i:1517381908;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('pqqajrn8df7otbq4o013tt5kotj99qek', '127.0.0.1', '1517382252', '__ci_last_regenerate|i:1517382252;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('34mv0qcouk4d971f1046g27vhrchehb0', '127.0.0.1', '1517382558', '__ci_last_regenerate|i:1517382558;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;message-warning|s:11:\"agent_exist\";__ci_vars|a:1:{s:15:\"message-warning\";s:3:\"new\";}');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('j6cbt51uhn4gevqu3se127pq0lo7jak1', '127.0.0.1', '1517382876', '__ci_last_regenerate|i:1517382876;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('fq13a9njulkd0dgo8g3ou4viu7tf8ej5', '127.0.0.1', '1517383200', '__ci_last_regenerate|i:1517383200;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('l843vnnllopfpvanb08vaaj9m17jr7jv', '127.0.0.1', '1517383568', '__ci_last_regenerate|i:1517383568;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('bu9d44jjs73dnd29v6je6kp1ud3cj3dp', '127.0.0.1', '1517383983', '__ci_last_regenerate|i:1517383983;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('rflink2l0979h3eifedfm5lue1jnihtg', '127.0.0.1', '1517384413', '__ci_last_regenerate|i:1517384413;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ej24pu0sr8h7hv4a4qsmc29adhj4p5np', '127.0.0.1', '1517384714', '__ci_last_regenerate|i:1517384714;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('96jgf6lhst79fnu030ffms85bolo7fim', '127.0.0.1', '1517385024', '__ci_last_regenerate|i:1517385024;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('3iqnqu36odjmltt1pp3hnt0v6ik2r8n2', '127.0.0.1', '1517385353', '__ci_last_regenerate|i:1517385353;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('4qnnfmdnvjektu89hjmi7fbkr10iv1hj', '127.0.0.1', '1517385663', '__ci_last_regenerate|i:1517385663;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('28sb8643n2hp454rf43vivu4isiekimj', '127.0.0.1', '1517385981', '__ci_last_regenerate|i:1517385981;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('cfsk01uk26t4b37b0msg4uk294n49qj7', '127.0.0.1', '1517386301', '__ci_last_regenerate|i:1517386301;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('7imohppicqc1isqlfnh32bqq9181lmh5', '127.0.0.1', '1517386661', '__ci_last_regenerate|i:1517386661;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('9bk6q04iiv8h39f028ul1mhe59fr83gv', '127.0.0.1', '1517387059', '__ci_last_regenerate|i:1517387059;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('h67qnhvlp12irg62bhvvr73mv1s09ckl', '127.0.0.1', '1517387453', '__ci_last_regenerate|i:1517387453;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('0dlc0pbq7p85nlsll5qvhfn7osidvnpo', '127.0.0.1', '1517387760', '__ci_last_regenerate|i:1517387760;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('5fqqlu9da34kh09ojujl506qrrcp17oe', '127.0.0.1', '1517388088', '__ci_last_regenerate|i:1517388088;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('9b56bsijgcumcbek4soofg1iom3veia4', '127.0.0.1', '1517388463', '__ci_last_regenerate|i:1517388463;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('95eld0b8hbmvgtrj59qdsbld4snnhq79', '127.0.0.1', '1517388898', '__ci_last_regenerate|i:1517388898;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('2ijkr2kc367347bh04va5al1jt9acjos', '127.0.0.1', '1517400526', '__ci_last_regenerate|i:1517400526;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('g2q6hcnc6m8g9742ndb61u3fasp3j0hf', '127.0.0.1', '1517389801', '__ci_last_regenerate|i:1517389801;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ulh29f2ke650blnle3flrj2kta1r2a5o', '127.0.0.1', '1517390109', '__ci_last_regenerate|i:1517390109;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('9saj72itao1fr273pt8u52rbc2dlarjn', '127.0.0.1', '1517390428', '__ci_last_regenerate|i:1517390428;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('luk5d79em46n9d04bf1lntj4gto9hm58', '127.0.0.1', '1517390791', '__ci_last_regenerate|i:1517390791;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('opbp7q2hrckumtetgvu66r94g7e8id6d', '127.0.0.1', '1517399886', '__ci_last_regenerate|i:1517399886;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ecllav0jb9lhe64ge4lvimr3mf957ff3', '127.0.0.1', '1517398456', '__ci_last_regenerate|i:1517398455;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('1a169kgei89l2hvlr1q5t4s6gnrnffc7', '127.0.0.1', '1517400279', '__ci_last_regenerate|i:1517400279;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('gi1bgok0r96f7p4ukufagosmm5098nhi', '127.0.0.1', '1517400676', '__ci_last_regenerate|i:1517400676;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('kt1gl8gqk1f0879mu3irte1or7937vqj', '127.0.0.1', '1517400526', '__ci_last_regenerate|i:1517400526;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('9m4bemb77m2epb83vbkinrjga90n7qqb', '127.0.0.1', '1517401188', '__ci_last_regenerate|i:1517401188;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('g5idl4vjoag0vj2bin4m0cfdtd1cadgf', '127.0.0.1', '1517401879', '__ci_last_regenerate|i:1517401879;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('5d10a34tpv3c2ntt96j3doagjlficosu', '127.0.0.1', '1517402501', '__ci_last_regenerate|i:1517402501;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('qtk0dlpkshg0rqim47gjgqenmeber767', '127.0.0.1', '1517402968', '__ci_last_regenerate|i:1517402968;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('dp3hoaa4doo28qmjr63mkqqdm8s84u3r', '127.0.0.1', '1517403349', '__ci_last_regenerate|i:1517403349;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('2t94jreekdor0r5j7uloocterhtvoipj', '127.0.0.1', '1517403608', '__ci_last_regenerate|i:1517403604;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('qrq8cn8iq5ke73clrk9ol694rmpq4iet', '127.0.0.1', '1517470911', '__ci_last_regenerate|i:1517470911;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('2ji8f61kp3r076fm8vi36djkkl9domsr', '127.0.0.1', '1517471226', '__ci_last_regenerate|i:1517471226;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('8jginvikbaftl7nuad96ehospbmr9ect', '127.0.0.1', '1517471532', '__ci_last_regenerate|i:1517471532;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('uvgs0176r0s4totphvjq47cbcg82ghhl', '127.0.0.1', '1517471889', '__ci_last_regenerate|i:1517471889;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('bel49f44b74dfi5al3nqg89qpb9hpgo0', '127.0.0.1', '1517473212', '__ci_last_regenerate|i:1517473212;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ma8snp068fhq57aom459h073d0tpipn9', '127.0.0.1', '1517473792', '__ci_last_regenerate|i:1517473792;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('l0ki8fs7qe5q0el24plajvmfgq1rg1ik', '127.0.0.1', '1517474463', '__ci_last_regenerate|i:1517474463;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('n5cli9pr20b7ri05nsdv61deoijggn5l', '127.0.0.1', '1517474786', '__ci_last_regenerate|i:1517474786;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('104pmad2or800990rrtp85pd44dajgv4', '127.0.0.1', '1517476282', '__ci_last_regenerate|i:1517476282;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('hf6ibr74h88j8p9q1fnl001dqo7lboal', '127.0.0.1', '1517476587', '__ci_last_regenerate|i:1517476587;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('dk0eobbag1uf344uhrqv2jft8h9q376r', '127.0.0.1', '1517476891', '__ci_last_regenerate|i:1517476891;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('cjgu35c70smo27bbnebrf3k0kjnaqn45', '127.0.0.1', '1517477281', '__ci_last_regenerate|i:1517477281;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('2k0enrt6nf2eee1ebpr0iths063pb8g9', '127.0.0.1', '1517477602', '__ci_last_regenerate|i:1517477602;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('n87te4ddfekk8ucbnm4suijg5uqj9ak6', '127.0.0.1', '1517477952', '__ci_last_regenerate|i:1517477952;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('d3f4sl0ueqkrmhjo7dhrdcocdjhpf30l', '127.0.0.1', '1517478272', '__ci_last_regenerate|i:1517478272;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('hkhp5elbis8a825ed5aul2jhu0ula8l4', '127.0.0.1', '1517478832', '__ci_last_regenerate|i:1517478832;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('rhvqhrmuthafgshpq1o3kro2po36t8th', '127.0.0.1', '1517479152', '__ci_last_regenerate|i:1517479152;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('4hado9h0hs8eurcr73984sqekllegth6', '127.0.0.1', '1517479477', '__ci_last_regenerate|i:1517479477;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('5mmalfi58p904pe1ja3fa41l2253cv8j', '127.0.0.1', '1517479817', '__ci_last_regenerate|i:1517479817;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('2euovshadle4dlnb872j8k146h3lrf9j', '127.0.0.1', '1517480165', '__ci_last_regenerate|i:1517480165;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('vs3dhd8d7n40ghp1lp1b0lqq202v0en1', '127.0.0.1', '1517480629', '__ci_last_regenerate|i:1517480629;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('mu9tfrmu53c5b4neg2shqoc5vfk8i01s', '127.0.0.1', '1517480956', '__ci_last_regenerate|i:1517480956;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:11:\"list_agents\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('0dh7s34pfqrtsi1k8546vb3va36vgnm5', '127.0.0.1', '1517481257', '__ci_last_regenerate|i:1517481257;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('l4soksvrp39h8gq3qocasvfmn6hqfqdu', '127.0.0.1', '1517481639', '__ci_last_regenerate|i:1517481639;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('j42vmd5d5sf6vnns2gasn815ukm0u4hp', '127.0.0.1', '1517482034', '__ci_last_regenerate|i:1517482034;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('q12aqeqlorpc9t1td2pjj45f304id1v4', '127.0.0.1', '1517482347', '__ci_last_regenerate|i:1517482347;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";|N;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('0i82l42po07rgm4q2tem7o91i34m4cqi', '127.0.0.1', '1517482769', '__ci_last_regenerate|i:1517482769;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";|N;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('9t994v8r5tjaun4ms0k0c2tq0on2nnkd', '127.0.0.1', '1517483139', '__ci_last_regenerate|i:1517483139;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";|N;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('e1a11rts7bvcaf4moojh22ur721t6vqc', '127.0.0.1', '1517483448', '__ci_last_regenerate|i:1517483448;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";|N;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ituhek6h84l8l15v4p50g4bbbcmhqmst', '127.0.0.1', '1517496904', '__ci_last_regenerate|i:1517496904;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";|N;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('iju4s83nrsc43k61go9q29npigopvba1', '127.0.0.1', '1517497228', '__ci_last_regenerate|i:1517497228;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";|N;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('j14aoklqj56fd1gnpgdi844v93a8ppci', '127.0.0.1', '1517497586', '__ci_last_regenerate|i:1517497586;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";|N;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('rm0ckiahpmdvbubvq8lebf7gtqcplhf3', '127.0.0.1', '1517497896', '__ci_last_regenerate|i:1517497896;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";|N;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('5289bp6rj9nkd5qr19jjcr15t6eujbua', '127.0.0.1', '1517498226', '__ci_last_regenerate|i:1517498226;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";|N;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('iva696mpli8au9hg5ashpj4qpb3n5iev', '127.0.0.1', '1517498592', '__ci_last_regenerate|i:1517498592;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";|N;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('qgpo6mfgn8pdoqb7gb692h7503vrdn2f', '127.0.0.1', '1517498942', '__ci_last_regenerate|i:1517498942;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";|N;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('nug431c52sdgtq2ko6ce1j26s9js7ir1', '127.0.0.1', '1517499272', '__ci_last_regenerate|i:1517499272;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";|N;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('086hb2gm0ke6cvdkm07l5nk3n72u350a', '127.0.0.1', '1517499583', '__ci_last_regenerate|i:1517499583;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";|N;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('74j718m603d33mr0b0oug4au5hvf1atf', '127.0.0.1', '1517499947', '__ci_last_regenerate|i:1517499947;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";|N;message-warning|s:12:\"entity_exist\";__ci_vars|a:1:{s:15:\"message-warning\";s:3:\"new\";}');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('lm35q12fou9atjnvham8gi3rohl7h00g', '127.0.0.1', '1517500256', '__ci_last_regenerate|i:1517500256;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";|N;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('0fepuckrb0f0r86tl1cui3re10agg6ta', '127.0.0.1', '1517500564', '__ci_last_regenerate|i:1517500564;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";|N;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('m5t8n8orr3vd44v0bcba5vfloogodpm1', '127.0.0.1', '1517500977', '__ci_last_regenerate|i:1517500977;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";|N;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('gha0ogjstktaqcnemslo9uchbj1u6bvb', '127.0.0.1', '1517501290', '__ci_last_regenerate|i:1517501290;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";|N;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('3uk6siqih7p8r8fgnkmbsicg0kov8oml', '127.0.0.1', '1517502707', '__ci_last_regenerate|i:1517502707;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";|N;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('re185u9r6t2c3qkj9ihgtlnou0qbnko9', '127.0.0.1', '1517503042', '__ci_last_regenerate|i:1517503042;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";|N;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('onos91d4job3ccqfuddiis6p2uqf21en', '127.0.0.1', '1517503454', '__ci_last_regenerate|i:1517503454;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";|N;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('dn0oq5e92ja8880a42fqp4nqfm9lr1q4', '127.0.0.1', '1517503768', '__ci_last_regenerate|i:1517503768;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";|N;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('8hb2n9nv90nafudobi6dckek9813eo5a', '127.0.0.1', '1517504072', '__ci_last_regenerate|i:1517504072;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";|N;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('7u9ubib45tmsfcrg7qjn98ejj3uicnbp', '127.0.0.1', '1517504437', '__ci_last_regenerate|i:1517504437;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";|N;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('km2vuvjk4i03gs9ji9s1aar4f1i9jqf3', '127.0.0.1', '1517504852', '__ci_last_regenerate|i:1517504852;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";|N;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('0fuiv1lqiueoh2qmp0v93tue4tb4ubro', '127.0.0.1', '1517505194', '__ci_last_regenerate|i:1517505194;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";|N;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('7su27sbo8fqd1vugargmk1jql9pf8jdb', '127.0.0.1', '1517505696', '__ci_last_regenerate|i:1517505696;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";|N;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('vcvf622r9kubomqavq8cj1bovpjqdoh0', '127.0.0.1', '1517505997', '__ci_last_regenerate|i:1517505997;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";|N;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ps2gh3dakcj5kr9aejq3m8frfri9dsdm', '127.0.0.1', '1517506319', '__ci_last_regenerate|i:1517506319;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";|N;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('30j520vmr14t0dvdof00q47tovjp820u', '127.0.0.1', '1517506951', '__ci_last_regenerate|i:1517506951;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";|N;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('9dggl91midq1b767e379854eokaecq9m', '127.0.0.1', '1517507255', '__ci_last_regenerate|i:1517507255;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";|N;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('bn2l6utd5f8p7812j4ahmqhfjr9sudor', '127.0.0.1', '1517507578', '__ci_last_regenerate|i:1517507578;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";|N;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('39l0r917seotd80r7hrsuktu73o3ml38', '127.0.0.1', '1517507983', '__ci_last_regenerate|i:1517507983;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";|N;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ltujlasmrj0n8saspq49h3es2gfarj2d', '127.0.0.1', '1517508362', '__ci_last_regenerate|i:1517508362;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";|N;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('p97rodlrplglh4jt87i4u0rl7thsusru', '127.0.0.1', '1517508678', '__ci_last_regenerate|i:1517508678;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";|N;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('tfp620o2rfpta01dgrvhqvg4qbmo8228', '127.0.0.1', '1517509371', '__ci_last_regenerate|i:1517509371;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";|N;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('633oj5q99m61ej431fiso8f7gdfh9gng', '127.0.0.1', '1517510301', '__ci_last_regenerate|i:1517510301;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";|N;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('p3v1nc3qsg6p6amh7suk3jvih74uo220', '127.0.0.1', '1517510670', '__ci_last_regenerate|i:1517510670;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";|N;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('uibnvf99569dr7hp49p9itp4e3m3m4pm', '127.0.0.1', '1517511035', '__ci_last_regenerate|i:1517511035;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";|N;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('9h55rv0qkocpjgossru06o07aih5hqqj', '127.0.0.1', '1517511338', '__ci_last_regenerate|i:1517511338;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";|N;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('m9p4tho1ttcligdokqe7rbvqiua9553l', '127.0.0.1', '1517511884', '__ci_last_regenerate|i:1517511884;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";|N;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('r86oltbve8k5l2jma6iaubmol89bfq6p', '127.0.0.1', '1517512293', '__ci_last_regenerate|i:1517512293;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";|N;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('8cuho0r3ucrcu9jjdeovs4cqugk4dlff', '127.0.0.1', '1517512611', '__ci_last_regenerate|i:1517512611;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";|N;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('l2potnbe59v94vc7qh5libcns5rdk52i', '127.0.0.1', '1517512932', '__ci_last_regenerate|i:1517512932;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";|N;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('82buknsoq3rrq4l27iclfosau4je1f8e', '127.0.0.1', '1517513358', '__ci_last_regenerate|i:1517513358;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";|N;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('hsgertg33nisehd0lghhgar2hqoqs96f', '127.0.0.1', '1517513881', '__ci_last_regenerate|i:1517513881;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";|N;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('iaetmukjbmso9965rq130kbopcd9abbc', '127.0.0.1', '1517514332', '__ci_last_regenerate|i:1517514332;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";|N;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ctvs2sa2s5vnlj1u44a53aahm37501mf', '127.0.0.1', '1517514663', '__ci_last_regenerate|i:1517514663;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";|N;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('6gt7qdqrqhakttr6mbv3tmt66red8vga', '127.0.0.1', '1517514968', '__ci_last_regenerate|i:1517514968;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";|N;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('eii1pmlpdogo8adqe7240c2bhjee1s9d', '127.0.0.1', '1517515314', '__ci_last_regenerate|i:1517515314;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";|N;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('09486rop9uvlo8v87uh140pj3ljn7926', '127.0.0.1', '1517515624', '__ci_last_regenerate|i:1517515624;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";|N;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('s8jij971jk28a8vt97v7ts8afp4736cm', '127.0.0.1', '1517515926', '__ci_last_regenerate|i:1517515926;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";|N;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('md3f8mb8hvt8s4frlqumbtqih57hk66o', '127.0.0.1', '1517516330', '__ci_last_regenerate|i:1517516330;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";|N;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('4sqh099f3g102uff892vopljmpuh46ah', '127.0.0.1', '1517516507', '__ci_last_regenerate|i:1517516507;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('7ilvir3otqttgr35oe3lv35drdum0gem', '127.0.0.1', '1517559646', '__ci_last_regenerate|i:1517559646;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('bcs63d2k62l5ckq6smmf3sftshrchats', '127.0.0.1', '1517560710', '__ci_last_regenerate|i:1517560710;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('tijkb5qb78a8nh9pmh3s7kq7kj6p3g64', '127.0.0.1', '1517561041', '__ci_last_regenerate|i:1517561041;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('u5s81u9iioidnemqnt2h0066hgf36s4h', '127.0.0.1', '1517561355', '__ci_last_regenerate|i:1517561355;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('vnrtst3l9qr17640imgqt272ku05bu62', '127.0.0.1', '1517561743', '__ci_last_regenerate|i:1517561743;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('dj3kfnt9gblobu9cqboc44p4e7ntoe42', '127.0.0.1', '1517567397', '__ci_last_regenerate|i:1517567397;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('iuvg68r5jeo673o5gfnslcpdujl4g39c', '127.0.0.1', '1517567819', '__ci_last_regenerate|i:1517567819;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('0h8m0f5b72sq13cjk3kua1uc4l187qvo', '127.0.0.1', '1517568491', '__ci_last_regenerate|i:1517568491;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('4goithaui07p48mfncl13lpgsi95mbaq', '127.0.0.1', '1517568832', '__ci_last_regenerate|i:1517568832;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('61h029l63uomjsp39p6oftj1u3tvsvll', '127.0.0.1', '1517569150', '__ci_last_regenerate|i:1517569150;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('e9mdnqek5615g9uv8fohe5s0nvndbmju', '127.0.0.1', '1517569754', '__ci_last_regenerate|i:1517569754;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('m1pjtbsi6kpjkcgqlg8gdh1oh655v9t0', '127.0.0.1', '1518518310', '__ci_last_regenerate|i:1518518310;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('tscs7qdrthq43qqmkkmbcu47t1qidrl7', '127.0.0.1', '1517570344', '__ci_last_regenerate|i:1517570344;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('6mj17g6rfpukqcoc9ikm1f3hvllctqal', '127.0.0.1', '1517570812', '__ci_last_regenerate|i:1517570812;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('51kaaj7oh3e5sofnreppoc51gsot0edo', '127.0.0.1', '1517571300', '__ci_last_regenerate|i:1517571300;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('j3sol6nlagehu523g3m0re65h0daubhd', '127.0.0.1', '1517571984', '__ci_last_regenerate|i:1517571984;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('dhr55insc7n94c8ufm341eopkbi5127o', '127.0.0.1', '1517575335', '__ci_last_regenerate|i:1517575335;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('uc0i29cuj5tl9065pe12s2l5ce0pquvd', '127.0.0.1', '1517575653', '__ci_last_regenerate|i:1517575653;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('3nifdetd9avjqgsjgppcdtff4cuhnvv4', '127.0.0.1', '1517576011', '__ci_last_regenerate|i:1517576011;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('cqgir14b82097a3je9802hftubnaa67a', '127.0.0.1', '1517576424', '__ci_last_regenerate|i:1517576424;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('70j06l1b0r858461tn6f845bsfj7td94', '127.0.0.1', '1517576790', '__ci_last_regenerate|i:1517576790;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('gld7cb7c787s9ek5rb7get877q3q2b6t', '127.0.0.1', '1517577424', '__ci_last_regenerate|i:1517577424;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('d8lvpbtnnbph3fncu0p81b9t2k0erv7t', '127.0.0.1', '1517577854', '__ci_last_regenerate|i:1517577854;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ore6j4mlvk04lgrr7n4t7aq292r47e68', '127.0.0.1', '1517578175', '__ci_last_regenerate|i:1517578175;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('2hplsmnuvfi8epfkj2jg7nepd5i1f6jm', '127.0.0.1', '1517578482', '__ci_last_regenerate|i:1517578482;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ac7tbj3l3cc3dbv9hujvo1om8ibtsfgg', '127.0.0.1', '1517579086', '__ci_last_regenerate|i:1517579086;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ebbps729tvv3i3ghup6cas0vsb5cm5nt', '127.0.0.1', '1517579439', '__ci_last_regenerate|i:1517579439;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('r71dg2813u6ue9ua1tqnfsok7c7uli37', '127.0.0.1', '1517579773', '__ci_last_regenerate|i:1517579773;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('1dimcbssemplcacooqi07p1ifo1me40l', '127.0.0.1', '1517580835', '__ci_last_regenerate|i:1517580835;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('k1ns46rnvpfu7dtk0kjp46r8373m0lgr', '127.0.0.1', '1517582781', '__ci_last_regenerate|i:1517582781;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('38l1g7seafpvfejr4q8t51hs2phcv3ku', '127.0.0.1', '1517583760', '__ci_last_regenerate|i:1517583760;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('um7l06n4kdh2acorb3fkgoca8sfkl8de', '127.0.0.1', '1517584068', '__ci_last_regenerate|i:1517584068;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('r6ob2onjj37bqkjlijkie574c0olk2tu', '127.0.0.1', '1517584422', '__ci_last_regenerate|i:1517584422;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('knbstl2nhci2pkimups1mmd8g88hn5uv', '127.0.0.1', '1517584804', '__ci_last_regenerate|i:1517584804;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('s89dujh1lnfut328gvee9gns4us5t9pa', '127.0.0.1', '1517585122', '__ci_last_regenerate|i:1517585122;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('f0d6jamvk3774juppk8429d18l9vnkrb', '127.0.0.1', '1517585428', '__ci_last_regenerate|i:1517585428;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('fclpuqgfb23f822e3h4u0otp8qglggh4', '127.0.0.1', '1517585818', '__ci_last_regenerate|i:1517585818;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('v7lhgaupcfi65j568b0evpjesftd0u76', '127.0.0.1', '1517586222', '__ci_last_regenerate|i:1517586222;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('q5sq17j8jeff049hlu8p2uqpvhps05up', '127.0.0.1', '1517586539', '__ci_last_regenerate|i:1517586539;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('5s4le82s0ihbv52ml7ced20fv03nt1aa', '127.0.0.1', '1517586900', '__ci_last_regenerate|i:1517586900;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('q6mviullelk7i1csjr4koa6mu600gn22', '127.0.0.1', '1517587319', '__ci_last_regenerate|i:1517587319;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('8kadlagngvlqs0t9si8q4sh4ij66kao3', '127.0.0.1', '1517587669', '__ci_last_regenerate|i:1517587669;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ad8o5crtjk3ivr7lg4n7r14nh3bejrtq', '127.0.0.1', '1517587971', '__ci_last_regenerate|i:1517587971;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('o2o10hn50evn530jt13phrqu9mcvlft4', '127.0.0.1', '1517588300', '__ci_last_regenerate|i:1517588300;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('psnreb3l8p1sm51fb8p2h7kovos4d50v', '127.0.0.1', '1517591047', '__ci_last_regenerate|i:1517591047;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('01d7ulgdp896ai1fnpofbdri6vngatr9', '127.0.0.1', '1517588838', '__ci_last_regenerate|i:1517588838;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('rc1aip5591mi2op78eiuqirt99ifcbh0', '127.0.0.1', '1517589192', '__ci_last_regenerate|i:1517589192;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('prpe5libt3gc91pm0dbl29vld5coqbkg', '127.0.0.1', '1517589697', '__ci_last_regenerate|i:1517589697;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ohpm0giprv1h5segivrhvtb706o9nps2', '127.0.0.1', '1517590464', '__ci_last_regenerate|i:1517590464;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('n97hrqmv4hrjc8e5jsbte58m15a6f7gd', '127.0.0.1', '1517590902', '__ci_last_regenerate|i:1517590902;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('kgtm6ngl3d8ehs8jbmjsjnsfnsjvgov6', '127.0.0.1', '1517591402', '__ci_last_regenerate|i:1517591402;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('0c6v627v21mmjh1oqlq7clv45tut8u6q', '127.0.0.1', '1517591374', '__ci_last_regenerate|i:1517591374;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('to06irlgddtm047a0gg64q7sriqjs51h', '127.0.0.1', '1517592640', '__ci_last_regenerate|i:1517592640;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ds3abaqvb0cs0bhcvq4am7es403vsl8u', '127.0.0.1', '1517591757', '__ci_last_regenerate|i:1517591757;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('2ajhg1mpoom8s0dmivh9iti2r96g5dpm', '127.0.0.1', '1517592092', '__ci_last_regenerate|i:1517592092;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('njseqst0lm08go9kh09fk0svgnk6lddl', '127.0.0.1', '1517592400', '__ci_last_regenerate|i:1517592400;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('4dv2cpm2r8a89l39pj17m7s2uoqlb3ji', '127.0.0.1', '1517593229', '__ci_last_regenerate|i:1517593229;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('7roiuemojj9b4clekhmts66dv1ntug0m', '127.0.0.1', '1517592942', '__ci_last_regenerate|i:1517592942;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('em0r8rq294cj4cskg3h18fl7p3c618vp', '127.0.0.1', '1517593255', '__ci_last_regenerate|i:1517593255;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('jds9tpgb586bias8qqrsb2ag2scrm81q', '127.0.0.1', '1517593615', '__ci_last_regenerate|i:1517593615;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('rj3fniql7069aab6fnpb4qpb5qqli1jg', '127.0.0.1', '1517593607', '__ci_last_regenerate|i:1517593607;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('0p06gbk48kl2tjjfe8mp83ugq8etv8qc', '127.0.0.1', '1517596371', '__ci_last_regenerate|i:1517596371;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('6mad7du8m9t4bmn26vbjla8jnjegak3p', '127.0.0.1', '1517595600', '__ci_last_regenerate|i:1517595600;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('t27u44b95geedmca9hg9e4it5mp22g20', '127.0.0.1', '1517595970', '__ci_last_regenerate|i:1517595970;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('m1kukovmjmbruiqv8k197c7nhd6ilu1t', '127.0.0.1', '1517595968', '__ci_last_regenerate|i:1517595968;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('17co1vef38vjeq9uru7381rfam2itns1', '127.0.0.1', '1517596284', '__ci_last_regenerate|i:1517596284;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('261pjc3l6t8hm3ndrdfha6v5ateao2mi', '127.0.0.1', '1517596803', '__ci_last_regenerate|i:1517596803;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('cbgp1hmb1f4bncitbcg4l7crm5lcpv63', '127.0.0.1', '1517596890', '__ci_last_regenerate|i:1517596890;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('e39k86qopb6mu2mt3o84gideuio18re0', '127.0.0.1', '1517597118', '__ci_last_regenerate|i:1517597118;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('nuf5gm3st862sn8a64a8om78s1ro30sf', '127.0.0.1', '1517597247', '__ci_last_regenerate|i:1517597247;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('q6vtkcru1c2hphmdik654p383a2ihfh0', '127.0.0.1', '1517597875', '__ci_last_regenerate|i:1517597875;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('qlr9mahq9takilqb4thji2svn5da68ke', '127.0.0.1', '1517597585', '__ci_last_regenerate|i:1517597585;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('91k12legl4d9qjaahncv4f0phtt6dou5', '127.0.0.1', '1517600149', '__ci_last_regenerate|i:1517600149;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('46vg9c9tnpkp9cog3355fib4dacd2sir', '127.0.0.1', '1517598226', '__ci_last_regenerate|i:1517598226;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('3mfii3vo31oeojtmugcrvv19b78crfur', '127.0.0.1', '1517598773', '__ci_last_regenerate|i:1517598773;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('js6f5q2l4797c33pfteu7fdmrkt81fg6', '127.0.0.1', '1517599079', '__ci_last_regenerate|i:1517599079;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('qb7e9rld11lb0cspcdkekqvu5ie1ort8', '127.0.0.1', '1517599594', '__ci_last_regenerate|i:1517599594;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('1sp20sqnm8tpq43jaao4vbrojak5ug9j', '127.0.0.1', '1517608364', '__ci_last_regenerate|i:1517608364;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('umt3nndm1uvlfoag4655knq905jtpguv', '127.0.0.1', '1517600150', '__ci_last_regenerate|i:1517600149;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('o7vprihdumsf8pfo9gd98tea6ucjd1fv', '127.0.0.1', '1517608550', '__ci_last_regenerate|i:1517608364;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('4er1fk0jslss0hdnq5up12krjisjq30q', '127.0.0.1', '1517608645', '__ci_last_regenerate|i:1517608645;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('dvb4hg0ii8gvj0951v9l84fuisj29egm', '127.0.0.1', '1517608645', '__ci_last_regenerate|i:1517608645;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('e2c06h5n1tte613i6l8ejnifoa7lm5ql', '127.0.0.1', '1517659950', '__ci_last_regenerate|i:1517659950;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('m8mn2asm7c1qc6p268buagq3gn8n3kse', '127.0.0.1', '1517661198', '__ci_last_regenerate|i:1517661198;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('cs0cn9ur8ciulf30pvat7d9ma650ke40', '127.0.0.1', '1517671675', '__ci_last_regenerate|i:1517671675;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('0qo55m4ak7enufogf78qdknhvj5sqk79', '127.0.0.1', '1517671010', '__ci_last_regenerate|i:1517671010;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('k2eijqfksdqrcq7vom18e3e8msbc93vn', '127.0.0.1', '1517671342', '__ci_last_regenerate|i:1517671342;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('nj8q3j3opkd7vo6qrajipb71gu1toe3a', '127.0.0.1', '1517671810', '__ci_last_regenerate|i:1517671810;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('d2apjsflu31nh5lbv3nkjqtkhqp98aqg', '127.0.0.1', '1517672015', '__ci_last_regenerate|i:1517672015;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('golrbab2rnerijp71pr308k1m8rckvgj', '127.0.0.1', '1517672387', '__ci_last_regenerate|i:1517672387;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('cguasvpoga1cd3rmrvln7hdo5o7dsqb4', '127.0.0.1', '1517672576', '__ci_last_regenerate|i:1517672576;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('969clsg8vjuaitopdc8l2mntqor9nofq', '127.0.0.1', '1517675369', '__ci_last_regenerate|i:1517675369;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('n1s2afnfsfhakht5fkti5iphjb2e9vvh', '127.0.0.1', '1517673268', '__ci_last_regenerate|i:1517673268;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('v139is8ebfst4ja69g0br4mqk3b9dei9', '127.0.0.1', '1517678876', '__ci_last_regenerate|i:1517678876;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('r3l2hf2p61ftb03gpr8fq7r8dd44063j', '127.0.0.1', '1517675553', '__ci_last_regenerate|i:1517675369;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('s208hvrphp281kvl86fhbqtv90c31igb', '127.0.0.1', '1517675387', '__ci_last_regenerate|i:1517675387;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('58l78ape6n78pfh034fma2d95ald1men', '127.0.0.1', '1517678877', '__ci_last_regenerate|i:1517678876;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('eldbhbpbcvhc2mv1sc3h3k36eo01o5h6', '127.0.0.1', '1517750916', '__ci_last_regenerate|i:1517750916;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('np2b9tjj8b5jbbolgbpmu0hln88eq029', '127.0.0.1', '1517751225', '__ci_last_regenerate|i:1517751225;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('u4dae4rgga6bgfno2c1vhkruklm7n34i', '127.0.0.1', '1517751619', '__ci_last_regenerate|i:1517751619;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ntvcogt0ptrrl3jem0lmmfnqneq6rfb4', '127.0.0.1', '1517751956', '__ci_last_regenerate|i:1517751956;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('o63r2c3p5dt1r4qeiukfs0i5q6qjeipl', '127.0.0.1', '1517752514', '__ci_last_regenerate|i:1517752514;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('h7dpbcn1efkjauif2fpcbp0f6peirj7r', '127.0.0.1', '1517752892', '__ci_last_regenerate|i:1517752892;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('prlmd07m010r7mdrdvd4igt0r0410afu', '127.0.0.1', '1517753273', '__ci_last_regenerate|i:1517753273;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('5p757gjbg3a07chjppcufpb7i4a8erdi', '127.0.0.1', '1517753627', '__ci_last_regenerate|i:1517753627;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('8s64qbg816ukh09n062l0ls462muen1f', '127.0.0.1', '1517754095', '__ci_last_regenerate|i:1517754095;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('j7q9hhlmc11d82kjr6svcjv2prbo04sr', '127.0.0.1', '1517754485', '__ci_last_regenerate|i:1517754485;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('vs69peh2djec2v6bct1ck0s09olclm8n', '127.0.0.1', '1517754982', '__ci_last_regenerate|i:1517754982;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('dnlgrqu67tocqt47k2bn0r1c7b2qi4ti', '127.0.0.1', '1517755284', '__ci_last_regenerate|i:1517755284;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('lmtu18628hqi6jnf8llkfv7k9r8akltg', '127.0.0.1', '1517755668', '__ci_last_regenerate|i:1517755668;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('upm382n56qjaehultrdin2g76m6kpe74', '127.0.0.1', '1517755971', '__ci_last_regenerate|i:1517755971;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('lb875burpv9h2iif493m9t3rb2buid71', '127.0.0.1', '1517756272', '__ci_last_regenerate|i:1517756272;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:7;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('5tf1enqp824h96jhv1rdbnlq96627gvv', '127.0.0.1', '1517757110', '__ci_last_regenerate|i:1517757110;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:9;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('kptnll75uei566sjb9vardl2ts8kbtbk', '127.0.0.1', '1517757489', '__ci_last_regenerate|i:1517757489;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:9;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('qatv2k7n12uppclcvf7bj6t82bea59no', '127.0.0.1', '1517758141', '__ci_last_regenerate|i:1517758141;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:9;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('bqpv2v83drf1l2ugg91q87cq0dl78udq', '127.0.0.1', '1517758676', '__ci_last_regenerate|i:1517758676;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('e5b37fbjrq45oicj0e7lvgnjkn4fqqs6', '127.0.0.1', '1517763408', '__ci_last_regenerate|i:1517763408;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('n857caqt20rk6irg6brq5qha9gr9hmc1', '127.0.0.1', '1517758840', '__ci_last_regenerate|i:1517758840;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ch9n65qpg1llamlgs7sq5n79oj1723ju', '127.0.0.1', '1517764709', '__ci_last_regenerate|i:1517764709;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('tpgrjumhsvtqubue2rt3i0rfhbqknkmh', '127.0.0.1', '1517765036', '__ci_last_regenerate|i:1517765036;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('njbf321b3l253seevhp1lfkg5q4vcpvh', '127.0.0.1', '1517765438', '__ci_last_regenerate|i:1517765438;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('jgk1dlko8qq8c8t89khld5sgpve47dm0', '127.0.0.1', '1517773148', '__ci_last_regenerate|i:1517773148;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('1cv54rf5k9qhunk1b2p556efi3s9ha6j', '127.0.0.1', '1517774591', '__ci_last_regenerate|i:1517774591;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('o8ftb9c9epd9c1gb79mcgn25frbbq3vo', '127.0.0.1', '1517773847', '__ci_last_regenerate|i:1517773847;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('apm4fdars51qatsg9926se0pd4u19ebv', '127.0.0.1', '1517774231', '__ci_last_regenerate|i:1517774231;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('7895gr6oj2trtpr9594it5k632nrc51s', '127.0.0.1', '1517774527', '__ci_last_regenerate|i:1517774231;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('v71m5jpb1tdc31m9is9ndvhko3a9nbfm', '127.0.0.1', '1517774604', '__ci_last_regenerate|i:1517774591;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('4u28q8boeno90t8srflvi8iufsb24nlu', '127.0.0.1', '1517825972', '__ci_last_regenerate|i:1517825972;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('odplo2mihro191jvb087v6ea143mlgrq', '127.0.0.1', '1517826591', '__ci_last_regenerate|i:1517826591;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('jl23tj40e5ah9ro3480pupm7vp66h3dg', '127.0.0.1', '1517826934', '__ci_last_regenerate|i:1517826934;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('1racao6ndqmo4ct61hmirg4t5jn62vbn', '127.0.0.1', '1517827780', '__ci_last_regenerate|i:1517827780;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('23fcsld99gdvfc8ise2n1rs04mf4e2co', '127.0.0.1', '1517830562', '__ci_last_regenerate|i:1517830562;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;message-success|s:16:\"Settings Updated\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('fgkbtqt8u4uvosigrul9i1iad0rksvlo', '127.0.0.1', '1517828130', '__ci_last_regenerate|i:1517828130;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('83tjqr0pqulbfoem4r1v91ev8se51p9o', '127.0.0.1', '1517828620', '__ci_last_regenerate|i:1517828620;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('s22u2sju9ldqlm9tpe0gksqbcjid4rhi', '127.0.0.1', '1517828995', '__ci_last_regenerate|i:1517828995;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('4l87f0n86r4akp7meot7t7ik5l6l6q7s', '127.0.0.1', '1517829775', '__ci_last_regenerate|i:1517829775;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('g7qp8shalvafv5m8k4h0navbgjfo1lkr', '127.0.0.1', '1517830272', '__ci_last_regenerate|i:1517830272;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('odnef8vvq6nse13ur5b39sb41hnfk333', '127.0.0.1', '1517830600', '__ci_last_regenerate|i:1517830600;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('lftpfe1lnhu3icejag9arq5jfnl4g5gn', '127.0.0.1', '1517830676', '__ci_last_regenerate|i:1517830562;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;message-success|s:16:\"Settings Updated\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('00sqrgr1kh8hhr9s3fangbsmojfnmnaq', '127.0.0.1', '1517830962', '__ci_last_regenerate|i:1517830962;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('e7djn99evfee9009m9qbrc1rbvg8di2q', '127.0.0.1', '1517831286', '__ci_last_regenerate|i:1517831286;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ianet3q4jgpj2hnqc0qg5nbhbhpepd30', '127.0.0.1', '1517831680', '__ci_last_regenerate|i:1517831680;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('eankm0vl7ao8ebctkhqanrhhrftna55f', '127.0.0.1', '1517832000', '__ci_last_regenerate|i:1517832000;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('fbvve9s72vidjt3di6sh3727nug2gdf4', '127.0.0.1', '1517832344', '__ci_last_regenerate|i:1517832344;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('kj6cdgje2cc8c192bjfhaur8iv45n74l', '127.0.0.1', '1517832652', '__ci_last_regenerate|i:1517832652;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('tdo4n4htrppqas73f4oh8si2q8uddgdi', '127.0.0.1', '1517833011', '__ci_last_regenerate|i:1517833011;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('4lut9ns79vdsicdc1vrtfdqpfiu8glav', '127.0.0.1', '1517833318', '__ci_last_regenerate|i:1517833318;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('qbtu95oao5kote3ji8l0ur06udvdp3li', '127.0.0.1', '1517833687', '__ci_last_regenerate|i:1517833687;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('lga73jv0dv456faehf2o3qhlvlgju3at', '127.0.0.1', '1517834089', '__ci_last_regenerate|i:1517834089;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('hh4oaa31ffhpvtcmsli0pf3g7jgd0eg0', '127.0.0.1', '1517834450', '__ci_last_regenerate|i:1517834450;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('8kpisceqsbot36i7luo8t683ffmghhr0', '127.0.0.1', '1517834773', '__ci_last_regenerate|i:1517834773;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('fmott6pmbba1500efsccrefm4mi9vlvn', '127.0.0.1', '1517835075', '__ci_last_regenerate|i:1517835075;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('9oq9utlnlvhs3pe1lhhvbl3dcsf2do54', '127.0.0.1', '1517839176', '__ci_last_regenerate|i:1517839176;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ak3neqd11olg6fksh3vob4i8le3cqalf', '127.0.0.1', '1517839477', '__ci_last_regenerate|i:1517839477;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('hpr8ucvpqsoumjlidb7rlqsoqjkbiekt', '127.0.0.1', '1517839808', '__ci_last_regenerate|i:1517839808;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('67eqns5uos0b2117laejmiammh80ftvh', '127.0.0.1', '1517840110', '__ci_last_regenerate|i:1517840110;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('naie08ka3fj3j1q5q6tqb47lbrbcb7gr', '127.0.0.1', '1517840445', '__ci_last_regenerate|i:1517840445;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('a561t6t218ga5ub6v5rrt4ruiuqij5k0', '127.0.0.1', '1517840814', '__ci_last_regenerate|i:1517840814;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('sbiceapg9jpcbrqqofrv4sr7d3mv9261', '127.0.0.1', '1517841222', '__ci_last_regenerate|i:1517841222;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('0k1blf7he20gn0eb1nvo0nj54aq5h3aa', '127.0.0.1', '1517841583', '__ci_last_regenerate|i:1517841583;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('tddceiaq701md5ehohqedhrrqr6n4ete', '127.0.0.1', '1517848870', '__ci_last_regenerate|i:1517848870;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('o092i6jq1s6ernnq3q9j9h5rlqve6882', '127.0.0.1', '1517849252', '__ci_last_regenerate|i:1517849252;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('19um9qlsqu8hdbadf9ebguc8tiepn28r', '127.0.0.1', '1517849588', '__ci_last_regenerate|i:1517849588;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ed45ig7sdc73tsd6a2bam3mrgk488avh', '127.0.0.1', '1517850289', '__ci_last_regenerate|i:1517850289;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ai1d36ff3s5e0eiop8ojrhqalf08c5sh', '127.0.0.1', '1517850755', '__ci_last_regenerate|i:1517850755;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('g8laeg5h87us9f23cucfe5vl1ql1ku6f', '127.0.0.1', '1517851141', '__ci_last_regenerate|i:1517851141;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('d6qvaorrlugocr9sbq1m3io0qc9sunme', '127.0.0.1', '1517851447', '__ci_last_regenerate|i:1517851447;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('dqn1p57hrv90bsqicfhvh8fucepkd91n', '127.0.0.1', '1517851766', '__ci_last_regenerate|i:1517851766;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('jgbqqi39urdhlaibe3k73rr1nvgkk2u0', '127.0.0.1', '1517852102', '__ci_last_regenerate|i:1517852102;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;message-warning|s:13:\"Access denied\";__ci_vars|a:1:{s:15:\"message-warning\";s:3:\"old\";}');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ueh7mktkn7au8g690sqcdb2hor4frr34', '127.0.0.1', '1517852668', '__ci_last_regenerate|i:1517852668;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('q7m7cama5e39rks18qd1hvd6720dm99t', '127.0.0.1', '1517853002', '__ci_last_regenerate|i:1517853002;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('2am50ej0n1r9i3j94eq7gvo2sv1o69g2', '127.0.0.1', '1517853328', '__ci_last_regenerate|i:1517853328;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('9t70medukv3nsejmt7i44kpk1lh7q48k', '127.0.0.1', '1517853666', '__ci_last_regenerate|i:1517853666;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('v0ukgmfssien041581sfjavgdb4ncek3', '127.0.0.1', '1517854043', '__ci_last_regenerate|i:1517854043;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('2nutgvkjqh3orieuak5ul9e7b731o4d7', '127.0.0.1', '1517854386', '__ci_last_regenerate|i:1517854386;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('8ivglkk75p98p0m5qb5d8mpf0gcf7o5m', '127.0.0.1', '1517854745', '__ci_last_regenerate|i:1517854745;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('1jsbqhpncic5882ccetu96da0hl0g895', '127.0.0.1', '1517855054', '__ci_last_regenerate|i:1517855054;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('mus47ltsmndtbrkg7ls8k1ltq1qpp3dg', '127.0.0.1', '1517855360', '__ci_last_regenerate|i:1517855360;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:1;message-warning|s:13:\"Access denied\";__ci_vars|a:1:{s:15:\"message-warning\";s:3:\"old\";}');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('g0inga8ad3bnlci7clclqt3bgbu7egip', '127.0.0.1', '1517855664', '__ci_last_regenerate|i:1517855664;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:2;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('8d1qh69h58jv270cnur1slq71cpko8dc', '127.0.0.1', '1517855989', '__ci_last_regenerate|i:1517855989;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:3;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('70s9qsich9uaedbrv3ijeg5t15d0u0b6', '127.0.0.1', '1517864591', '__ci_last_regenerate|i:1517864591;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:3;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('cpom62qibci8t1pcaqo04c2ght6ucd6b', '127.0.0.1', '1517865069', '__ci_last_regenerate|i:1517865069;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:3;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('d2qgo0kp53t2sf3kjes8mtjttjnv1ac0', '127.0.0.1', '1517865384', '__ci_last_regenerate|i:1517865384;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:3;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('1ah47i2butsldk8v1m2v8v7q8kst8jf0', '127.0.0.1', '1517865769', '__ci_last_regenerate|i:1517865769;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:5;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ststhjb85p95krrg0lsj0h3362srv672', '127.0.0.1', '1517866097', '__ci_last_regenerate|i:1517866097;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:6;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('b0sislfk9p1fg8fm8uejrvveb3g4rh1b', '127.0.0.1', '1517866404', '__ci_last_regenerate|i:1517866404;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:6;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('vpup08b093852j1jog5ih9arhb7ahc5l', '127.0.0.1', '1517866552', '__ci_last_regenerate|i:1517866404;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:7;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('5oo11tv4e7cabbv8rokhj9nob2p3h18f', '127.0.0.1', '1517906818', '__ci_last_regenerate|i:1517906818;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('nubo2qvqcdtjjil3rqh0itqcf28f2hv1', '127.0.0.1', '1517903388', '__ci_last_regenerate|i:1517903388;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('bqdcjddjklr421p6ghjqa2t4o4kek0sk', '127.0.0.1', '1517903389', '__ci_last_regenerate|i:1517903388;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('bgntkd778lbqe1m7qm89r48dsu6q0j1g', '127.0.0.1', '1517907253', '__ci_last_regenerate|i:1517907253;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('a5t6oobshhdj2vero3apk05097fssadq', '127.0.0.1', '1517907556', '__ci_last_regenerate|i:1517907556;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('0l26k26uifj4irjm8me6fibps6skc5s3', '127.0.0.1', '1517907904', '__ci_last_regenerate|i:1517907904;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:1:\"8\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('4gqbibiolfca786fsrh4dcej5mous53g', '127.0.0.1', '1517907889', '__ci_last_regenerate|i:1517907889;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('2vbtf6diuepn70lgv2g5671cl7h36fem', '127.0.0.1', '1517908223', '__ci_last_regenerate|i:1517908223;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:1:\"8\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('kgpk8prl359j2d8p914rfg53sep2g5fv', '127.0.0.1', '1517908858', '__ci_last_regenerate|i:1517908858;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:9;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('pge1hfo6624rqpbnsgakk27jr3s8f8al', '127.0.0.1', '1517909259', '__ci_last_regenerate|i:1517909259;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:9;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('i73q1934kbo4pt20toe8fkv99em83ttp', '127.0.0.1', '1517909598', '__ci_last_regenerate|i:1517909598;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:9;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('r7o4ibkn38c4el4efvmlonubgk1kir0m', '127.0.0.1', '1517909899', '__ci_last_regenerate|i:1517909899;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:9;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('tj29tl2c7e9v1j9oe7be76oe2a9ghs5n', '127.0.0.1', '1517910332', '__ci_last_regenerate|i:1517910332;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:9;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('0gplh3hncgp2952994e4tmhcjqc6amup', '127.0.0.1', '1517918240', '__ci_last_regenerate|i:1517918240;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:9;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('j5a1djig14ulv3nnh4p5t2lslgrsbs9t', '127.0.0.1', '1517918554', '__ci_last_regenerate|i:1517918554;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:9;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('8g1959tps45j61i9b0psv2v83el5gh7i', '127.0.0.1', '1517918879', '__ci_last_regenerate|i:1517918879;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:9;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('vubl7bthtta548ijhed47gqja39g247c', '127.0.0.1', '1517919228', '__ci_last_regenerate|i:1517919228;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:9;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ffg9jk0b00s2mhhuc6ec4rnd1iuvvd6n', '127.0.0.1', '1517919799', '__ci_last_regenerate|i:1517919799;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:9;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('115jviaql17kcfjp2d31pubfo4fgajqi', '127.0.0.1', '1517920109', '__ci_last_regenerate|i:1517920109;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:9;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('hmqo6d5pkkpas3n5iedrt94cagiflhl9', '127.0.0.1', '1517920410', '__ci_last_regenerate|i:1517920410;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:9;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ohi2i65upvmpn8tfe414f3gpdp4a5lu8', '127.0.0.1', '1517920776', '__ci_last_regenerate|i:1517920776;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:9;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('p1a4578b8m5a4tjd6fe80a332sjbijip', '127.0.0.1', '1517921086', '__ci_last_regenerate|i:1517921086;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:9;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('pio7272726igtui7aj983383qm6b7rle', '127.0.0.1', '1517923124', '__ci_last_regenerate|i:1517923124;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:9;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('0qrms7kf22cj9gm10endj6sbh550t1mq', '127.0.0.1', '1517923678', '__ci_last_regenerate|i:1517923678;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:10;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('23afrlp8orjmk8nu5d4f3gl11qjfetmp', '127.0.0.1', '1517923998', '__ci_last_regenerate|i:1517923998;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:10;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('bf5plknkt83087ou5d77c91c9bg50d21', '127.0.0.1', '1517924384', '__ci_last_regenerate|i:1517924384;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:10;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ivi2k7bdhqjakal9bt2t9ek9if615dd0', '127.0.0.1', '1517924685', '__ci_last_regenerate|i:1517924685;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:10;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('5rfaqirf9m885u9a2la78hj2llljs9pb', '127.0.0.1', '1517924992', '__ci_last_regenerate|i:1517924992;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:10;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('h6a4ottcqg140all7jif03eivl5t93ri', '127.0.0.1', '1517925340', '__ci_last_regenerate|i:1517925340;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:10;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('gbn0hb80sgv0vetp1dt75gdr3n27428v', '127.0.0.1', '1517925922', '__ci_last_regenerate|i:1517925922;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:10;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('2nn36ldth4jqo0gohh2bsmd1jqcdkpq9', '127.0.0.1', '1517926242', '__ci_last_regenerate|i:1517926242;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:10;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('15r7dnnfmrrsgnt31gbh1iu7n8tvfhjq', '127.0.0.1', '1517933726', '__ci_last_regenerate|i:1517933726;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:10;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('4hktg02nqsttcu6ectntslomh1q19t5g', '127.0.0.1', '1517934028', '__ci_last_regenerate|i:1517934028;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:10;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('2ovmc8qlh7u7fpe6jaj9fiqmbth258di', '127.0.0.1', '1517934471', '__ci_last_regenerate|i:1517934471;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:10;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('4d4tdppueirm80kh6hfsgbiqkaiq6703', '127.0.0.1', '1517935160', '__ci_last_regenerate|i:1517935160;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:10;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('5fif57274dncu32df32hlnc603fm9dbk', '127.0.0.1', '1517935481', '__ci_last_regenerate|i:1517935481;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:10;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('jjmnehd9hu797hek8mmgf45c7t3196qv', '127.0.0.1', '1517935525', '__ci_last_regenerate|i:1517935481;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:10;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('uesbfrsl9a1h7eggr417kaplo497q33i', '127.0.0.1', '1517998140', '__ci_last_regenerate|i:1517998140;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('o0pve89enim5aqvq00jmctr3chb51oai', '127.0.0.1', '1517998493', '__ci_last_regenerate|i:1517998493;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('6llfhjc5lhoblfgma5mi4fqr3r6fmb1l', '127.0.0.1', '1517998994', '__ci_last_regenerate|i:1517998994;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('lm6rpbl6oujsdc7lc5bhi46751sbei0r', '127.0.0.1', '1517999350', '__ci_last_regenerate|i:1517999350;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('a9t11rkk2nl2346hhep1n1kqegv0shpu', '127.0.0.1', '1517999734', '__ci_last_regenerate|i:1517999734;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('4mlg3q4jouk5gn9tmjvvoq9bhohr2h6t', '127.0.0.1', '1518000205', '__ci_last_regenerate|i:1518000205;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('b4cui5v6lr7csc806m83425ndf5j5dhs', '127.0.0.1', '1518000539', '__ci_last_regenerate|i:1518000539;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('fptvf678m59l9g4mtsd4kfif4td1rqm9', '127.0.0.1', '1518000878', '__ci_last_regenerate|i:1518000878;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('oim6evtoc35v9hpov3hb7hdgl3bnib48', '127.0.0.1', '1518001288', '__ci_last_regenerate|i:1518001288;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('4r2pcnj7hhdctvs7kpdoasce8p89k5la', '127.0.0.1', '1518001835', '__ci_last_regenerate|i:1518001835;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('66vpu288qqq35534cme5513ukld62nac', '127.0.0.1', '1518002183', '__ci_last_regenerate|i:1518002183;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('0tobjnlntq30s5eq7uqpkifnluh97f88', '127.0.0.1', '1518002514', '__ci_last_regenerate|i:1518002514;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('pdahoemo4dpjedoqvqksapdc1rubsf48', '127.0.0.1', '1518002815', '__ci_last_regenerate|i:1518002815;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('4sdqlv797h3j1j268s18n2ac0kgugsna', '127.0.0.1', '1518003117', '__ci_last_regenerate|i:1518003117;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('l5hohjag2srlm6rv9kh2hf6s8e2q0tlf', '127.0.0.1', '1518003659', '__ci_last_regenerate|i:1518003659;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('8psi5fka30pq402vc1k8ll15f4i1bbq8', '127.0.0.1', '1518003964', '__ci_last_regenerate|i:1518003964;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('mdlok99155p2srj92pq97gu4cf3dqjhe', '127.0.0.1', '1518004327', '__ci_last_regenerate|i:1518004327;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ahi81qg7so2se48vi9hqv1r7q13hlej9', '127.0.0.1', '1518004805', '__ci_last_regenerate|i:1518004805;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('jn6pad0joqqe57jr49irrpie74kfld3e', '127.0.0.1', '1518005140', '__ci_last_regenerate|i:1518005140;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('l14qg1ugs12f63hsvntqdsk6ilv7l4k7', '127.0.0.1', '1518005441', '__ci_last_regenerate|i:1518005441;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('865jk4qf551ed5ctii2noribshjhnvhp', '127.0.0.1', '1518005887', '__ci_last_regenerate|i:1518005887;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ok8q0julo8ba54jc2cimstju0qujk7ie', '127.0.0.1', '1518006201', '__ci_last_regenerate|i:1518006201;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('4g98t5m6cmae336k90s73std90ptvnmk', '127.0.0.1', '1518006594', '__ci_last_regenerate|i:1518006594;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('tmgvi7of5dcppns7pre6j0m57fgt4gf8', '127.0.0.1', '1518006934', '__ci_last_regenerate|i:1518006934;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('4mkujvi7ec39sejd07ha44um6iih0co0', '127.0.0.1', '1518007249', '__ci_last_regenerate|i:1518007249;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('u735k9uf1an1sjjh3ud9got8tmv1kjeb', '127.0.0.1', '1518011467', '__ci_last_regenerate|i:1518011467;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('jt44do3v5pdihsn40ermrq7rvv4gsl25', '127.0.0.1', '1518012018', '__ci_last_regenerate|i:1518012018;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('unai3rpfirt2p0j5q3au0o3qd3u69gvn', '127.0.0.1', '1518012360', '__ci_last_regenerate|i:1518012360;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('8qik4cklddvsa9jife6eab6cffat0uqk', '127.0.0.1', '1518012676', '__ci_last_regenerate|i:1518012676;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ebo5u3jdghkv455ak739c6e2iohp7sg0', '127.0.0.1', '1518012984', '__ci_last_regenerate|i:1518012984;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('78gsqvoojms0np6vb5n5gka466vj32ku', '127.0.0.1', '1518013568', '__ci_last_regenerate|i:1518013568;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('giiv5hjtiupjiv3pa9le02kluqcb825v', '127.0.0.1', '1518013869', '__ci_last_regenerate|i:1518013869;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('cksn3j6d0hk4j2irsbkd396nejmudn15', '127.0.0.1', '1518014308', '__ci_last_regenerate|i:1518014308;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('vmkomsol171s4mdinoactpqptbkpl9ru', '127.0.0.1', '1518014708', '__ci_last_regenerate|i:1518014708;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('fsjnilv6h9efhugcbvg51ibq25bhup3a', '127.0.0.1', '1518015061', '__ci_last_regenerate|i:1518015061;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('s985o0fkropoqib2id9opai6aes01non', '127.0.0.1', '1518015532', '__ci_last_regenerate|i:1518015532;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('iruf968ghilt9c6qc387fmrnpptvkdt2', '127.0.0.1', '1518015836', '__ci_last_regenerate|i:1518015836;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('6gs6lk25irgiq3p778ldusmdmti3mgrt', '127.0.0.1', '1518016226', '__ci_last_regenerate|i:1518016226;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('3016aj43ifi24r2rqjh65b7cdbv8i0et', '127.0.0.1', '1518016561', '__ci_last_regenerate|i:1518016561;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('tphb0609m7r8a16omm62p0h4aievbkg0', '127.0.0.1', '1518016926', '__ci_last_regenerate|i:1518016926;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('4o4usds7h5l1enol864lvsk7mdecm3k7', '127.0.0.1', '1518017229', '__ci_last_regenerate|i:1518017229;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('2b9q04kf8877lrbchetvea6dbcsk0rsp', '127.0.0.1', '1518017583', '__ci_last_regenerate|i:1518017583;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('9cv85mk8s29k88fv257pd7sf65gg2ap9', '127.0.0.1', '1518018410', '__ci_last_regenerate|i:1518018410;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('0i4okc5egjd77vhhebin41u3gnv1hkoh', '127.0.0.1', '1518019097', '__ci_last_regenerate|i:1518019097;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('qdn8i3qa4lslk2pg8o2ntgpq09e5jvjg', '127.0.0.1', '1518019495', '__ci_last_regenerate|i:1518019495;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('1kqlg32q3tg8qjki90f5i4m4edd1ejfv', '127.0.0.1', '1518019863', '__ci_last_regenerate|i:1518019863;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"10\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('hponk5h9skl5jh7ttun1ok7psd7a2hkh', '127.0.0.1', '1518020166', '__ci_last_regenerate|i:1518020166;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:11;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('77ho7eka8omq5bcf605kh79sj3lbik80', '127.0.0.1', '1518020533', '__ci_last_regenerate|i:1518020533;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:11;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('8noijnfee8uhu7p1c9afh08o9jf1ppcf', '127.0.0.1', '1518020844', '__ci_last_regenerate|i:1518020844;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:11;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ve2r0qppq2hj3as2mae87m0aejt5ivr3', '127.0.0.1', '1518021154', '__ci_last_regenerate|i:1518021154;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:11;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('cjc2u6qu1224t7kafge2110m2m0ijb9f', '127.0.0.1', '1518021519', '__ci_last_regenerate|i:1518021519;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:11;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ctsg4uq8vur0d7h118evo6onfc5kk8c8', '127.0.0.1', '1518021864', '__ci_last_regenerate|i:1518021864;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:11;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('jo6jlc8pqh0r026k3003hp3vnqclci6v', '127.0.0.1', '1518023385', '__ci_last_regenerate|i:1518023385;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:11;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('fjocoh61ugd96bptl3jbp44k5fp8uogs', '127.0.0.1', '1518024509', '__ci_last_regenerate|i:1518024509;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:11;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('hou2cnct3ofnlevha6bc0tm24njlf5mc', '127.0.0.1', '1518027476', '__ci_last_regenerate|i:1518027476;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:11;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('iavf2ar3796vvj3rgh2uu768s62c5snn', '127.0.0.1', '1518027846', '__ci_last_regenerate|i:1518027846;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:11;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('9gqrrud445hb25prm68fu05efpbfgjuo', '127.0.0.1', '1518029734', '__ci_last_regenerate|i:1518029734;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:11;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('j14fa3p1h6d226c9ugb8cmlbcucs3cqa', '127.0.0.1', '1518029739', '__ci_last_regenerate|i:1518029734;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ci1u392bqtq86iunn4b6263240ugqura', '127.0.0.1', '1518076213', '__ci_last_regenerate|i:1518076213;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('e2tnj4skjvar34aqv8onsdtsia0sh2iv', '127.0.0.1', '1518078693', '__ci_last_regenerate|i:1518078693;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('94emgpt7nttoulbjslcbhiqb7ugoct6g', '127.0.0.1', '1518079116', '__ci_last_regenerate|i:1518079116;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('20lbelu92cev396kr9n5r3mci5akh5bt', '127.0.0.1', '1518081061', '__ci_last_regenerate|i:1518081061;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('b9fm1ck9vmc21b8tei59ufmu2aftmlso', '127.0.0.1', '1518081512', '__ci_last_regenerate|i:1518081512;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('2a5hc3nk0vpimlcbk72pkh0lr5pli51p', '127.0.0.1', '1518081965', '__ci_last_regenerate|i:1518081965;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('qp90b421pouod9oj0at74v370hqlicmh', '127.0.0.1', '1518082314', '__ci_last_regenerate|i:1518082314;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('r4ahsf9vg9so46l07vpklihcm74lncen', '127.0.0.1', '1518082726', '__ci_last_regenerate|i:1518082726;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('40sf72fr1p9dh3c7fjhil8leia38kvkp', '127.0.0.1', '1518083047', '__ci_last_regenerate|i:1518083047;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('20pq7ophu6ti3iug03b2ljnqub40nlq8', '127.0.0.1', '1518083415', '__ci_last_regenerate|i:1518083415;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('8eedhfrgqubg1tvp2bt1iq0buvpg6b2c', '127.0.0.1', '1518083755', '__ci_last_regenerate|i:1518083755;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('fhq4v02b4ac04s88m9ptuputjc9fvv9k', '127.0.0.1', '1518084123', '__ci_last_regenerate|i:1518084123;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('gkha1atl73pu71mhrv5776rtubveuhnm', '127.0.0.1', '1518084720', '__ci_last_regenerate|i:1518084720;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('cdqucrdutvrqbd41rritnhnee2rdjp9v', '127.0.0.1', '1518085026', '__ci_last_regenerate|i:1518085026;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('15dra5sg8g43mi7j4vgrbacdbjtk5o46', '127.0.0.1', '1518085357', '__ci_last_regenerate|i:1518085357;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('2rc01bpmasvk7d42uu81vil4gd3ni97o', '127.0.0.1', '1518085658', '__ci_last_regenerate|i:1518085658;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('lrf0oe81gtf69mfc6l318r4ud9ijir60', '127.0.0.1', '1518087188', '__ci_last_regenerate|i:1518087188;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('1f71505entvk2urikj7oml5u1aa581h9', '127.0.0.1', '1518087611', '__ci_last_regenerate|i:1518087611;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('vvnsbqhoq49nc2f4j35r4m4lrkhhc824', '127.0.0.1', '1518089556', '__ci_last_regenerate|i:1518089556;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('03pm4bj1o4qsofgd7172djort67uolbu', '127.0.0.1', '1518089906', '__ci_last_regenerate|i:1518089906;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('gpigvcsfuflni4q9d3g8o033egcdgips', '127.0.0.1', '1518090225', '__ci_last_regenerate|i:1518090225;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ell4k2cjkqj92ls3rg78glphfs18bjg6', '127.0.0.1', '1518090688', '__ci_last_regenerate|i:1518090688;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('7amt9cu4hqoc0e5tlb561r2p3o55cvr7', '127.0.0.1', '1518091086', '__ci_last_regenerate|i:1518091086;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('eas1ega9c5h2iose904qhvqt59lkm9nc', '127.0.0.1', '1518091524', '__ci_last_regenerate|i:1518091524;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('b2erll54ivam1mja8fvfo8af78os141h', '127.0.0.1', '1518092210', '__ci_last_regenerate|i:1518092210;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('8019tgg8p09adn77itmsec41h7vrn8m3', '127.0.0.1', '1518092532', '__ci_last_regenerate|i:1518092532;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('4547tk015nq9iqrpkg3uihfssgeugnmp', '127.0.0.1', '1518093226', '__ci_last_regenerate|i:1518093226;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('38qg86ak2v6qu433i8c5vl1pnlonscd2', '127.0.0.1', '1518093871', '__ci_last_regenerate|i:1518093871;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('6tlke13v77iupqt0usfvj973n5bhnjoq', '127.0.0.1', '1518094276', '__ci_last_regenerate|i:1518094276;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('h9j1lmj618psv3lv8lql91cel5qsc7et', '127.0.0.1', '1518094635', '__ci_last_regenerate|i:1518094635;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('coee1ppc98icth327lssnrmeh64upmf2', '127.0.0.1', '1518097501', '__ci_last_regenerate|i:1518097501;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('o0pjdukte8h86d0rvbso6b6kt3apefob', '127.0.0.1', '1518097839', '__ci_last_regenerate|i:1518097839;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('hjrrms1mi7ii20ofk5meguf05vfkanm6', '127.0.0.1', '1518098152', '__ci_last_regenerate|i:1518098152;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('mdbiik919vtn4hdb5b40ee7r9diulid3', '127.0.0.1', '1518098508', '__ci_last_regenerate|i:1518098508;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('2smtocri4cq3v6k6mfha6u8qbgqimujm', '127.0.0.1', '1518098811', '__ci_last_regenerate|i:1518098811;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('9oek4g594v3pehsivh6m5qc7j9tt73sk', '127.0.0.1', '1518099151', '__ci_last_regenerate|i:1518099151;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('jp3gt814dq8ate51u4tqt626pv1r4bjs', '127.0.0.1', '1518099966', '__ci_last_regenerate|i:1518099966;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('vcvbspukq9fh4sksp8be0f6avebj6b5d', '127.0.0.1', '1518100317', '__ci_last_regenerate|i:1518100317;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('6luilsfbkp5jar5bnu6hn6rf9en772pk', '127.0.0.1', '1518100620', '__ci_last_regenerate|i:1518100620;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('22hf5c46bo0nsljgf29tmp6k8f89t297', '127.0.0.1', '1518100997', '__ci_last_regenerate|i:1518100997;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('2n1m8ds78k96temhsp7son4v1569mf6f', '127.0.0.1', '1518101400', '__ci_last_regenerate|i:1518101400;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('dtiunk6i1gejvmsmvclrdpjnknofjed1', '127.0.0.1', '1518101405', '__ci_last_regenerate|i:1518101400;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('34iobs2d3b02jtfp00q7froo401ripb9', '127.0.0.1', '1518154887', '__ci_last_regenerate|i:1518154887;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('bnqc63f9ch6cpr5pmemskso0d2ga2ubl', '127.0.0.1', '1518155689', '__ci_last_regenerate|i:1518155689;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('4a3dhhkp7ahhil80teah0b4hk1iufio2', '127.0.0.1', '1518156040', '__ci_last_regenerate|i:1518156040;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ardp24ho37u468trcqqokpdumio23ib2', '127.0.0.1', '1518156364', '__ci_last_regenerate|i:1518156364;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('7rsjfklnu6fov0aqcm6lc560cbt20t58', '127.0.0.1', '1518156706', '__ci_last_regenerate|i:1518156706;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('43eghdn4m645lbdf6l86t2oc3qbktkbt', '127.0.0.1', '1518157013', '__ci_last_regenerate|i:1518157013;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('3034eilk610skpch5rniombinmdr1unl', '127.0.0.1', '1518157372', '__ci_last_regenerate|i:1518157372;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('v5v75gco7jj20urn20ac9dto2lno188s', '127.0.0.1', '1518157693', '__ci_last_regenerate|i:1518157693;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('6brakttg5tvju975qod7o9jjm59umq1h', '127.0.0.1', '1518158049', '__ci_last_regenerate|i:1518158049;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('21r5a4pp94umi4fmfe7vnkqggme3ib2g', '127.0.0.1', '1518158407', '__ci_last_regenerate|i:1518158407;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('va490l1mlngr0qm1nrklcn61vq742bmk', '127.0.0.1', '1518158850', '__ci_last_regenerate|i:1518158850;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('fkq634vc9lbhps5ob14gb5ttrd22ppfb', '127.0.0.1', '1518159179', '__ci_last_regenerate|i:1518159179;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('l4hlhhob77tm4drko8ad2u4q3am6edp7', '127.0.0.1', '1518159481', '__ci_last_regenerate|i:1518159481;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('4lcf8n4c3ke2bou1pb3iarda5s3dflro', '127.0.0.1', '1518159845', '__ci_last_regenerate|i:1518159845;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ri1qodei7aupi6ios8cn5li6lb4kh6c9', '127.0.0.1', '1518169569', '__ci_last_regenerate|i:1518169569;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('h1q16q1bj70vhep0k85vvvjivpmk1goh', '127.0.0.1', '1518169967', '__ci_last_regenerate|i:1518169967;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('55mb5fvp48d4aft2dvn34rg3pecunlbd', '127.0.0.1', '1518170280', '__ci_last_regenerate|i:1518170280;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('sfet1hpu88u3tgg6v6pb2b8e1e5rrunb', '127.0.0.1', '1518170654', '__ci_last_regenerate|i:1518170654;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('lsmnpi9c50vdf8p1sotf0f6dtgspd6fv', '127.0.0.1', '1518170972', '__ci_last_regenerate|i:1518170972;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('gkf1goujr443akbfmlaiirn8638uk4pu', '127.0.0.1', '1518171307', '__ci_last_regenerate|i:1518171307;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('j16domt31qrfovb29bc4ggitgmnsinvq', '127.0.0.1', '1518171649', '__ci_last_regenerate|i:1518171649;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ajr7he53n4u6458213iap3vnqj5qq4rp', '127.0.0.1', '1518171999', '__ci_last_regenerate|i:1518171999;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('rpitm42i6oigtak64k44rsa63a35j71r', '127.0.0.1', '1518172408', '__ci_last_regenerate|i:1518172408;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('837bqp7b235qvbv2hun5bqm535d44r0q', '127.0.0.1', '1518173262', '__ci_last_regenerate|i:1518173262;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('05odgpk3jtb344fbeaes3lo6i97o25j5', '127.0.0.1', '1518173577', '__ci_last_regenerate|i:1518173577;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('h6sd10mjoi067d7ncg744h07qvnjjvia', '127.0.0.1', '1518173919', '__ci_last_regenerate|i:1518173919;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('7d4o7dkcgburr5nirtvdgtgto4v89iru', '127.0.0.1', '1518174517', '__ci_last_regenerate|i:1518174517;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('btjd635ba8nlmfnvs2ci1sn0qlvh06ar', '127.0.0.1', '1518175154', '__ci_last_regenerate|i:1518175154;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ms2j4vm2s0a4f5hid70tnua3f4nbj1rl', '127.0.0.1', '1518175569', '__ci_last_regenerate|i:1518175569;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('kries64ralijgurh14b36jkit9qv0bbh', '127.0.0.1', '1518175963', '__ci_last_regenerate|i:1518175963;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('arl08i9sj6tge2aoj0d55htj256leqg6', '127.0.0.1', '1518176106', '__ci_last_regenerate|i:1518175963;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('bvhk2ha6qn9civ3eudg7f1h6kn968pk3', '127.0.0.1', '1518265023', '__ci_last_regenerate|i:1518265023;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ph6uq6f0tep301q1rcae7sb24bmg278l', '127.0.0.1', '1518264865', '__ci_last_regenerate|i:1518264865;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('86rt8kojmif7kbeg16baepmelshthhh0', '127.0.0.1', '1518264865', '__ci_last_regenerate|i:1518264865;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('20b53a141h7euaakktuaaqag52jh1p54', '127.0.0.1', '1518265367', '__ci_last_regenerate|i:1518265367;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('jonn5ag5i8rocn4s7ecqv9vbs6cfopau', '127.0.0.1', '1518265751', '__ci_last_regenerate|i:1518265751;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('i8b6id2qi4s4r1sbuh007nucms7v0jmi', '127.0.0.1', '1518266077', '__ci_last_regenerate|i:1518266077;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('3833evjc49ajlgnefo4ce1ja1v400r70', '127.0.0.1', '1518266439', '__ci_last_regenerate|i:1518266439;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('971gn3um3o2sv9e46v2begd066k3r99r', '127.0.0.1', '1518266520', '__ci_last_regenerate|i:1518266439;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('pal526qr88qveaubairle5cnl21tdo1q', '127.0.0.1', '1518335947', '__ci_last_regenerate|i:1518335947;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('l11ae42ntmj753eq97tetsq3pjbkeavn', '127.0.0.1', '1518336509', '__ci_last_regenerate|i:1518336509;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('1e1seok2cq23nh4o6b60htdi8vp0rioc', '127.0.0.1', '1518337232', '__ci_last_regenerate|i:1518337232;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('8pepmkn2b7medujehjk2sp589t2d269c', '127.0.0.1', '1518337537', '__ci_last_regenerate|i:1518337537;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ma1c3pvfddh72gop4e920hc2dcfku0s9', '127.0.0.1', '1518337841', '__ci_last_regenerate|i:1518337841;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('9s39gv7q2eie3kdaj68eutma82v4g8dg', '127.0.0.1', '1518338148', '__ci_last_regenerate|i:1518338148;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('0ubtde010mkumq9ciumj9933n40ogorv', '127.0.0.1', '1518338453', '__ci_last_regenerate|i:1518338453;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('uhv4kf181c6lj782cp0if6afcufh0nqr', '127.0.0.1', '1518339230', '__ci_last_regenerate|i:1518339230;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('1msd4i092km3jb9l9p0q8udmocc4cq5a', '127.0.0.1', '1518350549', '__ci_last_regenerate|i:1518350549;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('79hrot2v3gt5c9affqegr1a93u802lbp', '127.0.0.1', '1518350921', '__ci_last_regenerate|i:1518350921;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('7ara6h37vjmp0of4k2bv5e6ladnqsq0g', '127.0.0.1', '1518351584', '__ci_last_regenerate|i:1518351584;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('uevfk0lomf0l5gtfp6v3ik6hjfaovt57', '127.0.0.1', '1518351962', '__ci_last_regenerate|i:1518351962;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('hpc043pq0c8imqqib2dgoikcge16p7v0', '127.0.0.1', '1518352424', '__ci_last_regenerate|i:1518352424;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('iad5et4en45qot4d9mqbkamcl05o7spd', '127.0.0.1', '1518352896', '__ci_last_regenerate|i:1518352896;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('9e51qabmfif774qs6kageav1bv32tbd2', '127.0.0.1', '1518353249', '__ci_last_regenerate|i:1518353249;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('slnpgs1305mdi71llm3unn5qcvej8n0u', '127.0.0.1', '1518353597', '__ci_last_regenerate|i:1518353597;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('70gmah2vmg14u8lqdal4d112sgqb6tdb', '127.0.0.1', '1518354109', '__ci_last_regenerate|i:1518354109;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('7r9g02qc17jqjm2nhpc89v5ei4sqvlro', '127.0.0.1', '1518354470', '__ci_last_regenerate|i:1518354470;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('og6ajr1q6ss36l7ljvstnvvuk98fosb6', '127.0.0.1', '1518356999', '__ci_last_regenerate|i:1518356999;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('chvft6v4mq8q7mtpvffd83goj6nmmrtg', '127.0.0.1', '1518360940', '__ci_last_regenerate|i:1518360940;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('stseoj97tcso9vom2trgciptogblfat7', '127.0.0.1', '1518361305', '__ci_last_regenerate|i:1518361305;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('htuc1tis9dinprse7cssuhvk9u1qarbo', '127.0.0.1', '1518361619', '__ci_last_regenerate|i:1518361619;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ni9hbarhnl0j8s5ps31n6bmdu4ms6d46', '127.0.0.1', '1518361661', '__ci_last_regenerate|i:1518361619;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('8f6cimkv818aehk83eg538kc45mqh1sc', '127.0.0.1', '1518421156', '__ci_last_regenerate|i:1518421156;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('qap3v003ma61v1aqe1731uehnv276k7q', '127.0.0.1', '1518421495', '__ci_last_regenerate|i:1518421495;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('4jm8o8vt1djmbfh70m9cuoojuoi276kp', '127.0.0.1', '1518422176', '__ci_last_regenerate|i:1518422176;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('9i9c6k7dkugkm6il6ukdkaug6lvrbd99', '127.0.0.1', '1518422478', '__ci_last_regenerate|i:1518422478;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('es92srdimme9dgunmkim69mbca1vmamt', '127.0.0.1', '1518422780', '__ci_last_regenerate|i:1518422780;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('phgekr4uffeg2bvo1kugtm18h5iistpp', '127.0.0.1', '1518423344', '__ci_last_regenerate|i:1518423344;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"11\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ua3gg886pvo3vcjhvtlqqbsdnv96kgbl', '127.0.0.1', '1518425139', '__ci_last_regenerate|i:1518425139;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:13;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ogqo5sggkkpb76g17repk0sja7sfaj3q', '127.0.0.1', '1518423571', '__ci_last_regenerate|i:1518423571;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('voaja2kvgoq9s967h92h6q518f1ljhkm', '127.0.0.1', '1518425573', '__ci_last_regenerate|i:1518425573;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:13;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('g5ffb0qb7ebcsm3qtreog2ef8h1mr2ec', '127.0.0.1', '1518425917', '__ci_last_regenerate|i:1518425917;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:13;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('0s163bn6rn7c8rteoab0n8c02rgn7mdh', '127.0.0.1', '1518426253', '__ci_last_regenerate|i:1518426253;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:13;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('o5e02qmq0pjp2vqd58a9k0l61alpf2e7', '127.0.0.1', '1518427416', '__ci_last_regenerate|i:1518427416;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:13;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('5tap4397b9mrf2iim1284avj4k88m65b', '127.0.0.1', '1518427740', '__ci_last_regenerate|i:1518427740;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:13;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('dgre2h05kmbr7bd12gtrrvobbjp4vgpk', '127.0.0.1', '1518428140', '__ci_last_regenerate|i:1518428140;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:13;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('mpg8ijpkgbmplgks35je4gag5capk929', '127.0.0.1', '1518428549', '__ci_last_regenerate|i:1518428549;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:13;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('afmr4ld53l12uutir2a5cqi007obn9gj', '127.0.0.1', '1518428868', '__ci_last_regenerate|i:1518428868;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:13;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('jtjofm27ab3b376ohmg2413qedp2ujeg', '127.0.0.1', '1518429175', '__ci_last_regenerate|i:1518429175;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:13;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('79p7br1jq144e9b78v7f1a9m7a4btlef', '127.0.0.1', '1518429512', '__ci_last_regenerate|i:1518429512;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:13;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ebpthdukokmpqik9v16hslc1cnckkpf3', '127.0.0.1', '1518429911', '__ci_last_regenerate|i:1518429911;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:13;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('prjl86l594cerk4hto41o1kil9tcg0vo', '127.0.0.1', '1518437727', '__ci_last_regenerate|i:1518437727;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:13;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ibba4lu9o24ouratg022d6nr77snnivv', '127.0.0.1', '1518438048', '__ci_last_regenerate|i:1518438048;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:13;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('knlh3hlc6ndofi0cl5k1o5lh6uhgohvj', '127.0.0.1', '1518438350', '__ci_last_regenerate|i:1518438350;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:13;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('n0vdhmi7puo4b78k3sqlia9t7j39ajg4', '127.0.0.1', '1518438709', '__ci_last_regenerate|i:1518438709;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:13;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('8i64aj0fhk70ej3r7v8jkce7sgoj158u', '127.0.0.1', '1518439119', '__ci_last_regenerate|i:1518439119;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:13;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('9ns32dspm5til6e7p1o64ki2ibakagrt', '127.0.0.1', '1518439697', '__ci_last_regenerate|i:1518439697;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:13;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('vgmog54b6v7ntei93i0895qlst5bn7sp', '127.0.0.1', '1518440049', '__ci_last_regenerate|i:1518440049;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:13;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('2018g2ddqcjlg4j4aa4rqmsck934uj2j', '127.0.0.1', '1518440402', '__ci_last_regenerate|i:1518440402;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:13;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('0gk5cpcfvjgdoi3759mq7sbaa7t9mapl', '127.0.0.1', '1518440742', '__ci_last_regenerate|i:1518440742;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:13;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('v45ae8n21uluee6us19llu6id4fegtan', '127.0.0.1', '1518441058', '__ci_last_regenerate|i:1518441058;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:13;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('taq7vcnn6flomqn4kjujj5k8s1uru3d2', '127.0.0.1', '1518441410', '__ci_last_regenerate|i:1518441410;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:13;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('jc7vpvhaqlo94mtjrd7qsemeul4oqtt4', '127.0.0.1', '1518441408', '__ci_last_regenerate|i:1518441408;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('rl3gfsl7hl6misvk3njsb6go6q27uch0', '127.0.0.1', '1518441408', '__ci_last_regenerate|i:1518441408;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('pkiklkejb38ukjqt2koik8bd8ragu7ig', '127.0.0.1', '1518441408', '__ci_last_regenerate|i:1518441408;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('8jiilcvaq7hjb3h5lghctcqmctrkcjph', '127.0.0.1', '1518441762', '__ci_last_regenerate|i:1518441762;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:13;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('cru50bq8kcvpu4r59q34rfq453enls7a', '127.0.0.1', '1518458038', '__ci_last_regenerate|i:1518458038;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ec3b7u6u91p11u4m0n64laodtm53gsbf', '127.0.0.1', '1518458271', '__ci_last_regenerate|i:1518458261;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('qrg34i3e6u07ccl38kuqp4rdn25gh6kq', '127.0.0.1', '1518458362', '__ci_last_regenerate|i:1518458360;red_url|s:5:\"admin\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('vqu051vji4grbadh9o3idodsj5oirlr8', '127.0.0.1', '1518459104', '__ci_last_regenerate|i:1518459104;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('74a2424ut9e2664l2mt9o5bsl11hdgvs', '127.0.0.1', '1518458389', '__ci_last_regenerate|i:1518458389;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('qdpr1e0se9ite3enl0srs3r7odv2rffo', '127.0.0.1', '1518458389', '__ci_last_regenerate|i:1518458389;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('u43mm2vhmgcbh3atdu4iar3vu31s3p8f', '127.0.0.1', '1518459229', '__ci_last_regenerate|i:1518459104;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('hkt3ffr7fl8u7iadu0d46p7dank7sldq', '127.0.0.1', '1518507969', '__ci_last_regenerate|i:1518507969;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('3hkq6n7pg3j24tr833tsm5s3dkp4f8qp', '127.0.0.1', '1518508928', '__ci_last_regenerate|i:1518508928;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('onp8759983ef8oangqc5fvvvfe479c4i', '127.0.0.1', '1518510274', '__ci_last_regenerate|i:1518510274;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:14;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('rjdgl8dp81skr6pc614s4a3il9npinib', '127.0.0.1', '1518509241', '__ci_last_regenerate|i:1518509241;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ou846oiugnlmkc0fjir526btboevmgks', '127.0.0.1', '1518509554', '__ci_last_regenerate|i:1518509554;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('vqkls9tsanovvjst8m195s6j9j3rvugd', '127.0.0.1', '1518510027', '__ci_last_regenerate|i:1518510027;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('vi2ttp06beq00mjanp8ikkfrk2slql22', '127.0.0.1', '1518510337', '__ci_last_regenerate|i:1518510337;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('umqmu3tl8562h7ddcpft2ql76757sitv', '127.0.0.1', '1518510878', '__ci_last_regenerate|i:1518510878;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:14;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('c6igv874n7vpe1hhlev41tfknjg4afgp', '127.0.0.1', '1518510713', '__ci_last_regenerate|i:1518510713;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('1s1athq6q2qcosgbukc110pli38tne15', '127.0.0.1', '1518511048', '__ci_last_regenerate|i:1518511048;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('r15bik39vb7qflto221pnjpb4pke1iil', '127.0.0.1', '1518513340', '__ci_last_regenerate|i:1518513340;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:14;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('pmnmqiglud9u2nuccnv64cm2vml10rdr', '127.0.0.1', '1518511529', '__ci_last_regenerate|i:1518511529;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('nd5d3me89g5aqo6mb8kmr2dpjn3a5drm', '127.0.0.1', '1518511831', '__ci_last_regenerate|i:1518511831;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;message-success|s:28:\"entities added successfully.\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('6p0k42jogb73m13otg3gup0pmlitk432', '127.0.0.1', '1518512142', '__ci_last_regenerate|i:1518512142;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('skvt2f36iamhegjg5qghpmag7omnp3mv', '127.0.0.1', '1518512466', '__ci_last_regenerate|i:1518512466;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('uppob2uig3kghtn4k2b8hajsgdl8p626', '127.0.0.1', '1518512867', '__ci_last_regenerate|i:1518512867;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('2rvrtum0ononuu9b9u6kibc6pl3le43j', '127.0.0.1', '1518513237', '__ci_last_regenerate|i:1518513237;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('n05m1afgqmkodk6tdsu5g0n3t3uvh2su', '127.0.0.1', '1518513735', '__ci_last_regenerate|i:1518513735;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;message-success|s:30:\"entities updated successfully.\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('r92bjfdpl439kt8k4och7htn6s77iard', '127.0.0.1', '1518513698', '__ci_last_regenerate|i:1518513698;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:14;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('cftcfoc5ur04p0qb1sjc26536prcr56f', '127.0.0.1', '1518514015', '__ci_last_regenerate|i:1518514015;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:14;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('6426eld4icjg1lieunp7rq55h7nq54fe', '127.0.0.1', '1518514054', '__ci_last_regenerate|i:1518514054;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('qp4vsr73k7bq88bk6gi4ovo5fn7qla6h', '127.0.0.1', '1518514413', '__ci_last_regenerate|i:1518514413;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:14;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ld5a8sslhbo75ao2iihi4n7qjch5qmc4', '127.0.0.1', '1518514355', '__ci_last_regenerate|i:1518514355;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('pujliq34738nlpntg89q9cvgecbhte03', '127.0.0.1', '1518514968', '__ci_last_regenerate|i:1518514968;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('0v1ju2r02hshduutds7gtdr2uncf1uis', '127.0.0.1', '1518515180', '__ci_last_regenerate|i:1518515180;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ob6vo2ce60khqomft00fnd7esontk3cg', '127.0.0.1', '1518515286', '__ci_last_regenerate|i:1518515286;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;message-success|s:30:\"entities updated successfully.\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('pvag6g3nbaqgivh6gjv4lkboj4iqujht', '127.0.0.1', '1518515300', '__ci_last_regenerate|i:1518515180;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|i:15;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('khm223aifnfnk33ieldgc6clpsffo4fi', '127.0.0.1', '1518515802', '__ci_last_regenerate|i:1518515802;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;message-success|s:28:\"entities added successfully.\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ei9mbgiip8d5ln29rhp0p0f1deopeist', '127.0.0.1', '1518515902', '__ci_last_regenerate|i:1518515802;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('fuion38obpa7q0k9jtip2r1h0900c8iq', '87.116.176.78', '1518516571', '__ci_last_regenerate|i:1518516571;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('8mdb1o4h65g1aqlhkdvapd4kj38a9vna', '87.116.176.78', '1518517181', '__ci_last_regenerate|i:1518517181;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('6aa6ok856qblbn0u97ld5mmre9pt54q1', '87.116.176.78', '1518517480', '__ci_last_regenerate|i:1518517427;staff_user_id|s:1:\"1\";staff_logged_in|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('guud2na9pv83b5cjbgh2eqev0b4r8n6s', '127.0.0.1', '1518518784', '__ci_last_regenerate|i:1518518784;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('7ghjh134pvsovdqf9cd957k0uq947glg', '127.0.0.1', '1518518911', '__ci_last_regenerate|i:1518518911;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"15\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('5kce0bprnqg4anej9ethp26j27bpb4pj', '127.0.0.1', '1518519241', '__ci_last_regenerate|i:1518519241;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('o2bel8ei351g8qidd6vje0bqq60dph0i', '127.0.0.1', '1518521080', '__ci_last_regenerate|i:1518521080;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"15\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('13casorithd6vodg4p8jkg5v28ph13oe', '127.0.0.1', '1518519558', '__ci_last_regenerate|i:1518519558;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('2lbe9g2qi72bg7hn8fvt2d2t219gvgub', '127.0.0.1', '1518519980', '__ci_last_regenerate|i:1518519980;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('0q2covhsbtmon49nt2gihuvec5srfp4m', '127.0.0.1', '1518520323', '__ci_last_regenerate|i:1518520323;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('5m3qv6rpiiodd5t1jlsmjs23v7aef9du', '127.0.0.1', '1518520624', '__ci_last_regenerate|i:1518520624;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('n6r67q6gp9ra1eqrci94rscacj62mbcb', '127.0.0.1', '1518520937', '__ci_last_regenerate|i:1518520937;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('9hkropohq4lbf4tgc850ipt7gmaruark', '127.0.0.1', '1518521479', '__ci_last_regenerate|i:1518521479;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;message-success|s:30:\"entities updated successfully.\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('s97d2ifmkf7evuv9ekgcrastko2anbns', '127.0.0.1', '1518524052', '__ci_last_regenerate|i:1518524052;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"15\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('uahvihhf27tqnuijmc5vbnq6htd8p5cm', '127.0.0.1', '1518525334', '__ci_last_regenerate|i:1518525334;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('9ca6caekoo02v525uu4i9ktkt2ls3qbn', '127.0.0.1', '1518525615', '__ci_last_regenerate|i:1518525615;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"15\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('rodmkl0ft5b3q3r2cf60b67lt46qso0e', '127.0.0.1', '1518525686', '__ci_last_regenerate|i:1518525686;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('q9a7kha0kspjqrsbv467oeqhbnuqh4qb', '127.0.0.1', '1518526114', '__ci_last_regenerate|i:1518526114;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;wt_agent|s:2:\"15\";');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('jfcv80pk0mkgh1tihimijshoau4llb4b', '127.0.0.1', '1518526124', '__ci_last_regenerate|i:1518526124;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('s4vu4jko1d061oq9o318e3c0ru2i3969', '127.0.0.1', '1518526115', '__ci_last_regenerate|i:1518526114;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('uavnuv15ctsvs688el58vr0aeommeqck', '127.0.0.1', '1518526858', '__ci_last_regenerate|i:1518526858;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";message-success|s:27:\"Backup is made successfully\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('4sfeddfjlrkp7l7g6n14kbicvejsq0pn', '127.0.0.1', '1518527200', '__ci_last_regenerate|i:1518527200;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('b318i4g73koaunk4hrtn9fd4tkg080g2', '127.0.0.1', '1518527502', '__ci_last_regenerate|i:1518527502;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;');
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('reentp3e9jmjlv7m1s11c0senfb9pd2k', '127.0.0.1', '1518527815', '__ci_last_regenerate|i:1518527815;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";message-success|s:27:\"Backup is made successfully\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}');


#
# TABLE STRUCTURE FOR: tblstaff
#

DROP TABLE IF EXISTS `tblstaff`;

CREATE TABLE `tblstaff` (
  `staffid` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `facebook` mediumtext,
  `linkedin` mediumtext,
  `phonenumber` varchar(30) DEFAULT NULL,
  `skype` varchar(50) DEFAULT NULL,
  `password` varchar(250) NOT NULL,
  `datecreated` datetime NOT NULL,
  `profile_image` varchar(300) DEFAULT NULL,
  `last_ip` varchar(40) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_password_change` datetime DEFAULT NULL,
  `new_pass_key` varchar(32) DEFAULT NULL,
  `new_pass_key_requested` datetime DEFAULT NULL,
  `admin` int(11) NOT NULL DEFAULT '0',
  `role` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `default_language` varchar(40) DEFAULT NULL,
  `direction` varchar(3) DEFAULT NULL,
  `media_path_slug` varchar(300) DEFAULT NULL,
  `is_not_staff` int(11) NOT NULL DEFAULT '0',
  `hourly_rate` decimal(11,2) NOT NULL DEFAULT '0.00',
  `email_signature` text,
  PRIMARY KEY (`staffid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO `tblstaff` (`staffid`, `email`, `firstname`, `lastname`, `facebook`, `linkedin`, `phonenumber`, `skype`, `password`, `datecreated`, `profile_image`, `last_ip`, `last_login`, `last_password_change`, `new_pass_key`, `new_pass_key_requested`, `admin`, `role`, `active`, `default_language`, `direction`, `media_path_slug`, `is_not_staff`, `hourly_rate`, `email_signature`) VALUES ('1', 'ahmet.gudenoglu@gmail.com', 'Ahmet', 'Goudenoglu', '', '', '', '', '$2a$08$rFfwdtQSPdbRNu7Hfpr6xenuyIePPKpV/sV73zShqOXLz9FHJo.uK', '2018-01-05 13:02:08', NULL, '87.116.176.78', '2018-02-13 11:24:33', NULL, NULL, NULL, '1', '0', '1', '', '', NULL, '0', '0.00', '');
INSERT INTO `tblstaff` (`staffid`, `email`, `firstname`, `lastname`, `facebook`, `linkedin`, `phonenumber`, `skype`, `password`, `datecreated`, `profile_image`, `last_ip`, `last_login`, `last_password_change`, `new_pass_key`, `new_pass_key_requested`, `admin`, `role`, `active`, `default_language`, `direction`, `media_path_slug`, `is_not_staff`, `hourly_rate`, `email_signature`) VALUES ('2', 'nikola@mediaworks.io', 'Nikola', 'Jankovic', '', '', '', '', '$2a$08$Ecj2sq8x0lMWdkrkuA0ooey4gA/5KIWeusuWWy3IvRoyYNsGC3W8q', '2018-02-13 11:09:31', NULL, '87.116.176.78', '2018-02-13 11:12:51', NULL, NULL, NULL, '1', '1', '1', '', '', 'nikola-jankovic', '0', '0.00', '');
INSERT INTO `tblstaff` (`staffid`, `email`, `firstname`, `lastname`, `facebook`, `linkedin`, `phonenumber`, `skype`, `password`, `datecreated`, `profile_image`, `last_ip`, `last_login`, `last_password_change`, `new_pass_key`, `new_pass_key_requested`, `admin`, `role`, `active`, `default_language`, `direction`, `media_path_slug`, `is_not_staff`, `hourly_rate`, `email_signature`) VALUES ('3', 'rasabrajic@gmail.com', 'Radosav', 'Brajic', '', '', '', '', '$2a$08$ltbpcsUvG9KOuGCJQcHuxOE7A72T33EwGax5yas3Jzb8DzZ1Gz3F6', '2018-02-13 11:21:39', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', 'english', '', 'radosav-brajic', '0', '0.00', '');


#
# TABLE STRUCTURE FOR: tblstaffdepartments
#

DROP TABLE IF EXISTS `tblstaffdepartments`;

CREATE TABLE `tblstaffdepartments` (
  `staffdepartmentid` int(11) NOT NULL AUTO_INCREMENT,
  `staffid` int(11) NOT NULL,
  `departmentid` int(11) NOT NULL,
  PRIMARY KEY (`staffdepartmentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblstaffpermissions
#

DROP TABLE IF EXISTS `tblstaffpermissions`;

CREATE TABLE `tblstaffpermissions` (
  `staffpermid` int(11) NOT NULL AUTO_INCREMENT,
  `permissionid` int(11) NOT NULL,
  `can_view` tinyint(1) NOT NULL DEFAULT '0',
  `can_view_own` tinyint(1) NOT NULL DEFAULT '0',
  `can_edit` tinyint(1) NOT NULL DEFAULT '0',
  `can_create` tinyint(1) NOT NULL DEFAULT '0',
  `can_delete` tinyint(1) NOT NULL DEFAULT '0',
  `staffid` int(11) NOT NULL,
  PRIMARY KEY (`staffpermid`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblstafftaskassignees
#

DROP TABLE IF EXISTS `tblstafftaskassignees`;

CREATE TABLE `tblstafftaskassignees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staffid` int(11) NOT NULL,
  `taskid` int(11) NOT NULL,
  `assigned_from` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `taskid` (`taskid`),
  KEY `staffid` (`staffid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblstafftaskcomments
#

DROP TABLE IF EXISTS `tblstafftaskcomments`;

CREATE TABLE `tblstafftaskcomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `taskid` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL DEFAULT '0',
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblstafftasks
#

DROP TABLE IF EXISTS `tblstafftasks`;

CREATE TABLE `tblstafftasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` mediumtext,
  `description` text,
  `priority` int(11) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `startdate` date NOT NULL,
  `duedate` date DEFAULT NULL,
  `datefinished` datetime NOT NULL,
  `addedfrom` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `recurring_type` varchar(10) DEFAULT NULL,
  `repeat_every` int(11) DEFAULT NULL,
  `recurring` int(11) NOT NULL DEFAULT '0',
  `recurring_ends_on` date DEFAULT NULL,
  `custom_recurring` tinyint(1) NOT NULL DEFAULT '0',
  `last_recurring_date` date DEFAULT NULL,
  `rel_id` int(11) DEFAULT NULL,
  `rel_type` varchar(30) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '0',
  `billable` tinyint(1) NOT NULL DEFAULT '0',
  `billed` tinyint(1) NOT NULL DEFAULT '0',
  `invoice_id` int(11) NOT NULL DEFAULT '0',
  `hourly_rate` decimal(11,2) NOT NULL DEFAULT '0.00',
  `milestone` int(11) DEFAULT '0',
  `kanban_order` int(11) NOT NULL DEFAULT '0',
  `milestone_order` int(11) NOT NULL DEFAULT '0',
  `visible_to_client` tinyint(1) NOT NULL DEFAULT '0',
  `deadline_notified` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `rel_id` (`rel_id`),
  KEY `rel_type` (`rel_type`),
  KEY `milestone` (`milestone`),
  KEY `kanban_order` (`kanban_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblstafftasksfollowers
#

DROP TABLE IF EXISTS `tblstafftasksfollowers`;

CREATE TABLE `tblstafftasksfollowers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staffid` int(11) NOT NULL,
  `taskid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblsurveyresultsets
#

DROP TABLE IF EXISTS `tblsurveyresultsets`;

CREATE TABLE `tblsurveyresultsets` (
  `resultsetid` int(11) NOT NULL AUTO_INCREMENT,
  `surveyid` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `useragent` varchar(150) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`resultsetid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblsurveys
#

DROP TABLE IF EXISTS `tblsurveys`;

CREATE TABLE `tblsurveys` (
  `surveyid` int(11) NOT NULL AUTO_INCREMENT,
  `subject` mediumtext NOT NULL,
  `slug` mediumtext NOT NULL,
  `description` text NOT NULL,
  `viewdescription` text,
  `datecreated` datetime NOT NULL,
  `redirect_url` varchar(100) DEFAULT NULL,
  `send` tinyint(1) NOT NULL DEFAULT '0',
  `onlyforloggedin` int(11) DEFAULT '0',
  `fromname` varchar(100) DEFAULT NULL,
  `iprestrict` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `hash` varchar(32) NOT NULL,
  PRIMARY KEY (`surveyid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblsurveysemailsendcron
#

DROP TABLE IF EXISTS `tblsurveysemailsendcron`;

CREATE TABLE `tblsurveysemailsendcron` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `surveyid` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `emailid` int(11) DEFAULT NULL,
  `listid` varchar(11) DEFAULT NULL,
  `log_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblsurveysendlog
#

DROP TABLE IF EXISTS `tblsurveysendlog`;

CREATE TABLE `tblsurveysendlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `surveyid` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `iscronfinished` int(11) NOT NULL DEFAULT '0',
  `send_to_mail_lists` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tbltags
#

DROP TABLE IF EXISTS `tbltags`;

CREATE TABLE `tbltags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tbltags_in
#

DROP TABLE IF EXISTS `tbltags_in`;

CREATE TABLE `tbltags_in` (
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `tag_order` int(11) NOT NULL DEFAULT '0',
  KEY `rel_id` (`rel_id`),
  KEY `rel_type` (`rel_type`),
  KEY `tag_id` (`tag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tbltaskchecklists
#

DROP TABLE IF EXISTS `tbltaskchecklists`;

CREATE TABLE `tbltaskchecklists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taskid` int(11) NOT NULL,
  `description` varchar(500) NOT NULL,
  `finished` int(11) NOT NULL DEFAULT '0',
  `dateadded` datetime NOT NULL,
  `addedfrom` int(11) NOT NULL,
  `finished_from` int(11) DEFAULT '0',
  `list_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tbltaskstimers
#

DROP TABLE IF EXISTS `tbltaskstimers`;

CREATE TABLE `tbltaskstimers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` int(11) NOT NULL,
  `start_time` varchar(64) NOT NULL,
  `end_time` varchar(64) DEFAULT NULL,
  `staff_id` int(11) NOT NULL,
  `hourly_rate` decimal(11,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `task_id` (`task_id`),
  KEY `staff_id` (`staff_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tbltaxes
#

DROP TABLE IF EXISTS `tbltaxes`;

CREATE TABLE `tbltaxes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `taxrate` decimal(11,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblticketattachments
#

DROP TABLE IF EXISTS `tblticketattachments`;

CREATE TABLE `tblticketattachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ticketid` int(11) NOT NULL,
  `replyid` int(11) DEFAULT NULL,
  `file_name` mediumtext NOT NULL,
  `filetype` varchar(50) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblticketpipelog
#

DROP TABLE IF EXISTS `tblticketpipelog`;

CREATE TABLE `tblticketpipelog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `email_to` varchar(500) NOT NULL,
  `name` varchar(200) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `message` mediumtext NOT NULL,
  `email` varchar(300) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblticketreplies
#

DROP TABLE IF EXISTS `tblticketreplies`;

CREATE TABLE `tblticketreplies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ticketid` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `contactid` int(11) NOT NULL DEFAULT '0',
  `name` text,
  `email` text,
  `date` datetime NOT NULL,
  `message` text,
  `attachment` int(11) DEFAULT NULL,
  `admin` int(11) DEFAULT NULL,
  `ip` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tbltickets
#

DROP TABLE IF EXISTS `tbltickets`;

CREATE TABLE `tbltickets` (
  `ticketid` int(11) NOT NULL AUTO_INCREMENT,
  `adminreplying` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL,
  `contactid` int(11) NOT NULL DEFAULT '0',
  `email` text,
  `name` text,
  `department` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `service` int(11) DEFAULT NULL,
  `ticketkey` varchar(32) NOT NULL,
  `subject` varchar(300) NOT NULL,
  `message` text,
  `admin` int(11) DEFAULT NULL,
  `date` datetime NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `lastreply` datetime DEFAULT NULL,
  `clientread` int(11) NOT NULL DEFAULT '0',
  `adminread` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(40) DEFAULT NULL,
  `assigned` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ticketid`),
  KEY `service` (`service`),
  KEY `department` (`department`),
  KEY `status` (`status`),
  KEY `userid` (`userid`),
  KEY `priority` (`priority`),
  KEY `project_id` (`project_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblticketsspamcontrol
#

DROP TABLE IF EXISTS `tblticketsspamcontrol`;

CREATE TABLE `tblticketsspamcontrol` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(40) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblticketstatus
#

DROP TABLE IF EXISTS `tblticketstatus`;

CREATE TABLE `tblticketstatus` (
  `ticketstatusid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `isdefault` int(11) NOT NULL DEFAULT '0',
  `statuscolor` varchar(7) DEFAULT NULL,
  `statusorder` int(11) DEFAULT NULL,
  PRIMARY KEY (`ticketstatusid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO `tblticketstatus` (`ticketstatusid`, `name`, `isdefault`, `statuscolor`, `statusorder`) VALUES ('3', 'Answered', '1', '#0000ff', '3');
INSERT INTO `tblticketstatus` (`ticketstatusid`, `name`, `isdefault`, `statuscolor`, `statusorder`) VALUES ('4', 'On Hold', '1', '#c0c0c0', '4');
INSERT INTO `tblticketstatus` (`ticketstatusid`, `name`, `isdefault`, `statuscolor`, `statusorder`) VALUES ('2', 'In progress', '1', '#84c529', '2');
INSERT INTO `tblticketstatus` (`ticketstatusid`, `name`, `isdefault`, `statuscolor`, `statusorder`) VALUES ('5', 'Closed', '1', '#03a9f4', '5');
INSERT INTO `tblticketstatus` (`ticketstatusid`, `name`, `isdefault`, `statuscolor`, `statusorder`) VALUES ('1', 'Open', '1', '#ff2d42', '1');


#
# TABLE STRUCTURE FOR: tbltodoitems
#

DROP TABLE IF EXISTS `tbltodoitems`;

CREATE TABLE `tbltodoitems` (
  `todoid` int(11) NOT NULL AUTO_INCREMENT,
  `description` text NOT NULL,
  `staffid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `finished` tinyint(1) NOT NULL,
  `datefinished` datetime DEFAULT NULL,
  `item_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`todoid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tbluserautologin
#

DROP TABLE IF EXISTS `tbluserautologin`;

CREATE TABLE `tbluserautologin` (
  `key_id` char(32) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_agent` varchar(150) NOT NULL,
  `last_ip` varchar(40) NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `staff` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblviewstracking
#

DROP TABLE IF EXISTS `tblviewstracking`;

CREATE TABLE `tblviewstracking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(40) NOT NULL,
  `date` datetime NOT NULL,
  `view_ip` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tblwebtolead
#

DROP TABLE IF EXISTS `tblwebtolead`;

CREATE TABLE `tblwebtolead` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_key` varchar(32) NOT NULL,
  `lead_source` int(11) NOT NULL,
  `lead_status` int(11) NOT NULL,
  `notify_lead_imported` int(11) NOT NULL DEFAULT '1',
  `notify_type` varchar(20) DEFAULT NULL,
  `notify_ids` mediumtext,
  `responsible` int(11) NOT NULL DEFAULT '0',
  `name` varchar(400) NOT NULL,
  `form_data` mediumtext,
  `recaptcha` int(11) NOT NULL DEFAULT '0',
  `submit_btn_name` varchar(40) DEFAULT NULL,
  `success_submit_msg` text,
  `language` varchar(40) DEFAULT NULL,
  `allow_duplicate` int(11) NOT NULL DEFAULT '1',
  `track_duplicate_field` varchar(20) DEFAULT NULL,
  `track_duplicate_field_and` varchar(20) DEFAULT NULL,
  `create_task_on_duplicate` int(11) NOT NULL DEFAULT '0',
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

