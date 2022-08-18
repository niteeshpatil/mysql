# select upper(reverse('why does my cat look at me with such hatred?'));

# select 
# REPLACE
# (
# concat('i',' ','like',' ','cats'),' ','_'
# );


# select REPLACE(title,' ','->') from books;


# select  author_lname as forwards,
# reverse(author_lname) as backwords
# from books;


# select  upper(concat(author_fname,' ',author_lname)) as 'full name caps'
# from books;

# select  upper(title) as title, char_length(title) as lenght
# from books;

# select upper(concat(title,' was released in ',released_year)) as blurb from books;

# select 
# concat(substring(title,1,10), '...') as 'short title',
# concat(author_lname,author_fname) as author,
# concat(stock_quantity,' in stock') as quantity
# from books;

# select DISTINCT author_lname,author_fname from books;

# select author_lname from books ORDER by author_lname;
# select title from books ORDER by title DESC;

# select title,released_year from books ORDER by released_year DESC LIMIT 4,10;

# select title,author_fname from books WHERE title like '%\_%';
# select author_fname,author_lname,title from books GROUP BY author_fname,author_lname;
#select released_year,COUNT(*) from books GROUP BY released_year;
#select min(released_year) from books;
#select title,min(pages) from books;
#select * from books where pages =(select min(pages) from books);
#select title,pages from books ORDER by pages ASC LIMIT 1;
#select title,pages from books ORDER by pages DESC LIMIT 1;
#select author_fname,author_lname,min(released_year) from books GROUP BY author_fname,author_lname;
#select author_fname,author_lname,min(pages) from books GROUP by author_fname,author_lname;
#select sum(pages) from books;
#select sum(released_year) from books;
#select author_fname,author_lname,sum(pages) from books GROUP by author_fname,author_lname;

#SELECT avg(released_year) from books;
#select avg(pages) from books;
#select released_year,avg(stock_quantity)from books GROUP by released_year;
#select author_fname,author_lname,avg(pages) from books GROUP by author_fname,author_lname;
#select COUNT(*) as num_books from books;
# select released_year,COUNT(*) from books GROUP by released_year;
# select sum(stock_quantity) from books;
# select author_fname,author_lname,avg(released_year) from books GROUP by author_fname,author_lname;
# select author_fname,author_lname,pages from books ORDER by pages DESC LIMIT 1;
# select released_year,COUNT(*),avg(pages) from books GROUP by released_year;
#CREATE DATABASE test_datatype;
#CREATE TABLE dogs(name char(5),breed VARCHAR(10));
#INSERT into dogs(name,breed) VALUES ('ksdaflkjldksjaflkjdlsj','sadjljkfjlkjadslkfjld');
#select * from dogs;
#CREATE TABLE items(price DECIMAL(5,2));
# INSERT INTO items(price) VALUES(8.34252435243);
# select* from items;
# CREATE TABLE thingies (price FLOAT);
# INSERT INTO thingies(price) VALUES (88.45);
# SELECT * FROM thingies;
# INSERT INTO thingies(price) VALUES (8877.45);
# SELECT * FROM thingies;
# INSERT INTO thingies(price) VALUES (8877665544.45);
# SELECT * FROM thingies;
#select now();
#CREATE TABLE pepople(name VARCHAR(100),bithdate DATE,bithtime TIME,bithdt DATETIME);
# INSERT INTO pepople (name, bithdate, bithtime, bithdt) VALUES('Padma', '1983-11-11', '10:07:35', '1983-11-11 10:07:35');
# CREATE TABLE people (name VARCHAR(100), birthdate DATE, birthtime TIME, birthdt DATETIME);
# INSERT INTO people (name, birthdate, birthtime, birthdt)
# VALUES('Padma', '1983-11-11', '10:07:35', '1983-11-11 10:07:35');
# INSERT INTO people (name, birthdate, birthtime, birthdt)
# VALUES('hi', '1303-04-23', '02:00:42', '1943-12-25 04:10:42');
# SELECT * FROM people;
# select curdate();
# select curtime();
# select now();
# VALUES('kjlsfa',curdate(),curtime(),now());
# SELECT * FROM people;

# SELECT name, DAY(birthdate) FROM people;
# SELECT name, birthdate, DAY(birthdate) FROM people;
# SELECT name, birthdate, DAYNAME(birthdate) FROM people;
# SELECT name, birthdate, DAYOFYEAR(birthdate) FROM people;
# SELECT CONCAT(MONTHNAME(birthdate), ' ', DAY(birthdate), ' ', YEAR(birthdate)) as dateofbirth FROM people;
# SELECT DATE_FORMAT(birthdt, 'Was born on a %W') FROM people;
# SELECT DATE_FORMAT(birthdt, '%m/%d/%Y') FROM people;
#SELECT DATE_FORMAT(birthdt, '%m/%d/%Y at %h:%i') FROM people;
# SELECT DATEDIFF(NOW(), birthdate) FROM people;
# SELECT birthdt, DATE_ADD(birthdt, INTERVAL 1 MONTH) FROM people;
# SELECT birthdt, birthdt + INTERVAL 1 MONTH FROM people;

# CREATE TABLE comments (
# content VARCHAR(100),
# created_at TIMESTAMP DEFAULT NOW()
# );


# INSERT INTO comments (content) VALUES('I found this offensive');
 
# INSERT INTO comments (content) VALUES('Ifasfsadfsadfsad');

# SELECT * FROM comments ORDER BY created_at DESC;

# CREATE TABLE comments2 (
# content VARCHAR(100),
# changed_at TIMESTAMP DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP
# );
#  INSERT INTO comments2 (content) VALUES('dasdasdasd');
 
# INSERT INTO comments2 (content) VALUES('lololololo');
 
# INSERT INTO comments2 (content) VALUES('I LIKE CATS AND DOGS');


# UPDATE comments2 SET content='THIS IS NOT GIBBERISH' WHERE content='dasdasdasd';
#SELECT * FROM comments2;
# SELECT title FROM books WHERE title LIKE 'W';
# SELECT title FROM books WHERE title LIKE 'W%';
# SELECT title FROM books WHERE title NOT LIKE 'W%'
# SELECT title FROM books WHERE title LIKE '%W%';
# SELECT title, released_year FROM books WHERE released_year > 2000 ORDER BY released_year DESC;
# SELECT title, stock_quantity FROM books WHERE stock_quantity >= 100;
# select title,author_fname from books where author_lname='eggers' && released_year>2010;
# SELECT *FROM books WHERE author_lname='Eggers' AND released_year > 2010 AND title LIKE '%novel%';
# SELECT CAST('2017-05-02' AS DATETIME);
# SELECT title, author_lname FROM books
# WHERE author_lname IN ('Carver', 'Lahiri', 'Smith');
# select title,released_year,case when released_year>=2000 then 'modern lit' else '20th century lit' end as genre from books;
# select title,author_lname,case when COUNT(*)>1 then concat(count(*),' books') else concat(count(*),' book')end as count from books GROUP by author_fname,author_lname;
# CREATE DATABASE real_timedb;
# CREATE TABLE customers(
#     id INT AUTO_INCREMENT PRIMARY KEY,
#     first_name VARCHAR(100),
#     last_name VARCHAR(100),
#     email VARCHAR(100)
# );
# CREATE TABLE orders(
#     id INT AUTO_INCREMENT PRIMARY KEY,
#     order_date DATE,
#     amount DECIMAL(8,2),
#     customer_id INT,
#     FOREIGN KEY(customer_id) REFERENCES customers(id)
# );

# INSERT INTO customers (first_name, last_name, email) 
# VALUES ('Boy', 'George', 'george@gmail.com'),
#        ('George', 'Michael', 'gm@gmail.com'),
#        ('David', 'Bowie', 'david@gmail.com'),
#        ('Blue', 'Steele', 'blue@gmail.com'),
#        ('Bette', 'Davis', 'bette@aol.com');
       
# INSERT INTO orders (order_date, amount, customer_id)
# VALUES ('2016/02/10', 99.99, 1),
#        ('2017/11/11', 35.50, 1),
#        ('2014/12/12', 800.67, 2),
#        ('2015/01/03', 12.50, 2),
#        ('1999/04/11', 450.25, 5);

# SELECT * FROM orders WHERE customer_id =(SELECT id  FROM customers  WHERE last_name='George');
# SELECT * FROM customers, orders;
# SELECT * FROM customers, orders WHERE customers.id = orders.customer_id;

# select * from customers JOIN orders on customers.id=orders.customer_id;
# select * from customers LEFT JOIN orders on customers.id=orders.customer_id;
# select 
#         first_name,
#         last_name,
#         IFNULL(sum(amount), 0) AS total_sp 
# from customers 
# left JOIN orders
# on customers.id = orders.customer_id
# GROUP BY customers.id 
# order by total_sp;
# SELECT first_name,last_name,IFNULL(SUM(amount), 0) AS total_spentFROM customers LEFT JOIN orders  ON customers.id = orders.customer_id GROUP BY customers.idORDER BY total_spent;
# SELECT 
#     first_name, 
#     last_name,
#     IFNULL(SUM(amount), 0) AS total_spent
# FROM customers
# LEFT JOIN orders
#     ON customers.id = orders.customer_id
# GROUP BY customers.id
# ORDER BY total_spent;
# SELECT * FROM customers RIGHT JOIN orders ON customers.id = orders.customer_id;

# CREATE TABLE customers(
#     id INT AUTO_INCREMENT PRIMARY KEY,
#     first_name VARCHAR(100),
#     last_name VARCHAR(100),
#     email VARCHAR(100)
# );
# CREATE TABLE orders(
#     id INT AUTO_INCREMENT PRIMARY KEY,
#     order_date DATE,
#     amount DECIMAL(8,2),
#     customer_id INT
# );


# INSERT INTO customers (first_name, last_name, email) 
# VALUES ('Boy', 'George', 'george@gmail.com'),
#        ('George', 'Michael', 'gm@gmail.com'),
#        ('David', 'Bowie', 'david@gmail.com'),
#        ('Blue', 'Steele', 'blue@gmail.com'),
#        ('Bette', 'Davis', 'bette@aol.com');
       
# INSERT INTO orders (order_date, amount, customer_id)
# VALUES ('2016/02/10', 99.99, 1),
#        ('2017/11/11', 35.50, 1),
#        ('2014/12/12', 800.67, 2),
#        ('2015/01/03', 12.50, 2),
#        ('1999/04/11', 450.25, 5);

# INSERT INTO orders (order_date, amount, customer_id) VALUES
# ('2017/11/05', 23.45, 45),
# (CURDATE(), 777.77, 109);


# CREATE TABLE students(
# id INT AUTO_INCREMENT PRIMARY KEY,
#     first_name varchar(100)
# );

# CREATE TABLE papers(
# title varchar(100),
#     grade int,
#     student_id INT,
#     FOREIGN key(student_id)
#     REFERENCES students(id)
#     on DELETE CASCADE
# );

# insert into students(first_name) VALUES
# ('Caleb'), 
# ('Samantha'), 
# ('Raj'), 
# ('Carlos'), 
# ('Lisa');

# INSERT INTO papers (student_id, title, grade ) VALUES
# (1, 'My First Book Report', 60),
# (1, 'My Second Book Report', 75),
# (2, 'Russian Lit Through The Ages', 94),
# (2, 'De Montaigne and The Art of The Essay', 98),
# (4, 'Borges and Magical Realism', 89);
# select * from papers
# INNER JOIN students
# on students.id=papers.student_id
# order by grade;

# SELECT first_name, title, grade
# FROM students
# RIGHT JOIN papers
#     ON students.id = papers.student_id
# ORDER BY grade DESC;
-- PROBLEM 2

# SELECT first_name, title, grade
# FROM students
# LEFT JOIN papers
#     ON students.id = papers.student_id;
-- PROBLEM 3

# SELECT
#     first_name,
#     IFNULL(title, 'MISSING'),
#     IFNULL(grade, 0)
# FROM students
# LEFT JOIN papers
#     ON students.id = papers.student_id;
    
-- PROBLEM 4

# SELECT
#     first_name,
#     IFNULL(AVG(grade), 0) AS average
# FROM students
# LEFT JOIN papers
#     ON students.id = papers.student_id
# GROUP BY students.id
# ORDER BY average DESC;


# -- PROBLEM 5

# SELECT first_name, 
#        Ifnull(Avg(grade), 0) AS average, 
#        CASE 
#          WHEN Avg(grade) IS NULL THEN 'FAILING' 
#          WHEN Avg(grade) >= 75 THEN 'PASSING' 
#          ELSE 'FAILING' 
#        end                   AS passing_status 
# FROM   students 
#        LEFT JOIN papers 
#               ON students.id = papers.student_id 
# GROUP  BY students.id 
# ORDER  BY average DESC;