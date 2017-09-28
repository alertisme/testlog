-- 建库
CREATE DATABASE `log4j`;

use log4j;

-- 建表

CREATE TABLE `ibs_log` (
           `log_id` int(10) NOT NULL AUTO_INCREMENT,
           `log_date` datetime NOT NULL COMMENT '日期',
           `log_file` varchar(255) DEFAULT NULL COMMENT '文件名',
           `log_line` varchar(255) DEFAULT NULL COMMENT '行号',
           `log_thread` varchar(255) DEFAULT NULL COMMENT '线程',
           `log_level` varchar(255) DEFAULT NULL COMMENT 'Log级别 info warndebug error等',
           `log_message` varchar(2048) DEFAULT NULL COMMENT 'Log信息',
           PRIMARY KEY (`log_id`,`log_date`),
           KEY `INDEX_LOG_DATE` (`log_date`) USING BTREE
         ) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8