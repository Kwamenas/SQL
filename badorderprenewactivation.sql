select c.* from order_item a,sa_order b,sa_wo c
where a.order_nbr=&order_number
and a.order_item_id=b.order_item_id
and b.order_id=c.order_id;


select * from subs where acc_nbr='173291'

select * from cust where cust_id='113220'

update cust set email='92mams@gmail.com'where cust_id='113220'


select * from bal where acct_id='58013547'

update bal set exp_date='2017-06-15 17:20:53.000000' where bal_id='2765257' and acct_id='58013547'