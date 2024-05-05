col name for a32
set lines 300 pages 5000
select name,TOTAL_MB/1024 "TOTAL_GB",FREE_MB/1024 "FREE_GB",(TOTAL_MB-FREE_MB)/1024 "USED_GB", (FREE_MB/TOTAL_MB)*100 , state, TYPE from  v$asm_diskgroup order by 1;
