
select subs_id, to_char(STATE_DATE, 'YYYYMMDD')state_date from order_item WHERE subs_event_id =104  and to_char(STATE_DATE, 'YYYYMMDD') BETWEEN  '20200201' AND '20200229'
and subs_id in (
select a.subs_id/*, a.acc_nbr,/*, a.cust_id,*//*, b.phone_number,*/ /*offer_name*/ from (select a.subs_id, a.acc_nbr, cust_id from
(select max(subs_id) subs_id, acc_nbr from subs
having count(*)>=1
group by acc_nbr) a,(select * from subs) b
where a.subs_id=b.subs_id) a, cust b, prod c, offer d
where subs_id=prod_id
and prod_state IN ('G','A')
and c.offer_id='526'
and a.cust_id=b.cust_id
and SUBS_PLAN_ID=d.offer_id
and offer_name ='Latest MiFi Pack')



select * from subs where acc_nbr='200729'


select * from offer where offer_name='Inhouse 10GB'

select * from subs_upp_inst where price_plan_id=11303


select * from subs where subs_id='13520339'