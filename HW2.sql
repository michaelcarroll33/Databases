CREATE TABLE customer (
    Fname varchar2(15),
    Lname varchar2(15),
    ssn char(9),
    address varchar2(50),
    creditscore varchar2(3),
    routingnumber varchar2(9),
    primary key (ssn),
    foreign key (routingnumber) references branch(routingnum)
);

CREATE TABLE account (
    accountnum varchar2(10) not null,
    interestrate numeric(4,3),
    accounttype varchar2(10),
    primary key (accountnum)
);

CREATE TABLE branch (
    routingnum varchar2(9) not null,
    cashbalance numeric(8,2),
    city varchar2(10),
    primary key (routingnum)
);

CREATE TABLE loan (
    loannum varchar2(15),
    loantype varchar2(15),
    maturity numeric(2,0),
    interestrate numeric(4,3),
    amount numeric(8,2),
    cssn varchar2(9),
    primary key (loannum),
    foreign key (cssn) references customer(ssn)
);