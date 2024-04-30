--DROP TABLE customer CASCADE CONSTRAINTS;
--DROP TABLE account CASCADE CONSTRAINTS;
--DROP TABLE branch CASCADE CONSTRAINTS;
--DROP TABLE loan CASCADE CONSTRAINTS;

CREATE TABLE branch (
    routingnum varchar2(9) not null,
    city varchar2(10),
    primary key (routingnum)
--    foreign key (routingnum) references customer(routingnumber)
);

CREATE TABLE customer (
    Fname varchar2(15),
    Lname varchar2(15),
    ssn varchar2(9) not null,
    address varchar2(50),
    creditscore varchar2(3),
    routingnumber varchar2(9),
    primary key (ssn),
    foreign key (routingnumber) references branch(routingnum)
);
CREATE TABLE account (
    accountnum varchar2(10) not null,
    interestrate number(4,3),
    accounttype varchar2(10),
    cssn varchar2(9),
    accountbalance number(8,2),
    primary key (accountnum),
    foreign key (cssn) references customer(ssn)
);

CREATE TABLE loan (
    loannum varchar2(15),
    loantype varchar2(15),
    maturity number(2,0),
    interestrate number(4,3),
    amount number(8,2),
    cssn varchar2(9),
    primary key (loannum),
    foreign key (cssn) references customer(ssn)
);

--Generated random data by ChatGPT 3.5 

--Insert branches:
--use this format for the branch inserts: INSERT INTO branch(routingnum,city) VALUES ('948563293', 'Houston');
INSERT INTO branch(routingnum, city)
VALUES ('123456789', 'Houston');

INSERT INTO branch(routingnum, city)
VALUES ('987654321', 'New York');

-- Insert records for customers:
-- Chat GPT prompt:
-- use this format for the account inserts where none of last 10 customers you gave me has more than two accounts: INSERT INTO account (accountnum, interestrate, accounttype, cssn) VALUES ('ACC001', 0.02, 'savings', '111111111');
INSERT INTO customer (Fname, Lname, ssn, address, creditscore, routingnumber)
VALUES ('Alice', 'Johnson', '111111111', '789 Oak St', '780', '123456789');

INSERT INTO customer (Fname, Lname, ssn, address, creditscore, routingnumber)
VALUES ('Bob', 'Williams', '222222222', '456 Maple Ave', '720', '987654321');

INSERT INTO customer (Fname, Lname, ssn, address, creditscore, routingnumber)
VALUES ('Charlie', 'Brown', '333333333', '321 Pine St', '680', '123456789');

INSERT INTO customer (Fname, Lname, ssn, address, creditscore, routingnumber)
VALUES ('David', 'Lee', '444444444', '987 Cedar Ln', '750', '123456789');

INSERT INTO customer (Fname, Lname, ssn, address, creditscore, routingnumber)
VALUES ('Emily', 'Smith', '555555555', '654 Walnut St', '700', '987654321');

INSERT INTO customer (Fname, Lname, ssn, address, creditscore, routingnumber)
VALUES ('Frank', 'Taylor', '666666666', '111 Birch St', '760', '123456789');

INSERT INTO customer (Fname, Lname, ssn, address, creditscore, routingnumber)
VALUES ('Grace', 'Martinez', '777777777', '222 Cedar St', '720', '987654321');

INSERT INTO customer (Fname, Lname, ssn, address, creditscore, routingnumber)
VALUES ('Henry', 'Davis', '888888888', '333 Elm St', '690', '123456789');

INSERT INTO customer (Fname, Lname, ssn, address, creditscore, routingnumber)
VALUES ('Isabella', 'Wilson', '999999999', '444 Oak Ave', '780', '987654321');

INSERT INTO customer (Fname, Lname, ssn, address, creditscore, routingnumber)
VALUES ('Jack', 'Anderson', '123456789', '555 Maple Ln', '730', '123456789');

-- Insert records for accounts
-- Chat GPT prompt:
-- do this except with 10 unique names: INSERT INTO customer (Fname, Lname, ssn, address, creditscore, routingnumber, accountbalance) VALUES ('Alice', 'Johnson', '111111111', '789 Oak St', '780', '123456789', '23042.28');
INSERT INTO account (accountnum, interestrate, accounttype, cssn, accountbalance)
VALUES ('ACC001', 0.02, 'savings', '111111111', 75028.29);

INSERT INTO account (accountnum, interestrate, accounttype, cssn, accountbalance)
VALUES ('ACC002', 0.03, 'checking', '111111111', 7830.01);

INSERT INTO account (accountnum, interestrate, accounttype, cssn, accountbalance)
VALUES ('ACC003', 0.025, 'savings', '222222222', 40293.25);

INSERT INTO account (accountnum, interestrate, accounttype, cssn, accountbalance)
VALUES ('ACC004', 0.035, 'checking', '222222222',7693.10);

INSERT INTO account (accountnum, interestrate, accounttype, cssn, accountbalance)
VALUES ('ACC005', 0.02, 'savings', '333333333', 8493.21);

INSERT INTO account (accountnum, interestrate, accounttype, cssn, accountbalance)
VALUES ('ACC006', 0.03, 'checking', '333333333', 1294.21);

INSERT INTO account (accountnum, interestrate, accounttype, cssn, accountbalance)
VALUES ('ACC007', 0.025, 'savings', '444444444', 653985.93);

INSERT INTO account (accountnum, interestrate, accounttype, cssn, accountbalance)
VALUES ('ACC008', 0.035, 'checking', '444444444', 90213.43);

INSERT INTO account (accountnum, interestrate, accounttype, cssn, accountbalance)
VALUES ('ACC009', 0.02, 'savings', '555555555', 10024.87);

INSERT INTO account (accountnum, interestrate, accounttype, cssn, accountbalance)
VALUES ('ACC010', 0.03, 'checking', '555555555', 3029.12);

INSERT INTO account (accountnum, interestrate, accounttype, cssn, accountbalance)
VALUES ('ACC011', 0.025, 'savings', '666666666', 359283.12);

INSERT INTO account (accountnum, interestrate, accounttype, cssn, accountbalance)
VALUES ('ACC012', 0.035, 'checking', '666666666', 23012.04);

INSERT INTO account (accountnum, interestrate, accounttype, cssn, accountbalance)
VALUES ('ACC013', 0.02, 'savings', '777777777', 8756.25);

INSERT INTO account (accountnum, interestrate, accounttype, cssn, accountbalance)
VALUES ('ACC014', 0.03, 'checking', '777777777', 1023.21);

INSERT INTO account (accountnum, interestrate, accounttype, cssn, accountbalance)
VALUES ('ACC015', 0.025, 'savings', '888888888', 23456.32);

INSERT INTO account (accountnum, interestrate, accounttype, cssn, accountbalance)
VALUES ('ACC016', 0.035, 'checking', '888888888', 8437.92);

INSERT INTO account (accountnum, interestrate, accounttype, cssn, accountbalance)
VALUES ('ACC017', 0.02, 'savings', '999999999', 54203.23);

INSERT INTO account (accountnum, interestrate, accounttype, cssn, accountbalance)
VALUES ('ACC018', 0.03, 'checking', '999999999', 21032.23);

INSERT INTO account (accountnum, interestrate, accounttype, cssn, accountbalance)
VALUES ('ACC019', 0.025, 'savings', '123456789', 473924.12);

INSERT INTO account (accountnum, interestrate, accounttype, cssn, accountbalance)
VALUES ('ACC020', 0.035, 'checking', '123456789', 9312.45);



--Insert loans
--Chat GPT prompt:
--use this format for the account inserts where the last 10 customers you gave me has <=3 loans: INSERT INTO loan (loannum, loantype, maturity, interestrate, amount, cssn) VALUES ('LOAN001', 'business loan', 60, 0.06, 50000, '111111111');
INSERT INTO loan (loannum, loantype, maturity, interestrate, amount, cssn)
VALUES ('LOAN001', 'business', 6, 0.06, 50000, '111111111');

INSERT INTO loan (loannum, loantype, maturity, interestrate, amount, cssn)
VALUES ('LOAN002', 'auto', 3, 0.05, 20000, '111111111');


INSERT INTO loan (loannum, loantype, maturity, interestrate, amount, cssn)
VALUES ('LOAN003', 'house', 2, 0.04, 300000, '222222222');


INSERT INTO loan (loannum, loantype, maturity, interestrate, amount, cssn)
VALUES ('LOAN004', 'business', 6, 0.06, 50000, '333333333');


INSERT INTO loan (loannum, loantype, maturity, interestrate, amount, cssn)
VALUES ('LOAN005', 'auto', 4, 0.05, 25000, '444444444');


INSERT INTO loan (loannum, loantype, maturity, interestrate, amount, cssn)
VALUES ('LOAN006', 'house', 2, 0.04, 300000, '555555555');


INSERT INTO loan (loannum, loantype, maturity, interestrate, amount, cssn)
VALUES ('LOAN007', 'business', 6, 0.06, 50000, '666666666');


INSERT INTO loan (loannum, loantype, maturity, interestrate, amount, cssn)
VALUES ('LOAN008', 'auto', 4, 0.05, 25000, '777777777');


INSERT INTO loan (loannum, loantype, maturity, interestrate, amount, cssn)
VALUES ('LOAN009', 'house', 2, 0.04, 300000, '888888888');


INSERT INTO loan (loannum, loantype, maturity, interestrate, amount, cssn)
VALUES ('LOAN010', 'business', 6, 0.06, 50000, '999999999');

-- Test queries
-- Find all information about employees where their bank is located in Houston, order by last name in ascending order.
select * from customer c, branch b where c.routingnumber = b.routingnum and b.city = 'Houston' order by c.lname asc;
-- Find the sum of the loans for every customer that has a credit score above 750.
select sum(amount) as Total_Safe_Loans from loan l, customer c where c.ssn = l.cssn and c.creditscore >= 750;
-- Find the average interest rate of all of the accounts run through Houston using a nested query
select round(avg(interestrate), 3) as Average_Interest_Rate from account a, customer c where c.ssn = a.cssn and c.routingnumber = 
(select b.routingnum from branch b where b.city = 'Houston');

