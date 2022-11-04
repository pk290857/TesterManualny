#zad1
# Wyświetl wszystkie dane o pracownikach.
select * 
from employees ;
#zad2 
# Wyświetl kod i nazwę wszystkich produktów.
select product_code, product_name
from products ;
#zad3
#3 Wyświetl wszystkie dane adresowe dostawców.
select address, city, state_province, zip_postal_code, country_region
from suppliers ;
#zad4
#4 Wyświetl wszystkie dane o pracownikach, którzy mieszkają w Redmond.
select *
from employees
where city = 'Redmond' ;
#zad5
#5 Wyświetl kod i nazwę wszystkich produktów, które nie należą do kategorii: Napoje.
select product_code, product_name, category
from products
where category <> 'Beverages' ;
#zad6
#6 Wyświetl wszystkie dane produktów, których koszt zakupu jest większy niż 12.0000.
select * 
from products
where standard_cost > 12.0000 ; 
#zad7
#7 Wyświetl miasto, adres dostawy i opłatę za przewóz zamówienia, którego opłata za przewóz mieści się w przedziale 20.0000 a 78.1223.
select *
from orders
where shipping_fee between 20.0000 and 78.1223 ;
#zad8
#8 Wyświetl wszystkie informacje o produktach, które mają określona minimalną liczbę zawmówienia.
select *
from products 
where minimum_reorder_quantity IS NOT NULL  ; 
#zad9
#9 Wyświetl wszystkie informacje o produktach, które mają określona minimalną liczbę zawmówienia i ich koszt jest mniejszy niż 10.0000.
select *
from products 
where minimum_reorder_quantity IS NOT NULL and standard_cost <10.0000 ; 
#zad10
#10 Wyświetl imię, nazwisko i miasto zamieszkania pracowników, kórych miasto zamieszkania kończy się na nd.
select first_name, last_name, city
from employees
where city like '%nd' ; 
#zad11
#11 Wyświetl imię, nazwisko i miasto zamieszkania pracowników, kórych miasto zamieszkania kończy się na nd i jest nie jest to Redmond.
select first_name, last_name, city
from employees
where city like '%nd' and city <> 'redmond' ; 
#zad12
#12 Wyświetl informacje o klientach, którzy nie są menadżerami.
select *
from customers
where job_title not like '%Manager%' ; 
#zad13
#13 Wyświetl informacje o klientach, których imie zaczyna się na J lub nazwisko zawiera literę o i są menadżerami.
select *
from customers
where (first_name like 'J%' or last_name like '%o%') and job_title like '%Manager%' ; 
#zad14
#14 Wyświetl informacje o produktach, których id dostawcy równa się 4 lub 6 lub 7
select *
from products 
where supplier_ids in(4,6,7) ; 
#zad15
#15 Wyświetl imię, nazwisko i miasto zamieszkania pracowników, kórych miasto zamieszkania kończy się na nd i nie jest to Redmond. Wyniki posrtuj od Z do A względem imienia.
select first_name, last_name, city
from employees
where city = 'redmond'
order by first_name desc ;
#zad16
#16 Zaprezentuj wszytkie produkty posortowe od najmniejszej ceny zakupu (standard_cost).
select *
from products
order by standard_cost ;
#zad17
#17 Zaprezentuj wszytkie produkty posortowe od najmniejszej ceny zakupu (standard_cost) i największej ceny sprzedaży (list_price).
select *
from products
order by standard_cost , list_price desc ; 
#zad18
#18 Podaj listę zawodów (nie mogą się powtarzać), jakie posiadają nasi klienci.
select distinct job_title
from customers ;
#zad19
#19 Wyświetl listę kategorii produktów, które posiadamy w bazie. Posortuj po nazwie kategorii malejąco.
select distinct category
from products
order by category desc ;
#zad20
#20 Zaprezentuj raport dla dyrekcji, który będzie zawierał następujące kolumny: Imie_Pracownika, Nazwisko_Pracowanika, Miasto. Na raporcie umieść tylko pracowników z Seattle.
select first_name as Imie_Pracownika, last_name as Nazwisko_Pracownika, city as Miasto
from employees
where city = 'seattle' ; 
#zad21
#21 Przedstaw przełożonemu raport, który będzie zawierała miasto, adres dostawy i opłatę za przewóz zamówienia, którego opłata za przewóz mieści się w przedziale 19.1256 a 78.1999.
select * #ship_city as Miasto, ship_address as 'adres dostawy', shipping_fee as 'oplata za przewoz'
from orders
where shipping_fee between 19.1256 and 78.1999 ;
#zad22
#22 Zlicz liczbę wszytstkich zamówień.
select count(*)
from orders ;
#zad23
#23 Zlicz liczbę wszystkich zamówień opłaconych kartami kredytowymi.
select count(*)
from orders
where payment_type = 'Credit Card' ; 
#zad24
#24 Zlicz liczbę wszystkich nieopłaconych zamówień.
select count(*)
from orders
where paid_date is null ; 
#zad25
#25 Wyświetl maksymalną opłatę za transport zamówienia.
select max(shipping_fee)
from orders ; 
#zad26
#26 Jaki jest najtańszy produkt kupiony od dostawy o id = 10.
select min(standard_cost)
from products
where supplier_ids = 1 ;
#zad27
#27 Ile wynosi średnia opłata za przesyłkę w założonych zamówieniach, uwzględniając tylko opłatę większą niz 0.
select avg(shipping_fee)
from orders
where shipping_fee > 0 ; 
#zad28
#28 Ile łącznie zamówiono produktu Northwind Traders Coffee (id=43)
select sum(quantity)
from order_details
where product_id = 43 ; 
#zad29
#29 Wyświetl minimalny koszt produktu w danej kategorii.
select min(standard_cost), category
from products
group by category ;
#e.g. order by category desc
#zad30
#30 Wskaż jakie zawody wykonują klienci oraz ile osób zadeklarowało dany zawód.
select count(*) , job_title
from customers
group by job_title ; 
#zad31
#31 Wyświetl wszystkie dane produktu oraz dane firmy, która go dostarcza.
select *
from products
join suppliers
on products.supplier_ids = suppliers.id ; 
#zad32
#32 Wyświetl nazwę produktu i nazwę firmy, która go dostarcza. Posortuj po nazwie firmy od A do Z.
select product_name, company
from products
join suppliers
on products.supplier_ids = suppliers.id 
order by company ; 
#zad33
#33 Wyświetl dane klientów (imie, nazwisko, adres, miasto, kraj), którzy nie dokonali jeszcze płatności za zamówienie.
select distinct(customers.id), first_name, last_name, address,city,country_region
from orders
join customers
on orders.customer_id = customers.id
where paid_date is null ; 
#zad33p
select  first_name, last_name, address,city,country_region
from orders
join customers
on orders.customer_id = customers.id
where paid_date is null ; 
#group by (customers.id) ; 
#zad34
#34 Przygotuj raport, który zawiera wszystkie dane o zamówieniach i firmach, które dostarczają dane zamówienie. Raport powinien zawierać wszystkie zamówienia wraz z tymi bez określonego jeszcze dostawcy.
select *
from orders 
left join shippers
on orders.shipper_id = shippers.id ; 
#zad35
#35 Zweryfkikuj czy wszyscy klienci złożyli już zamówienie. Wyswietl nazwy wszystkich klientów wraz z datą zamówienia i datą dostawy zamówienia. 
select first_name,last_name, order_date,shipped_date
from customers
left join orders
on customers.id = orders.customer_id ;
#zad36
#36 Zweryfikuj dla księgowości czy wszystkie faktury zostały już opłacone. Przygotuj raport zawierający kolumny 'Data faktury' i 'Data płatności'.
select order_id, invoice_date as 'Data faktury' ,paid_date as 'data platnosci', orders.id
from invoices
left join orders 
on invoices.order_id = orders.id ; 
#zad37
#37 Dyrekcja prosi o przygotowanie raportu, który wykaże, czy wszyscy pracownicy składali zamówienia. Raport powienien zawierać datę zamówienia, nazwisko pracowanik i jego stanowisko pracy. Ilu pracowników nie złożyło zamówienia?
select order_date, last_name , job_title
from orders
right join employees
on orders.employee_id = employees.id ; 
#zad37part2
select count(last_name)
from orders
right join employees
on orders.employee_id = employees.id
where order_date is null ;
#zad38
#38 Przygotuj zestawienie, które będzie zawierało dane: nazwa klienta, data zawmówieniam i data dostawy.
select first_name,last_name, order_date, shipped_date
from customers
right join orders
on orders.customer_id = customers.id ;
#pierwotnie mialem from orders fright join customers, ale to ma chyba byc zestawienie zamowien, wiec faktycznie
#nie ma co wypisywac wszystkich klientow (tylko wszystkie zamowienia) 
#zad39
#39 Zweryfikuj dla księgowości czy wszystkie faktury zostały wystawione. Przygotuj raport zawierający zamówienie bez wystawionej faktury kolumny 'Forma płatności', 'Data płatności' i 'Data faktury'.
select payment_type,paid_date,invoice_date
from invoices
right join orders
on invoices.order_id = orders.id
where ((payment_type is not null )or (paid_date is not null) ) and invoice_date is null