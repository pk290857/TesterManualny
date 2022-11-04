# zad40
# W swojej lokalnej bazie danych stwórz tabelę o nazwie students, która będzie zawierała następujące kolumny:
# student_id - typ danych: int (10)
# name - typ danych: varchar(64)
# surname - typ danych: varchar(128)
# email - typ danych: varchar(256) - adresy e-mail nie mogą się powtarzać w bazie
# class_id - typ danych: int(10)

create table studentsPawelKozow 
(
student_id int(10) auto_increment , 
student_name varchar(64) , 
student_surname varchar(128) , 
email varchar(255) unique ,
class_id int(10) ,
primary key(student_id)
) ;

select * 
from studentsPawelKozow ; 

#zad41
# Dodaj do swojej tabeli 'Students' minimum 5 studnetów. Dwóch studentów musi mieć to samo imie.

insert into studentsPawelKozow(student_name,student_surname,email,class_id)
values("Pawel","Kozow","pk@poczta.pl",2) ;

insert into studentsPawelKozow(student_name,student_surname,email,class_id)
values("Marcin","Mazankiewicz","mm@poczta.pl",2) ;

insert into studentsPawelKozow(student_name,student_surname,email,class_id)
values("Marcin","Owczarek","mo@poczta.pl",1);

insert into studentsPawelKozow(student_name,student_surname,email,class_id)
values("Piotr","Granat","pg@poczta.pl",3);

insert into studentsPawelKozow(student_name,student_surname,email,class_id)
values ("Pawel","Ogorek","po@poczta.pl",2) ;

select *
from studentsPawelKozow ; 

# zad42 
# Usuń z tabeli studentów, którzy mają to samo imię. 
delete from studentsPawelKozow 
where student_name = "Pawel" or student_name = "Marcin" ; 

select * 
from studentsPawelKozow ;

update studentsPawelKozow
set
student_name = "Piotrek"
where student_name = "Piotr" ; 

select *
from studentsPawelKozow ;

describe studentsPawelKozow ; 

# zad43
# Dodaj do tabeli 'Students' nową kolumnę 'city'. Zaktualizuj dane studentów i wpisz ich miasto zamieszkania.

alter table studentsPawelKozow add city varchar(30) ;

update studentsPawelKozow
set
city = "Opole" ;

select * from  studentsPawelKozow ;

update studentsPawelKozow
set
city = "Poznan"
where student_id =4 ; 

update studentsPawelKozow
set
city ="Warszawa"
where student_id =6 ; 

# "przeklikanie" jakiś innych komend ...
describe studentsPawelKozow ;

select *
from studentsPawelKozow ;

insert into studentsPawelKozow(student_name,student_surname,email,class_id)
values("Pawel","Kozow","pk@poczta.pl",2) ;

select * 
from studentsPawelKozow ;

describe studentsPawelKozow;

alter table studentsPawelKozow modify column city varchar(300) ;

