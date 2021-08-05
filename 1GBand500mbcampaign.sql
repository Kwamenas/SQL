select max(acc_nbr),acct_id from subs where acc_nbr in ( )group by acct_id
 
 
SELECT * FROM BAL WHERE ACCT_ID='31014012'
 
select acct_id from bal  where GROSS_BAL='-5242880' and eff_date like'%2018-07-30%' and acct_res_id=2 and exp_date like'%2018-08-30%'
 
delete from bal where GROSS_BAL='-5242880' and eff_date like'%%2018-07-30%' and acct_res_id=2 and exp_date like'%2018-08-30%'

update  bal set EXP_DATE='2017-11-08 08:38:20.000000' WHERE   acct_res_id='2' and EFF_DATE like'%2017-10-09%' and exp_date like'%2017-10-16%'

2015-10-02 00:00:00.000000
 
 SELECT * FROM ACCT_RES
 
update bal set EFF_DATE='2017-07-15 00:02:30.000000' WHERE  gross_bal='-5242880' and acct_res_id='2' and EFF_DATE LIKE'%2017-07-15%' AND EXP_DATE LIKE'%2017-08-14%' 
and acct_id in ()