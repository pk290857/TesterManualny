describe employees ;

#zad26
#26 Wypisz imię i płeć pracowników: mężczyzn, których imię zaczyna się na P i kobiet, których imię zaczyna się na A.
select first_name, gender
from employees
where (first_name like 'P%' and gender = 'M') or (first_name like 'A%' and gender = 'F') ;

#zad27
#27 Wyświetl numer pracownika (emp_no), nazwę departamentu oraz zakres dat kiedy tam pracował. Wyniki posortuj względem numeru pracownika od najmniejszego.
describe dept_emp ;
describe departments ;
describe dept_manager;
select count(*)
from dept_emp
left join departments
on dept_emp.dept_no = departments.dept_no
order by emp_no ;

#zad28
#28 Wyszukaj pracowników i wyświetl numer pracownika (emp_no), nazwę departamentu oraz zakres dat kiedy tam pracował, którzy zmienili choć raz stanowisko przed 1 stycznia 2000.
select emp_no, dept_name, from_date, to_date
from dept_emp
left join departments
on dept_emp.dept_no = departments.dept_no
where to_date < '2000-01-01' ;

#zad29
#29 Zweryfikuj, czy jakiś z pracowników zmienił dział więcej niż 1 raz.
select count(dept_no), emp_no
from dept_emp 
group by emp_no
order by count(dept_no) desc ;

#zad30
#30 ZLicz ilu jest w firmie pracowników, którzy pracują na stanowiskach Engineer i Senior Engineer.
describe titles ;

select count(*), title
from titles
where title = "Engineer" or title = "Senior Engineer" 
group by title;

