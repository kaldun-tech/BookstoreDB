-- Book: Stores information about books in the store such as title, author, ISBN, and price
CREATE TABLE book (
  book_id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(255) NOT NULL,
  author VARCHAR(255) NOT NULL,
  isbn VARCHAR(13) NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (book_id)
);

-- Author: Stores information about authors such as name and bio
CREATE TABLE author (
  author_id INT NOT NULL AUTO_INCREMENT,
  author_name VARCHAR(255) NOT NULL,
  bio TEXT,
  PRIMARY KEY (author_id)
);

-- Genre: Stores information about the genres of books such as name and description
CREATE TABLE genre (
  genre_id INT NOT NULL AUTO_INCREMENT,
  genre_name VARCHAR(255) NOT NULL,
  description TEXT,
  PRIMARY KEY (genre_id)
);

-- Book Genre: Stores relationship between books and genres, a book can belong to multiple genres
CREATE TABLE book_genre (
  book_id INT NOT NULL,
  genre_id INT NOT NULL,
  PRIMARY KEY (book_id, genre_id)
);

-- Customer: Stores information about customers such as name, address, and phone number
CREATE TABLE customer (
  customer_id INT NOT NULL AUTO_INCREMENT,
  customer_name VARCHAR(255) NOT NULL,
  address VARCHAR(255) NOT NULL,
  phone_number VARCHAR(10) NOT NULL,
  PRIMARY KEY (customer_id)
);

-- Order: Stores information about orders placed by customers such as date, total, and shipping address
CREATE TABLE order (
  order_id INT NOT NULL AUTO_INCREMENT,
  customer_id INT NOT NULL,
  order_date DATETIME NOT NULL,
  order_total DECIMAL(10,2) NOT NULL,
  shipping_address VARCHAR(255) NOT NULL,
  PRIMARY KEY (order_id)
);

-- Order_Item: Stores relationshipo between orders and items. An order can have multiple items.
CREATE TABLE order_item (
  order_id INT NOT NULL,
  book_id INT NOT NULL,
  quantity INT NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (order_id, book_id)
);
