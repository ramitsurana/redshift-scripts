# redshift-scripts
Sample scripts and SQL commands for RedShift

## General Information

| Utility   |      Reference      |
|----------|:-------------:|
| RedShift Admin Scripts |  https://github.com/awslabs/amazon-redshift-utils/tree/master/src/AdminScripts |
| RedShift Vacuum Utility | https://github.com/awslabs/amazon-redshift-utils/tree/master/src/AnalyzeVacuumUtility - Only for table data under 700 GB|
| RedShift Monitoring | https://github.com/awslabs/amazon-redshift-monitoring |
| S3 manifest File Over SSH | For Connections - https://docs.aws.amazon.com/redshift/latest/dg/copy-parameters-data-source-ssh.html#copy-parameters-data-source-ssh-parameters |
| RedShift Deep Copy | https://docs.aws.amazon.com/redshift/latest/dg/performing-a-deep-copy.html |
| RedShift Snapshot Manager | https://github.com/awslabs/amazon-redshift-utils/tree/master/src/SnapshotManager#amazon-redshift-snapshot-manager |
| Redshift Database Loader | https://github.com/awslabs/aws-lambda-redshift-loader - Load Data from S3 to RedShift using AWS Lambda |

## WLM

|  Specification  |      Limits/Values   |
|----------|:-------------:|
| Concurrent User Connection |  500 |
| Total Concurrent Queries | 50 |
| User Defined Queues | 8 |
| Default Concurrency per Queue | 5 |
| Automatic Compression | ENCODE |
| DATE DataType | YYYY/MM/DD |
| Varchar DataType | Comments |
| Char DataType| Flag(Y\N)|
| Decimal Datatype | Price |

## UPDATE and INSERT Operations

* **UPSERT (combination of UPDATE and INSERT) not allowed **
* Use staging tables instead

Ref - https://docs.aws.amazon.com/redshift/latest/dg/t_updating-inserting-using-staging-tables-.html

## Key Distribution Styles

| Key Name   |      Usage      |  Data Distribution |
|----------|:-------------:|:----------|
| ALL Distribution Style |  Tables that change infrequently | entire table is distributed to every node. |
| EVEN Distribution Style | - | - |
| DEFAULT Distribution Style | - | - |
| KEY Distribution Style | Tables that need to be JOIN for further analysis |  If you distribute a pair of tables on the joining keys, the leader node collocates the rows on the slices according to the values in the joining columns so that matching values from the common columns are physically stored together. | 

## COPY command only supports

* S3
* Dynamodb
* EMR/EC2 Instance

**NOTE**
When you use the UNLOAD command in Redshift to write data to S3, it automatically creates files using Amazon S3 server-side encryption with AWS-managed encryption keys (SSE-S3).

## Encryption-at-rest

| CloudHSM  |      KMS      |
|----------|:-------------:|
| Hourly based on region |  Usage based pricing |
| Need to setup HA & durability | Highly Available and durable |
| Single Tenant | Multi-tenant |
| Customer Managed | AWS Managed |
| EAL4 + U.S. Gov. NIST FIPS 140-2 Certified | Auditing |
| Symmetric and Asymmetric Encryption | Symmetric Encryption Only |

Symmetric encryption - same keys are used to perform encryption and decryption.

**Note**
Once you enable encryption for a Redshift cluster upon launch, you can cannot then change it to an unencrypted cluster. You’ll have to unload the data and reload the data into a new cluster with your new encryption setting.
