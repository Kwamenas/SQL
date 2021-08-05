SELECT * FROM ORDER_ITEM WHERE SUBS_EVENT_ID=104 AND ORDER_STATE='C' AND TO_CHAR(STATE_DATE,'YYYY-MM')<=TO_CHAR(SYSDATE-366,'YYYY-MM') AND SUBS_EVENT_ID=104
AND TO_CHAR(STATE_DATE,'MM')= TO_CHAR(SYSDATE,'MM')


SELECT * FROM ORDER_ITEM WHERE TO_CHAR(STATE_DATE,'YYYY-MM')=TO_CHAR(SYSDATE,'YYYY-MM') AND SUBS_EVENT_ID=104


SELECT * FROM SUBS WHERE ACCT_ID='9039001'


SELECT  * FROM PROD WHERE PROD_ID=12496638


SELECT A.*,B.ACCT_ID FROM 
(SELECT SUBS_ID,ACC_NBR,TO_CHAR(STATE_DATE,'YYYY-MM-DD') FROM ORDER_ITEM WHERE SUBS_EVENT_ID=104 AND ORDER_STATE='C' AND TO_CHAR(STATE_DATE,'YYYY-MM')<=TO_CHAR(SYSDATE-366,'YYYY-MM') AND SUBS_EVENT_ID=104
AND TO_CHAR(STATE_DATE,'MM')= TO_CHAR(SYSDATE,'MM'))A,
(SELECT B.ACC_NBR, B.SUBS_ID,B.ACCT_ID FROM 
(SELECT MAX (SUBS_ID)SUBS_ID,ACC_NBR FROM SUBS 
HAVING COUNT (*) >=1
GROUP BY ACC_NBR) A, (SELECT * FROM SUBS) B , PROD C
WHERE A.SUBS_ID=B.SUBS_ID
AND C.PROD_ID=A.SUBS_ID
AND C.PROD_ID=B.SUBS_ID
AND PROD_STATE IN ('A','G')
) B
WHERE A.SUBS_ID=B.SUBS_ID
--AND B.ACC_NBR=191729



SELECT A.ACCT_ID,B.ACC_NBR,ROUND((SUM (gross_bal+reserve_bal+consume_bal))/(-1024*1024),3) data_leftinGB FROM BAL A,SUBS B WHERE exp_date<>'NULL'
and trunc(TO_DATE(SUBSTR(EXP_DATE, 1, 19), 'yyyy-mm-dd hh24:mi:ss')) between '01-JUL-2020' and '31-JUL-2020'
AND GROSS_BAL+CONSUME_BAL+RESERVE_BAL <> 0
AND ACCT_RES_ID=3
AND A.ACCT_ID=B.ACCT_ID
GROUP BY A.ACCT_ID,B.ACC_NBR



