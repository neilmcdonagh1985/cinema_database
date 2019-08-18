DROP TABLE tickets;
DROP TABLE films;
DROP TABLE customers;
DROP TABLE screenings;


CREATE TABLE customers(
id SERIAL4 PRIMARY KEY,
name VARCHAR(255),
funds INT4
);

CREATE TABLE films(
  id SERIAL4 PRIMARY KEY,
  title VARCHAR(255),
  price INT4
);

CREATE TABLE tickets(
  id SERIAL4 PRIMARY KEY,
  customer_id INT4 REFERENCES customers(id) ON DELETE CASCADE,
  film_id INT4 REFERENCES films(id) ON DELETE CASCADE
);

CREATE TABLE screenings(
  id SERIAL4 PRIMARY KEY,
  film_id INT4 REFERENCES films(id) ON DELETE CASCADE,
  time_of_screening VARCHAR(255),
  tickets_available VARCHAR(255)
);
