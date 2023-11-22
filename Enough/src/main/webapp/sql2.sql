// 주문내역 name은 상품목록에서 불러오기
CREATE TABLE OrderList (
	oseq number(5),
	name varchar2(50) not null, 
	indate date default sysdate,
	quantity number(5),
	total number(10),
	kind number(1) deafult '0',
	primary key (oseq),
);

// 재고사항 (주문내역 중 배송완료이면 kind를 0에서 1로 바꾸고 kind가 1인 것 or 아예 새로 만들기..)
CREATE TABLE Inventory(
	iseq number(5) primary key,
	name varchar2(50) not null, 
	quantity number(5) not null
);

// 상품목록 
CREATE TABLE ProductList(
	pseq number(5) primary key,
	name varchar2(50) not null,
	brand varchar2(50) not null, // 브랜드 테이블에서 가져올 것.
	price number(10) not null,

);

// 브랜드 목록
CREATE TABLE BrandList(
	bseq number(5) primary key,
	brand varchar2(50) not null 
);


// 해결사항..
// 1. 주문내역은 유지하되, 재고사항에서 수량 빼는 방법 모색..
// 2. 재고사항의 컬럼을 아예 새로 만들 것인지, 주문내역을 kind 칼럼을 기준으로 가져 올지
// 3. 2번의 문제를 kind=1이며 주문의 이름과 수량만 재고사항에 추가하도록 ?
// 4. 상품에 이미지를 넣을지 말지 넣을거라면 이전 코딩 공부 
// 5. ...
