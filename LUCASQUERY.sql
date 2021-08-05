select acc_nbr MSISDN,ICCID,OFFER_NAME FROM 

select subs_id from subs where acc_nbr='136409'-----ACC_NBR,SUBS_ID

Select * from subs_upp_inst where subs_id='867215'

SELECT * FROM OFFER WHERE OFFER_ID IN ('2903','4109','752','781')--OFFER_ID,OFFER_TYPE

SELECT * FROM SUBS_UPP_INST WHERE SUBS_ID='867215'



select a.acc_nbr,c.offer_name from subs a,prod b,offer c 
where a.subs_id=b.prod_id
and c.offer_id=b.subs_plan_id
and a.acc_nbr='190113'



select max (subs_id) subs_id,a.acc_nbr,c.offer_name  from subs a,prod b,offer c
where acc_nbr in 
and a.subs_id=b.prod_id
and c.offer_id=b.subs_plan_id
and b.prod_state in ('A','G')
having count(*)>=1
group by acc_nbr,offer_name


select max (subs_id) subs_id  from subs  where acc_nbr='103390'
having count(*)>=1
group by acc_nbr


select * from prod_state

select * from prod where prod_id='487852'