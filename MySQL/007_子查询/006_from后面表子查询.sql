-- FROM����

-- ����1����ѯÿ�����ŵ�ƽ�����ʵĹ��ʵȼ�
-- ��.��ѯÿ�����ŵ�ƽ������
select avg(salary),department_id from employees group by department_id ;
-- ��.��ѯ���ʵȼ���Ϣ
/*
����job_grades��
 CREATE TABLE job_grades
           (grade_level VARCHAR(3),
           lowest_sal  int,
           highest_sal int);
INSERT INTO job_grades
VALUES ('A', 1000, 2999);
INSERT INTO job_grades
VALUES ('B', 3000, 5999);
INSERT INTO job_grades
VALUES('C', 6000, 9999);
INSERT INTO job_grades
VALUES('D', 10000, 14999);
INSERT INTO job_grades
VALUES('E', 15000, 24999);
INSERT INTO job_grades
VALUES('F', 25000, 40000);
*/
select * from job_grades;
-- ��.���ӢٵĽ������job_grades��,ɸѡ����ƽ������between lowset_sal and highest_sal
select ag_dep.*,g.grade_level
from (
     select avg(salary) ag,department_id
     from employees e
     group by department_id) ag_dep
inner join job_grades g
on ag_dep.ag
between lowest_sal and highest_sal;
