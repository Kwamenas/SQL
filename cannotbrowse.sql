update subs_upp_inst set exp_date=exp_date+7 where subs_upp_inst_id='3255773'

and subs_id=1511030
DELETE subs_upp_inst  where subs_upp_inst_id ='8560'

SELECT 233||ACC_NBR FROM SUBS WHERE SUBS_ID IN (

SELECT B.*,A.* FROM 
(SELECT A.VALUE PAKID
  FROM ATTR_VALUE A, ATTR B
 WHERE A.BASE_ATTR_ID = B.ATTR_ID
 AND VALUE_MARK IN ('Twitter','Instagram','Snapchat','nighttime','whatsapp','facebook','youtube','NewsFreebie','SWIFT','weekend')
    AND A.BASE_ATTR_ID = '543') A,
(select 233||C.ACC_NBR,a.*,b.offer_name,c.acct_id from subs_upp_inst a , offer b,SUBS C  where 
a.price_plan_id=b.offer_id
AND A.SUBS_ID=C.SUBS_ID
--and a.subs_id='12496339'
and trunc(a.eff_date)between trunc(sysdate-5) AND trunc(sysdate-4)
and a.price_plan_id in (
'122',
'111',
'128')/*'8703',
'8704',
'8803',
'11103'*/
/*'11106',
'11108'*/
) /*in (
'1914',
'1915',
'1918',
'1919',
'1920',
'1921')*/

) B







###LOYALTY CHANGING TO X########

select A.subs_upp_inst_id,A.offer_name,A.exp_date,A.EFF_DATE,A.STATE,A.ACC_NBR from 
(select C.ACC_NBR,a.*,b.offer_name from subs_upp_inst a , offer b,SUBS C  where 
a.price_plan_id=b.offer_id
AND A.SUBS_ID=C.SUBS_ID) A,(select subs_id from loyalty_cust) b
where A.subs_id=b.subs_id
and A.price_plan_id in ('10610',
'10703',
'10804',
'10805',
'10704',
'10609',
'10803',
'10806'
)
and state='X'
and trunc(A.eff_date) between '11-DEC-19' AND '08-JAN-20'


SELECT A.BASE_ATTR_ID,
       A.ATTR_VALUE_ID,
       A.VALUE_MARK,
       A.VALUE,
       A.PARENT_ATTR_VALUE_ID,
       A.PARENT_ATTR_ID,
       B.ATTR_NAME
  FROM ATTR_VALUE A, ATTR B
 WHERE A.BASE_ATTR_ID = B.ATTR_ID
    AND A.BASE_ATTR_ID = '543'
    
    Twitter,Instagram,Snapchat,weekend,nighttime,whatsapp,facebook,youtube,NewsFreebie,SWIFT


select * from offer where offer_name='Supreme Data' like'%day%' like '%BIG%'

122
111
128

select * from subs_upp_inst where price_plan_id='6203'

186164

select * from subs where  acc_nbr ='112433'

select * from subs where subs_id='9247986'

select * from subs where acc_nbr='202904'

128013031
10035084

96013053
95013039
95013050
71013383

select * from prod_state where /*prod_state='G'*/ prod_id='82013489'

update prod set prod_state='A' where prod_id='12496618'

update bal set reserve_bal=0 where bal_id='14236139'

update bal set EXP_DATE='2020-05-30 14:55:27.000000' where bal_id='13792' in  

delete from bal where bal_id in 
('156836',
 '148412',
 '141090',
 '133260',
 '129594',
 '14376795',
 '14374065')

update bal set acct_res_id=3 where acct_res_id=2 AND BAL_ID=' 14236141'  and acct_id='94014341' in ('12328007',
'12266849')

update bal set exp_date='2020-06-30 17:27:17.000000' where bal_id='14236141' in ('156832',
'156834',
'152312',
'152314',
'148408',
'148410')


select * from order_state

update bal set reserve_bal=0 where bal_id in (
select bal_id from bal where reserve_bal<>0
and to_char(to_date(substr(exp_date,1,10), 'yyyy-mm-dd'),'yyyy-mm-dd') >= to_char(sysdate,'yyyy-mm-dd')
and acct_res_id in (2,3)
)
order by eff_date desc

-19776569
update bal set acct_res_id=3 where bal_id='13256577'


SELECT * from  bal  where acct_id='11025123' and acct_res_id in (2,3)



select * from order_item where order_nbr='2020042203943682'

update order_item set order_state='E' where order_nbr='2020042903948531'



select * from order_state where acct_id='109013788'

select * from payment where acc_nbr='200312'


-12288
-47201280
-10240
-30720
-32768
-10240
-1058816
-8192
