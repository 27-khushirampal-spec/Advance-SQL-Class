-- The Case of ITC--
-- Create the data table for distributors to supply products across different cities and regions (ID,Name,City,Region,Phone) --
Create table distributors (
  disc_id INTEGER primary key,
  name TEXT not NULL,
  city TEXT,
  region TEXT,
  phone TEXT
);  

-- create a table naming products with the cols, product_id,product_name,brand,category,price,stock  condition - id should be integer unique, name text not null unique, brand text, category text not null, price real and greater than 0 and stock whole if missing then 0 
create table products(
  product_id INTEGER PRIMARY KEY,
  product_name TEXT NOT NULL UNIQUE,
  brand TEXT,
  category TEXT NOT	NULL,
  price REAL CHECK (price>0),
  stock INTEGER DEFAULT 0
);

-- create a table named sales containg sales_id unique, product_id, distributor_id, sale date, quantity integer>0--
CREATE TABLE sales(
  sales_id INTEGER PRIMARY KEY,
  product_id INTEGER, 
  distributor_id INTEGER,
  sale_date TEXT,
  quantity INTEGER CHECK(quantity>0),
  amount REAL,
  FOREIGN KEY (product_id) REFERENCES products(product_id)
  FOREIGN KEY (distributor_id) REFERENCES distributors(disc_id)
);

-- checking the cols of all the 3 tables --
PRAGMA table_info(distributors);
PRAGMA table_info(products);
PRAGMA table_info(sales);

-- inserting data into tables -- 
INSERT INTO products VALUES(1,'Aashirvaad Aata 5kg', 'Aashirvaad' , 'Staples',265 ,120);
INSERT INTO products VALUES(2,'Aashirvaad Salt', 'Aashirvaad' , 'Staples',20 ,300);
INSERT INTO products VALUES(3,'Sunfeast Dark Fantasy', 'Sunfeast' , 'Biscuits',40 ,500);
INSERT INTO products VALUES(4,'Sunfeast Marle Lite' , 'Sunfeast' , 'Staples',265 ,120);

