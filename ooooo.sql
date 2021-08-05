select distinct a.res_state_date,a.acc_nbr,b.CUST_NAME,a.wh_type,a.wh_id,a.wh_id,DRM.for_comm_query.GET_PARTY_CODE_NAME(a.wh_type,a.wh_id)
from  DRM.drm_res_inst a, drm.DRM_SC_ORDER_ITEM b
where b.acc_nbr >001099
and b.acc_nbr=a.acc_nbr
and b.event_type_id=105

select * from DRM.drm_res_inst where to_char(created_date,'YYYYMMDD')='20161108'

select * from drm.DRM_SC_ORDER_ITEM where to_char(created_date,'YYYYMMDD')='20161108'


select * from order_item where to_char(complete


select distinct a.acc_nbr,a.cust_name,a.created_date,d.offer_name,e.staff_name,b.channel_name
from drm.drm_sc_order_item a left join cc.prod f on a.subs_id=f.prod_id
left join offer d on f.subs_plan_id=d.offer_id
left join drm.drm_dealer_staff e 
on e.staff_id=a.party_id
left join cc.td_staff_channel b  on a.party_id=b.staff_id and e.staff_name=b.staff_name and to_char(a.created_date,'YYYYMMDD') between b.start_date and nvl(b.end_date,to_char(sysdate,'YYYYMMDD'))
where a.event_type_id=105 and offer_name is not null

on a.prod_code=d.offer_code



select * from drm.drm_sc_order_item where ACC_NBR='2330000000071'

select * from offer where offer_id=1508


select * from prod where prod_id=1003252


select * from drm.channel_type
select * from cc.td_staff_channel
select distinct channel_name from cc.td_staff_channel


select * from drm.DRM_SC_ORDER_ITEM where ICCID='892330000000046206'

select * from payment

select * from payment_method


SELECT * FROM drm.DRM_RES_INST WHERE RES_SN='892330000000046206'


















select oi.acc_nbr,oi.order_item_id,to_char(oi.completed_date,'yyyymmdd') order_date,c.cust_name,cc.contact_channel_name,for_comm_query.GET_PARTY_CODE_NAME(co.party_type,co.party_code) AS staff_name
,o.offer_name
from order_item oi,cust_order co,subs s,cust c,acct d,cust_contact cco,contact_channel cc,offer o
where oi.cust_order_id=co.cust_order_id
and oi.subs_id=s.subs_id
and s.cust_id=c.cust_id
and s.acct_id=d.acct_id
and oi.subs_plan_id=o.offer_id
and co.cust_order_id=cco.rela_id
and cco.contact_channel_id=cc.contact_channel_id
and (oi.subs_event_id=123 or (subs_event_id=1 and d.postpaid='Y'))
and oi.order_state='C'
and trunc(oi.completed_date) between  trunc(sysdate) and trunc(sysdate);



