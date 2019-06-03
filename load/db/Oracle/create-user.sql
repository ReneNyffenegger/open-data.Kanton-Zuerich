--
-- sqlplus -S system/iAmSystem@ora18 @create-user
--
drop user kt_zh cascade;

create user kt_zh
  identified by kt_zh
  default tablespace data
  quota unlimited on data;

grant
   connect     ,
   create table
to
   kt_zh;

exit
