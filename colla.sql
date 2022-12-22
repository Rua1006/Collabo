create table ticket (
    id varchar(30) primary key,
    name varchar(100) not null,
    price int not null
    );

insert into ticket values ('dumy','dumy',1000);

desc ticket;
select * from ticket;

create table user_ticket (
    id varchar(30) primary key,
    ticketid varchar(30) not null,
    constraint fk_ticket foreign key(ticketid) references ticket (id)
    );

insert into user_ticket values ('dumy','dumy');

desc user_ticket;
select * from user_ticket;

commit;

