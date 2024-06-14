-- CREATE book TABLE-------------------------------------

CREATE TABLE books(
	book_id SERIAL PRIMARY KEY,
	title VARCHAR(255) NOT NULL,
	price VARCHAR(20) NOT NULL,
	availability VARCHAR(20) NOT NULL,
	rating VARCHAR(20) NOT NULL,
	link VARCHAR(1000) NOT NULL
);

----------------------------------------------------------------
SELECT * FROM books
--drop table books

-- CREATE book_detail TABLE-------------------------------------

CREATE TABLE book_details(
	book_detail_id SERIAL PRIMARY KEY,
	title VARCHAR(255) NOT NULL,
	author VARCHAR(255) NOT NULL,
	publisher VARCHAR(1000) ,
	publish_date VARCHAR(255) NOT NULL,
	description VARCHAR(1500) NOT NULL,
	isbn_13 VARCHAR(50) ,
	FOREIGN KEY (book_detail_id) REFERENCES books(book_id)
);
----------------------------------------------------------------
SELECT * FROM book_details
--drop table book_details

------------------------------------------------------------------

SELECT
    b.book_id,
    b.title AS book_title,
    b.price,
    b.availability,
    b.rating,
    b.link,
    bd.book_detail_id,
    bd.author,
    bd.publisher,
    bd.publish_date,
    bd.description,
    bd.isbn_13
FROM
    books b
INNER JOIN
    book_details bd
ON
    b.book_id = bd.book_detail_id;
