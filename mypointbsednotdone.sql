select * from bal where acct_id='14021070'

select * from subs_upp_inst


select * from acct_res 

select * from acct_book WHERE acct_book_type='F' and acct_id='23014016' and acct_res_id not in (1,14,15,16)----this for purchased bundle
---this is in mbps so makes multiplying easy 


SELECT * FROM ACCT_BOOK---ACCT_ID,ACCT_RES_ID,ACCT_BOOK_TYPE,CHARGE,BAL_ID A
select * from cust---cust_name,phone_number ,cust_id B
select * from subs WHERE ACCT_ID='23014016'---subs_id,acct_id ,cust_id ,acc_nbr,C
select * from prod WHERE PROD_ID='1149703'--prod_state C,PROD_ID=SUBS_ID D,OFFER_ID
select * from acc_nbr----acc_nbr_state ,acc_nbr,E
select * from cust_order---cust_order_id
select * from cust_contact---rela_id=cust_order_id
select * from dp_offer_order--offer_id
select * from offer--offer_id


SELECT b.CUST_NAME,b.PHONE_NUMBER,c.ACC_NBR,a.CHARGE
FROM ACCT_BOOK a,CUST b,SUBS c,PROD d,ACC_NBR e
WHERE c.acc_nbr=e.acc_nbr
and b.cust_id =c.cust_id
and a.acct_book_type='F'
and d.prod_id=c.subs_id
and a.acct_id=c.acct_id
and a.acct_id='23014016'
and prod_state='A'
and 

--and a.acct_id='23014016'
---and prod_state='A'




select * from acct_book_type
---F

select * from acct_res where acct_res_id in(1,14,15,16,)



select * from acc_nbr



select * from 







select * from cust_name---CUST_NAME,CUST_ID,PHONE_NUMBER
select * from 