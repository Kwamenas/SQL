-----The following script can be used in order quickly identify all lock objects within your Oracle system.

select
   c.owner,
   c.object_name,
   c.object_type,
   b.sid,
   b.serial#,
   b.status,
   b.osuser,
   b.machine
from
  
   v$locked_object a ,
   v$session b,
   dba_objects c
where
   b.sid = a.session_id
and
   a.object_id = c.object_id;
   
   
   
---This script can detect locked objects by querying v$locked_object and v$lock:  
   
   select
   (select username from v$session where sid=a.sid) blocker,
   a.sid,
   ' is blocking ',
   (select username from v$session where sid=b.sid) blockee,
   b.sid
from
   v$lock a,
   v$lock b
where
   a.block = 1
and
   b.request > 0
and
   a.id1 = b.id1
and
   a.id2 = b.id2;
   
   
   
---KILLING LOCKS

ALTER SYSTEM KILL SESSION 'SID, SERIAL#';