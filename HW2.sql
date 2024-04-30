CREATE TABLE publisher (
    name varchar2(15) not null,
    address varchar2(50),
    phone varchar2(10),
    website varchar2(50),
    primary key (Name)
);
CREATE TABLE book (
    bookid varchar2(13) not null,
    title varchar2(40) not null,
    publicationdate varchar2(10) not null,
    publishername varchar(15) not null,
    primary key (bookid),
    foreign key (publishername) references publisher(name)
);