-- һ�����������ʽɸѡ

    -- ����1����ѯ����>12000��Ա����Ϣ
    select  * from employees where salary>12000;
    -- ����2����ѯ���ű�Ų�����90�ŵ�Ա�����Ͳ��ű��
    select last_name,department_id from employees where department_id <>90;

-- �������߼����ʽɸѡ
    -- ����1����ѯ������10000��20000֮���Ա�����������Լ�����
    select concat(last_name,'+',first_name) ����,salary ����,ifnull(commission_pct,0) ������ from employees where salary>=10000 and salary<=20000;
    -- ����2����ѯ���ű�Ų�����90��110֮��ģ����߹��ʸ���15000��Ա����Ϣ

-- ��һ��д��
select * from employees where department_id<90 or department_id>110 or salary>15000;
-- �ڶ���д��
select * from employees where not(department_id>=90 and department_id<=110) or salary>15000;