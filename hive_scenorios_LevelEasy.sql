--Scenario 1: filter the duplicate employees records
select * from
(select Id,Name,Technology,
row_Number() over (partition By Id,Name order by id desc) as row_num
from yourtable)tab
where row_num > 1;

--filter only employee_id
select employee_id,count(*) as emp_count from
employee group by employee_id having emp_count>1;

--**************************************************************************************************************************--
--Scenario 2: Filter the non-dulicate employee records
select * from
(select Id,Name,Technology,
row_Number() over (partition By Id,Name order by id desc) as row_num
from yourtable)tab
where row_num <=1;

--filter only employee_id
select employee_id,count(*) as emp_count from
employee group by employee_id having emp_count=1;

--**************************************************************************************************************************--

--Scenario 3: add the deposit to balance and subtract the withdraw to balance

select acc_no
,sum(balance + case when trans_type='deposit' then deposit_amt else (-1)*withdraw_amt end )
from account_transactions
group by acc_no;

--**************************************************************************************************************************--


--Scenorio 4: find employee earning second highest salary in company
select Id,Name,salary from(
select Id,Name,salary
rank() over (salary desc) as sal_rank
from employee) where sal_rank=2;

--find employee earning second highest salary for each department in company
select Id,Name,department,salary from(
select Id,Name,department,salary,
rank() over (partition by department salary desc) as sal_rank
from employee) where sal_rank=2;

--**************************************************************************************************************************--
