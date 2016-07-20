DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id serial PRIMARY KEY,
  name varchar,
  email varchar
);
--Users Matthew and Dave
insert into users values(default, 'Matthew Brimmer', 'mbrimmer1@gmail.com');
insert into users values(default, 'David Pham', 'dpham@gmail.com');

DROP TABLE IF EXISTS projects;
CREATE TABLE projects (
  id serial PRIMARY KEY,
  name varchar,
  description text,
  master_owner integer REFERENCES users (id),
  star_amount integer
);
--Matthew's Projects
insert into projects values(default, 'coffeeshop', 'Fullstack coffee store', 1, 0);
insert into projects values(default, 'my_website', 'Portfolio website', 1, 10);
insert into projects values(default, 'MemoryGame', 'Frontend matching game', 1, 3);
insert into projects values(default, 'socketchat', 'Fullstack chat application', 1, 5);
insert into projects values(default, 'TicTacToe', 'Frontend TicTacToe game', 1, 2);
--Dave's projects
insert into projects values(default, 'CanvasGame', 'Frontend HTML 5 canvas game', 2, 10);
insert into projects values(default, 'PictionaryGame', 'Socket.io drawing game', 2, 10);
insert into projects values(default, 'MemoryGame', 'Frontend matching game', 2, 3);
insert into projects values(default, 'Portfolio', 'Frontend personal website chat', 2, 5);
insert into projects values(default, 'Sportakus', 'Frontend group sports aggregator', 2, 2);

CREATE TABLE user_projects (
  id serial PRIMARY KEY,
  project_id integer REFERENCES projects (id),
  project_member_id integer REFERENCES users (id)
);
--Dave's projects
insert into user_projects values(default, 6, 2);
insert into user_projects values(default, 7, 2);
insert into user_projects values(default, 8, 2);
insert into user_projects values(default, 9, 2);
insert into user_projects values(default, 10, 2);
--Matthew's projects
insert into user_projects values(default, 1, 1);
insert into user_projects values(default, 2, 1);
insert into user_projects values(default, 3, 1);
insert into user_projects values(default, 4, 1);
insert into user_projects values(default, 5, 1);

DROP TABLE IF EXISTS pullrequests;
CREATE TABLE pullrequests (
  id serial PRIMARY KEY,
  project_id integer REFERENCES projects (id)
  user_id integer REFERENCES users (id),
  approval boolean
);
--Dave's pullrequests
insert into pullrequests values(default, 6, 2, True);
insert into pullrequests values(default, 7, 2, True);
insert into pullrequests values(default, 8, 2, True);
insert into pullrequests values(default, 9, 2, True);
insert into pullrequests values(default, 10, 2, False);
--Matthew's pullrequests
insert into pullrequests values(default, 1, 1, True);
insert into pullrequests values(default, 2, 1, True);
insert into pullrequests values(default, 3, 1, True);
insert into pullrequests values(default, 4, 1, True);
insert into pullrequests values(default, 5, 1, True); 

DROP TABLE IF EXISTS technologies;
CREATE TABLE technologies (
  id serial PRIMARY KEY,
  tech_name varchar
);

DROP TABLE IF EXISTS technologies;
CREATE TABLE project_techs (
  id serial PRIMARY KEY,
  project_id integer REFERENCES projects (id),
  tech_id integer REFERENCES technologies (id)
);

DROP TABLE IF EXISTS commits;
CREATE TABLE commits (
  id serial PRIMARY KEY,
  project_id integer REFERENCES projects (id),
  user_id integer REFERENCES users (id),
  commit_message varchar,
  commit_date timestamp
);
