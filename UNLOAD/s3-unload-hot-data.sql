-- [SELECT sysdate - 1] is for taking data more than 1 day old
-- Value 1 day can be configured 

UNLOAD ('SELECT "ts", "column_a", "column_b"
				 FROM schema.table
         WHERE ts >= (SELECT DATE_TRUNC(\'day\', (SELECT sysdate - 1)))
             AND ts < (SELECT DATE_TRUNC(\'day\', (SELECT sysdate)))'
       ) 
TO 's3://bucket/prefix' 
GZIP 
ESCAPE;
