-- Ref - https://docs.aws.amazon.com/redshift/latest/dg/t_Unloading_tables.html
-- The UNLOAD command is designed to use parallel processing. AWS recommends leaving PARALLEL enabled for most cases, especially if the files will be used to load tables using a COPY command.

-- S3 Files created with prefix - venue_

unload ('select * from venue')   
to 's3://mybucket/tickit/unload/venue_' 
iam_role 'arn:aws:iam::0123456789012:role/MyRedshiftRole';


-- Without Parallel mode

unload ('select * from venue')
to 's3://mybucket/tickit/unload/venue_' 
iam_role 'arn:aws:iam::0123456789012:role/MyRedshiftRole'
parallel off;

-- Using Manifest File

unload ('select * from venue')
to 's3://mybucket/tickit/venue_' 
iam_role 'arn:aws:iam::0123456789012:role/MyRedshiftRole'
manifest;

-- To allow Overwrite

unload ('select * from venue') 
to 's3://mybucket/venue_pipe_' 
iam_role 'arn:aws:iam::0123456789012:role/MyRedshiftRole'
manifest 
allowoverwrite;
