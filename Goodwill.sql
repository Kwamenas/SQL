SELECT A.*,B.STAFF_NAME FROM 
(SELECT A.*,B.ORDER_ITEM_ID FROM
(SELECT  C.ACC_NBR,B.SALE_LIST_PRICE/100,B.OFFER_NAME,to_char(A.STATE_DATE,'yyyy-mm-dd hh24:mi:ss'),G.CUST_TYPE_NAME,A.EVENT_INST_ID
FROM RE_CC_INST A, OFFER B ,SUBS C,OFFER_CATG_MEM D,CUST H,CUST_TYPE G
WHERE A.OFFER_ID=B.OFFER_ID
AND C.SUBS_ID=A.SUBS_ID
AND C.CUST_ID=H.CUST_ID
AND H.CUST_TYPE=G.CUST_TYPE
AND B.OFFER_ID NOT IN('4108','4109')
AND b.offer_id=d.offer_id
and d.offer_catg_id in (608,
608,
608,
608)
and b.offer_type=4
and lower (b.offer_name) not like '%hybrid business%'
and lower (b.offer_name) not like '%4g shared unlimited%'
and lower (b.offer_name) not like '%hbb%') A,
(SELECT EVENT_INST_ID,ORDER_ITEM_ID FROM RE_SUBS_ORDER_INST WHERE SUB_ORDER_ID IS NOT NULL AND ORDER_ITEM_ID  IN (
select ORDER_ITEM_ID from ORDER_ITEM where TRUNC(state_date)between '01-AUG-20' AND '31-OCT-20' and order_state IN ('C','E','G','P','I') AND SUBS_EVENT_ID='189'
and acc_nbr=190125)
) B
WHERE A.EVENT_INST_ID=B.EVENT_INST_ID ) A,
(select distinct a.order_item_id,for_comm_query.GET_PARTY_CODE_NAME(co.party_type,co.party_code) AS staff_name
     from order_item a,CUST_ORDER CO,BFM_STAFF_ORG SO,BFM_ORG o
     where a.cust_order_id=CO.cust_order_id
     and a.subs_event_id=189
     and a.order_state IN ('X','C')
     and so.state='A'
     and for_comm_query.GET_STAFFID_BY_PARTY_CODE(co.party_type,co.party_code)=so.staff_id
     and so.org_id=o.org_id) B
     
where a.order_item_id=b.order_item_id