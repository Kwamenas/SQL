SELECT * FROM ( SELECT n.offer_name, SUM (a.charge) / 100 total_amount, COUNT (*) eventcount FROM event_charge a 
LEFT OUTER JOIN (SELECT h.price_id, d.offer_name FROM price_ver a, rate_plan b, offer_ver c, offer d, price h WHERE a.price_ver_id = h.price_ver_id 
AND b.offer_ver_id = c.offer_ver_id
AND c.offer_id = d.offer_id 
AND a.rate_plan_id = b.rate_plan_id) n ON a.price_id = n.price_id LEFT OUTER JOIN subs l ON a.subs_id = l.subs_id )
and l.acc_nbr>'000100' 
INNER JOIN (SELECT B.EVENT_INST_ID, TO_CHAR (C.completed_date, 'yyyymmdd') 
stat_date FROM RE_SUBS_ORDER_INST B, ORDER_ITEM C WHERE B.ORDER_ITEM_ID = C.ORDER_ITEM_ID AND c.order_state = 'C') x 
ON a.event_inst_id = x.event_inst_id WHERE x.stat_date = TO_CHAR (SYSDATE, 'yyyyMMdd') 
AND a.price_id IN (2052, 84, 71, 46, 5061, 76, 67, 91, 80, 19356, 19365, 19392, 19383, 37407, 42384, 42345, 49392, 42374, 42414, 42337, 42404, 42364, 42354, 42394, 49416,108350,108343,108336,99404,99351) 
AND a.charge <> 0 GROUP BY n.offer_name ORDER BY COUNT (*) DESC) WHERE ROWNUM <= 20;






select offer_name, bundle_price*event_count total_price,event_count
from  (select offer_name,bundle_price, count(*) event_count from
(select e.cust_name,a.acc_nbr,a.state_date,c.offer_name,nvl(c.sale_list_price,0)/100 bundle_price
from order_item a,dp_offer_order b,offer c,cust e,subs f,offer_catg_mem d
where a.order_item_id=b.order_item_id 
and b.offer_id=c.offer_id
and c.offer_id=d.offer_id
and d.offer_catg_id in (204,1808)
and subs_event_id=189 
and order_state='C'
and a.subs_id=f.subs_id
and f.cust_id=e.cust_id
and trunc(a.state_date)=trunc(sysdate)
order by a.state_date)  group by offer_name,bundle_price order by count(*) desc) where rownum<=10