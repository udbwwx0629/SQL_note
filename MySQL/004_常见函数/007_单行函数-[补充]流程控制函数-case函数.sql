-- 2.case������ʹ��һ�� switch case ��Ч��

/*
java��
switch(��������ʽ){
	case ����1�����1;break;
	...
	default:���n;break;
}

mysql��
case Ҫ�жϵ��ֶλ���ʽ
when ����1 then Ҫ��ʾ��ֵ1�����1;
when ����2 then Ҫ��ʾ��ֵ2�����2;
...
else Ҫ��ʾ��ֵn�����n;
end
*/

/*
��������ѯԱ���Ĺ��ʣ�Ҫ��
���ź�=30����ʾ�Ĺ���Ϊ1.1��
���ź�=40����ʾ�Ĺ���Ϊ1.2��
���ź�=50����ʾ�Ĺ���Ϊ1.3��
�������ţ���ʾ�Ĺ���Ϊԭ����
*/

select salary ԭʼ����,department_id,
case department_id
when 30 then salary*1.1
when 40 then salary*1.2
when 50 then salary*1.3
else salary
end as �¹���
from employees;

-- 3.case ������ʹ�ö��������� ����if
/*
java�У�
if(����1){
	���1��
}else if(����2){
	���2��
}
...
else{
	���n;
}

mysql�У�
case
when ����1 then Ҫ��ʾ��ֵ1�����1
when ����2 then Ҫ��ʾ��ֵ2�����2
������
else Ҫ��ʾ��ֵn�����n
end
*/

-- ��������ѯԱ���Ĺ��ʵ����
�������>20000,��ʾA����
�������>15000,��ʾB����
�������>10000����ʾC����
������ʾD����

select salary,
case
when salary>20000 then 'A'
when salary>15000 then 'B'
when salary>10000 then 'C'
else 'D'
end as ���ʼ���
from employees;
