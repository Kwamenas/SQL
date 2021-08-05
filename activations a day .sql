
select  count(distinct a.acc_nbr)
from ORDER_ITEM a,acc_nbr b, prod c
where a.subs_event_id in (123,1) and
a.acc_nbr=b.acc_nbr
and a.order_state='C'
and b.acc_nbr_state='C'
and prod_id=subs_id
and prod_state='A'
and b.acc_nbr>001099
and to_char(a.completed_date, 'YYYYMMDD') = '20170104' 


200729

select subs_id, to_char(STATE_DATE, 'YYYYMMDD')state_date from order_item WHERE subs_event_id =104  and to_char(STATE_DATE, 'YYYYMMDD') BETWEEN  '20200201' AND '20200229'

SELECT * FROM SUBS_EVENT WHERE SUBS_EVENT_ID=104

SELECT * FROM ACC_NBR WHERE ACC_NBR='108232'
select * from subs_event where event_name like '%Pre%'


SELECT * FROM PROD_STATE



select b.offer_name,d.acc_nbr from subs_upp_inst a,offer b,order_item d  
where a.price_plan_id=b.offer_id
and a.subs_id=d.subs_id
--and a.subs_id='9970536'
and price_plan_id='6007'
and d.subs_event_id='123'
and trunc(d.state_date)='13-MAR-18'
and d.order_state='C'





select ACC_NBR  from drm.drm_res_inst WHERE TRUNC(RES_STATE_DATE) BETWEEN '01-NOV-18' AND '30-NOV-18'  (--rest_state=C,res_state_date,acc_nbr
select * from subs where acc_nbr ='116873'(--acc_nbr,cust_id)
select * from cust(--cust_id,cust_type,phone_number,cust_name,email)
SELECT * FROM CUST_TYPE
select * from prod a where ='01-JAN-19'  (--prod_state='A',prod_state,subs_plan_id)
select * from offer( --offer_id)

DESC SUBS_UPP_INST

select CUST_NAME,PHONE_NUMBER,EMAIL,ACC_NBR,OFFER_NAME,PROD_STATE_DATE ACTIVATION_DATE,E.COMMENTS from prod A, subs B,CUST C,OFFER D,CUST_TYPE E where 
subs_id=prod_id
and prod_state IN ('A','G')
AND B.CUST_ID=C.CUST_ID
AND C.CUST_TYPE=E.CUST_TYPE
AND A.SUBS_PLAN_ID=D.OFFER_ID
AND trunc(A.PROD_STATE_DATE) BETWEEN '01-FEB-19' AND '28-FEB-19'
and prod_id in (
/*select max (subs_id) subs_id  from subs  where acc_nbr IN (
SELECT ACC_NBR FROM drm.drm_res_inst where RES_STATE='C' AND ACC_NBR='190446')
having count(*)>=1
group by acc_nbr
)*/
select max (subs_id) subs_id  from subs  where acc_nbR IN (select acc_nbr from acc_nbr )
having count(*)>=1
group by acc_nbr
)


SELECT * FROM drm.drm_res_inst WHERE ACC_NBR='188059'

SELECT * FROM PROD WHERE PROD_ID='11976205'
