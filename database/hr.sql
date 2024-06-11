DROP TABLE IF EXISTS `employees`;

CREATE TABLE `employees` (
 `employeeNumber` int(11) NOT NULL,
 `lastName` varchar(50) NOT NULL,
 `firstName` varchar(50) NOT NULL,
 `departmentCode` varchar(10) NOT NULL,
 `jobTitle` varchar(50) NOT NULL,
 `salary` int(8) NOT NULL,
 PRIMARY KEY (`employeeNumber`),
 KEY `departmentCode` (`departmentCode`),
 CONSTRAINT `employees_ibfk_2` FOREIGN KEY (`departmentCode`) REFERENCES `departments` (`departmentCode`)
);

/*Delete departments table if it exists and then recreate it*/

DROP TABLE IF EXISTS `departments`;

CREATE TABLE `departments`(
 `departmentCode` varchar(10) NOT NULL,
 `city` varchar(50) NOT NULL,
 `departmentName` varchar(50) NOT NULL,
 PRIMARY KEY (`departmentCode`)
); 

/*Delete interviews table if it exists and then recreate it*/
/*NOTE: The departments table must be created before creating the interviews table*/


DROP TABLE IF EXISTS `interviews`;

CREATE TABLE `interviews` (
 `departmentCode` varchar(10) NOT NULL,
 `role` varchar(50) NOT NULL,
 `status` varchar(50) NOT NULL,
 CONSTRAINT `interviews_ibfk_2` FOREIGN KEY (`departmentCode`) REFERENCES `departments` (`departmentCode`)
); 


ALTER TABLE `employees`
ADD `email` varchar(100) NOT NULL;

insert into departments(departmentCode,city,departmentName) values
('1','London','Technology'),
('2','Oxford','Transport'),
('3','Oxford','Marketing'),
('4','London','Executive'),
('5','Oxford','Sales')

/*Insert data into employees table*/

insert into employees(employeeNumber,lastName,firstName,email,departmentCode,jobTitle,salary) values
 (1002,'Adams','Joe','jadams@jcoaches.com','4','CEO',80000),
 (1056,'Peterson','Pamela','ppeterson@jcoaches.com','3','Head of Marketing',45000),
 (1076,'Jacobs','Ashton','ajacobs@jcoaches.com','1','Software Developer',46000),
 (1088,'Jessica','Bloom','jbloom@jcoaches.com','2','Head of Transport',55000); 