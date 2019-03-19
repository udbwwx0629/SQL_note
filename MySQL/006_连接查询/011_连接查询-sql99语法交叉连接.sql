-- 交叉连接
select b.*,bo.* from beauty b cross join boys bo;

-- sql92和sql99 PK
/*
功能:sql99支持的较多
可读性:sql99实现连接条件和筛选条件的分离可读性较高
*/
