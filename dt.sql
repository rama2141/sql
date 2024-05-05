!date
-- dbname
select distinct sid from v$mystat;
ALTER SESSION SET NLS_DATE_FORMAT='DD/MON/YYYY HH24:MI:SS';
set echo on
set time on timin on
set timing on
set linesize 1234 pages 5000
col HOST_NAME for a15
column INSTANCE_NAME format A15
column STARTUP_TIME format A20
alter session force parallel query;
select INSTANCE_NAME,HOST_NAME,STARTUP_TIME,VERSION, STATUS,ARCHIVER,LOGINS,DATABASE_STATUS from v$instance;
set lines 300 pages 900
col name for a20
select INST_ID,name,open_mode,log_mode,controlfile_type, database_role,db_unique_name from gv$database order by 1
/

