CREATE TABLE books
(
	id number(5) primary key,
	title varchar2(50) not null,
	author varchar2(50) not null,
	price number(5)
);

create sequence book_id_seq start with 1 nocache;

insert into books values(book_id_seq.nextval, 'Java Complete Reference',
'Herbert Schild', 750);

insert into books values(book_id_seq.nextval, 'Javascript Programming',
'Richiew', 500);

insert into books values(book_id_seq.nextval, 'Network',
'Schild', 750);

CREATE TABLE authors
(
	authorID(5) primary key,
	first_name varchar2(50) not null,
	last_name varchar2(50) not null,
)