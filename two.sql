select * from subs where acc_nbr='103206'

select * from order_item where acc_nbr='103206'


select * from payment where acc_nbr='103206'

select * from payment_method

select * from acct_book 
and trunc(created_date)=trunc(sysdate)
and contact_channel_id=3
and acct_res_id=3



select * from contact_channel






select acct_id,charge from acct_book 
where contact_channel_id=3
and acct_res_id=3 
and trunc(created_date)=trunc(sysdate)
and acct_id in (
select max (acct_id) acct_id  from subs 
having count(*)>=1
group by acc_nbr
)







