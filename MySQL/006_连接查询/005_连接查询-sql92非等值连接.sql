-- ����:��ѯԱ���Ĺ��ʺ͹��ʼ���,��ʾ�ȼ�A�Ĺ���
select salary,grade_level from employees e,job_grade g where salary between g.lowest_sal and higest_sal and g.grade_level ='A';
