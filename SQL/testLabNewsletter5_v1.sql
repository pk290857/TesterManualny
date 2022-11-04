describe titles ;
#zad21
#21 ZLicz ilu jest w firmie pracowników, którzy posiadają tą samą nazwę stanowisk.
select count(emp_no) , title
from titles 
group by title;

#zad22
#22 Zlicz ile kobiet pracuje w firmie na stanowisku Manager. 
select count(*)
from titles
left join employees
on titles.emp_no = employees.emp_no 
where gender = 'F' and title like '%Manager%';
 
#zad23
#23 Wylicz średnią pensję mężczyz w firmie.
describe salaries ;
select avg(salary)
from salaries
join employees
on salaries.emp_no = employees.emp_no 
where gender = 'M';

#zad24
#24 Wskaż 4 najmniejszą pensję w firmie.
select salary
from salaries 
order by salary ;

select min(salary)
from salaries
where salary not in (38623,38735, 38786) ;

#zad25
#25 Wyświetl imiona pracowników w kolejności alfabetycznej, którzy zostali zatrudnieni w latach 1980 - 1995
describe employees ;

select first_name,last_name, hire_date
from employees 
where hire_date between '1980-01-01' and '1995-12-31'
order by first_name, last_name ;

