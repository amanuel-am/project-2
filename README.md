# project-2

# books.ipynb
the project fetches data from two sources
    1 Web scraping from http://books.toscrape.com
    2 API scraping from google books https://www.googleapis.com/books/v1/volumes

the web scraping fetches data of 500 books
        Title           object
        Price           object
        Availability    object
        Rating          object
        Link            object
        dtype: object

the API scraping fetches details of the corresponding 500 books (Takes approximately 17 mins, change )
change the page range to smaller integer to run it faster and it will scrape few books 
        # Loop through 25 pages
        for page in range(1, 26):

        Title             object
        Authors           object
        Publisher         object
        Published Date    object
        Description       object
        ISBN-13           object
        dtype: object

books.ipynb gather the data from two different sources and store the data in CSV format
        1 books_toscrape.csv
        2 books_detail.csv

# Transform and load.ipynb

read the above two csv data
clean the data
fill empty values
transform the data
save new cleaned df
        1 cleaned_books.csv
        2 cleaned_books_detail.csv

# book_schemata.sql

create sql tables
import to corresponding tables   1 cleaned_books.csv
                                 2 cleaned_books_detail.csv
relationship between tables
2nf
joins

# ERD



