CREATE VIEW ACTIVATION_BY_STAFF AS 
SELECT * FROM
(select Y.*,ROW_NUMBER() OVER (partition by subs ORDER BY NVL(party_code,0) desc) AS RN
from
(select P.stat_date, P.ACTIVATEBY, P.SUBS, to_number(P.PARTY_CODE) PARTY_CODE, P.SYS_CHANNEL from 
(SELECT to_char(A.COMPLETED_DATE,'YYYYMMDD') stat_date, NVL(B.STAFF_NAME, 'Unknown') ACTIVATEBY, a.SUBS_ID SUBS, B.PARTY_CODE, 'C' SYS_CHANNEL
FROM ORDER_ITEM A,
(SELECT D.STAFF_NAME,A.SUBS_ID,a.acc_nbr,D.PARTY_CODE
FROM ORDER_ITEM A
LEFT JOIN (SELECT M.BO_KEY_VALUE, M.PARTY_CODE, N.STAFF_NAME
FROM (select A.BO_KEY_VALUE, B.PARTY_CODE
from BFM_PROCESS_BO A
INNER JOIN (select PARTY_CODE,DISPATCH_ORDER_ID from wf_dispatch_order
where to_char(create_date,'YYYYMMDD') between to_char(sysdate,'yyyyMM')||'01' and to_char(sysdate,'yyyyMMdd')) B
on A.DISPATCH_ORDER_ID = B.DISPATCH_ORDER_ID
where A.DISPATCH_ORDER_ID IS NOT NULL) M
LEFT JOIN BFM_STAFF N
on M.PARTY_CODE = N.STAFF_ID) D
on A.CUST_ORDER_ID = D.BO_KEY_VALUE
where to_char(A.COMPLETED_DATE,'YYYYMMDD') between to_char(sysdate,'yyyyMM')||'01' and to_char(sysdate,'yyyyMMdd')
and A.offer_id = 526
and A.SUBS_EVENT_ID = 1
and A.ORDER_STATE = 'C') B
WHERE to_char(A.COMPLETED_DATE,'YYYYMMDD') between to_char(sysdate,'yyyyMM')||'01' and to_char(sysdate,'yyyyMMdd') 
AND A.subs_id = B.subs_id
and a.offer_id = 526
and A.SUBS_EVENT_ID = 123
and A.ORDER_STATE = 'C'
and A.subs_id NOT IN (SELECT subs_id FROM ORDER_ITEM WHERE to_char(A.COMPLETED_DATE,'YYYYMMDD') between to_char(sysdate,'yyyyMM')||'01' and to_char(sysdate,'yyyyMMdd') and SUBS_EVENT_ID=104)
and a.subs_id not in (select a.subs_id from drm.drm_sc_order_item a where to_char(created_date,'YYYYMMDD') between to_char(sysdate,'yyyyMM')||'01' and to_char(sysdate,'yyyyMMdd') and a.event_type_id=105)

UNION ALL

SELECT to_char(A.COMPLETED_DATE,'YYYYMMDD') stat_date, NVL(B.STAFF_NAME, 'Unknown') ACTIVATEBY, a.SUBS_ID, B.PARTY_CODE, 'C' SYS_CHANNEL
FROM ORDER_ITEM A,
(SELECT D.STAFF_NAME,A.SUBS_ID,a.acc_nbr,D.PARTY_CODE
FROM ORDER_ITEM A
LEFT JOIN (SELECT M.BO_KEY_VALUE, M.PARTY_CODE, N.STAFF_NAME
FROM (select A.BO_KEY_VALUE, B.PARTY_CODE
from BFM_PROCESS_BO A
INNER JOIN (select PARTY_CODE,DISPATCH_ORDER_ID from wf_dispatch_order
where to_char(create_date,'YYYYMMDD') between to_char(sysdate,'yyyyMM')||'01' and to_char(sysdate,'yyyyMMdd')) B
on A.DISPATCH_ORDER_ID = B.DISPATCH_ORDER_ID
where A.DISPATCH_ORDER_ID IS NOT NULL) M
LEFT JOIN BFM_STAFF N
on M.PARTY_CODE = N.STAFF_ID) D
ON A.CUST_ORDER_ID = D.BO_KEY_VALUE
where to_char(A.COMPLETED_DATE,'YYYYMMDD') between to_char(sysdate,'yyyyMM')||'01' and to_char(sysdate,'yyyyMMdd')
and a.offer_id = 526
and A.SUBS_EVENT_ID = 104
AND A.ORDER_STATE = 'C') B
WHERE to_char(A.COMPLETED_DATE,'YYYYMMDD') between to_char(sysdate,'yyyyMM')||'01' and to_char(sysdate,'yyyyMMdd')
AND A.subs_id = B.subs_id
AND a.offer_id = 526
and A.SUBS_EVENT_ID = 123
AND A.ORDER_STATE = 'C'
and a.subs_id not in
(select a.subs_id from drm.drm_sc_order_item a where to_char(created_date,'YYYYMMDD') between to_char(sysdate,'yyyyMM')||'01' and to_char(sysdate,'yyyyMMdd') and a.event_type_id=105)

UNION ALL

SELECT to_char(A.COMPLETED_DATE,'YYYYMMDD') stat_date, to_char(NVL(D.STAFF_NAME, 'Unknown')) ACTIVATEBY, A.SUBS_ID SUBS, to_char(D.STAFF_ID) PARTY_CODE, 'C' SYS_CHANNEL
FROM ORDER_ITEM A
left join CUST_CONTACT B
ON A.CUST_ORDER_ID = B.RELA_ID
left join BFM_STAFF_NAME D
ON for_comm_query.GET_STAFFID_BY_PARTY_CODE(B.PARTY_TYPE,B.PARTY_CODE)=D.STAFF_ID
WHERE to_char(A.COMPLETED_DATE,'YYYYMMDD') between to_char(sysdate,'yyyyMM')||'01' and to_char(sysdate,'yyyyMMdd')
and a.offer_id = 127
and A.SUBS_EVENT_ID in (1, 99)
and A.ORDER_STATE = 'C'
and a.subs_id not in
(select a.subs_id from drm.drm_sc_order_item a where to_char(created_date,'YYYYMMDD') between to_char(sysdate,'yyyyMM')||'01' and to_char(sysdate,'yyyyMMdd') and a.event_type_id=105)


UNION ALL

SELECT to_char(A.COMPLETED_DATE,'YYYYMMDD') stat_date, to_char(NVL(D.STAFF_NAME, 'Unknown')) ACTIVATEBY, A.SUBS_ID SUBS, to_char(D.STAFF_ID) PARTY_CODE, 'C' SYS_CHANNEL
FROM ORDER_ITEM A
left join CUST_CONTACT B
ON A.CUST_ORDER_ID = B.RELA_ID
left join BFM_STAFF_NAME D
ON for_comm_query.GET_STAFFID_BY_PARTY_CODE(B.PARTY_TYPE,B.PARTY_CODE)=D.STAFF_ID
WHERE to_char(A.COMPLETED_DATE,'YYYYMMDD') between to_char(sysdate,'yyyyMM')||'01' and to_char(sysdate,'yyyyMMdd')
and a.offer_id = 965
and A.SUBS_EVENT_ID in (1, 99)
and A.ORDER_STATE = 'C'
and a.subs_id not in
(select a.subs_id from drm.drm_sc_order_item a where to_char(created_date,'YYYYMMDD') between to_char(sysdate,'yyyyMM')||'01' and to_char(sysdate,'yyyyMMdd') and a.event_type_id=105))P


UNION ALL

select t.STAT_DATE, t.ACTIVATEBY, t.subs, to_number(t.party_code) party_code, t.SYS_CHANNEL
from (SELECT to_char(A.COMPLETED_DATE,'YYYYMMDD') stat_date, COALESCE(G.staff_name, 'Unknown') ACTIVATEBY, A.SUBS_ID SUBS, G.PARTY_CODE, 'D' SYS_CHANNEL
FROM ORDER_ITEM A
left outer join (select K.subs_id, L.staff_name, k.party_id PARTY_CODE
from drm.drm_sc_order_item K
LEFT OUTER JOIN drm.drm_dealer_staff L
on K.dealer_id = L.dealer_id
and k.party_id = l.staff_id
where k.event_type_id=105) G
on A.subs_id = G.subs_id
WHERE to_char(A.COMPLETED_DATE,'YYYYMMDD') between to_char(sysdate,'yyyyMM')||'01' and to_char(sysdate,'yyyyMMdd')
and a.offer_id = 526
and A.SUBS_EVENT_ID = 123
AND A.ORDER_STATE = 'C'
and a.subs_id in
(select a.subs_id from drm.drm_sc_order_item a where a.event_type_id=105)

UNION ALL

SELECT to_char(A.COMPLETED_DATE,'YYYYMMDD') stat_date, COALESCE(G.staff_name, 'Unknown') ACTIVATEBY, A.SUBS_ID SUBS, G.PARTY_CODE, 'D' SYS_CHANNEL
FROM ORDER_ITEM A
left outer join (select K.subs_id, L.staff_name, k.party_id PARTY_CODE
from drm.drm_sc_order_item K
LEFT OUTER JOIN drm.drm_dealer_staff L
on K.dealer_id = L.dealer_id
and k.party_id = l.staff_id
where k.event_type_id=105) G
on A.subs_id = G.subs_id
WHERE to_char(A.COMPLETED_DATE,'YYYYMMDD') between to_char(sysdate,'yyyyMM')||'01' and to_char(sysdate,'yyyyMMdd')
and a.offer_id = 127
and A.SUBS_EVENT_ID in (1,99)
AND A.ORDER_STATE = 'C'
and a.subs_id in
(select a.subs_id from drm.drm_sc_order_item a where a.event_type_id=105)
) t
) Y
) O
where O.RN=1;--Y.STAT_DATE=















select * from sim_card where iccid='892330000000058217'
