CREATE DATABASE "chitter_management";

CREATE TABLE users(id SERIAL PRIMARY KEY, email VARCHAR(60), password VARCHAR(100), username VARCHAR(100));

CREATE TABLE peeps(id SERIAL PRIMARY KEY, content VARCHAR(280), timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP, user_id INTEGER REFERENCES users (id),  username VARCHAR(100));

CREATE DATABASE "chitter_management_test";

CREATE TABLE users(id SERIAL PRIMARY KEY, email VARCHAR, password VARCHAR(100), username VARCHAR(100));

CREATE TABLE peeps(id SERIAL PRIMARY KEY, content VARCHAR(280), timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP, user_id INTEGER REFERENCES users (id),  username VARCHAR(100));

-- ALTER TABLE users
-- ADD COLUMN username VARCHAR(100);

-- INSERT INTO users(email, password, username) VALUES('maggieh@gmail.com', 'oioi', 'Sort');
-- INSERT INTO users(email, password, username) VALUES('madge@gmail.com', 'mushty', 'Love');

-- INSERT INTO peeps(content, user_id, username) VALUES('My first peep', 2, 'Love');
-- INSERT INTO peeps(content, user_id, username) VALUES('Get to the chopper', 1, 'Sort');
-- INSERT INTO peeps(content, user_id, username) VALUES('We have landed', 2, 'Love');




