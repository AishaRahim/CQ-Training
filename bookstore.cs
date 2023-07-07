CREATE DATABASE bookstore

use bookstore

CREATE TABLE Book
(
BookId int IDENTITY(1,1) primary key NOT NULL,
Bname varchar(50),
AuthId int foreign key references Author(AuthId)
)

CREATE TABLE Author
(
AuthId int IDENTITY(1,1) primary key NOT NULL,
Authname varchar(50),
BookName VARCHAR(100)
)

CREATE TABLE Customer
(
CustomerId int IDENTITY(1,1) primary key NOT NULL, 
BookId int foreign key references Book(BookId),
CustomerName varchar(50)
)

drop table Author
drop table Customer
drop table Book

INSERT INTO Author (Authname,BookName) VALUES('auth1','book1')
INSERT INTO Author (Authname,BookName) VALUES('auth2','book2')
INSERT INTO Author (Authname,BookName) VALUES('auth3','book3')

INSERT INTO Book (Bname,AuthId) VALUES('book1','1')
INSERT INTO Book (Bname,AuthId) VALUES('book2','2')
INSERT INTO Book (Bname,AuthId) VALUES('book3','3')

INSERT INTO Customer (BookId,CustomerName) VALUES('1','cust1')
INSERT INTO Customer (BookId,CustomerName) VALUES('2','cust2')
INSERT INTO Customer (BookId,CustomerName) VALUES('3','cust3')


SELECT * FROM Author
SELECT * FROM Book
SELECT * FROM Customer