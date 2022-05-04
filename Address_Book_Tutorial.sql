------UC-1-creating database here-----
create database Address_Book_Tutorial;

----UC-2-------creating table-------
create table Address_Book_Model
(
 firstName varchar(15),
 lastName varchar(15),
 address varchar(251),
 city varchar(15),
 state varchar(10),
 zip varchar(8),
 phoneNumber varchar(15),
 email varchar(51)
 )

 select * from Address_Book_Model
 ---------UC3------INSERTING DATA-------

insert into Address_Book_Model values('Pawan','Kumar','rafiganj','aurangabad','bihar','824125','9304314938','Pawan@gmail.com')
insert into Address_Book_Model values('Niraj','Raj','raiganj','jaynagar','assam','824103','9304093254','pwnwa@gmail.com')

----We can add more data by same way--------
insert into Address_Book_Model values('ravi','kumar','anugarh','gaya','bihar','821003','8292536484','rvuk@gmail.com')
insert into Address_Book_Model values('sanket','kumar','dakbunglow','rafiagan','bihar','821003','6207912484','aayak@gmail.com')
insert into Address_Book_Model values('ankesh','kumar','piprahi','baligaon','bihar','821003','709155737','bhaagn@gmail.com')

---------UC-4---------ability to edit the existing contact by name------
update Address_Book_Model
set email='pwnkr@gmail.com'
where firstName='ravi'


---------UC-5----------Ability to delete a person---------

delete Address_Book_Model
where firstName='sanket'

---------UC-6-----------Ability to retrive a person -------

select * from Address_Book_Model
where city='baligaon'

select * from Address_Book_Model
where city='gaya'


----------UC-7-------Ability to understand the size of address book---------
select count(city) from Address_Book_Model
select count(state) from Address_Book_Model

----------UC-8-------Ability to retrive Entries Sorted Arithmetically-------

select * from Address_Book_Model
order by firstName desc

select * from Address_Book_Model
order by city desc


---------UC-9------Ability to identify each address book  by name and type---------
ALTER TABLE Address_Book_Model
ADD Name VARCHAR(15) ;

alter table Address_Book_Model
add Type varchar(15);

update Address_Book_Model
set Name='Dinesh',Type='father'
where firstName='ravi'

update Address_Book_Model
set Name='Rahul',Type='brother'
where firstName='Pawan'


-------UC-10------Ability to get number of contact person----------

select count(Type) from Address_Book_Model