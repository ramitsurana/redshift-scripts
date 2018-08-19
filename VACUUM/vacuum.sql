-- Vaccum on all tables of the database
-- Recalmimg Disk Space is also done

VACUUM FULL;

-- Running Vaccum on specific table of the database

VACUUM FULL <TABLE-NAME>;

-- Vacuum sort all tables of the database. 
-- Recalmimg Disk Space Does Not Occur

VACUUM SORT ONLY;

-- Vacuum only space acquired by objects marked for deletion during INSERTS/UPDATE operations
-- Sorting Does Not Occur

VACUUM DELETE ONLY;

-- Vacuum only for interleaved sort keys tables

VACUUM REINDEX interleavedtable;
