-- Create Temporary Table and truncating the original table

create temp table <TEMP-TABLE-NAME> as select * from <ORIGINAL-TABLE-NAME>;
truncate <ORIGINAL-TABLE-NAME>;
insert into <ORIGINAL-TABLE-NAME> (select * from <TEMP-TABLE-NAME>);
drop table <TEMP-TABLE-NAME>;
