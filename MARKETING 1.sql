


select MSISDN from inactive_migration 
MINUS
  SELECT /*A.CUST_NAME,*/B.ACC_NBR/*,A.PHONE_NUMBER,D.OFFER_NAME,C.EFF_DATE*/ FROM CUST A,SUBS B,SUBS_UPP_INST C,OFFER D,ACC_NBR E,PROD F,OFFER_CATG_MEM G
  WHERE E.ACC_NBR=B.ACC_NBR
  AND B.ACC_NBR >000099 
  AND A.CUST_ID=B.CUST_ID
  AND B.SUBS_ID=C.SUBS_ID
  AND B.SUBS_ID=F.PROD_ID
  AND F.PROD_STATE='A'
  AND C.STATE='A'
  AND C.PRICE_PLAN_ID=D.OFFER_ID
  AND D.OFFER_ID NOT IN('4108','4109')
  AND d.offer_id=g.offer_id 
  and g.offer_catg_id in (204,1808,212)
  and d.offer_id=g.offer_id 
  and d.offer_type=4
--IN (
--)
  AND trunc(C.EFF_DATE) between trunc(sysdate-25) and trunc(sysdate)




select * from subs where acc_nbr='181233'

select * from cust where cust_id='269476'


SELECT * FROM INACTIVE_MIGRATION WHERE MSISDN='001254'