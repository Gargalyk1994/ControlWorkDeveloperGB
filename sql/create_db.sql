DROP DATABASE IF EXISTS control_work;
CREATE DATABASE control_work;
USE control_work;

-- животные
DROP TABLE IF EXISTS animals;
CREATE TABLE animals (
	id INT PRIMARY KEY AUTO_INCREMENT, 
    animals_name VARCHAR(50),
    birthday DATE NOT NULL,
    commands VARCHAR(50) 
);


-- домашние
DROP TABLE IF EXISTS pets;
CREATE TABLE pets (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    birthday DATE NOT NULL,
    commands VARCHAR(50) 
);

-- вьючные 
DROP TABLE IF EXISTS pack_animals;
CREATE TABLE pack_animals (
	id INT PRIMARY KEY AUTO_INCREMENT, 
    name VARCHAR(50),
    birthday DATE NOT NULL,
    commands VARCHAR(50) 
);

-- собаки 
DROP TABLE IF EXISTS dogs;
CREATE TABLE dogs (
	id INT PRIMARY KEY AUTO_INCREMENT, 
    name VARCHAR(50),
    birthday DATE NOT NULL,
    commands VARCHAR(50) 
);

INSERT INTO dogs (name, birthday, commands) VALUES 
('Sharik', '2020-01-01', 'voice'),
('Amur', '2021-12-06', 'sit'),
('Bim', '2019-08-03', 'attack');

-- коты
DROP TABLE IF EXISTS cats;
CREATE TABLE cats (
	id INT PRIMARY KEY AUTO_INCREMENT, 
    name VARCHAR(50),
    birthday DATE NOT NULL,
    commands VARCHAR(50) 
);

INSERT INTO cats ( name, birthday, commands) VALUES 
('Barsik', '2023-02-01', 'run'),
('Kysia', '2021-03-08', 'jump'),
('Garfild', '2018-05-03', 'eat');

-- хомяки 
DROP TABLE IF EXISTS hamsters;
CREATE TABLE hamsters (
	id INT PRIMARY KEY AUTO_INCREMENT, 
    name VARCHAR(50),
    birthday DATE NOT NULL,
    commands VARCHAR(50) 
);

INSERT INTO hamsters (name, birthday, commands) VALUES 
('Crazy', '2020-04-01', 'drink'),
('Fatter', '2021-11-06', 'stay'),
('Ugly', '2019-04-03', 'go');

-- лошади
DROP TABLE IF EXISTS horses;
CREATE TABLE horses (
	id INT PRIMARY KEY AUTO_INCREMENT, 
    name VARCHAR(50),
    birthday DATE NOT NULL,
    commands VARCHAR(50) 
);

INSERT INTO horses (name, birthday, commands) VALUES 
('Faster', '2023-09-02', 'run'),
('Ylii', '2021-05-12', 'voice'),
('Crid', '2022-07-03', 'attack');

-- верблюды 
DROP TABLE IF EXISTS camels;
CREATE TABLE camels (
	id INT PRIMARY KEY AUTO_INCREMENT, 
    name VARCHAR(50),
    birthday DATE NOT NULL,
    commands VARCHAR(50) 
);

INSERT INTO camels (name, birthday, commands) VALUES 
('Sharik', '2022-07-05', 'spit'),
('Amur', '2018-06-06', 'eat'),
('Bim', '2023-08-07', 'go');

-- ослы 
DROP TABLE IF EXISTS donkeys;
CREATE TABLE donkeys (
	id INT PRIMARY KEY AUTO_INCREMENT, 
    name VARCHAR(50),
    birthday DATE NOT NULL,
    commands VARCHAR(50) 
);

INSERT INTO donkeys (name, birthday, commands) VALUES 
('Moisei', '2017-12-01', 'voice'),
('Komrat', '2021-04-23', 'run'),
('German', '2022-05-06', 'smile');

