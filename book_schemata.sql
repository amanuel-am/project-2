-- CREATE book TABLE-------------------------------------

CREATE TABLE books(
	book_id SERIAL PRIMARY KEY,
	title VARCHAR(100) NOT NULL,
	price VARCHAR(10) NOT NULL,
	availability VARCHAR(10) NOT NULL,
	rating VARCHAR(10) NOT NULL,
	link VARCHAR(1000) NOT NULL
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

----------------------------------------------------------------
SELECT * FROM books


-- CREATE book_detail TABLE-------------------------------------

CREATE TABLE book_details(
	book_detail_id SERIAL PRIMARY KEY,
	title VARCHAR(100) NOT NULL,
	author VARCHAR(50) NOT NULL,
	publisher VARCHAR(50) NOT NULL,
	publish_date Date NOT NULL,
	description VARCHAR(1000) NOT NULL,
	isbn-13 INT(100) NOT NULL,
	FOREIGN KEY (book_detail_id) REFERENCES books(book_id),
);
----------------------------------------------------------------
SELECT * FROM book_details

