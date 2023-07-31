
create table productList(
	pseq number(5),
	name varchar2(50),
	brand varchar2(50),
	quantity number(5),
	indate date default sysdate,
	price number(6),
	primary key (pseq)
);
create sequence productList_seq start with 1;
drop table productList;
select * from productList;


create table brandList(
	bseq number(5),
	title varchar2(50),
	primary key (bseq)
);

create sequence brandList_seq start with 1;


insert into productList (pseq, name, brand, quantity,price)
values (productList_seq.nextval, '베르가못 바지', '베르가못', '4', '50000');

insert into brandList (bseq, title)
values (brandList_seq.nextval, '베르가못');
insert into brandList (bseq, title)
values (brandList_seq.nextval, '브런치');
insert into brandList (bseq, title)
values (brandList_seq.nextval, '헬베티카');
