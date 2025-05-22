CREATE TABLE "user" (
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
)

-- DELETE CASCADE / SET NULL / SET DEFAULT

CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user" (id) ON DELETE CASCADE
);

DELETE FROM "user" WHERE id = 6;

DELETE FROM posts WHERE id = 6;

INSERT INTO
    "user" (username)
VALUES ('Piyas'),
    ('John'),
    ('Doe'),
    ('Jane'),
    ('Smith');

INSERT INTO
    posts (title, user_id)
VALUES ('Post 1', 1),
    ('Post 2', 2),
    ('Post 3', 3),
    ('Post 4', 4),
    ('Post 5', 5);

INSERT INTO posts (title, user_id) VALUES ('Again post for 5 ', 5);

SELECT * FROM "user";

SELECT * FROM posts;

-- Relatonal Table
-- Inner join---------
SELECT username, title
from posts
    INNER JOIN "user" ON posts.user_id = "user".id;

SELECT
    u.id AS user_id,
    username,
    title AS post_title
FROM posts AS p
    INNER JOIN "user" AS u ON p.user_id = u.id;

-- Left join---------
SELECT posts.id, username, title
FROM posts
    LEFT JOIN "user" ON posts.user_id = "user".id;

-- Right join---------
SELECT u.id, username, title
FROM posts AS p
    RIGHT OUTER JOIN "user" AS u ON p.user_id = u.id;

SELECT u.id AS user_id, username, title
FROM posts as p
    RIGHT OUTER JOIN "user" AS u ON p.user_id = u.id;

-- Full join--------
SELECT
    u.id AS user_id,
    username,
    p.id AS post_id,
    title
FROM posts as p
    FULL OUTER JOIN "user" AS u ON p.user_id = u.id;

INSERT INTO "user" (username) VALUES ('Rahim')