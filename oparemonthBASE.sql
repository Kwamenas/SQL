select  distinct to_char(completed_date,'yymm')DATES,count(distinct subs_id)TOTAL_BASE from ORDER_ITEM a
where a.subs_event_id in (1,123)   
     and a.order_state = 'C'   
     and to_char(completed_date, 'yyyymm') = to_char(add_months(sysdate,-1),'yyyyMM') and acc_nbr>99999 
group by to_char(completed_date,'yymm')


select * from bal where acct_id='11015608'