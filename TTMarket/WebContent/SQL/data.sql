<카테고리>
create table tt_category(
seq int(11) not null auto_increment ,
categoryName varchar(20) not null,
description varchar(30),
primary key(seq)
)default charset=utf8;
 

<상품>
create table tt_product(
	p_id VARCHAR(10) NOT NULL,
	p_name VARCHAR(20),
	p_unitPrice  INTEGER,
	p_description TEXT,
   	p_category VARCHAR(20),
	p_manufacturer VARCHAR(20),
	p_unitsInStock LONG,
	p_condition VARCHAR(20),
	p_fileName  VARCHAR(20),
	PRIMARY KEY (p_id)
)default CHARSET=utf8;

<판매>
create table tt_sale(

seq int not null auto_increment,

saledate varchar(20),

sessionId varchar(50),

name varchar(20),

productId varchar(20),

unitprice int,

saleqty   int,

status int,  /* 1.결재 완료 2.배송 접수 3. 배송중  4.배송완료 5.수령완료*/

primary key(seq)

)default charset=utf8;

desc tt_sale;


<배송>
create table tt_delivery(
seq int not null auto_increment,
sessionId varchar(50),
name varchar(20),
deliverydate varchar(20),
nation varchar(20),
zipcode varchar(5),
address varchar(200),
primary key(seq)
)default charset=utf8;

<회원>
create table tt_member(
id varchar(20) not null,
password varchar(30) not null,
name varchar(50) not null,
birthday varchar(15),
gender varchar(4),
mail varchar(50) not null,
phone varchar(13) not null,
postcode varchar(5) not null,
address varchar(200) not null, 
detailAddress varchar(100) not null,
extraAddress varchar(50) not null,
grade varchar(10) not null,
regist_day varchar(50),
primary key(id)
)default charset=utf8;



desc tt_product;
select * from tt_member;
select * from tt_product;
INSERT INTO tt_product VALUES('P1234', 'iPhone 6s', 800000, '1334X750 Renina HD display, 8-megapixel iSight Camera','Smart Phone', 'Apple', 1000, 'new', 'P1234.png');
INSERT INTO tt_product VALUES('P1235', 'LG PC gram', 1500000, '3.3-inch,IPS LED display, 5rd Generation Intel Core processors', 'Notebook', 'LG', 1000, 'new', 'P1235.png');
INSERT INTO tt_product VALUES('P1236', 'Galaxy Tab S', 900000, '3.3-inch, 212.8*125.6*6.6mm,  Super AMOLED display, Octa-Core processor', 'Tablet', 'Samsung', 1000, 'new', 'P1236.png');

select * from tt_category;
select * from tt_sale;
select * from tt_delivery;

insert into tt_category(categoryName,description) values('NoteBook','NoteBook');
select * from tt_sale;
select * from tt_delivery;

select * from sale s, delivery d where s.sessionId='김순돌' and distinct(s.seq);

select * from tt_member;
select * from tt_delivery;
select * from tt_sale; 

truncate tt_sale;
truncate tt_delivery;


select s.saleDate,s.sessionId,s.productId,s.unitPrice,s.saleQty,s.status,d.name ,d.zipCode,d.address from tt_sale s, tt_delivery d where s.sessionId='홍길동' and s.seq=d.seq;

select * from tt_sale s, tt_delivery d where s.sessionId='홍길동' and s.name=d.name;
