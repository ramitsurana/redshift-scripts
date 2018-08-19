-- Using Deep Copy Method

create table <NEW-TABLE-NAME> (like <ORIGINAL-TABLE-NAME>);
insert into <NEW-TABLE-NAME> (select * from <ORIGINAL-TABLE-NAME>);
drop table <ORIGINAL-TABLE-NAME>;
alter table <NEW-TABLE-NAME> rename to <ORIGINAL-TABLE-NAME>;
