-- Delete Hot Data from last 90 days

DELETE FROM schema.table
WHERE ts < (SELECT sysdate - 90);
