DROP DATABASE IF EXISTS adidas;

CREATE DATABASE adidas;

USE adidas;

CREATE TABLE shoes (
  id INT NOT NULL AUTO_INCREMENT UNIQUE,
  SKU VARCHAR(6) NOT NULL UNIQUE,
  PRIMARY KEY(id)
);

CREATE TABLE products (
  id INT NOT NULL AUTO_INCREMENT UNIQUE,
  SKU VARCHAR(6) NOT NULL UNIQUE,
  productName VARCHAR(40),
  productDetail VARCHAR(1000),
  imagePath VARCHAR(254),
  regPrice DECIMAL(10,2),
  salePrice DECIMAL(10,2),
  productType VARCHAR(20),
  PRIMARY KEY(id)
);

CREATE TABLE products_by_shoe (
  shoeSKU INT,
  prodSKU INT,
  FOREIGN KEY(shoeSKU) REFERENCES shoes(SKU)
  FOREIGN KEY(prodSKU) REFERENCES products(SKU)
  PRIMARY KEY(shoeSKU, prodSKU)
);

CREATE TABLE sizes (
  size VARCHAR(4) UNIQUE,
  PRIMARY KEY(size)
);

CREATE TABLE products)by_size (
  size VARCHAR(4),
  prodSKU INT,
  FOREIGN KEY(size) REFERENCES sizes (size)
  FOREIGN KEY(prodSKU) REFERENCES products(SKU)
);

/*     mysql -u root < schema.sql */

INSERT INTO shoes (SKU) VALUES ('SKU001'),('SKU002'),('SKU003'),('SKU004'),('SKU005'),('SKU006'),('SKU007'),('SKU008'),('SKU009'),('SKU010'),('SKU011'),('SKU012'),('SKU013'),('SKU014'),('SKU015'),('SKU016'),('SKU017'),('SKU018'),('SKU019'),('SKU020'),('SKU021'),('SKU022'),('SKU023'),('SKU024'),('SKU025'),('SKU026'),('SKU027'),('SKU028'),('SKU029'),('SKU030'),('SKU031'),('SKU032'),('SKU033'),('SKU034'),('SKU035'),('SKU036'),('SKU037'),('SKU038'),('SKU039'),('SKU040'),('SKU041'),('SKU042'),('SKU043'),('SKU044'),('SKU045'),('SKU046'),('SKU047'),('SKU048'),('SKU049'),('SKU050'),('SKU051'),('SKU052'),('SKU053'),('SKU054'),('SKU055'),('SKU056'),('SKU057'),('SKU058'),('SKU059'),('SKU060'),('SKU061'),('SKU062'),('SKU063'),('SKU064'),('SKU065'),('SKU066'),('SKU067'),('SKU068'),('SKU069'),('SKU070'),('SKU071'),('SKU072'),('SKU073'),('SKU074'),('SKU075'),('SKU076'),('SKU077'),('SKU078'),('SKU079'),('SKU080'),('SKU081'),('SKU082'),('SKU083'),('SKU084'),('SKU085'),('SKU086'),('SKU087'),('SKU088'),('SKU089'),('SKU090'),('SKU091'),('SKU092'),('SKU093'),('SKU094'),('SKU095'),('SKU096'),('SKU097'),('SKU098'),('SKU099'),('SKU100');

INSERT INTO products (SKU, productName, productDetail, imagePath, regPrice, salePrice, productType) VALUES ('SKU500', 'TRAINING 3-STRIPES TEE', 'PLACEHOLDER', 'PLACEHOLDER', 40.00, 28.00, 'Training');
INSERT INTO products (SKU, productName, productDetail, imagePath, regPrice, salePrice, productType) VALUES ('SKU501', 'UNLEASH CONFIDENCE TEE', 'PLACEHOLDER', 'PLACEHOLDER', 28.00, NULL, 'Training');
INSERT INTO products (SKU, productName, productDetail, imagePath, regPrice, salePrice, productType) VALUES ('SKU502', 'FLORAL GRAPHIC TEE', 'PLACEHOLDER', 'PLACEHOLDER', 25.00, NULL, 'Essentials');
INSERT INTO products (SKU, productName, productDetail, imagePath, regPrice, salePrice, productType) VALUES ('SKU503', '3-STRIPES TEE', 'PLACEHOLDER', 'PLACEHOLDER', 35.00, NULL, 'Originals');
INSERT INTO products (SKU, productName, productDetail, imagePath, regPrice, salePrice, productType) VALUES ('SKU504', 'BRILLIANT BASICS TEE', 'PLACEHOLDER', 'PLACEHOLDER', 23.00, 18.00, 'Training');
INSERT INTO products (SKU, productName, productDetail, imagePath, regPrice, salePrice, productType) VALUES ('SKU505', 'TRAINING 2-STRIPES TEE', 'PLACEHOLDER', 'PLACEHOLDER', 40.00, 28.00, 'Training');
INSERT INTO products (SKU, productName, productDetail, imagePath, regPrice, salePrice, productType) VALUES ('SKU506', 'LEASH CONFIDENCE TEE', 'PLACEHOLDER', 'PLACEHOLDER', 28.00, NULL, 'Training');
INSERT INTO products (SKU, productName, productDetail, imagePath, regPrice, salePrice, productType) VALUES ('SKU507', 'DOTS GRAPHIC TEE', 'PLACEHOLDER', 'PLACEHOLDER', 25.00, NULL, 'Essentials');
INSERT INTO products (SKU, productName, productDetail, imagePath, regPrice, salePrice, productType) VALUES ('SKU508', 'OTHER 3-STRIPES TEE', 'PLACEHOLDER', 'PLACEHOLDER', 35.00, NULL, 'Originals');
INSERT INTO products (SKU, productName, productDetail, imagePath, regPrice, salePrice, productType) VALUES ('SKU509', 'BASICS TEE', 'PLACEHOLDER', 'PLACEHOLDER', 23.00, 18.00, 'Training');

INSERT INTO products (SKU, productName, productDetail, imagePath, regPrice, salePrice, productType) VALUES ('SKU510', 'TRAINING1 3-STRIPES TEE', 'PLACEHOLDER', 'PLACEHOLDER', 40.00, 28.00, 'Training');
INSERT INTO products (SKU, productName, productDetail, imagePath, regPrice, salePrice, productType) VALUES ('SKU511', 'UNLEASH1 CONFIDENCE TEE', 'PLACEHOLDER', 'PLACEHOLDER', 28.00, NULL, 'Training');
INSERT INTO products (SKU, productName, productDetail, imagePath, regPrice, salePrice, productType) VALUES ('SKU512', 'FLORAL1 GRAPHIC TEE', 'PLACEHOLDER', 'PLACEHOLDER', 25.00, NULL, 'Essentials');
INSERT INTO products (SKU, productName, productDetail, imagePath, regPrice, salePrice, productType) VALUES ('SKU513', '3-STRIPES1 TEE', 'PLACEHOLDER', 'PLACEHOLDER', 35.00, NULL, 'Originals');
INSERT INTO products (SKU, productName, productDetail, imagePath, regPrice, salePrice, productType) VALUES ('SKU514', 'BRILLIANT1 BASICS TEE', 'PLACEHOLDER', 'PLACEHOLDER', 23.00, 18.00, 'Training');
INSERT INTO products (SKU, productName, productDetail, imagePath, regPrice, salePrice, productType) VALUES ('SKU515', 'TRAINING1 2-STRIPES TEE', 'PLACEHOLDER', 'PLACEHOLDER', 40.00, 28.00, 'Training');
INSERT INTO products (SKU, productName, productDetail, imagePath, regPrice, salePrice, productType) VALUES ('SKU516', 'LEASH1 CONFIDENCE TEE', 'PLACEHOLDER', 'PLACEHOLDER', 28.00, NULL, 'Training');
INSERT INTO products (SKU, productName, productDetail, imagePath, regPrice, salePrice, productType) VALUES ('SKU517', 'DOTS1 GRAPHIC TEE', 'PLACEHOLDER', 'PLACEHOLDER', 25.00, NULL, 'Essentials');
INSERT INTO products (SKU, productName, productDetail, imagePath, regPrice, salePrice, productType) VALUES ('SKU518', 'OTHER1 3-STRIPES TEE', 'PLACEHOLDER', 'PLACEHOLDER', 35.00, NULL, 'Originals');
INSERT INTO products (SKU, productName, productDetail, imagePath, regPrice, salePrice, productType) VALUES ('SKU519', 'BASICS1 TEE', 'PLACEHOLDER', 'PLACEHOLDER', 23.00, 18.00, 'Training');

INSERT INTO products (SKU, productName, productDetail, imagePath, regPrice, salePrice, productType) VALUES ('SKU520', 'TRAINING2 3-STRIPES TEE', 'PLACEHOLDER', 'PLACEHOLDER', 40.00, 28.00, 'Training');
INSERT INTO products (SKU, productName, productDetail, imagePath, regPrice, salePrice, productType) VALUES ('SKU521', 'UNLEASH2 CONFIDENCE TEE', 'PLACEHOLDER', 'PLACEHOLDER', 28.00, NULL, 'Training');
INSERT INTO products (SKU, productName, productDetail, imagePath, regPrice, salePrice, productType) VALUES ('SKU522', 'FLORAL2 GRAPHIC TEE', 'PLACEHOLDER', 'PLACEHOLDER', 25.00, NULL, 'Essentials');
INSERT INTO products (SKU, productName, productDetail, imagePath, regPrice, salePrice, productType) VALUES ('SKU523', '3-STRIPES2 TEE', 'PLACEHOLDER', 'PLACEHOLDER', 35.00, NULL, 'Originals');
INSERT INTO products (SKU, productName, productDetail, imagePath, regPrice, salePrice, productType) VALUES ('SKU524', 'BRILLIANT2 BASICS TEE', 'PLACEHOLDER', 'PLACEHOLDER', 23.00, 18.00, 'Training');
INSERT INTO products (SKU, productName, productDetail, imagePath, regPrice, salePrice, productType) VALUES ('SKU525', 'TRAINING2 2-STRIPES TEE', 'PLACEHOLDER', 'PLACEHOLDER', 40.00, 28.00, 'Training');
INSERT INTO products (SKU, productName, productDetail, imagePath, regPrice, salePrice, productType) VALUES ('SKU526', 'LEASH2 CONFIDENCE TEE', 'PLACEHOLDER', 'PLACEHOLDER', 28.00, NULL, 'Training');
INSERT INTO products (SKU, productName, productDetail, imagePath, regPrice, salePrice, productType) VALUES ('SKU527', 'DOTS2 GRAPHIC TEE', 'PLACEHOLDER', 'PLACEHOLDER', 25.00, NULL, 'Essentials');
INSERT INTO products (SKU, productName, productDetail, imagePath, regPrice, salePrice, productType) VALUES ('SKU528', 'OTHER2 3-STRIPES TEE', 'PLACEHOLDER', 'PLACEHOLDER', 35.00, NULL, 'Originals');
INSERT INTO products (SKU, productName, productDetail, imagePath, regPrice, salePrice, productType) VALUES ('SKU529', 'BASICS2 TEE', 'PLACEHOLDER', 'PLACEHOLDER', 23.00, 18.00, 'Training');

INSERT INTO products (SKU, productName, productDetail, imagePath, regPrice, salePrice, productType) VALUES ('SKU530', 'TRAINING2 3-STRIPES TEE', 'PLACEHOLDER', 'PLACEHOLDER', 40.00, 28.00, 'Training');
INSERT INTO products (SKU, productName, productDetail, imagePath, regPrice, salePrice, productType) VALUES ('SKU531', 'UNLEASH2 CONFIDENCE TEE', 'PLACEHOLDER', 'PLACEHOLDER', 28.00, NULL, 'Training');
INSERT INTO products (SKU, productName, productDetail, imagePath, regPrice, salePrice, productType) VALUES ('SKU532', 'FLORAL2 GRAPHIC TEE', 'PLACEHOLDER', 'PLACEHOLDER', 25.00, NULL, 'Essentials');
INSERT INTO products (SKU, productName, productDetail, imagePath, regPrice, salePrice, productType) VALUES ('SKU533', '3-STRIPES2 TEE', 'PLACEHOLDER', 'PLACEHOLDER', 35.00, NULL, 'Originals');
INSERT INTO products (SKU, productName, productDetail, imagePath, regPrice, salePrice, productType) VALUES ('SKU534', 'BRILLIANT2 BASICS TEE', 'PLACEHOLDER', 'PLACEHOLDER', 23.00, 18.00, 'Training');
INSERT INTO products (SKU, productName, productDetail, imagePath, regPrice, salePrice, productType) VALUES ('SKU535', 'TRAINING2 2-STRIPES TEE', 'PLACEHOLDER', 'PLACEHOLDER', 40.00, 28.00, 'Training');
INSERT INTO products (SKU, productName, productDetail, imagePath, regPrice, salePrice, productType) VALUES ('SKU536', 'LEASH2 CONFIDENCE TEE', 'PLACEHOLDER', 'PLACEHOLDER', 28.00, NULL, 'Training');
INSERT INTO products (SKU, productName, productDetail, imagePath, regPrice, salePrice, productType) VALUES ('SKU537', 'DOTS2 GRAPHIC TEE', 'PLACEHOLDER', 'PLACEHOLDER', 25.00, NULL, 'Essentials');
INSERT INTO products (SKU, productName, productDetail, imagePath, regPrice, salePrice, productType) VALUES ('SKU538', 'OTHER2 3-STRIPES TEE', 'PLACEHOLDER', 'PLACEHOLDER', 35.00, NULL, 'Originals');
INSERT INTO products (SKU, productName, productDetail, imagePath, regPrice, salePrice, productType) VALUES ('SKU539', 'BASICS2 TEE', 'PLACEHOLDER', 'PLACEHOLDER', 23.00, 18.00, 'Training');

INSERT INTO products (SKU, productName, productDetail, imagePath, regPrice, salePrice, productType) VALUES ('SKU540', 'TRAINING3 3-STRIPES TEE', 'PLACEHOLDER', 'PLACEHOLDER', 40.00, 28.00, 'Training');
INSERT INTO products (SKU, productName, productDetail, imagePath, regPrice, salePrice, productType) VALUES ('SKU541', 'UNLEASH3 CONFIDENCE TEE', 'PLACEHOLDER', 'PLACEHOLDER', 28.00, NULL, 'Training');
INSERT INTO products (SKU, productName, productDetail, imagePath, regPrice, salePrice, productType) VALUES ('SKU542', 'FLORAL3 GRAPHIC TEE', 'PLACEHOLDER', 'PLACEHOLDER', 25.00, NULL, 'Essentials');
INSERT INTO products (SKU, productName, productDetail, imagePath, regPrice, salePrice, productType) VALUES ('SKU543', '3-STRIPES3 TEE', 'PLACEHOLDER', 'PLACEHOLDER', 35.00, NULL, 'Originals');
INSERT INTO products (SKU, productName, productDetail, imagePath, regPrice, salePrice, productType) VALUES ('SKU544', 'BRILLIANT3 BASICS TEE', 'PLACEHOLDER', 'PLACEHOLDER', 23.00, 18.00, 'Training');
INSERT INTO products (SKU, productName, productDetail, imagePath, regPrice, salePrice, productType) VALUES ('SKU545', 'TRAINING3 2-STRIPES TEE', 'PLACEHOLDER', 'PLACEHOLDER', 40.00, 28.00, 'Training');
INSERT INTO products (SKU, productName, productDetail, imagePath, regPrice, salePrice, productType) VALUES ('SKU546', 'LEASH3 CONFIDENCE TEE', 'PLACEHOLDER', 'PLACEHOLDER', 28.00, NULL, 'Training');
INSERT INTO products (SKU, productName, productDetail, imagePath, regPrice, salePrice, productType) VALUES ('SKU547', 'DOTS3 GRAPHIC TEE', 'PLACEHOLDER', 'PLACEHOLDER', 25.00, NULL, 'Essentials');
INSERT INTO products (SKU, productName, productDetail, imagePath, regPrice, salePrice, productType) VALUES ('SKU548', 'OTHER3 3-STRIPES TEE', 'PLACEHOLDER', 'PLACEHOLDER', 35.00, NULL, 'Originals');
INSERT INTO products (SKU, productName, productDetail, imagePath, regPrice, salePrice, productType) VALUES ('SKU549', 'BASICS3 TEE', 'PLACEHOLDER', 'PLACEHOLDER', 23.00, 18.00, 'Training');
