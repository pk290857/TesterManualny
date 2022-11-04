#zad1
#1 Przygotuj listę pracowników, którzy są mężczyznami, a ich imię zaczyna się na G lub nazwisko zawiera literę a.
select count(*)
from employees
where gender = 'M' and ( first_name like "G%" or last_name like "%a" ) ;

#zad2
#2 Policz, ile w firmie pracuje kobiet, których imię kończy się na a.
select count(gender)
from employees
where gender = 'F' and ( first_name like "%a" ) ;

#zad3
#3 Policz, jaka jest średnia pensja pracownika o id (emp_no) = 36567
select avg(salary) 
from salaries
where emp_no = 36567 ;

#zad4
#4 Wyświetl listę wszystkich pracowników zawierającą informacje: imię pracownika, nazwisko pracownika, nazwę stanowiska (title).
select first_name,last_name,title
from employees 
join titles
on employees.emp_no = titles.emp_no ;

describe titles ;

#zad5
#5 Policz, ilu jest pracowników, którzy mają nazwę stanowiska Staff
select count(title)
from employees 
join titles
on employees.emp_no = titles.emp_no 
where title = "Staff" ;