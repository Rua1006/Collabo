-- 고객 테이블
create table USER_TB(
    user_no number(19) primary key,
    user_id varchar2(20),
    user_pw varchar2(300) not null,
    user_name varchar2(50),
    email varchar2(100) not null,
    tel varchar2(20) not null,
    addr1 varchar2(200),
    addr2 varchar2(200),
    postcode varchar2(10),
    regdate date default sysdate,
    pt int default 100,
    visited int default 0
    );
create sequence user_sq;
    
-- user_no는 외래키를 위한 컬럼
insert into user_tb values(user_sq.nextval,'dumy', '1234','더미','dumy@goole.com','010-0000-0000','서울','도곡동','404',sysdate,100,0);
select * from user_tb;

-- id를 long 이나 int로 바꿀것
-- 티켓 테이블(일반예매)
create table ticket (
    id number(19) primary key,
    name varchar(100) not null,
    price int not null,
    buydate varchar(100)
    );
-- 티켓 아이디 자동증가
create sequence ticket_sq;



-- 테스트 티켓 예매
create table test_ticket(
     id number(19) primary key,
     resdate date,
     personal int
    );
    select * from test_ticket;

drop table test_ticket;



insert into ticket values (ticket_sq.nextval,'일반',1000);
desc ticket;
select * from ticket;



-- 티켓 테이블(패스트트랙예매)
create table ticket2 (
    id number(19) primary key,
    name varchar(100) not null,
    price int not null,
    buydate varchar(100)
    );
insert into ticket2 values (ticket_sq.nextval,'패스트',2000);



-- 고객 티켓 테이블
create table user_ticket (
    id number(19) primary key,
    ticketid number(19) not null,
    constraint fk_ticketid foreign key(ticketid) references ticket (id),
    userid number(19) not null,
    constraint fk_userid foreign key(userid) references user_tb (user_no),
    buydate date default sysdate
    );
-- 티켓 테이블 참조 : 외래키(id)
-- 회원 테이블 참조 : 외래키(id)

insert into user_ticket values (userticket_sq.nextval, 1 , 1, sysdate);


select * from user_tb;
select * from user_ticket;

create sequence userticket_sq;
desc user_ticket;
select * from user_ticket;

-- 놀이기구 테이블
create table attraction (
    id number(19) primary key,
    name varchar(1000) not null
    );

desc attraction;
create sequence attr_sq;

insert into attraction values(attr_sq.nextval, '샘플');
select*from attraction;


-- 놀이기구 사용시간 테이블
create table attrtime (
    id number(19) primary key,
    time varchar(1000) not null,
    seat varchar(50),
    attrid number(19) not null,
     constraint fk_attrid foreign key(attrid) references attraction (id)
    );
desc attrtime;
create sequence time_sq;

insert into attrtime values(time_sq.nextval, '09:00-10:00', '40', 1);


--테스트중
commit;