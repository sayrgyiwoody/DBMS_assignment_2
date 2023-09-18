#Q1 exercise a
select Pbreed,Ptype,PDOB from pet where Ptype = "Dog" and Pbreed = "Rich";

#Q1 exercise b
select Pet_ID,Pbreed,Ptype from pet where Petname like "T____";

#Q1 exercise c
#to test exercise I insert new row to the table
insert into Pet values
("P-6", "milo","Dog","Sport", "27-2-2023", 10, 2);
select Pbreed , avg(Pweight) from pet group by (Pbreed) having  count(Pbreed) >= 2 and Pbreed != "Unknown";
 
#Q1 exercise d
select Address from Pet_Owner inner join pet on pet.Owner_ID = Pet_Owner.Owner_ID where Pet_ID = "P-3";

#Q1 exercise e
SELECT MAX(STR_TO_DATE(PDOB, '%d-%m-%Y')) AS youngest_dog FROM pet WHERE Ptype = 'Dog';
