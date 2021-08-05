SELECT 233||ACC_NBR  FROM SUBS WHERE SUBS_ID IN (
select /*A.SUBS_UPP_INST_ID,*/A.SUBS_ID/*,A.PRICE_PLAN_ID,B.OFFER_TYPE,A.STATE,B.OFFER_NAME*/ FROM  subs_upp_inst a , offer b,PROD C  where 
a.price_plan_id=b.offer_id
--and subs_id='8558847'
AND A.STATE='A'
AND C.PROD_ID=A.SUBS_ID
--AND C.PROD_ID='8558847'
AND A.PRICE_PLAN_ID ='9004'
AND C.PROD_ID IN(
SELECT PROD_ID/*,SUBS_PLAN_ID*/ FROM PROD,SUBS WHERE
PROD_ID=SUBS_ID
--AND PROD_STATE='A'
AND PROD_ID IN (
select max (subs_id) subs_id  from subs where acc_nbr in 
(select MSISDN from INACTIVE_MIGRATION WHERE OFFER_NAME  IN('Sector JUMP Offer','Sector SIM Only In-Store')
--AND MSISDN='214338'
)
having count(*)>=1
group by acc_nbr
)
)
)

Pro MiFi



select * from inactive_migration where offer_name='Pro MiFi'