select nvl(count(a.prod_id),0) cnt from prod a, indep_prod_spec b, all_serv_type c
where a.offer_id=b.indep_prod_spec_id 
and b.serv_type=c.serv_type 
and c.catg_type='M' 
and a.prod_state in ('A','D','E') group by c.serv_type order by c.serv_type;




FIELDS

---NUMBER,OFFER_NAME,CATG,ACTIVATION_DATE FOR SEP AND OCT


