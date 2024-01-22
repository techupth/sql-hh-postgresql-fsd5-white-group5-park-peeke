-- Start writing code here
CREATE TABLE users (
	user_id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	username VARCHAR ( 255 ) UNIQUE NOT NULL,
	email VARCHAR ( 255 ) UNIQUE NOT NULL,
	password VARCHAR ( 255 ) NOT NUll ,
	created_at TIMESTAMPTZ NOT NULL,
);

CREATE TABLE products (
	product_id INT PRIMARY KEY GENERATED ALWAYS IDENTITY,
	name VARCHAR ( 255 ) NOT NULL,
	description TEXT,
	price NUMERIC (10,2) NOT NULL,
	created_at TIMESTAMPTZ NOT NULL
);

CREATE TABLE categories(
	category_id INT PRIMARY KEY GENERATED ALWAYS IDENTITY,
	name VARCHAR ( 255 ) UNIQUE NOT NULL,
	created_at TIMESTAMPTZ NOT NULL
);

CREATE TABLE product_categories (
	product_category INT PRIMARY KEY GENERATED ALWAYS IDENTITY,
	product_id INT REFERENCES products(product_id) ON DELETE CASCADE,
	category_id INT REFERENCES categories(category_id) ON DELETE CASCADE
);