describe employees ;
describe titles ;
#zad6
#6 Wyświetl listę pracowników urodzonych po 1960 roku. Posortuj pracowników od najmłodszego do najstarszego.
select * 
from employees 
where birth_date > '1960-12-31'
order by(birth_date) desc; 

#zad7
#7 Policz, jaka jest średnia pensja każdego pracownika.
select avg(salary), emp_no
from salaries
group by(emp_no) ;

#zad8
#8 Wyświetl imię i nazwisko pracowaników zatrudnionych po 1990. 
select first_name, last_name
from employees 
where hire_date > '1990-12-31' ;

#zad9
#9 Zlicz ile w firmie jest kobiet zatrudnionych po 1 marca 1985 roku.
select count(*) 
from employees 
where hire_date > '1985-03-01' and gender = 'F';

#zad10 
#10 Wyświetl listę pracowaników: imię, naziwsko, nazwa stanowiska, których imię zaczyna się na A i nazwisko zawiera literę a.

select count(first_name)
from employees 
left join titles
on employees.emp_no = titles.emp_no
where first_name like 'A%' and last_name like '%a' ;

