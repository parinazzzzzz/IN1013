DROP DATABASE IF EXISTS pet_database;
CREATE DATABASE pet_database;
USE pet_database;

DROP TABLE IF EXISTS petPet, petEvent;


CREATE TABLE petPet (
  petname varchar(25) NOT NULL PRIMARY KEY,
  owner varchar(45),
  species varchar(45),
  gender char(1),
  birth DATE,
  death DATE
);

CREATE TABLE petEvent (
  eventID int AUTO_INCREMENT,
  petname varchar(25),
  eventdate DATE,
  eventtype varchar(15),
  remark varchar(255),
  FOREIGN KEY (petname) REFERENCES petPet (petname),
  PRIMARY KEY (eventID)
);
