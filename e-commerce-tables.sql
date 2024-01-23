-- create users table
create table users (
	user_id int primary key unique generated always as identity,
	username varchar(255) unique,
	email varchar(255) unique,
	password varchar(255),
	created_at timestamp with time zone  default current_timestamp
)

--create products table
create table products (
	product_id int primary key unique generated always as identity,
	name varchar(255),
	description text not null,
	price numeric(10,2),
	created_at timestamp with time zone default current_timestamp unique
)

--create categories table
create table categories (
	category_id int primary key generated always as identity unique,
	name varchar(255) unique,
	created_at timestamp with time zone default current_timestamp unique
	
)

--create product_categories table
create table product_categories (
product_category_id int unique primary key generated always as identity,
product_id int references products(product_id) unique,
	category_id int unique references categories(category_id )
)