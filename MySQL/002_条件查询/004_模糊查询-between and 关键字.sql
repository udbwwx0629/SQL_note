-- 2.BETWEEN AND
/*
      ��.ʹ��between and ����������Եļ���
      ��.�����ٽ�ֵ(����>=100,<=120),��������100��120��
      ��.�����ٽ�ֵ��Ҫ����˳��
*/

-- ����1����ѯԱ�������100��120֮���Ա����Ϣ
    -- ����
    select * from employees where employee_id >=100 and employee_id <=120;
    -- ���(�Ƽ�)
    select * from employees where employee_id between 100 and 120;
