select a.*,prod_state_name from (select max(subs_id) subs_id,acc_nbr from subs
where acc_nbr='173348'
group by acc_nbr
having count(*)>1)a,subs b,prod c,prod_state d
where a.subs_id=b.subs_id
and a.subs_id=c.prod_id
and c.prod_state not in ('B','I')
and d.prod_state=c.prod_state