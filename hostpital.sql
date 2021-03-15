CREATE DATABASE hostpital;

drop table doctors;
CREATE TABLE doctors (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(50),
    pass VARCHAR(50),
    jdt VARCHAR(50),
    email VARCHAR(50),
	domain VARCHAR(50),
    phone VARCHAR(50),
    loc VARCHAR(50),
    status VARCHAR(50) DEFAULT "Pending"
);


desc doctors;

drop table patients;
CREATE TABLE patients (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(50),
    age VARCHAR(50),
    gender VARCHAR(50),
    summ VARCHAR(100),
	des VARCHAR(100),
    dept VARCHAR(50),
    imp VARCHAR(50),
    adate VARCHAR(50),
    status VARCHAR(50),
    cdate VARCHAR(50),
    treatment VARCHAR(50),
    doctor VARCHAR(50)
);
desc patients;

drop table hist;
CREATE TABLE hist (
	id INT PRIMARY KEY,
	name VARCHAR(50),
    age VARCHAR(50),
    gender VARCHAR(50),
    adate VARCHAR(50),
    doctor VARCHAR(50),
    cdate VARCHAR(50),
    treatment VARCHAR(50),
    status VARCHAR(50),
    summ VARCHAR(100)
);

select * from patients;
