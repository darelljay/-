create table TBL_HBO_202404(
hubo_no varchar2(2) primary key,
grade number(1),
class number(1),
name varchar2(20)
)

insert all 
into TBL_HBO_202404 (hubo_no,grade,class,name) values(1,2,1,'이면반')
into TBL_HBO_202404 (hubo_no,grade,class,name) values(2,2,2,'함덕훈')
into TBL_HBO_202404 (hubo_no,grade,class,name) values(3,2,3,'이정식')
into TBL_HBO_202404 (hubo_no,grade,class,name) values(4,2,4,'이낙엽')
into TBL_HBO_202404 (hubo_no,grade,class,name) values(5,2,5,'조군')
select * from dual;

create table TBL_TUPYO_202404(
id varchar2(5) primary key,
select_hubo_no varchar2(2),
ymd date,
delete_fg char(1)
)

insert all
into TBL_TUPYO_202404 (id,select_hubo_no,ymd,delete_fg) values('30301','1','20240416',0)
into TBL_TUPYO_202404 (id,select_hubo_no,ymd,delete_fg) values('30302','4','20240416',0)
into TBL_TUPYO_202404 (id,select_hubo_no,ymd,delete_fg) values('30303','2','20240416',0)
into TBL_TUPYO_202404 (id,select_hubo_no,ymd,delete_fg) values('30304','3','20240416',0)
into TBL_TUPYO_202404 (id,select_hubo_no,ymd,delete_fg) values('30305','2','20240416',0)
into TBL_TUPYO_202404 (id,select_hubo_no,ymd,delete_fg) values('30306','2','20240416',0)
into TBL_TUPYO_202404 (id,select_hubo_no,ymd,delete_fg) values('30307','2','20240416',0)
into TBL_TUPYO_202404 (id,select_hubo_no,ymd,delete_fg) values('30308','3','20240416',0)
into TBL_TUPYO_202404 (id,select_hubo_no,ymd,delete_fg) values('30309','','20240416',1)
into TBL_TUPYO_202404 (id,select_hubo_no,ymd,delete_fg) values('30310','1','20240416',0)
select * from dual;

update TBL_HBO_202404 set hubo_no = '1' where hubo_no = '6';

select hubo_no from TBL_HBO_202404 where name = '조군' 

select name from TBL_HBO_202404 where hubo_no =1

select hubo_no, name, (select select_hubo_no  from TBL_TUPYO_202404 where select_hubo_no = 1 ) from TBL_HBO_202404

select select_hubo_no from TBL_TUPYO_202404 order by desc

select * from TBL_TUPYO_202404 order by select_hubo_no desc