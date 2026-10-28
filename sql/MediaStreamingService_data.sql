-- These information are not fully correct and are just provided to test the implementation of the database.

INSERT INTO "User" (user_id, name, email)
VALUES 
(1, 'Cara Rose', 'cara123@gmail.com'),
(2, 'Sabrina Dean', 'sdean@gmail.com'),
(3, 'Jade Ball', 'jadeball@gmail.com');

INSERT INTO "Payment" (payment_id, payment_date, amount, method, user_id)
VALUES
(1, '2025-01-01', 100.50, 'Credit Card', 1),
(2, '2025-01-02', 200.75, 'PayPal', 2),
(3, '2025-01-03', 50.00, 'Credit Card', 3);

INSERT INTO Subscription_Tier (name, price, description)
VALUES
('Basic', 9.99, 'Basic subscription plan'),
('Premium', 19.99, 'Premium subscription plan'),
('VIP', 29.99, 'VIP subscription plan with additional features');

INSERT INTO "Subscription" (sub_id, sub_sdate, sub_edate, user_id, tier_name)
VALUES
(1, '2025-01-01', '2025-12-31', 1, 'Premium'),
(2, '2025-02-01', '2025-12-31', 2, 'VIP'),
(3, '2025-03-01', '2025-12-31', 3, 'Basic');

INSERT INTO Production_Company (company_id, name, year_of_establishment, phone_number, email)
VALUES
(1, 'DreamWorks', 1994, '123-456-7890', 'contact@dreamworks.com'),
(2, 'Pixar', 1986, '098-765-4321', 'info@pixar.com'),
(3, 'Universal Pictures', 1912, NULL, 'support@universalpictures.com'),
(4, 'Warner Bros', 1923, '098-123-4321', 'info@warnerbros.com'),
(5, 'Paramount Pictures', 1912, '123-456-1445', NULL);

INSERT INTO Storage_Location (storage_id, storage_server, storage_path)
VALUES
(1, 'server1', '/path/to/storage1'),
(2, 'server2', '/path/to/storage2'),
(3, 'server3', '/path/to/storage3'),
(4, 'server4', '/path/to/storage4'),
(5, 'server5', '/path/to/storage5'),
(6, 'server6', '/path/to/storage6');

INSERT INTO Director (director_id, name, biography)
VALUES
(1, 'Steven Spielberg', 'One of the most popular directors and producers in film history.'),
(2, 'James Cameron', 'Known for making science fiction films.'),
(3, 'Christopher Nolan', 'Renowned for his innovative narrative techniques.'),
(4, 'Declan Lowney', NULL);

INSERT INTO Producer (producer_id, name, phone_number, email)
VALUES
(1, 'Jerry Bruckheimer', '123-456-7890', 'jerry.bruckheimer@example.com'),
(2, 'Kathleen Kennedy', '098-765-4321', 'kathleen.kennedy@example.com'),
(3, 'Emma Thomas', '111-222-3333', 'emma.thomas@example.com');

INSERT INTO Actor (actor_id, name, biography)
VALUES
(1, 'Tom Hanks', 'American actor and filmmaker.'),
(2, 'Meryl Streep', 'One of the greatest actresses in Hollywood history.'),
(3, 'Leonardo DiCaprio', 'Actor known for his work in biopics and period films.'),
(4, 'Kate Winslet', 'Kate Elizabeth Winslet is an English actress.'),
(5, 'Jason Sudeikis', 'Jason Sudeikis is an American actor, comedian, and screenwriter.'),
(6, 'Tom Hardy', 'Edward Thomas Hardy CBE (born 15 September 1977) is an English actor. ');

INSERT INTO Media (media_id, title, production_year, genre, average_rating, director_id, company_id)
VALUES
(1, 'Inception', '2010', 'Sci-Fi', 8.8, 3, 4),
(2, 'Titanic', '1997', 'Romance', 7.8, 2, 5),
(3, 'Ted Lasso', '2020 - ', 'Sports, Comedy, Drama', 8.8, 4, 3);

INSERT INTO Movie (movie_id, duration, storage_id)
VALUES
(1, 148, 1),
(2, 195, 2);

INSERT INTO Series (series_id, number_of_seasons, number_of_episodes, episodes_average_duration)
VALUES
(3, 3, 34, 30);

INSERT INTO Episode (series_id, season_no, episode_no, title, duration, storage_id)
VALUES
(3, 1, 1, 'Pilot', 25, 3),
(3, 1, 2, 'Biscuits', 31, 4),
(3, 1, 3, 'Trent Crimm: The Independent', 31, 5)
;

INSERT INTO Media_Producer (media_id, producer_id, role, contract_sdate, contract_edate, budget)
VALUES
(3, 1, 'Executive Producer', '2010-01-01', '2010-12-31', 10000000.00),
(2, 2, 'Producer', '1997-01-01', '1997-12-31', 5000000.00),
(1, 3, 'Co-Producer', '2020-01-01', '2020-12-31', 2000000.00);

INSERT INTO Media_Actor (media_id, actor_id, role, contract_sdate, contract_edate, salary)
VALUES
(1, 3, 'Lead Actor', '2025-01-01', '2025-12-31', 20000000.00),
(2, 3, 'Lead Actor', '2025-01-01', '2025-12-31', 10000000.00),
(2, 4, 'Lead Actrress', '2025-01-01', '2025-12-31', 20000000.00),
(3, 5, 'Lead Actor', '2025-01-01', '2025-12-31', 5000000.00),
(1, 6, 'Supporting Actor', '2025-01-01', '2025-12-31', 5000000.00);

INSERT INTO "Rating" (user_id, media_id, score)
VALUES
(1, 1, 9),
(1, 3, 6),
(2, 2, 8),
(3, 3, 8),
(2, 1, 7);

INSERT INTO Watch_List (user_id, media_id, added_date)
VALUES
(1, 2, '2025-01-01'),
(2, 3, '2025-01-02'),
(3, 1, '2025-01-03');

INSERT INTO "Comment" (comment_id, comment_text, comment_date, user_id, media_id)
VALUES
(1, 'Amazing movie!', '2025-01-01', 1, 1),
(2, 'Loved it!', '2025-01-02', 2, 2),
(3, 'Good watch.', '2025-01-03', 3, 3),
(4, 'Not bad', '2025-01-03', 1, 3);
