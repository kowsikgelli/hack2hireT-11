LOAD DATA INFILE 'D:/11.csv' 
INTO TABLE customer_info 
FIELDS TERMINATED BY ',' 
IGNORE 1 ROWS;

select * from customer_info;
delete from customer_info where open_date="0000-00-00 00:00:00";

select * from customer_info;

create table customer_account_info (account_key varchar(20) unique,
primary_party_key varchar(20) unique,
actt_open_date varchar(20)
);

desc customer_account_info;
LOAD DATA INFILE 'D:/22.csv' 
INTO TABLE customer_account_info 
FIELDS TERMINATED BY ',' 
IGNORE 1 ROWS;

drop table customer_account_info; 
desc customer_account_info;

create table customer_account_info (account_key varchar(20) unique,
primary_party_key varchar(20),
actt_open_date varchar(20)
);

LOAD DATA INFILE 'D:/22.csv' 
INTO TABLE customer_account_info 
FIELDS TERMINATED BY ',' 
IGNORE 1 ROWS;
drop table customer_account_info;

create table customer_account_info (account_key varchar(20) unique,
primary_party_key varchar(20),
actt_open_date varchar(20)
);

LOAD DATA INFILE 'D:/22.csv' 
INTO TABLE customer_account_info 
FIELDS TERMINATED BY ',' 
IGNORE 1 ROWS;

drop table customer_account_info;
create table customer_account_info (account_key varchar(20),
primary_party_key varchar(20),
actt_open_date varchar(20)
);

LOAD DATA INFILE 'D:/22.csv' 
INTO TABLE customer_account_info 
FIELDS TERMINATED BY ',' 
IGNORE 1 ROWS;

drop table customer_account_info;
create table transacations (Transfer_Key varchar(20),
 Account_Key varchar(20),
Transaction_Amount int(20),
Transaction_Type varchar(20),
 Transaction_Origin varchar(20),
  Transaction_Date timestamp
);
lOAD DATA INFILE 'D:/33.csv' 
INTO TABLE transacations 
FIELDS TERMINATED BY ',' 
IGNORE 1 ROWS;

select * from transacations;
drop table transacations;
create table transacations (Transfer_Key varchar(20),
 Account_Key varchar(20),
Transaction_Amount int(20),
Transaction_Type varchar(20),
 Transaction_Origin varchar(20),
  Transaction_Date timestamp(6)
);
lOAD DATA INFILE 'D:/33.csv' 
INTO TABLE transacations 
FIELDS TERMINATED BY ',' 
IGNORE 1 ROWS;
select * from transacations;
desc customer_info;
select * from transacations;
drop table transacations;
create table transacations (Transfer_Key varchar(20),
 Account_Key varchar(20),
Transaction_Amount int(20),
Transaction_Type varchar(20),
 Transaction_Origin varchar(20),
  Transaction_Date varchar(20)
);

lOAD DATA INFILE 'D:/33.csv' 
INTO TABLE transacations 
FIELDS TERMINATED BY ',' 
IGNORE 1 ROWS;
select * from transacations;

create table transacations (Transfer_Key varchar(20),
 Account_Key varchar(20),
Transaction_Amount int(20),
Transaction_Type varchar(20),
 Transaction_Origin varchar(20),
  Transaction_Date timestamp(6)
);
alter table transacations modify Transaction_Date date;
select * from transacations;
alter table transacations modify Transaction_Date timestamp;
select * from transacations;

drop table transacations;
create table transacations (Transfer_Key varchar(20),
 Account_Key varchar(20),
Transaction_Amount int(20),
Transaction_Type varchar(20),
 Transaction_Origin varchar(20),
  Transaction_Date timestamp(6)
);

lOAD DATA INFILE 'D:/33.csv' 
INTO TABLE transacations 
FIELDS TERMINATED BY ',' 
IGNORE 1 ROWS;
select * from transacations;
select * from transacations;
drop table transacations;
create table transacations (Transfer_Key varchar(20),
 Account_Key varchar(20),
Transaction_Amount int(20),
Transaction_Type varchar(20),
 Transaction_Origin varchar(20),
  Transaction_Date timestamp(6)
);

lOAD DATA INFILE 'D:/33.csv' 
INTO TABLE transacations 
FIELDS TERMINATED BY ',' 
IGNORE 1 ROWS;

drop table transacations;
create table transacations (Transfer_Key varchar(20),
 Account_Key varchar(20),
Transaction_Amount int(20),
Transaction_Type varchar(20),
 Transaction_Origin varchar(20),
  Transaction_Date varchar(20)
);
lOAD DATA INFILE 'D:/33.csv' 
INTO TABLE transacations 
FIELDS TERMINATED BY ',' 
IGNORE 1 ROWS;

create table rules(rule_indicator varchar(20), 
description varchar(20));

insert into rules values('h1','If there are more than 10 incoming or
outgoing (INN | OUT) transaction in a month
from high risk country');
select * from rules;
insert into rules values('h2','If sum of all incoming(INN) transaction is
more than 1000$ in a month.');
insert into rules values('h3','If sum of all outgoing (OUT) transaction
is more than 800$ in a month.');
insert into rules values('h4','If number of transaction in a day is more
than 20.');
select * from rules;
insert into rules values('m1','M1: If there more than 6 incoming or outgoing
(INN | OUT) transaction in a month from high
risk/Non-high country.');
insert into rules values('m2','If sum of all incoming(INN) transaction is
more than 600$ and less than 1000$ in a
month.');
insert into rules values('m3','If sum of all outgoing (OUT) transaction is
more than 500$ and less than 800$ in a
month.');
insert into rules values('m4',': If number of transaction in a day is more
than 10 but less than 20.');
select * from rules;
insert into rules values('l1',': If there less than 10 incoming or outgoing
(INN | OUT) transaction in a month from
non-high-risk country.');
insert into rules values('l2','If sum of all incoming(INN) transaction is
less than 600$ in a month.');
insert into rules values('l3','If sum of all outgoing (OUT) transaction is
less than 500$ in a month.');
insert into rules values('l4',': If number of transaction in a day is less
than 10.');
alter table rules modify description varchar(100);
select * from rules;
drop table rules;

create table rules(rule_indicator varchar(20), 
description varchar(20));

insert into rules values('h1','If there are more than 10 incoming or
outgoing (INN | OUT) transaction in a month
from high risk country');
select * from rules;
insert into rules values('h2','If sum of all incoming(INN) transaction is
more than 1000$ in a month.');
insert into rules values('h3','If sum of all outgoing (OUT) transaction
is more than 800$ in a month.');
insert into rules values('h4','If number of transaction in a day is more
than 20.');
drop table rules;
create table rules(rule_indicator varchar(20), 
description varchar(200));
insert into rules values('h1','If there are more than 10 incoming or
outgoing (INN | OUT) transaction in a month
from high risk country');
select * from rules;
insert into rules values('h2','If sum of all incoming(INN) transaction is
more than 1000$ in a month.');
insert into rules values('h3','If sum of all outgoing (OUT) transaction
is more than 800$ in a month.');
insert into rules values('h4','If number of transaction in a day is more
than 20.');

insert into rules values('m1','M1: If there more than 6 incoming or outgoing
(INN | OUT) transaction in a month from high
risk/Non-high country.');
insert into rules values('m2','If sum of all incoming(INN) transaction is
more than 600$ and less than 1000$ in a
month.');
insert into rules values('m3','If sum of all outgoing (OUT) transaction is
more than 500$ and less than 800$ in a
month.');
insert into rules values('m4',': If number of transaction in a day is more
than 10 but less than 20.');
select * from rules;
insert into rules values('l1',': If there less than 10 incoming or outgoing
(INN | OUT) transaction in a month from
non-high-risk country.');
insert into rules values('l2','If sum of all incoming(INN) transaction is
less than 600$ in a month.');
insert into rules values('l3','If sum of all outgoing (OUT) transaction is
less than 500$ in a month.');
insert into rules values('l4',': If number of transaction in a day is less
than 10.');
select * from rules;
create table rulesapply (country varchar(50),risk varchar(10), 
total_incoming_transaction_m int(20), total_outgoing_transaction_m int(20), total_in_out_trans_m int(20),
 amt_inc_trans_m int(30) , amt_out_trnas_m int(30), amt_inc_out_trans int(30),
incoming_trans_day int(30), outgoing_trans_day int(30), inc_out_day int(30), 
amt_inc_day int(30), amt_out_sum int(30), sum_inc_out_sum int(50), 
min_lim int(50), max_limit int(50));

insert into rulesapply values('high risk country', 'h1', 10,10,10,1000,1000,1000,NULL,NULL,null,null,null,null,null,null);
insert into rulesapply values(null, 'h2', null,null,null,1000,null,null,NULL,NULL,null,null,null,null,null,null);
insert into rulesapply values(null, 'h3', null,null,null,null,800,null,NULL,NULL,null,null,null,null,null,null);
insert into rulesapply values(null, 'h4', null,null,null,null,null,null,
20,20,20,null,null,null,null,null);

insert into rulesapply values('high or low risk country', 'm1', 
6,6,6,
null,null,null,
20,20,20,
null,null,null,
null,null);

insert into rulesapply values('null', 'm2', 
null,null,null,
null,null,null,
null,null,null,
null,null,null,
600,1000);

insert into rulesapply values('null', 'm3', 
null,null,null,
null,null,null,
null,null,null,
null,null,null,
500,800);
alter table rulesapply add no_t_d_lim int(10);
alter table rulesapply add no_t_d_limax int(10);
alter table rulesapply add ou_t_d_lim int(10);
alter table rulesapply add ou_t_d_limax int(10);
select * from rulesapply