select * from "STL_LOAD_ERRORS";

select * from "STL_LOADERROR_DETAIL";

-- Join above 2 tables (https://docs.aws.amazon.com/redshift/latest/dg/r_STL_LOAD_ERRORS.html)

select d.query, substring(d.filename,14,20), 
d.line_number as line, 
substring(d.value,1,16) as value,
substring(le.err_reason,1,48) as err_reason
from stl_loaderror_detail d, stl_load_errors le
where d.query = le.query
and d.query = pg_last_copy_id(); 
