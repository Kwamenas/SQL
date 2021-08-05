select * from (select n.offer_name,sum(a.charge)/100 total_amount,count(*) eventcount    
															  from event_charge a    
															  left outer join (select h.price_id, d.offer_name    
															                     from price_ver a,    
															                          rate_plan b,    
															                          offer_ver c,    
															                          offer     d,    
															                          price     h    
															                    where a.price_ver_id = h.price_ver_id    
															                      and b.offer_ver_id = c.offer_ver_id    
															                      and c.offer_id = d.offer_id    
															                      and a.rate_plan_id = b.rate_plan_id) n    
															    on a.price_id = n.price_id    
															   left outer join subs l on a.subs_id=l.subs_id --and l.acc_nbr>'000100'     
															      
															   INNER JOIN (select B.EVENT_INST_ID,to_char(C.completed_date, 'yyyymmdd') stat_date    
															                     from RE_SUBS_ORDER_INST B,    
															                          ORDER_ITEM C    
															                    WHERE B.ORDER_ITEM_ID = C.ORDER_ITEM_ID    
															                       and c.order_state='C'    
															                     ) x on a.event_inst_id=x.event_inst_id    
															   where x.stat_date = to_char(sysdate,'yyyyMMdd') and a.price_id in (2052,84,71,46,5061,76,67,91,80,19356,19365,19392,19383) and a.charge <>0  
										               
															   group by n.offer_name    
															   ORDER BY count(*) desc)  
										             WHERE ROWNUM <=20