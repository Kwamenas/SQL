select a.order_date,a.cust_name,a.acc_nbr,a.offer_name,a.price,a.contact_channel_name,nvl(b.payment_method_name,nvl(c.channel_name,'Balance')) CHANNEL_NAME,d.org_name,d.staff_name 
                                                                        from  
                                                                        (select oi.order_item_id,oi.event_payment_id,oi.completed_date order_date,c.cust_name,s.acc_nbr, o.offer_name,nvl(o.sale_list_price,0)/100 price,cc.contact_channel_id,cc.contact_channel_name 
                                                                        from order_item oi,cust_order co,dp_offer_order doo,subs s,cust c,offer o,cust_contact cco,contact_channel cc 
                                                                        where oi.cust_order_id=co.cust_order_id 
                                                                        and oi.order_item_id=doo.order_item_id 
                                                                        and oi.subs_id=s.subs_id 
                                                                        and s.cust_id=c.cust_id 
                                                                        and doo.offer_id=o.offer_id 
                                                                        and (o.offer_name not like '%SPR%' and o.offer_name not like '%Freebie%') 
                                                                        and o.offer_id not in (1921,1920,1919,1918,1917,1916,1915,1914,1913,1912) 
                                                                        and co.cust_order_id=cco.rela_id 
                                                                        and cco.contact_channel_id=cc.contact_channel_id 
                                                                        and oi.subs_event_id=189 
                                                                        and oi.order_state='C' 
                                                                        and trunc(oi.completed_date) between  trunc(TO_DATE ('2016-11-01','YYYY-MM-DD')) and trunc(TO_DATE ('2016-11-01','YYYY-MM-DD'))) a 
                                                                        left join (select a.event_payment_id,b.payment_method_name from instant_payment a,payment_method b 
                                                                        where a.payment_method_id=b.payment_method_id) b 
                                                                        on a.event_payment_id=b.event_payment_id 
                                                                        left join 
                                                                        (select a.order_item_id,c.channel_name,b.bank_id from order_item a,ghana_bank_pay_his b,ghana_bank_pay_channel c 
                                                                        where a.order_item_id=b.order_item_id 
                                                                        and b.bank_pay_channel_id=c.bank_pay_channel_id) c 
                                                                        on a.order_item_id=c.order_item_id 
                                                                        left join 
                                                                        (select a.order_item_id,o.org_name,for_comm_query.GET_PARTY_CODE_NAME(co.party_type,co.party_code) AS staff_name 
                                                                        from order_item a,CUST_ORDER CO,BFM_STAFF_ORG SO,BFM_ORG o 
                                                                        where a.cust_order_id=CO.cust_order_id 
                                                                        and a.subs_event_id=189  
                                                                        and a.order_state='C' 
                                                                        and so.state='A' 
                                                                        and for_comm_query.GET_STAFFID_BY_PARTY_CODE(co.party_type,co.party_code)=so.staff_id 
                                                                        and so.org_id=o.org_id) d 
                                                                        on a.order_item_id=d.order_item_id
