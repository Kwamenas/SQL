select * from 
(select CREATED_DATE,OUT_ACC_NBR SENDER_MSISDN,IN_ACC_NBR RECEIVER_MSISDN, charge/100 amount,ACCT_RES_NAME from bal_transfer a, acct_book b, acct_res c
where a.ACCT_BOOK_ID=b.ACCT_BOOK_ID
and acct_book_type='L'
and b.acct_res_id=1 and b.acct_res_id=c.acct_res_id
union all
select CREATED_DATE,OUT_ACC_NBR SENDER_MSISDN,IN_ACC_NBR RECEIVER_MSISDN, round(charge/(1024*1024),2) Data_Volume,ACCT_RES_NAME from bal_transfer a, acct_book b, acct_res c
where a.ACCT_BOOK_ID=b.ACCT_BOOK_ID
and acct_book_type='L'
and b.acct_res_id=3 and b.acct_res_id=c.acct_res_id)
where sender_msisdn=&sender_msisdn
order by CREATED_DATE

 
select y.CREATED_DATE as DetailDate,substr(y.created_date,1,9) as TDATE,y.ACCT_RES_ID AS res_ID,decode(y.ACCT_RES_ID,'1', 'CashTransfer','3','DataTransfer') as TRansfertype ,
 x.acct_book_id AS acctBOOK, x.out_acc_nbr as sender,x.in_acc_nbr as receipient,y.charge as Vol_Amt
from cc.bal_transfer x,cc.acct_book y
 where x.acct_book_id=y.acct_book_id
 and y.created_date='06-FEB-19'  
 ---and x.out_acc_nbr='000275'
 order by x.out_acc_nbr desc 
 




#################### CASH #####################

select COUNT(OUT_ACC_NBR)AS SENDER, OUT_ACC_NBR/*,IN_ACC_NBR RECEIVER_MSISDN*/, sum(charge/100)GROSS_AMOUNT/*,ACCT_RES_NAME*/ from bal_transfer a, acct_book b, acct_res c
where a.ACCT_BOOK_ID=b.ACCT_BOOK_ID
and acct_book_type='K'
and b.acct_res_id=1 
and b.acct_res_id=c.acct_res_id
AND TRUNC(B.created_date)='20-MAY-19'
/*AND OUT_ACC_NBR='162148'*/
GROUP BY OUT_ACC_NBR


SELECT * FROM ACCT_BOOK where acct_book_type='K' and acct_res_id=3 ORDER BY CREATED_DATE DESC 

86689653

P
F
Q

SELECT * FROM ACCT_BOOK_TYPE WHERE ACCT_BOOK_TYPE IN ('P','F','Q','K')

select * from bal_transfer where out_acc_nbr='108033' and acct_book_id ='86689653'


##########DATA######################################

select /*COUNT(OUT_ACC_NBR)AS SENDER,*/ OUT_ACC_NBR,IN_ACC_NBR RECEIVER_MSISDN, sum(charge/(1024*1024))GB,CREATED_DATE/*,ACCT_RES_NAME*/ from bal_transfer a, acct_book b, acct_res c
where a.ACCT_BOOK_ID=b.ACCT_BOOK_ID
and acct_book_type='K'
and b.acct_res_id=3 
and b.acct_res_id=c.acct_res_id
AND TRUNC(B.created_date) BETWEEN '01-JAN-20' AND '24-APR-20'
AND OUT_ACC_NBR='158864'
GROUP BY OUT_ACC_NBR,IN_ACC_NBR,CREATED_DATE




SELECT * FROM SUBS WHERE ACCT_ID='59015041'