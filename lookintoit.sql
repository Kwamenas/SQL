select a.acc_nbr,a.subs_id,b.prod_state,c.acc_nbr_state
from subs a left join prod b on 
a.subs_id=b.prod_id
left join acc_nbr c on a.acc_nbr=c.acc_nbr
c.acc_nbr_state='C' and a.acc_nbr in() 


select * from subs

select * from acc_nbr