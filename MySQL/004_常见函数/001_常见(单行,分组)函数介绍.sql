/*
���������java�ķ�������һ���߼�����װ�ڷ������У����Ⱪ¶������
�ô���1��������ʵ��ϸ��  2����ߴ����������
���ã�select ������(ʵ���б�) ��from ��;
�ص㣺
	�ٽ�ʲô����������
	�ڸ�ʲô���������ܣ�
���ࣺ
	1�����к���
	�� concat��length��ifnull��
	2�����麯��
	���ܣ���ͳ��ʹ�ã��ֳ�Ϊͳ�ƺ������ۺϺ������麯��

��������:
һ�����к���
 �ַ�������
 length:��ȡ�ֽڸ���(utf-8һ�����ִ���3���ֽ�,gbkΪ2���ֽ�)
 concat
 substr
 instr
 trim
 upper
 lower
 lpad
 rpad
 replace
 ��ѧ������
 round
 ceil
 floor
 truncate
 mod
 ���ں�����
 now
 curdate
 curtime
 year
 month
 monthname
 day
 hour
 minute
 second
 str_to_date
 date_format
 ����������
 version
 database
 user
 ���ƺ���:
 if
 case
*/

-- �������麯��
/*
���ܣ�����ͳ��ʹ�ã��ֳ�Ϊ�ۺϺ�����ͳ�ƺ������麯��
���ࣺ
sum ��͡�avg ƽ��ֵ��max ���ֵ ��min ��Сֵ ��count �������
�ص㣺
1��sum��avgһ�����ڴ�����ֵ��
                max��min��count���Դ����κ�����
2�����Ϸ��麯��������nullֵ
3�����Ժ�distinct����ʵ��ȥ�ص�����
4��count�����ĵ�������
      һ��ʹ��count(*)����ͳ������
5���ͷ��麯��һͬ��ѯ���ֶ�Ҫ����group by����ֶ�
*/


