CREATE TABLE restaurants (
  id serial primary KEY,
  name varchar NOT NULL UNIQUE,
  address varchar,
  category varchar
);


insert into restaurants values (default, 'Farm Burger', '123 Piedmont Rd', 'American');

insert into restaurants values (default, 'NaanStop', '133 Piedmont Rd', 'Indian');

insert into restaurants values (default ,'Chowbing', '113 Piedmont Rd', 'Chinese');

insert into restaurants values (default, 'Fogo de Chao', '3101 Piedmont Rd', 'Brazil');

insert into restaurants values (default, 'Chipotle', '999 Piedmont Rd', 'Indian');
