create table Doctors (
doc_id number(2) primary key,
doc_name varchar2(50) NOT NULL,
specialty varchar2(10) NOT NULL

);
CREATE TABLE pets(
pet_id number(3) primary key,
doc_id number(2)
references DOCTORS (doc_id),
pet_name varchar2(10) NOT NULL,
species varchar2(10) NOT NULL
);

CREATE TABLE meadications(
med_id number(4) primary key,
price float not NULL,
med_name varchar2(10) not NULL unique);

CREATE TABLE pet_medications(
pet_id number(3) 
references PETS (pet_id),
med_id number(4) 
references MEADICATIONS (med_id),
dosage int not NULL);

CREATE TABLE relation_table(
doc_id number(2) 
references DOCTORS(doc_id),
pet_id number(3)
references PETS(pet_id),
med_id number(4)
references MEADICATIONS(med_id));

