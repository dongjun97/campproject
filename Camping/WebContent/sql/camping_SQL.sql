create table camp_info(
    id varchar2(20) PRIMARY key,
    password varchar2(20) not null,
    email varchar2(40) not null,
    tel varchar2(15) not null
    );
select * from camp_info;

create sequence camp_seq
	start with 1
	increment by 1
	minvalue 1
	maxvalue 10000;

create table camp_reserve (
    Num	number PRIMARY key,
    id varchar2(20) not null,
    rank varchar2(10) not null,
    startdate Date,
    enddate Date,
    bbq varchar2(5) not null,
    usernum varchar2(5),
    Content	varchar2(500),
    price number,
    FOREIGN KEY(id) REFERENCES camp_info(id)
);
select count(*) from camp_reserve where rank = 'vip';

create sequence camp_board_seq
	start with 1
	increment by 1
	minvalue 1
	maxvalue 10000;

create table camp_board(
    Num	number PRIMARY key,
    id varchar2(20) not null,
    subject varchar2(40) not null,
    REG_DATE DATE,          
    REF NUMBER,  
    RE_STEP NUMBER,        
    RE_LEVEL NUMBER,        
    READCOUNT NUMBER,        
    CONTENT VARCHAR2(500) NOT NULL, 
    FOREIGN KEY(id) REFERENCES camp_info(id)
);

select * from camp_board where ref = (select ref from camp_board where num = 6);

create sequence camp_nq_seq
	start with 1
	increment by 1
	minvalue 1
	maxvalue 10000;
    
create table camp_nq(
    Num	number PRIMARY key,
    subject varchar2(40) not null,
    REG_DATE DATE,                  
    CONTENT VARCHAR2(500) NOT NULL,
    op varchar2(20) not null
);