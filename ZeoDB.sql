 CREATE TABLE users (
  user_id INT PRIMARY KEY,
F_name VARCHAR(50),
email VARCHAR(100)
);
CREATE TABLE articles (
aid INT PRIMARY KEY,
title VARCHAR(20),
 timestamp TIMESTAMP,
textbody VARCHAR(250),
user_id INT,
  FOREIGN KEY (user_id) REFERENCES users(user_id)
 );
CREATE TABLE comments (
   cid INT PRIMARY KEY,
  timestamp TIMESTAMP,
 text VARCHAR(250),
  article_id INT,
 user_id INT,
FOREIGN KEY (article_id) REFERENCES articles(aid),
  FOREIGN KEY (user_id) REFERENCES users(user_id)
);
INSERT INTO users (user_id, F_name, L_name, email)
VALUES (1, 'Zeo', 'ZeoEmara@gmail.com');

INSERT INTO users (user_id, F_name, L_name, email)
VALUES (2, 'Mo', 'MoSalah@gmail.com');

INSERT INTO users (user_id, F_name, L_name, email)
VALUES (3, 'Michael',  'MichaelJordan@example.com');


INSERT INTO articles (aid, title, timestamp, textbody, user_id)
VALUES (1, 'Introduction to SQL', '2023-12-21 10:30:00', 'This is an introductory article about SQL.', 1);

INSERT INTO articles (aid, title, timestamp, textbody, user_id)
VALUES (2, 'Advanced SQL Techniques', '2023-12-22 14:45:00', 'Learn advanced SQL queries and optimization techniques.', 2);

INSERT INTO articles (aid, title, timestamp, textbody, user_id)
VALUES (3, 'Database Design Best Practices', '2023-12-23 09:15:00', 'Discover best practices for designing efficient databases.', 3);
INSERT INTO comments (cid, timestamp, text, article_id, user_id)
VALUES (1, '2023-12-21 11:00:00', 'Great article!', 1, 2);

INSERT INTO comments (cid, timestamp, text, article_id, user_id)
VALUES (2, '2023-12-22 15:00:00', 'I have a question. Can you explain further?', 2, 1);

INSERT INTO comments (cid, timestamp, text, article_id, user_id)
VALUES (3, '2023-12-23 10:30:00', 'Thanks for sharing this valuable information!', 3, 2);
Select* from users , articles , comments;

desc users ;
desc articles;
desc comments;