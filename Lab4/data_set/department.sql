drop table department;

CREATE TABLE department (dname text not null, PRIMARY KEY (dname), numphds int not null);

set client_encoding = LATIN1;

COPY department(dname,numphds) from '/Users/Seva/CSCI4707/Lab4/data_set/department.dat' DELIMITERS ';';
