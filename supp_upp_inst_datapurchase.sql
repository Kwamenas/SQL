SELECT distinct A.CUST_NAME||','||concat('''',B.ACC_NBR)||','||concat('''',D.SALE_LIST_PRICE/100)
||','||D.OFFER_NAME||','||concat('''',to_char(c.CREATED_DATE,'yyyy-mm-dd hh24:mi:ss'))||','||H.CUST_TYPE_NAME details
FROM CUST A,SUBS B,SUBS_UPP_INST C,OFFER D,ACC_NBR E,PROD F,OFFER_CATG_MEM G,CUST_TYPE H
WHERE E.ACC_NBR=B.ACC_NBR
AND B.ACC_NBR >000099
AND A.CUST_ID=B.CUST_ID
AND A.CUST_TYPE=H.CUST_TYPE
AND B.SUBS_ID=C.SUBS_ID
AND B.SUBS_ID=F.PROD_ID
AND C.PRICE_PLAN_ID=D.OFFER_ID
AND F.OFFER_ID<>'127'
AND D.OFFER_ID NOT IN('4108','4109')
AND d.offer_id=g.offer_id
and g.offer_catg_id in (204,1808,212,2408,2508,3208,1308,3809,3908)
and d.offer_id=g.offer_id
and d.offer_type=4
and lower (d.offer_name) not like '%hybrid business%'
and lower (d.offer_name) not like '%4g shared unlimited%'
AND trunc(C.CREATED_DATE)>=trunc(sysdate-1);

