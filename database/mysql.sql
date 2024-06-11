/*If categories table exists, delete it*/
DROP TABLE IF EXISTS `categories`;

/*Create categories table*/
CREATE TABLE `categories` (
 `categoryCode` int(10) NOT NULL,
 `categoryName` varchar(50) NOT NULL,
 `categoryDescription` varchar(120) NOT NULL,
 PRIMARY KEY (`categoryCode`)
);

/*If products table exists, delete it*/
DROP TABLE IF EXISTS `products`;

/*Create products table*/
CREATE TABLE `products`(
 `productCode` int(11) NOT NULL,
 `productName` varchar(50) NOT NULL,
 `productPrice` int(8) NOT NULL,
 `categoryCode` int(10) NOT NULL,
 PRIMARY KEY (`productCode`),
 KEY `categoryCode` (`categoryCode`),
 CONSTRAINT `products_fk` FOREIGN KEY (`categoryCode`) REFERENCES `categories` (`categoryCode`)
);

/*Alter the products table and add productDescription column*/
ALTER TABLE products
ADD productDescription varchar(120) NOT NULL; 