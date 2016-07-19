CREATE TABLE reviews (
  id serial primary KEY,
  author_user_id integer REFERENCES users (id),
  stars integer DEFAULT 0 check ( stars >= 0 and stars <= 5),
  title varchar,
  review varchar,
  restaurant_id integer REFERENCES restaurants (id)
);

insert into reviews values (default, 1, 0, 'NaanStop Review', 'This is the crappiest restaurant in Buckhead! Sucks ASS!', 2);

insert into reviews values (default, 1, 5, 'Fogo de Chao Review', 'Great food and service, House special is amazing!', 3);

insert into reviews values (default, 2, 4, 'Chowbing Review', 'Great food and cool atmosphere!', 4);

insert into reviews values (default, 3, 5, 'Farm Burger Review', 'The food is great and organic!', 1);

insert into reviews values (default, 2, 3, 'NaanStop Review', 'The food is above average and price is good', 2);

insert into reviews values (default, 3, 5, 'Fogo de Chao Review', 'This place is amazing! A must eat in Buckhead!', 3);

insert into reviews values (default, 2, 4, 'Farm Burger Review', 'The food is great and organic!', 1);

insert into reviews values (default, 1, 4, 'Chowbing Review', 'Great food and cool atmosphere!', 4);

insert into reviews values (default, 1, 0, 'Chipotle Review!',
'Three words: Food poisoning bitches!', 5);
