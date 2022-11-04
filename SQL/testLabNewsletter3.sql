describe salaries ; 
describe employees ; 

#zad11
#11 Wyświetl maksymalną pensję dla każdego z pracowników
select max(salary), emp_no
from salaries 
group by(emp_no) ;

#zad12
#12 Zlicz ile w firmie jest kobiet, których pensa jest pomiędzy 25000 a 50000
select salaries.emp_no
from salaries
left join employees
on salaries.emp_no = employees.emp_no 
where gender = 'F'  and salary between 25000 and 50000 
group by salaries.emp_no;
#i to trzeba teraz przekopiowac do excela i zliczyc liczbe wierszy, wychodzi 1000

SELECT * FROM employees JOIN salaries ON employees.emp_no = salaries.emp_no WHERE gender = "F" AND salary BETWEEN 25000 AND 50000;

#zad13
#13 Zlicz ilu jest w firmie mężczyzn zatrudnionych przed 1 lutym 1990 roku, których imię zaczyna się na K.
select count(emp_no)
from employees
where gender = 'M'  and first_name like "K%" and hire_date < "1990-02-01"
;

#zad14
#14 Oblicz jak jest różnica pomiędzy maksymalną a minimalną pensją w firmie (po słowie SELECT możesz dokonywać operacji matematycznych np. Select max(number) + min(number) ...).
select max(salary) - min(salary)
from salaries ;

#zad15
#15 Oblicz ile wyniosło średnie miesięczne zatrudnienie pracowników w roku 1987.
select count(*)/12
from employees
WHERE hire_date > '1986-12-31' AND hire_date < '1988-01-01' ;