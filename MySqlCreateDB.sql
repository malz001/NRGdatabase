/*
Создать базу данных с именем “MyDB”. 
В созданной базе данных (из задания 2) создать 3 таблицы: 1-я содержит имена и номера телефонов сотрудников некой компании, 
2-я содержит ведомости об их зарплате, и должностях, 3-я содержит информацию о семейном положении, дате рождения и месте проживания.
*/

CREATE DATABASE MyDB;
USE MyDB;
CREATE TABLE NamePhone 
(
	id INT AUTO_INCREMENT NOT NULL,
    namePerson VARCHAR(30),
    phone VARCHAR(15),
    PRIMARY KEY (id)
);
CREATE TABLE SalaryPosition
(
	id INT AUTO_INCREMENT NOT NULL,
    salary INT,
    position VARCHAR(30),
    PRIMARY KEY (id)
);
CREATE TABLE MaritalStatusDateBirthResidence
(
	id INT AUTO_INCREMENT NOT NULL,
    maritalStatus VARCHAR(10),
    dateBirth DATE,
    placeResidence VARCHAR(50),
    PRIMARY KEY (id)
);

INSERT INTO NamePhone
(namePerson, phone)
VALUES
('Alek', '0976668881');
INSERT INTO NamePhone
(namePerson, phone)
VALUES
('Ivan', '0503336668');
INSERT INTO NamePhone
(namePerson, phone)
VALUES
('Sue', '0992211336');
SELECT * FROM NamePhone;

INSERT INTO SalaryPosition
(salary, position)
VALUES
(9000, 'cleaner');
INSERT INTO SalaryPosition
(salary, position)
VALUES
(11000, 'driver');
INSERT INTO SalaryPosition
(salary, position)
VALUES
(20000, 'programmer');
SELECT * FROM SalaryPosition;

INSERT INTO MaritalStatusDateBirthResidence
(maritalStatus, dateBirth, placeResidence)
VALUES
('single', '2000-01-12', 'Kharkiv');
INSERT INTO MaritalStatusDateBirthResidence
(maritalStatus, dateBirth, placeResidence)
VALUES
('single', '1990-01-02', 'Poltava');
INSERT INTO MaritalStatusDateBirthResidence
(maritalStatus, dateBirth, placeResidence)
VALUES
('marred', '1999-05-05', 'Kyiv');
SELECT * FROM MaritalStatusDateBirthResidence;

