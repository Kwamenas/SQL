select billing_nbr,START_TIME, charge1, charge2, charge3, charge4, re_name from (select * from event_usage_c_3001@link_rb where billing_nbr=233120717 and bal_id1 not in
(select bal_id from bal where acct_id=9039042 and gross_bal=0 and acct_res_id=2 and  consume_bal=0)
union all
select * from event_usage_c_3002@link_rb where billing_nbr=233120717 and bal_id1
not in (select bal_id from bal where acct_id=9039042 and gross_bal=0 and acct_res_id=2 and  consume_bal=0)
union all
select * from event_usage_c_3003@link_rb where billing_nbr=233120717 and bal_id1
not in (select bal_id from bal where acct_id=9039042 and gross_bal=0 and acct_res_id=2 and  consume_bal=0)
union all
select * from event_usage_c_3004@link_rb where billing_nbr=233120717 and bal_id1
not in (select bal_id from bal where acct_id=9039042 and gross_bal=0 and acct_res_id=2 and  consume_bal=0)
union all
select * from event_usage_c_3005@link_rb where billing_nbr=233120717 and bal_id1
not in (select bal_id from bal where acct_id=9039042 and gross_bal=0 and acct_res_id=2 and  consume_bal=0)
union all
select * from event_usage_c_3006@link_rb where billing_nbr=233120717 and bal_id1
not in (select bal_id from bal where acct_id=9039042 and gross_bal=0 and acct_res_id=2 and  consume_bal=0)
union all
select * from event_usage_c_3007@link_rb where billing_nbr=233120717 and bal_id1
not in (select bal_id from bal where acct_id=9039042 and gross_bal=0 and acct_res_id=2 and  consume_bal=0)
union all
select * from event_usage_c_3008@link_rb where billing_nbr=233120717 and bal_id1
not in (select bal_id from bal where acct_id=9039042 and gross_bal=0 and acct_res_id=2 and  consume_bal=0)
union all
select * from event_usage_c_3009@link_rb where billing_nbr=233120717 and bal_id1
not in (select bal_id from bal where acct_id=9039042 and gross_bal=0 and acct_res_id=2 and  consume_bal=0)) a, re b
where a.re_id=b.re_id
order by 2