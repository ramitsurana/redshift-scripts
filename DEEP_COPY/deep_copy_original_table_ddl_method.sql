-- Fastest method in all the Deep Copy Methods

create table <NEW-TABLE-NAME> ( <DDL-QUERY> );
insert into <NEW-TABLE-NAME> (select * from <ORIGINAL-TABLE-NAME>);
drop table <ORIGINAL-TABLE-NAME>;
alter table <NEW-TABLE-NAME> rename to <ORIGINAL-TABLE-NAME>;
