// 주문내역 
CREATE TABLE OrderList (
	oseq number(5),
	pseq number(5) not null,
	indate date default sysdate,
	quantity number(5),
	total number(10),
	kind number(1) deafult '0',
	primary key (oseq),
	foreign key (pseq)
);

// 재고사항 주문내역 중 배송완료이면 kind를 0에서 1로 바꾸고 kind가 1인 것으로 정렬
 
CREATE TABLE Inventory(
	iseq number(5),
	oseq number(5) not null,
	foreign key (oseq)
);

// 주문내역은 유지하되, 수량은 빼는 방법 모색..
CREATE TABLE 
