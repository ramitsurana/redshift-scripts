-- Ref - https://docs.aws.amazon.com/redshift/latest/dg/merge-specify-a-column-list.html

-- Update the target table by using an inner join with the staging table.

begin transaction;

update target 
set col1 = stage.col1, 
col2 = stage.col2, 
col3 = 'expression' 
from stage 
where target.primarykey = stage.primarykey 
and target.distkey = stage.distkey 
and target.col3 > 'last_update_time' 
and (target.col1 != stage.col1 
or target.col2 != stage.col2 
or target.col3 = 'filter_expression');

-- Delete not required rows

delete from stage 
using target 
where stage.primarykey = target.primarykey; 

-- Insert Operation

insert into target
(select col1, col2, 'expression')
from stage;

end transaction;

-- Drop staging table

drop table stage;
