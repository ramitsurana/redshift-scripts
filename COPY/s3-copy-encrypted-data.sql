-- Without Compression

copy customer from 's3://mybucket/encrypted/customer' 
iam_role 'arn:aws:iam::0123456789012:role/MyRedshiftRole'
master_symmetric_key '<master_key>' 
encrypted
delimiter '|';

-- With Compression

copy customer from 's3://mybucket/encrypted/customer' 
iam_role 'arn:aws:iam::0123456789012:role/MyRedshiftRole'
master_symmetric_key '<master_key>'
encrypted 
delimiter '|' 
gzip;
