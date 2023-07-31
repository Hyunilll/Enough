
create table productList(
	pseq number(5),
	name varchar2(50),
	brand varchar2(50),
	quantity number(5),
	indate date default sysdate,
	price number(6),
	total number(10),
	primary key (pseq)
);
drop table productList;
select * from productList;

create sequence productList_seq start with 1;

insert into productList (pseq, name, brand, quantity,price)
values (productList_seq.nextval, '베르가못 바지', '베르가못', '4', '50000');

