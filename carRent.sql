/* CPSC 471 Fall 2014
 * SQL Tables: Relational Model
 * Submitted by Spencer Howe, Tristan Schorn, Arnold Padillo
 * 
 * NOTES:
 *	- Can test with http://sqlfiddle.com/
 *	- Made SQL Statements in Upper case (for recognition)
 *
 * TODO:
 * - Add triggers
 * - Inserting values in the tables now that they are initialized
 * - Implement foreign keys
 *
 */

CREATE TABLE Vehicle(
	serial_no INT PRIMARY KEY NOT NULL,
	current_Odometer INT NOT NULL,
	fuel_type VARCHAR (20) NOT NULL,
	plate_no VARCHAR (20) NOT NULL,
	colour VARCHAR (20) NOT NULL,
	model VARCHAR (20) NOT NULL,
	base_cost DECIMAL(10, 2) NOT NULL, -- Max of 10 Digits, 2 numbers after decimal
	make VARCHAR(20) NOT NULL,
	no_seats INT NOT NULL,
	type VARCHAR(20)
);

CREATE TABLE Branch(
	branch_no INT PRIMARY KEY NOT NULL,
	location VARCHAR(30) NOT NULL,
	address VARCHAR(30) NOT NULL,
	branch_name VARCHAR(30) NOT NULL
);

CREATE TABLE Customer(
	license_no INT PRIMARY KEY NOT NULL,
	name VARCHAR (30) NOT NULL,
	phone_no INT NOT NULL,
	creditCard_no INT NOT NULL
);

CREATE TABLE Employee(
	employee_id INT PRIMARY KEY NOT NULL,
	supervisor_id INT NOT NULL,
	name VARCHAR (30) NOT NULL
);

CREATE TABLE WorksAt(
	branch_no INT NOT NULL,
	position VARCHAR (30) NOT NULL,
	employee_id INT NOT NULL
);

CREATE TABLE Rental(
	rental_no INT PRIMARY KEY NOT NULL,
	license_no INT NOT NULL,
	branch_no INT NOT NULL,
	employee_id VARCHAR (30) NOT NULL,
	serial_no VARCHAR (30) NOT NULL,
	date_range VARCHAR (20) NOT NULL,
	insurance_package VARCHAR (30) NOT NULL,
	rental_cost DECIMAL(10, 2) NOT NULL
);

CREATE TABLE Credentials(
	username VARCHAR (30) PRIMARY KEY NOT NULL,
	hashed_pass VARCHAR (30) NOT NULL
);

CREATE TABLE Inventory(
	branch_no INT NOT NULL,
	no_vehicle_rented INT,
	serial_no INT PRIMARY KEY NOT NULL,
	is_rented BOOLEAN DEFAULT FALSE

);


