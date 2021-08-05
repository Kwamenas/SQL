---- Create a view from the DB of subscribed Forbes Bundles with info Data_Num, Effective_Date, Expiry_Date, Email_Address (Nii)

---im using supreme_unlimited for an example
--select Y.*,ROW_NUMBER() OVER (partition by EFF_DATE order by exp_date desc) AS RN FROM

(select acc_nbr DATA_NUMBER,B.EMAIL EMAIL_ADDRESS,to_char(c.created_date,'yyyy-mm-dd hh24:mi:ss')as EFF_DATE,to_char(c.exp_date,'yyyy-mm-dd hh24:mi:ss') as EXP_DATE,D.OFFER_NAME 
from subs a,cust b,SUBS_UPP_INST C,OFFER D
where acc_nbr='000033'
and a.CUST_ID=B.CUST_ID
AND A.SUBS_ID=C.SUBS_ID
AND C.PRICE_PLAN_ID=D.OFFER_ID
AND C.STATE='A'
AND D.OFFER_ID ='9305'
AND trunc(c.eff_date)=trunc(sysdate-1/24)
) Y , 
SELECT MAX(SUBS_UPP_INST_ID)max_subs_upp_inst_id from subs_upp_inst where subs_id trunc(eff_date)=trunc(sysdate) group by

--SELECT MAX(SUBS_UPP_INST_ID)max_subs_upp_inst_id from subs_upp_inst where subs_id='12119583'

2984166

select * from 

(sysdate-1/24)



select max (subs_id) subs_id  from subs  where acc_nbr='000033'
having count(*)>=1
group by acc_nbr



select /*A.SUBS_ID*//*a.subs_upp_inst_id*/ a.*,offer_name from subs_upp_inst a , offer b  where 
a.price_plan_id=b.offer_id
and subs_id='11878259'



------DAVE
CREATE OR REPLACE VIEW FORBES_TEMP AS
select a.* from (select SUBS_UPP_INST_ID,acc_nbr DATA_NUMBER,B.EMAIL EMAIL_ADDRESS,to_char(c.created_date,'yyyy-mm-dd hh24:mi:ss')as EFF_DATE,to_char(c.exp_date,'yyyy-mm-dd hh24:mi:ss') as EXP_DATE,D.OFFER_NAME
from subs a,cust b,SUBS_UPP_INST C,OFFER D
--where acc_nbr ='214828'
where a.CUST_ID=B.CUST_ID
AND A.SUBS_ID=C.SUBS_ID
AND C.PRICE_PLAN_ID=D.OFFER_ID
AND C.STATE='A'
AND trunc(c.eff_date)between trunc(sysdate-7) and trunc(sysdate)
--AND trunc(c.eff_date)=(select sysdate - interval ''30'' minute from dual)
AND trunc(c.exp_date)>=trunc(sysdate-1)
AND D.OFFER_ID IN ('9606',
'9608',
'9607',
'9605'))a,
(select max(SUBS_UPP_INST_ID) max_SUBS_UPP_INST_ID, subs_id from SUBS_UPP_INST where trunc(eff_date)between trunc(sysdate-7) and trunc(sysdate) group by subs_id) b
where SUBS_UPP_INST_ID=max_SUBS_UPP_INST_ID




SELECT * FROM FORBES_TEMP


select to_char(a.created_date,'yyyy-mm-dd hh24:mi:ss') from subs_upp_inst a where subs_upp_inst_id='2969773' 



SELECT * FROM FORBES_TEMP


11878259


select * from offer where offer_name like'%7GB Big%' order by offer_code asc
