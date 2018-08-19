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
