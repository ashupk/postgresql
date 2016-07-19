CREATE TABLE users (
  id serial PRIMARY KEY,
  name varchar,
  email varchar,
  karma integer DEFAULT 1 check (karma >= 1 and karma <= 7)
);

insert into users values (default, 'Matthew Brimmer', 'mbrimmer1@gmail.com', 7);

insert into users values (default, 'Kyle Luck', 'kluck@mail.com', 7);

insert into users values (default, 'Toby Ho', 'airport@gmail.com', 7);  
