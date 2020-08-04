# Projede veritabanı olarak Oracle Database (12.2.0.1) kullanılmıştır.
### Oluşturulan tablolar

CREATE TABLE BOOKS <br>
( <br>
    book_id NUMBER(5) PRIMARY KEY, <br>
    title VARCHAR2(50) NOT NULL, <br>
    author VARCHAR2(50) NOT NULL, <br>
    price NUMBER(5) NOT NULL <br>
); <br>

CREATE sequence book_id_seq start with 1 nocache; <br>

insert into BOOKS values(book_id_seq.nextval, 'Java Complete References', 'Herbert Schild', 750); <br>
insert into BOOKS values(book_id_seq.nextval, 'JavaScript Programming', 'Richie', 500); <br>
insert into BOOKS values(book_id_seq.nextval, 'Network', 'Schild', 400); <br>

commit; <br>
SELECT * FROM BOOKS;

-------------------------------------

CREATE TABLE AUTHORS  <br>
(  <br>
    authorID NUMBER(5) PRIMARY KEY,  <br>
    author_name VARCHAR(20) NOT NULL,  <br>
    author_lastname VARCHAR(20) NOT NULL,  <br>
    author_age NUMBER(20) NOT NULL,  <br>
    book_id NUMBER(5),  <br>
    FOREIGN KEY(book_id) REFERENCES BOOKS(book_id)  <br>
);  <br>

CREATE sequence author_id_seq start with 1 nocache; <br>

INSERT INTO AUTHORS values(book_id_seq.nextval,'Edip', 'Cansever', 50, 2); <br>


select * from authors; <br>
select * from books; <br>
