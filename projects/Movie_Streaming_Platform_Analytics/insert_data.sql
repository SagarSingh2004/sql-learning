--Inserting Users data
INSERT INTO
	USERS (NAME, EMAIL, JOIN_DATE)
VALUES
	('Sagar Sharma', 'sagar@gmail.com', '2025-01-10'),
	('Anita Verma', 'anita@gmail.com', '2025-02-15'),
	('Rahul Mehta', 'rahul@gmail.com', '2025-03-20'),
	('Priya Singh', 'priya@gmail.com', '2025-01-25'),
	('Arjun Patel', 'arjun@gmail.com', '2025-04-05'),
	('Neha Kapoor', 'neha@gmail.com', '2025-03-12'),
	('Vikram Rao', 'vikram@gmail.com', '2025-02-28'),
	('Sneha Iyer', 'sneha@gmail.com', '2025-04-18');

--Inserting Movies data
INSERT INTO movies (title, genre, release_year) VALUES
('The Last Mission', 'Action', 2022),
('Love in Paris', 'Romance', 2021),
('Galaxy War', 'Sci-Fi', 2023),
('The Silent Truth', 'Drama', 2020),
('Laugh Out Loud', 'Comedy', 2022),
('Dark Shadows', 'Thriller', 2021),
('Future World', 'Sci-Fi', 2024),
('Family Ties', 'Drama', 2019),
('Speed Chase', 'Action', 2023),
('Holiday Fun', 'Comedy', 2020);

--Inserting Subscriptions data
INSERT INTO subscriptions (user_id, start_date, end_date, plan, price) VALUES
(1, '2025-01-10', '2025-06-10', 'Premium', 799.00),
(2, '2025-02-15', '2025-08-15', 'Standard', 499.00),
(3, '2025-03-20', '2025-09-20', 'Basic', 299.00),
(4, '2025-01-25', '2025-07-25', 'Premium', 799.00),
(5, '2025-04-05', '2025-10-05', 'Standard', 499.00),
(6, '2025-03-12', '2025-09-12', 'Basic', 299.00),
(7, '2025-02-28', '2025-08-28', 'Premium', 799.00),
(8, '2025-04-18', '2025-10-18', 'Standard', 499.00);

--Insert Views
INSERT INTO views (user_id, movie_id, watch_date, watch_duration) VALUES
(1, 1, '2025-04-01', 120),
(1, 3, '2025-04-03', 110),
(1, 5, '2025-04-05', 95),
(2, 2, '2025-04-02', 105),
(2, 4, '2025-04-06', 130),
(2, 6, '2025-04-07', 98),
(3, 1, '2025-04-04', 115),
(3, 7, '2025-04-08', 140),
(4, 3, '2025-04-01', 125),
(4, 8, '2025-04-09', 100),
(5, 9, '2025-04-03', 110),
(5, 10, '2025-04-10', 90),
(6, 5, '2025-04-02', 88),
(6, 2, '2025-04-06', 102),
(7, 1, '2025-04-07', 118),
(7, 4, '2025-04-08', 132),
(8, 6, '2025-04-05', 97),
(8, 7, '2025-04-09', 145);