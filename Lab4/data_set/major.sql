drop table major;

CREATE TABLE major (dname text not null, sid int not null, PRIMARY KEY (dname, sid));

set client_encoding = LATIN1;

COPY major(dname,sid) from '/Users/Seva/CSCI4707/Lab4/data_set/major.dat' DELIMITERS ';';
