CREATE DATABASE metro_mobiles;
USE metro_mobiles;
CREATE TABLE phones (
phone_id INT PRIMARY KEY,
brand VARCHAR(30) NOT NULL,
model VARCHAR(50) NOT NULL,
price DECIMAL(10,2) NOT NULL,
stock INT DEFAULT 10
);
INSERT INTO phones (phone_id, brand, model, price, stock)
VALUES
(1, 'Samsung', 'Galaxy M14', 13999.00, 25),
(2, 'Redmi', 'Note 12', 15999.00, 18),
(4, 'Vivo', 'Y28', 12499.00, 12),
(5, 'Oppo', 'A58', 14999.00, 8),
(6, 'Apple', 'iPhone 13', 47999.00, 5);
INSERT INTO phones (phone_id, brand, model, price)
VALUES (3, 'Realme', 'Narzo 60', 17999.00);
CREATE TABLE old_stock (
item_id INT,
item_name VARCHAR(30)
);
INSERT INTO old_stock
VALUES (1, 'Phone Case'), (2, 'Screen Guard'), (3, 'Charger');
CREATE TABLE temp_list (
item_id INT,
item_name VARCHAR(30)
);
INSERT INTO temp_list
VALUES (1, 'Earphones'), (2, 'Power Bank'), (3, 'Data Cable');

-- Show everything stored in the phones table.
select * from phones;

-- The price of the Redmi Note 12 is now 14999.00.
update phones set price = 14999.00 where brand ='redmi';

-- The stock of the Vivo Y28 is now 20.'
update phones set stock = 20  where brand ='vivo';

-- The Oppo A58 has a new price of 13999.00 and new stock of 15. Change both in one command.
update phones set price = 13999.00 , stock = 15 where brand = 'oppo';

-- Increase the price of every phone by 500.
update phones set price = price+500;

-- The Vivo Y28 has been discontinued. Remove it from the table and show the table
delete from phones where brand='vivo';

show tables;

-- Remove all rows from old_stock in a way that is fast and keeps the table. Show the table and check its structure to confirm it still exists.
truncate old_stock;
select * from old_stock;

-- Remove all rows from temp_list in a way that would also let you choose which rows to remove. Show the table and check its structure.
truncate temp_list;
select * from temp_list;

-- Remove the temp_list table completely. Then try to show its data and write down the erroryou get.
drop table temp_list ; 
select * from temp_list;

-- delete - is used for delete specific from a table 
-- truncate - is used for delete all data from table except keeping the structure of data 
-- drop - is used when all data is removed like it doesnt exist 
