-- 3¡¢ÊÇ·ñºöÂÔnull
select sum(commission_pct),avg(commission_pct),sum(commission_pct)/35,sum(commission_pct)/107
from employees;

select max(commission_pct),min(commission_pct)
from employees;

select count(commission_pct) from employees;
select commission_pct from employees;
