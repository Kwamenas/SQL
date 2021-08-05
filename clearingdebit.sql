

update bal set consume_bal=-gross_bal where  acct_res_id in (3,7,2)
and CONSUME_BAL+GROSS_BAL>0
and CONSUME_BAL<>0
and RESERVE_BAL=0 and to_char(to_date(substr(exp_date,1,10), 'yyyy-mm-dd'),'yyyy-mm-dd') > to_char(sysdate,'yyyy-mm-dd');