-- Over SSH 
-- S3 Manifest File - https://docs.aws.amazon.com/redshift/latest/dg/copy-parameters-data-source-ssh.html#copy-parameters-data-source-ssh-parameters

copy "<REDSHIFT-TABLE-NAME>" from "s3://<MANIFEST-FILE-NAME>" credentials "aws_iam_role=arn:*:*" ssh;

-- Using S3

copy "<REDSHIFT-TABLE-NAME>" from "s3://<S3-FILE-NAME>" credentials "aws_iam_role=arn:*:*";

-- Using S3 manifest

copy "<REDSHIFT-TABLE-NAME>" from "s3://<S3-FILE-NAME>/<MANIFEST-FILE-NAME>.manifest" credentials "aws_iam_role=arn:*:*" manifest;
