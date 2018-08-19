-- Create a staging table

create temp table stage (like target); 

insert into stage 
select * from source 
where source.filter = 'filter_expression'; 

-- Use INNER JOIN

begin transaction;

delete from target 
using stage 
where target.primarykey = stage.primarykey; 

-- INSERT Operation

insert into target 
select * from stage;

end transaction;

-- DROP Staging Table

drop table stage;
