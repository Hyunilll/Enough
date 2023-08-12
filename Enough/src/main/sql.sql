
create table productList(
	pseq number(5),  
	name varchar2(50), 
	brand varchar2(50),
	quantity1 number(5),  
	quantity2 number(5) default 0,
	quantity3 number(5) default 0,
	quantity4 number(5) default 0,
	indate date default sysdate,
	price number(6),
	primary key (pseq)
);

// quantity1 미송수량
// quantity2 배송수량
// quantity3 재고수량
// quantity4 판매량
create sequence productList_seq start with 1;
drop table productList;
select * from productList;


create table brandList(
	bseq number(5),
	title varchar2(50),.
	primary key (bseq)
);


// 필요없음
CREATE TABLE completeList 
(
	name varchar2(50),
	quantity number(5),
	brand varchar2(50),
	price number(6)
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
