select a.ACC_NBR||','||a.CUST_NAME||','||PHONE_NUMBER||','||email||','||OPERATED_BY||','||PROD_STATE_NAME||','||REGISTRATION_DATE||','||PROD_STATE_DATE||','||OFFER_NAME
from (select a.*, drm.for_comm_query.get_party_code_name (WH_TYPE,WH_ID) OPERATED_BY  from (select a.subs_id,a.acc_nbr,cust_name,phone_number,email,trunc(a.completed_date) registration_date,prod_state from order_item a, ((select a.subs_id, a.acc_nbr, cust_id from
(select max(subs_id) subs_id, acc_nbr from subs
having count(*)>=1
group by acc_nbr) a,(select * from subs) b
where a.subs_id=b.subs_id)) b, cust c, prod d where a.acc_nbr=b.acc_nbr and trunc(a.completed_date)BETWEEN '01-JULY-19' AND '30-AUG-19'
and subs_event_id=104 and ORDER_STATE='C' and a.acc_nbr>001099
and b.cust_id=c.cust_id
and b.subs_id=prod_id
and prod_state in ('G','A')) a, (select * from drm.drm_res_inst where RES_INST_ID in ( select max(RES_INST_ID) from  drm.drm_res_inst group by acc_nbr)) b
where a.acc_nbr=b.acc_nbr(+)
having count(*)>=1
group by a.subs_id,a.acc_nbr, cust_name,phone_number,email,drm.for_comm_query.get_party_code_name (WH_TYPE,WH_ID),registration_date,prod_state
union all
select a.subs_id,a.acc_nbr,cust_name,phone_number,email,trunc(a.completed_date) registration_date,prod_state,for_comm_query.get_party_code_name(a.PARTY_TYPE,a.PARTY_CODE) OPERATED_BY
 from order_item a, ((select a.subs_id, a.acc_nbr, cust_id from
(select max(subs_id) subs_id, acc_nbr from subs
having count(*)>=1
group by acc_nbr) a,(select * from subs) b
where a.subs_id=b.subs_id)) b, cust c, prod d where a.acc_nbr=b.acc_nbr and trunc(a.completed_date)BETWEEN '01-JULY-19' AND '30-AUG-19'
and subs_event_id=1 and ORDER_STATE='C' and a.acc_nbr>001099
and b.cust_id=c.cust_id
and b.subs_id=prod_id
and prod_state in ('G','A')
group by a.subs_id,a.acc_nbr,cust_name,phone_number, email,for_comm_query.get_party_code_name(a.PARTY_TYPE,a.PARTY_CODE),trunc(a.completed_date),prod_state) a,
prod b, PROD_STATE c, offer d
where subs_id=prod_id
and b.PROD_STATE=c.PROD_STATE
and subs_plan_id=d.offer_id;

