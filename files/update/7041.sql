DROP TABLE IF EXISTS `auth_attempt`;

INSERT INTO `config` VALUES('SECURITY_AUTHENTICATION_BLOCK_IP',0,'','Block authentication after too many attempt');
INSERT INTO `config` VALUES('SECURITY_AUTHENTICATION_NB_ATTEMPT',0,'','Define the number of attempt to authenticate');
INSERT INTO `config` VALUES('SECURITY_AUTHENTICATION_TIME_BLOCK',0,'','Define the block timer');

CREATE TABLE IF NOT EXISTS `auth_attempt` (
    `ID` INT(11) NOT NULL AUTO_INCREMENT,
    `DATETIMEATTEMPT` DATETIME NOT NULL,
    `LOGIN` VARCHAR(255) DEFAULT NULL,
    `IP` VARCHAR(255) DEFAULT NULL,
    `SUCCESS` INT(1) DEFAULT NULL,
    PRIMARY KEY  (`ID`)
) ENGINE=InnoDB;