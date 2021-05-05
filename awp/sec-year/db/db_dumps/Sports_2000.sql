# Dump File
#
# Database is ported from MS Access
#--------------------------------------------------------
# Program Version 3.0.117

CREATE DATABASE IF NOT EXISTS `Sports_2000`;
USE `Sports_2000`;

#
# Table structure for table 'customer'
#

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `custid` INTEGER NOT NULL DEFAULT 0, 
  `name` VARCHAR(50), 
  `address` VARCHAR(50), 
  `city` VARCHAR(50), 
  `state` VARCHAR(50), 
  `zip` VARCHAR(50), 
  `area` INTEGER DEFAULT 0, 
  `phone` VARCHAR(50), 
  `repid` INTEGER DEFAULT 0, 
  `creditlimit` DECIMAL(19,4) DEFAULT 0, 
  `comments` TEXT, 
  INDEX (`custid`), 
  PRIMARY KEY (`custid`), 
  INDEX (`repid`)
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'customer'
#

INSERT INTO `customer` (`custid`, `name`, `address`, `city`, `state`, `zip`, `area`, `phone`, `repid`, `creditlimit`, `comments`) VALUES (100, 'JOCKSPORTS', '345 VIEWRIDGE', 'BELMONT', 'CA', '96711', 415, '598-6609', 7844, 5000, 'Very friendly people to work with -- sales rep likes to be called Mike.');
INSERT INTO `customer` (`custid`, `name`, `address`, `city`, `state`, `zip`, `area`, `phone`, `repid`, `creditlimit`, `comments`) VALUES (101, 'TKB SPORT SHOP', '490 BOLI RD.', 'REDWOOD CITY', 'CA', '94061', 415, '368-1223', 7521, 10000, 'Rep called 5/8 about change in order - contact shipping.');
INSERT INTO `customer` (`custid`, `name`, `address`, `city`, `state`, `zip`, `area`, `phone`, `repid`, `creditlimit`, `comments`) VALUES (102, 'VOLLYRITE', '9722 HAMILTON', 'BURLINGAME', 'CA', '95133', 415, '644-3341', 7654, 7000, 'Company doing heavy promotion beginning 10/89.');
INSERT INTO `customer` (`custid`, `name`, `address`, `city`, `state`, `zip`, `area`, `phone`, `repid`, `creditlimit`, `comments`) VALUES (103, 'JUST TENNIS', 'HILLVIEW MALL', 'BURLINGAME', 'CA', '97544', 415, '677-9312', 7521, 3000, 'Contact rep about new line of tennis rackets.');
INSERT INTO `customer` (`custid`, `name`, `address`, `city`, `state`, `zip`, `area`, `phone`, `repid`, `creditlimit`, `comments`) VALUES (104, 'EVERY MOUNTAIN', '574 SURRY RD.', 'CUPERTINO', 'CA', '93301           ', 408, '996-2323', 7499, 10000, 'Customer with high market share (23%) due to aggressive advertising.');
INSERT INTO `customer` (`custid`, `name`, `address`, `city`, `state`, `zip`, `area`, `phone`, `repid`, `creditlimit`, `comments`) VALUES (105, 'K + T SPORTS', '3476 EL PASO', 'SANTA CLARA', 'CA', '91003', 408, '376-9966', 7844, 5000, 'Tends to order large amounts of merchandise at once.');
INSERT INTO `customer` (`custid`, `name`, `address`, `city`, `state`, `zip`, `area`, `phone`, `repid`, `creditlimit`, `comments`) VALUES (106, 'SHAPE UP', '908 SEQUOIA', 'PALO ALTO', 'CA', '94301', 415, '364-9777', 7521, 6000, 'Support intensive. Orders small amounts (< 800) of merchandise at a time.');
INSERT INTO `customer` (`custid`, `name`, `address`, `city`, `state`, `zip`, `area`, `phone`, `repid`, `creditlimit`, `comments`) VALUES (107, 'WOMENS SPORTS', 'VALCO VILLAGE', 'SUNNYVALE', 'CA', '93301', 408, '967-4398', 7499, 10000, 'First sporting goods store geared exclusively towards women. Unusual promotion.');
INSERT INTO `customer` (`custid`, `name`, `address`, `city`, `state`, `zip`, `area`, `phone`, `repid`, `creditlimit`, `comments`) VALUES (108, 'NORTH WOODS HEALTH AND FITNESS SUPPLY CENTER', '98 LONE PINE WAY', 'HIBBING', 'MN', '55649', 612, '566-9123', 7844, 8000, NULL);
# 9 records

#
# Table structure for table 'dept'
#

DROP TABLE IF EXISTS `dept`;

CREATE TABLE `dept` (
  `deptno` INTEGER NOT NULL DEFAULT 0, 
  `dname` VARCHAR(50), 
  `loc` VARCHAR(50), 
  PRIMARY KEY (`deptno`)
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'dept'
#

INSERT INTO `dept` (`deptno`, `dname`, `loc`) VALUES (10, 'ACCOUNTING', 'NEW YORK');
INSERT INTO `dept` (`deptno`, `dname`, `loc`) VALUES (20, 'RESEARCH', 'DALLAS');
INSERT INTO `dept` (`deptno`, `dname`, `loc`) VALUES (30, 'SALES', 'CHICAGO');
INSERT INTO `dept` (`deptno`, `dname`, `loc`) VALUES (40, 'OPERATIONS', 'BOSTON');
# 4 records

#
# Table structure for table 'emp'
#

DROP TABLE IF EXISTS `emp`;

CREATE TABLE `emp` (
  `empno` INTEGER NOT NULL DEFAULT 0, 
  `ename` VARCHAR(50), 
  `job` VARCHAR(50), 
  `mgr` INTEGER DEFAULT 0, 
  `hiredate` DATETIME, 
  `sal` DECIMAL(19,4) DEFAULT 0, 
  `comm` DECIMAL(19,4) DEFAULT 0, 
  `deptno` INTEGER DEFAULT 0, 
  INDEX (`mgr`), 
  PRIMARY KEY (`empno`)
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'emp'
#

INSERT INTO `emp` (`empno`, `ename`, `job`, `mgr`, `hiredate`, `sal`, `comm`, `deptno`) VALUES (7369, 'SMITH', 'CLERK', 7902, '1980-12-17 00:00:00', 800, 0, 20);
INSERT INTO `emp` (`empno`, `ename`, `job`, `mgr`, `hiredate`, `sal`, `comm`, `deptno`) VALUES (7499, 'ALLEN', 'SALESMAN', 7698, '1981-02-20 00:00:00', 1600, 300, 30);
INSERT INTO `emp` (`empno`, `ename`, `job`, `mgr`, `hiredate`, `sal`, `comm`, `deptno`) VALUES (7521, 'WARD', 'SALESMAN', 7698, '1981-02-22 00:00:00', 1250, 500, 30);
INSERT INTO `emp` (`empno`, `ename`, `job`, `mgr`, `hiredate`, `sal`, `comm`, `deptno`) VALUES (7566, 'JONES', 'MANAGER', 7839, '1981-04-02 00:00:00', 2975, 0, 20);
INSERT INTO `emp` (`empno`, `ename`, `job`, `mgr`, `hiredate`, `sal`, `comm`, `deptno`) VALUES (7654, 'MARTIN', 'SALESMAN', 7698, '1981-09-28 00:00:00', 1250, 1400, 30);
INSERT INTO `emp` (`empno`, `ename`, `job`, `mgr`, `hiredate`, `sal`, `comm`, `deptno`) VALUES (7698, 'BLAKE', 'MANAGER', 7839, '1981-05-01 00:00:00', 2850, 0, 30);
INSERT INTO `emp` (`empno`, `ename`, `job`, `mgr`, `hiredate`, `sal`, `comm`, `deptno`) VALUES (7782, 'CLARK', 'MANAGER', 7839, '1981-06-09 00:00:00', 2450, 0, 10);
INSERT INTO `emp` (`empno`, `ename`, `job`, `mgr`, `hiredate`, `sal`, `comm`, `deptno`) VALUES (7788, 'SCOTT', 'ANALYST', 7566, '1982-12-09 00:00:00', 3000, 0, 20);
INSERT INTO `emp` (`empno`, `ename`, `job`, `mgr`, `hiredate`, `sal`, `comm`, `deptno`) VALUES (7839, 'KING', 'PRESIDENT', 0, '1981-11-17 00:00:00', 5000, 0, 10);
INSERT INTO `emp` (`empno`, `ename`, `job`, `mgr`, `hiredate`, `sal`, `comm`, `deptno`) VALUES (7844, 'TURNER', 'SALESMAN', 7698, '1981-09-08 00:00:00', 1500, 0, 30);
INSERT INTO `emp` (`empno`, `ename`, `job`, `mgr`, `hiredate`, `sal`, `comm`, `deptno`) VALUES (7876, 'ADAMS', 'CLERK', 7788, '1983-01-12 00:00:00', 1100, 0, 20);
INSERT INTO `emp` (`empno`, `ename`, `job`, `mgr`, `hiredate`, `sal`, `comm`, `deptno`) VALUES (7900, 'JAMES', 'CLERK', 7698, '1981-12-03 00:00:00', 950, 0, 30);
INSERT INTO `emp` (`empno`, `ename`, `job`, `mgr`, `hiredate`, `sal`, `comm`, `deptno`) VALUES (7902, 'FORD', 'ANALYST', 7566, '1981-12-03 00:00:00', 3000, 0, 20);
INSERT INTO `emp` (`empno`, `ename`, `job`, `mgr`, `hiredate`, `sal`, `comm`, `deptno`) VALUES (7934, 'MILLER', 'CLERK', 7782, '1982-01-23 00:00:00', 1300, 0, 10);
# 14 records

#
# Table structure for table 'item'
#

DROP TABLE IF EXISTS `item`;

CREATE TABLE `item` (
  `ordid` INTEGER NOT NULL DEFAULT 0, 
  `prodid` INTEGER DEFAULT 0, 
  `itemid` INTEGER NOT NULL DEFAULT 0, 
  `actualprice` DECIMAL(19,4) DEFAULT 0, 
  `qty` INTEGER DEFAULT 0, 
  `itemtot` DECIMAL(19,4) DEFAULT 0, 
  INDEX (`itemid`), 
  INDEX (`ordid`), 
  PRIMARY KEY (`ordid`, `itemid`), 
  INDEX (`prodid`)
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'item'
#

INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (601, 200376, 1, 2.4, 1, 2.4);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (602, 100870, 1, 2.8, 20, 56);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (603, 100860, 2, 56, 4, 224);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (604, 100890, 1, 58, 3, 174);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (604, 100861, 2, 42, 2, 84);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (604, 100860, 3, 44, 10, 440);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (605, 100861, 1, 45, 100, 4500);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (605, 100870, 2, 2.8, 500, 1400);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (605, 100890, 3, 58, 5, 290);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (605, 101860, 4, 24, 50, 1200);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (605, 101863, 5, 9, 100, 900);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (605, 102130, 6, 3.4, 10, 34);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (606, 102130, 1, 3.4, 1, 3.4);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (607, 100871, 1, 5.6, 1, 5.6);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (608, 101860, 1, 24, 1, 24);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (608, 100871, 2, 5.6, 2, 11.2);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (609, 100861, 1, 35, 1, 35);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (609, 100870, 2, 2.5, 5, 12.5);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (609, 100890, 3, 50, 1, 50);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (610, 100860, 1, 35, 1, 35);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (610, 100870, 2, 2.8, 3, 8.4);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (610, 100890, 3, 58, 1, 58);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (611, 100861, 1, 45, 1, 45);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (612, 100860, 1, 30, 100, 3000);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (612, 100861, 2, 40.5, 20, 810);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (612, 101863, 3, 10, 150, 1500);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (612, 100871, 4, 5.5, 100, 550);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (613, 100871, 1, 5.6, 100, 560);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (613, 101860, 2, 24, 200, 4800);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (613, 200380, 3, 4, 150, 600);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (613, 200376, 4, 2.2, 200, 400);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (614, 100860, 1, 35, 444, 15540);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (614, 100870, 2, 2.8, 1000, 2800);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (614, 100871, 3, 5.6, 1000, 5600);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (615, 100861, 1, 45, 4, 180);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (615, 100870, 2, 2.8, 100, 280);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (615, 100871, 3, 5, 50, 250);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (616, 100870, 1, 45, 10, 450);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (616, 100870, 2, 2.8, 50, 140);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (616, 100890, 3, 58, 2, 116);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (616, 102130, 4, 3.4, 10, 34);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (616, 200376, 5, 2.4, 10, 24);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (617, 100860, 1, 35, 50, 1750);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (617, 100861, 2, 45, 100, 4500);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (617, 100870, 3, 2.8, 500, 1400);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (617, 100871, 4, 5.6, 500, 2800);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (617, 100890, 5, 58, 500, 29000);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (617, 101860, 6, 24, 100, 2400);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (617, 101863, 7, 12.5, 200, 2500);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (617, 102130, 8, 3.4, 100, 340);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (617, 200376, 9, 2.4, 200, 480);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (617, 200380, 10, 4, 300, 1200);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (618, 100860, 1, 35, 23, 805);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (618, 100861, 2, 45.11, 50, 2255.5);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (618, 100870, 3, 45, 10, 450);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (619, 200380, 1, 4, 100, 400);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (619, 200376, 2, 2.4, 100, 240);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (619, 102130, 3, 3.4, 100, 340);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (619, 100871, 4, 5.6, 50, 280);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (620, 100860, 1, 35, 10, 350);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (620, 200376, 2, 2.4, 1000, 2400);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (620, 102130, 3, 3.4, 500, 1700);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (621, 100861, 1, 45, 10, 450);
INSERT INTO `item` (`ordid`, `prodid`, `itemid`, `actualprice`, `qty`, `itemtot`) VALUES (621, 100870, 2, 2.8, 100, 280);
# 64 records

#
# Table structure for table 'ord'
#

DROP TABLE IF EXISTS `ord`;

CREATE TABLE `ord` (
  `ordid` INTEGER NOT NULL DEFAULT 0, 
  `orderdate` DATETIME, 
  `commplan` VARCHAR(50), 
  `custid` INTEGER NOT NULL DEFAULT 0, 
  `shipdate` DATETIME, 
  `total` DECIMAL(19,4) DEFAULT 0, 
  INDEX (`custid`), 
  INDEX (`ordid`), 
  PRIMARY KEY (`ordid`)
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'ord'
#

INSERT INTO `ord` (`ordid`, `orderdate`, `commplan`, `custid`, `shipdate`, `total`) VALUES (601, '1986-05-01 00:00:00', 'A', 106, '1986-05-30 00:00:00', 2.4);
INSERT INTO `ord` (`ordid`, `orderdate`, `commplan`, `custid`, `shipdate`, `total`) VALUES (602, '1986-06-05 00:00:00', 'B', 102, '1986-06-20 00:00:00', 56);
INSERT INTO `ord` (`ordid`, `orderdate`, `commplan`, `custid`, `shipdate`, `total`) VALUES (603, '1986-06-05 00:00:00', NULL, 102, '1986-06-05 00:00:00', 224);
INSERT INTO `ord` (`ordid`, `orderdate`, `commplan`, `custid`, `shipdate`, `total`) VALUES (604, '1986-06-15 00:00:00', 'A', 106, '1986-06-30 00:00:00', 698);
INSERT INTO `ord` (`ordid`, `orderdate`, `commplan`, `custid`, `shipdate`, `total`) VALUES (605, '1986-07-14 00:00:00', 'A', 106, '1986-07-30 00:00:00', 8324);
INSERT INTO `ord` (`ordid`, `orderdate`, `commplan`, `custid`, `shipdate`, `total`) VALUES (606, '1986-07-14 00:00:00', 'A', 100, '1986-07-30 00:00:00', 3.4);
INSERT INTO `ord` (`ordid`, `orderdate`, `commplan`, `custid`, `shipdate`, `total`) VALUES (607, '1986-07-18 00:00:00', 'C', 104, '1986-07-18 00:00:00', 5.6);
INSERT INTO `ord` (`ordid`, `orderdate`, `commplan`, `custid`, `shipdate`, `total`) VALUES (608, '1986-07-25 00:00:00', 'C', 104, '1986-07-25 00:00:00', 35.2);
INSERT INTO `ord` (`ordid`, `orderdate`, `commplan`, `custid`, `shipdate`, `total`) VALUES (609, '1986-08-01 00:00:00', 'B', 100, '1986-08-15 00:00:00', 97.5);
INSERT INTO `ord` (`ordid`, `orderdate`, `commplan`, `custid`, `shipdate`, `total`) VALUES (610, '1987-01-07 00:00:00', 'A', 101, '1987-01-08 00:00:00', 101.4);
INSERT INTO `ord` (`ordid`, `orderdate`, `commplan`, `custid`, `shipdate`, `total`) VALUES (611, '1987-01-11 00:00:00', 'B', 102, '1987-01-11 00:00:00', 45);
INSERT INTO `ord` (`ordid`, `orderdate`, `commplan`, `custid`, `shipdate`, `total`) VALUES (612, '1987-01-15 00:00:00', 'C', 104, '1987-01-20 00:00:00', 5860);
INSERT INTO `ord` (`ordid`, `orderdate`, `commplan`, `custid`, `shipdate`, `total`) VALUES (613, '1987-02-01 00:00:00', NULL, 108, '1987-02-01 00:00:00', 6400);
INSERT INTO `ord` (`ordid`, `orderdate`, `commplan`, `custid`, `shipdate`, `total`) VALUES (614, '1987-02-01 00:00:00', NULL, 102, '1987-02-05 00:00:00', 23940);
INSERT INTO `ord` (`ordid`, `orderdate`, `commplan`, `custid`, `shipdate`, `total`) VALUES (615, '1987-02-01 00:00:00', NULL, 107, '1987-02-06 00:00:00', 710);
INSERT INTO `ord` (`ordid`, `orderdate`, `commplan`, `custid`, `shipdate`, `total`) VALUES (616, '1987-02-03 00:00:00', NULL, 103, '1987-02-10 00:00:00', 764);
INSERT INTO `ord` (`ordid`, `orderdate`, `commplan`, `custid`, `shipdate`, `total`) VALUES (617, '1987-02-05 00:00:00', NULL, 105, '1987-03-03 00:00:00', 46370);
INSERT INTO `ord` (`ordid`, `orderdate`, `commplan`, `custid`, `shipdate`, `total`) VALUES (618, '1987-02-15 00:00:00', 'A', 102, '1987-03-06 00:00:00', 3510.5);
INSERT INTO `ord` (`ordid`, `orderdate`, `commplan`, `custid`, `shipdate`, `total`) VALUES (619, '1987-02-22 00:00:00', NULL, 104, '1987-02-04 00:00:00', 1260);
INSERT INTO `ord` (`ordid`, `orderdate`, `commplan`, `custid`, `shipdate`, `total`) VALUES (620, '1987-03-12 00:00:00', NULL, 100, '1987-03-12 00:00:00', 4450);
INSERT INTO `ord` (`ordid`, `orderdate`, `commplan`, `custid`, `shipdate`, `total`) VALUES (621, '1987-03-15 00:00:00', 'A', 100, '1987-01-01 00:00:00', 730);
# 21 records

#
# Table structure for table 'product'
#

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `prodid` INTEGER NOT NULL DEFAULT 0, 
  `descrip` VARCHAR(50), 
  PRIMARY KEY (`prodid`), 
  INDEX (`prodid`)
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'product'
#

INSERT INTO `product` (`prodid`, `descrip`) VALUES (100860, 'ACE TENNIS RACKET I');
INSERT INTO `product` (`prodid`, `descrip`) VALUES (100861, 'ACE TENNIS RACKET II');
INSERT INTO `product` (`prodid`, `descrip`) VALUES (100870, 'ACE TENNIS BALLS-3 PACK');
INSERT INTO `product` (`prodid`, `descrip`) VALUES (100871, 'ACE TENNIS BALLS-6 PACK');
INSERT INTO `product` (`prodid`, `descrip`) VALUES (100890, 'ACE TENNIS NET');
INSERT INTO `product` (`prodid`, `descrip`) VALUES (101860, 'SP TENNIS RACKET');
INSERT INTO `product` (`prodid`, `descrip`) VALUES (101863, 'SP JUNIOR RACKET');
INSERT INTO `product` (`prodid`, `descrip`) VALUES (102130, 'RH: \"GUIDE TO TENNIS\"');
INSERT INTO `product` (`prodid`, `descrip`) VALUES (200376, 'SB ENERGY BAR-6 PACK');
INSERT INTO `product` (`prodid`, `descrip`) VALUES (200380, 'SB VITA SNACK-6 PACK');
# 10 records

