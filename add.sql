
select  to_char(res_state_date,'yyyymmdd'),a.acc_nbr,d.CUST_NAME,a.wh_type,a.wh_id,DRM.for_comm_query.GET_PARTY_CODE_NAME(a.wh_type,a.wh_id)
from DRM.drm_res_inst a,cc.order_item b,cc.cust_order c,cc.cust d,cc.subs e
where a.res_state='C'
and to_char(res_state_date,'yyyymmdd') ='20160914'--to_char(res_state_date,'yyyymm') in ('201609')
and a.acc_nbr=to_char(b.acc_nbr)
and e.SUBS_ID=b.SUBS_ID
and d.CUST_ID=e.CUST_ID
and b.subs_event_id=104
and b.cust_order_id=c.cust_order_id
order by to_char(res_state_date,'yyyymmdd');



















