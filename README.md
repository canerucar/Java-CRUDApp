## Projede veritabanı olarak Oracle Database 12c Release 2 (12.2.0.1) kullanılmıştır.

Gerekli bağlantı ayarlarını
Java Resources > src > listeners > DatabaseListener.java'da değişiklik yaparak kendi veriitabanınıza bağlayabilirsiniz.

### Proje
<img align="left" src="https://user-images.githubusercontent.com/25962055/89287844-55529700-d65d-11ea-8f78-b5b967770803.gif" height="600" width="800"> <br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

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

jenkins push
