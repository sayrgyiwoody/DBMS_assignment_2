#create Pet database

drop database Pet;

create database Pet;

use Pet;

#create Pet_Owner Table
create table Pet_Owner(
	Owner_ID int primary key,
    O_firstname varchar(50),
    O_lastname varchar(50),
    Address varchar(100)
);

#create Pet table
create table Pet(
	Pet_ID varchar(50) primary key,
    Petname varchar(50),
    Ptype varchar(50),
    Pbreed varchar(100),
    PDOB varchar(100),
    Pweight float ,
    Owner_ID int ,
    foreign key (Owner_ID) references Pet_Owner(Owner_ID)
);

#insert values into Pet_Owner table
insert into Pet_Owner values
(1,"James","Ham","Yangon"),
(2,"Liz","Chole","ShwePyiThar"),
(3,"Mon","Han","Thuwana"),
(4,"Monn","Lapyae","Tamwel");

#insert values into Pet table
insert into Pet values
("P-1", "Teddy","Dog","Sport", "27-2-2012", 10.5, 2),
("P-2", "Fudo", "Cat", "Mix", "1-1-2011", 12, 1),
("P-3", "Cris","Rabbit", "Unknown", "28-7-2013", 2.5 ,1),
("P-4", "Twist","Hamster", "Parpi", "12-6-2023", 1, 3),
("P-5", "Gold","Dog","Rich", "8-4-2021", 25.5 ,4);


    
