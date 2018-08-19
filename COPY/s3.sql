-- Over SSH 
-- S3 Manifest File - https://docs.aws.amazon.com/redshift/latest/dg/copy-parameters-data-source-ssh.html#copy-parameters-data-source-ssh-parameters

copy "<REDSHIFT-TABLE-NAME>" from "s3://<MANIFEST-FILE-NAME>" credentials "arn:*:*" ssh;

-- Using S3

copy "<REDSHIFT-TABLE-NAME>" from "s3://<S3-FILE-NAME>" credentials "arn:*:*";
