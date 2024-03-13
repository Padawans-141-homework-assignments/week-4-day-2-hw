CREATE TABLE customers(
	customer_id SERIAL PRIMARY KEY,
	customer_seat INTEGER,
	customer_age INTEGER UNIQUE,
	customer_membership VARCHAR(1)
);

CREATE TABLE tickets (
	ticket_id SERIAL PRIMARY KEY,
	ticket_price NUMERIC(5,2), 
	ticket_amnt INTEGER,
	ticket_purchase_time TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	customer_id INTEGER,
	FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE concessions (
	concession_id SERIAL PRIMARY KEY,
	concession_price NUMERIC(5,2),
	concession_amt INTEGER,
	concession_brand VARCHAR(20),
	concession_size VARCHAR(1)
);

CREATE TABLE movies(
	movie_id SERIAL PRIMARY KEY,
	movie_genre VARCHAR(20),
	movie_age_rating VARCHAR(5),
	movie_length VARCHAR(10),
	movie_previews INTEGER,
	movie_starting_time VARCHAR(10),
	customer_age INTEGER,
	FOREIGN KEY (customer_age) REFERENCES customers(customer_age)
);