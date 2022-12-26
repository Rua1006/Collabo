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
-- 티켓 테이블
create table ticket (
    id number(19) primary key,
    name varchar(100) not null,
    price int not null
    );
-- 티켓 아이디 자동증가
create sequence ticket_sq;
--name : Y=일반 N=패스트
insert into ticket values (ticket_sq.nextval,'y',1000);
desc ticket;
select * from ticket;


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


commit;


-- 공지사항 테이블
create table board_tb(bno int primary key,
title varchar2(100) not null,
content varchar2(1000) not null,
author varchar2(20),
regdate date default sysdate,
visited int default 0
); 

create sequence bseq start with 1;

drop table board_tb;

select * from board_tb;

insert into board_tb values(bseq.nextval, '공지사항 테스트 제목1', '공지사항 테스트 내용1', 'admin', sysdate, 0);

commit;


-- 파일 첨부가 가능한 이용후기 게시판
create table review(rno int primary key,  
title varchar2(100) not null,  
content varchar2(1500) not null,   
regdate date,  
visited int,   
id varchar2(20),   
rec int
);

create sequence rseq start with 1;

--연간이용권 할인정보
create table yearDis (
    no number primary key,
    title varchar2(50),
    ydisA varchar2(10),
    ydisB varchar2(10),
    ydisC varchar2(10),
    ydisD varchar2(10),
    ydisE varchar2(10),
    period varchar2(50),
    target varchar2(50),
    caution varchar2(200)
);
drop table yearDis;
create SEQUENCE yseq;
insert into yearDis values (yseq.nextval, '더미 데이터', '200000', '150000', '120000', '100000', '110000', '2022-12-01 ~ 2022-12-31', '더미 타겟', '유의사항!');
select * from yeardis;
commit;