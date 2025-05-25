-- CREATE TABLE book ( id integer PRIMARY key,
-- title varchar(200),
-- author varchar(200),
-- genre varchar(200),
-- description text,
-- image_url varchar(600));

-- INSERT INTO book (title, author, genre, description, image_url) VALUES
-- ('To Kill a Mockingbird', 'Harper Lee', 'Fiction', 'A novel about racial injustice in the Deep South.', 'https://covers.openlibrary.org/b/id/8225261-L.jpg'),
-- ('1984', 'George Orwell', 'Dystopian', 'A dystopian novel about totalitarianism.', 'https://covers.openlibrary.org/b/id/7222246-L.jpg'),
-- ('Pride and Prejudice', 'Jane Austen', 'Romance', 'Classic romance and social commentary.', 'https://covers.openlibrary.org/b/id/8091016-L.jpg'),
-- ('The Great Gatsby', 'F. Scott Fitzgerald', 'Classic', 'A novel about the American dream and the roaring twenties.', 'https://covers.openlibrary.org/b/id/7222161-L.jpg'),
-- ('Moby Dick', 'Herman Melville', 'Adventure', 'Epic tale of a captain’s obsession with a white whale.', 'https://covers.openlibrary.org/b/id/8100921-L.jpg'),
-- ('War and Peace', 'Leo Tolstoy', 'Historical', 'A historical novel about Napoleonic wars and Russian society.', 'https://covers.openlibrary.org/b/id/7984916-L.jpg'),
-- ('The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 'Fantasy adventure of Bilbo Baggins.', 'https://covers.openlibrary.org/b/id/6979861-L.jpg'),
-- ('The Catcher in the Rye', 'J.D. Salinger', 'Fiction', 'A story about teenage rebellion and identity.', 'https://covers.openlibrary.org/b/id/8231996-L.jpg'),
-- ('Jane Eyre', 'Charlotte Brontë', 'Gothic', 'A gothic romance novel.', 'https://covers.openlibrary.org/b/id/8224151-L.jpg'),
-- ('The Lord of the Rings', 'J.R.R. Tolkien', 'Fantasy', 'Epic fantasy trilogy.', 'https://covers.openlibrary.org/b/id/8235111-L.jpg');


create TABLE user (id integer PRIMARY key, user_id integer,username varchar(30),email varchar(30),joined varchar(30));

INSERT INTO user (user_id, username, email, joined) VALUES (1,"Alice","alice@gmail.com","05-06-2025");
-- create TABLE review (id integer PRIMARY key, book_id integer,rating integer ,comment text,FOREIGN KEY(book_id) REFERENCES book(id));
-- INSERT INTO review (book_id, user_name, rating, comment) VALUES
-- (1, 'Alice', 5, 'An incredible fantasy world with rich detail.'),
-- (1, 'Bob', 4, 'Enjoyed the magical adventure.'),
-- (1, 'Charlie', 5, 'One of the best series openers ever!'),

-- (2, 'David', 5, 'A thrilling and emotional rollercoaster.'),
-- (2, 'Eva', 4, 'Characters are strong and well-written.'),
-- (2, 'Frank', 5, 'Couldn’t put it down!'),

-- (3, 'Grace', 5, 'A timeless classic.'),
-- (3, 'Hannah', 4, 'Simple but deeply impactful.'),
-- (3, 'Ian', 5, 'Makes you appreciate the little things in life.'),

-- (4, 'Jack', 5, 'A must-read for entrepreneurs.'),
-- (4, 'Karen', 5, 'The principles really work.'),
-- (4, 'Liam', 4, 'Practical and actionable advice.'),

-- (5, 'Mia', 5, 'Hilarious and heartwarming.'),
-- (5, 'Noah', 4, 'Brilliant storytelling.'),
-- (5, 'Olivia', 5, 'Could relate to so many parts of it.'),

-- (6, 'Paul', 5, 'Chilling and brilliantly written.'),
-- (6, 'Quinn', 4, 'Dark but thought-provoking.'),
-- (6, 'Rita', 5, 'So relevant even today.'),

-- (7, 'Sam', 4, 'Loved the plot twists.'),
-- (7, 'Tina', 5, 'A gripping thriller.'),
-- (7, 'Uma', 4, 'Kept me hooked till the end.'),

-- (8, 'Victor', 5, 'Masterpiece of world-building.'),
-- (8, 'Wendy', 5, 'Epic in every sense.'),
-- (8, 'Xander', 5, 'One of the best fantasy books ever written.'),

-- (9, 'Yara', 5, 'A dystopian gem.'),
-- (9, 'Zane', 4, 'Creepy and captivating.'),
-- (9, 'Ava', 5, 'Hauntingly beautiful.'),

-- (10, 'Ben', 4, 'A moving story of resilience.'),
-- (10, 'Cara', 5, 'Deeply emotional.'),
-- (10, 'Derek', 5, 'One of the best war-time novels.');



