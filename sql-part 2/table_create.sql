CREATE TABLE IF NOT EXISTS 'products' ('idproduct' INT NOT NULL,
'p_name' VARCHAR(45) NULL,
  PRIMARY KEY ('idproduct'));

CREATE TABLE IF NOT EXISTS 'categories' (
  'idcategory' INT NOT NULL,
'c_name' VARCHAR(45) NULL,
  PRIMARY KEY ('idcategory'));

CREATE TABLE IF NOT EXISTS 'product_has_category'(
  'product_id' INT NOT NULL,
  'category_id' INT NOT NULL,
  PRIMARY KEY ('product_id',  'category_id'));

INSERT INTO 'products' ('idproduct', 'p_name') VALUES (1, 'prod1'), (2, 'prod2'),
(3, 'prod3'), (4, 'prod4'), (5, 'prod5'), (6, 'prod6');

INSERT INTO 'categories' ('idcategory', 'c_name') VALUES (1, 'cat1'), (2, 'cat2'),
(3, 'cat3'), (4, 'cat4'), (5, 'cat5'), (6, 'cat6');

INSERT INTO 'product_has_category' ('product_id', 'category_id') VALUES (1, 1), (1, 2), (1, 3), (3, 1), (2, 2), (3, 3), (4, 1), (5, 1);
                        