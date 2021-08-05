select
(select max (subs_id) subs_id from subs  where acc_nbr IN (
SELECT ACC_NBR FROM HELIOS WHERE ACC_NBR NOT IN (
(SELECT ACC_NBR FROM HELIOS
INTERSECT
SELECT ACC_NBR FROM UNLIMITEDANDDATA)
)
AND ACC_NBR ='190948'
)
having count(*)>=1
group by acc_nbr)a, subs b 









select 233||C.ACC_NBR,subs_upp_inst_id,b.offer_name,to_char(a.EFF_DATE,'YYYYMMDDHH24MI'),to_char(a.EXP_DATE,'YYYYMMDDHH24MI'),to_char(a.EXP_DATE+7,'YYYYMMDDHH24MI')NEW_EXPIRY from subs_upp_inst a , offer b,SUBS C  where 
a.price_plan_id=b.offer_id
AND A.SUBS_ID=C.SUBS_ID
AND SUBS_UPP_INST_ID IN 
(select max (subs_upp_inst_id) subs_upp_inst_id   from subs_upp_inst a  /*where a.subs_id='11796984'*/
where price_plan_id in (8703,8803,11103,11108)
and a.subs_id in (
(select max (subs_id) subs_id from subs  where acc_nbr IN (
SELECT ACC_NBR FROM HELIOS WHERE ACC_NBR NOT IN (
(SELECT ACC_NBR FROM HELIOS
INTERSECT
SELECT ACC_NBR FROM UNLIMITEDANDDATA)
)
AND ACC_NBR ='190415'
)
having count(*)>=1
group by acc_nbr)
)
having count(*)>=1
group by a.subs_id
)
--AND TRUNC(A.EXP_DATE) between '25-APR-20' AND '14-MAR-20'
ORDER BY 5 ASC


TRUNCATE TABLE UNLIMITEDANDDATA