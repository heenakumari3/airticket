
CREATE DATABASE air_ticket_system;
USE air_ticket_system;

#users table
CREATE TABLE users(
    user_id INT PRIMARY KEY,
    email VARCHAR(230),
    paasword VARCHAR(230) NOT NULL
);

#flights table
CREATE TABLE flights(
    flight_id INT PRIMARY KEY,
    departure_date DATE,
    departure_time TIME,
    source VARCHAR(50),
    seats_avaible INT,
    destination VARCHAR(100),
    class VARCHAR(50)
);

#booking table
CREATE TABLE booking(
    booking_id INT PRIMARY KEY,
    user_id INT,
    flight_id INT,
    number_passengers INT,
    FOREIGN KEY (user_id) REFERENCES users (user_id),
    FOREIGN KEY (flight_id) REFERENCES flights (flight_id)
);

#cancellation  table
CREATE TABLE cancellation(
    cancellation_id INT PRIMARY KEY,
    booking_id INT,
    cancel_date DATETIME,
    FOREIGN KEY (booking_id) REFERENCEs booking (booking_id)
);