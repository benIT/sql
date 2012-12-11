--to see the last modificaiton date 
SELECT  LAST_DDL_TIME, TIMESTAMP
FROM    DBA_OBJECTS
WHERE   OBJECT_TYPE = 'PACKAGE BODY'
AND OBJECT_NAME = 'MY_PKG'

--list the different object type
select distinct(OBJECT_TYPE)
from dba_objects

