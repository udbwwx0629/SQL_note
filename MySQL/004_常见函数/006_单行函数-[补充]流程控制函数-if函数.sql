-- 1.if函数： if else 的效果

-- 案例:SELECT IF(10<5,'大','小');
select last_name,commission_pct,IF(commission_pct IS NULL,'没奖金，呵呵','有奖金，嘻嘻') 备注 FROM employees;