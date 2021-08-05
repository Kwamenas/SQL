*********SENDING BILLS***************

select a.*,rowid from billing_cycle a where billing_cycle_id=5108

update billing_cycle set state='C' where billing_cycle_id=5108

UPDATE billing_cycle SET DEBT_DATE=SYSDATE+7 WHERE billing_cycle_id=5108

delete from advice
 where advice_id in (select a.advice_id
                       from advice a, subs b, prod c, offer d
                      where a.advice_type in(21,53)
                        and to_char(a.created_Date, 'yyyymmdd') = '20210208'--(sysdate)
                        and a.acc_nbr = b.acc_nbr
                        and b.subs_id = c.prod_id
                        and c.prod_state = 'A'
                        and c.subs_plan_id = d.offer_id
                      
and d.offer_id = 966);
                        
                        
                        

update advice a
   set a.sender_param = concat(concat(concat((concat('MAIL_TO="',
                                                     (select email
                                                        from cust c, subs u
                                                       where c.cust_id =
                                                             u.cust_id
                                                         and u.subs_id =
                                                             a.subs_id))),                                         '"|MAIL_ATTACHMENT="/ztesoft/v8uip/r14/bill_batch_print/'),
                                      (select bill_id
                                         from bill b, subs s
                                        where b.acct_id = s.acct_id   
                                          and billing_cycle_id =
                                              &BILLING_CYCLE_ID  
                                          and s.subs_id = a.subs_id)),
                               '.pdf"|MAIL_SUBJECT="Busy Invoice for 202101"') where advice_type = 21 /*and advice_id in */;



--delete from advice where advice_type=21 and advice_id in (
select * from advice where advice_type = 21
and to_char(created_Date, 'yyyymmdd') = to_char(sysdate, 'yyyymmdd')
and state<>'A'


339070980

update advice set state='A', comments=null where advice_type = 21
and to_char(created_Date, 'yyyymmdd') = to_char(sysdate, 'yyyymmdd')
/*and advice_id in*/ 
and state<>'A'



update advice set SENDER_PARAM='MAIL_TO="awiredu@radforduc.edu.gh"|MAIL_ATTACHMENT="/ztesoft/v8uip/r14/bill_batch_print/349068835.pdf"|MAIL_SUBJECT="Busy Invoice for 202101"' where advice_id='136411745'


select * from cc_subs where subs_id =13518026

select * from subs where subs_id='9418904' IN ()

select * from cc_acct where acct_id='102013024' AND EFF_DATE='03-AUG-20' and SEQ=0 and CC_TYPE=2 AND CREDIT_LIMIT=120000

IN ('6017025',  
'53014178', 
--'59015016', 
'102013024',
--'112013011',
'127013009',
'127013011',
'128013017',
'128013021',
'128013024',
'128013033',
'130013009',
'136014001',
'136014002',
'137014002',
'141014001'
--'141015018'
)

SELECT * FROM ACCT_ITEM WHERE ACCT_ID='130013002'

59015016
141015018

SELECT * FROM BILL WHERE ACCT_ID='130013002' 



desc cc_acct


insert into cc_acct (ACCT_ID,SEQ,CC_TYPE,CREDIT_LIMIT,EFF_DATE,EXP_DATE,SP_ID) VALUES ('6017025',0,2,120000,'07-AUG-20','07-AUG-40',0)


insert into cc_acct (ACCT_ID,SEQ,CC_TYPE,CREDIT_LIMIT,EFF_DATE,EXP_DATE,SP_ID) VALUES ('53014178' ,0,2,120000,'07-AUG-20','07-AUG-40',0); 
insert into cc_acct (ACCT_ID,SEQ,CC_TYPE,CREDIT_LIMIT,EFF_DATE,EXP_DATE,SP_ID) VALUES ('102013024',0,2,120000,'07-AUG-20','07-AUG-40',0); 
insert into cc_acct (ACCT_ID,SEQ,CC_TYPE,CREDIT_LIMIT,EFF_DATE,EXP_DATE,SP_ID) VALUES ('127013009',0,2,120000,'07-AUG-20','07-AUG-40',0); 
insert into cc_acct (ACCT_ID,SEQ,CC_TYPE,CREDIT_LIMIT,EFF_DATE,EXP_DATE,SP_ID) VALUES ('127013011',0,2,120000,'07-AUG-20','07-AUG-40',0); 
insert into cc_acct (ACCT_ID,SEQ,CC_TYPE,CREDIT_LIMIT,EFF_DATE,EXP_DATE,SP_ID) VALUES ('128013017',0,2,120000,'07-AUG-20','07-AUG-40',0); 
insert into cc_acct (ACCT_ID,SEQ,CC_TYPE,CREDIT_LIMIT,EFF_DATE,EXP_DATE,SP_ID) VALUES ('128013021',0,2,120000,'07-AUG-20','07-AUG-40',0); 
insert into cc_acct (ACCT_ID,SEQ,CC_TYPE,CREDIT_LIMIT,EFF_DATE,EXP_DATE,SP_ID) VALUES ('128013024',0,2,120000,'07-AUG-20','07-AUG-40',0); 
insert into cc_acct (ACCT_ID,SEQ,CC_TYPE,CREDIT_LIMIT,EFF_DATE,EXP_DATE,SP_ID) VALUES ('128013033',0,2,120000,'07-AUG-20','07-AUG-40',0); 
insert into cc_acct (ACCT_ID,SEQ,CC_TYPE,CREDIT_LIMIT,EFF_DATE,EXP_DATE,SP_ID) VALUES ('130013009',0,2,120000,'07-AUG-20','07-AUG-40',0); 
insert into cc_acct (ACCT_ID,SEQ,CC_TYPE,CREDIT_LIMIT,EFF_DATE,EXP_DATE,SP_ID) VALUES ('136014001',0,2,120000,'07-AUG-20','07-AUG-40',0); 
insert into cc_acct (ACCT_ID,SEQ,CC_TYPE,CREDIT_LIMIT,EFF_DATE,EXP_DATE,SP_ID) VALUES ('136014002',0,2,120000,'07-AUG-20','07-AUG-40',0); 
insert into cc_acct (ACCT_ID,SEQ,CC_TYPE,CREDIT_LIMIT,EFF_DATE,EXP_DATE,SP_ID) VALUES ('137014002',0,2,120000,'07-AUG-20','07-AUG-40',0); 
insert into cc_acct (ACCT_ID,SEQ,CC_TYPE,CREDIT_LIMIT,EFF_DATE,EXP_DATE,SP_ID) VALUES ('141014001',0,2,120000,'07-AUG-20','07-AUG-40',0); 

