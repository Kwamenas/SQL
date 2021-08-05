select * from acct_item where acct_id='45014003'

UPDATE ACCT_ITEM SET CHARGE=(CHARGE)/3 WHERE ACCT_ITEM_ID IN ( 

SELECT * FROM ACCT_ITEM WHERE ACCT_ID='54016051' 
AND TRUNC(CREATED_DATE)='01-JAN-20'
)


WHERE ACCT_ITEM_ID=589315

ACCT_ITEM (CHARGE)/3 ,BILL_ID
UPDATE ACCT_ITEM SET CHARGE=(CHARGE)/3 WHERE ACCT_ITEM_ID='589315'


SELECT * FROM BILL WHERE ACCT_ID='45014003' AND BILL_ID='312060659'

UPDATE BILL SET DUE=(DUE)/3 WHERE BILL_ID='312060659'


SELECT * FROM BAL WHERE ACCT_ID='45014003' AND ACCT_RES_ID=1

update bal set gross_bal=gross_bal/2 where bal_id='1783463'


1.

UPDATE ACCT_ITEM SET CHARGE=(CHARGE)/3 WHERE ACCT_ITEM_ID IN (
select ACCT_ITEM_ID,ACCT_ID,BILL_ID from acct_item where TRUNC(created_date)='01-JAN-20'
--and ACCT_ITEM_ID<>'589315'
AND STATE='P')



2.
UPDATE BILL SET DUE=(DUE)/3 WHERE BILL_ID IN (
SELECT /*A.ACCT_ID,*/B.BILL_ID FROM 
(select ACCT_ITEM_ID,ACCT_ID,BILL_ID from acct_item where TRUNC(created_date)='01-JAN-20'
and ACCT_ITEM_ID<>'589315'
AND STATE='C') A, BILL B
WHERE A.ACCT_ID=B.ACCT_ID
AND A.BILL_ID=B.BILL_ID
)

3.
UPDATE 
SELECT BAL_ID FROM BAL WHERE ACCT_RES_ID=1 AND ACCT_ID IN (
select /*ACCT_ITEM_ID,*/ACCT_ID from acct_item where TRUNC(created_date)='01-JAN-20'
and ACCT_ID='54016051'
AND STATE='C')













 select * from bal where acct_id=140014003 and acct_res_id=1
 
 update bal set gross_bal=112000 where bal_id= 293804
 
 SELECT * FROM BILL WHERE billing_cycle_id=4136 and pre_balance=0 and due >0
 
 update bill set pre_balance=112000*2 where bill_id='335068266'
 
 
 select * from bill_4136 where acct_id=140014003