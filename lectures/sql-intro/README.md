# Intro to SQL

## What is SQL? 
Structured Query Language
It allows us to communicate with databases
It allows us to persist data so we don't have to start from scratch each time we start the app
We can create, read, update, destroy records (CRUD)

## What is SQLite3?
A relational database that provides us with a console for creating new databases and interacting with them

## Practice SQL operations

1. Open the SQLite3 command prompt or Client
2. Create a `library` database

### Challenges

1. Create a books table with an autoincrementing ID that's a primary key, a title field of type text, and a pages field of type integer. Add a few books. Write the SQL to return all of the rows in the books table.

```SQL
CREATE TABLE books (
	id INTEGER PRIMARY KEY,
	title TEXT,
	pages INTEGER
	);
INSERT INTO books (title, pages) VALUES ("Tao Te Ching", 160);
INSERT INTO books (title, pages) VALUES ("Hua Hu Ching", 110), ("Tipping Point", 445);
```

2. Write the SQL to select a book with a particular name.

```SQL
SELECT * FROM books WHERE title = "Tao Te Ching";
SELECT * FROM books WHERE title LIKE "%Ching%"; /* titles that include "Ching"
```

3. Write the SQL to create a table named authors, with an autoincrementing ID that's a primary key, a name field of type text, and a popularity field of type integer.

```sql
	CREATE TABLE authors (
		id INTEGER PRIMARY KEY,
		name TEXT,
		popularity INTEGER
		);
```

4. Write the SQL to alter the books table to have an author_id column type integer.

```sql
	ALTER TABLE books ADD COLUMN author_id INTEGER;
```

5. Write the SQL to add authors to the authors table and edit the books table to associate them with their books.

```sql
	
	INSERT INTO authors (name, popularity) VALUES ("Brian Walker", 2), ("Malcolm Gladwell", 5);
	
	UPDATE books SET author_id = 1 WHERE title LIKE "%Ching";
	UPDATE books SET author_id = 2 WHERE title = "Tipping Point";
```

6. Write the SQL to return books for a particular author.

```sql
	SELECT * FROM books WHERE author_id = 1;
```

7. Write the SQL to display the book title and pages next to its author's name and popularity

```sql
	SELECT title, pages, name, popularity
	FROM books
	JOIN authors
	ON books.author_id = authors.id;
```

8. Alter the previous SQL slightly to display more descriptive column names

```sql
	SELECT title, pages, name, popularity AS author_popularity
	FROM books
	JOIN authors
	ON books.author_id = authors.id;
```

9. Write the SQL to display the author name next to the page total across all the author's books

```sql
	SELECT name, SUM(pages)
	FROM books
	JOIN authors
	ON books.author_id = authors.id
	GROUP BY name;
```

10. Alter the previous SQL to order the results by highest to lowest number of pages

```sql
	SELECT name, SUM(pages)
	FROM books
	JOIN authors
	ON books.author_id = authors.id
	GROUP BY name
	ORDER BY SUM(pages) DESC;
```