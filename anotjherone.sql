update acc_nbr set acc_nbr_state='C' where acc_nbr ='113175'

select * from acc_nbr where acc_nbr_id=120326

select * from sim_card where sim_card_id='120266'

select * from sim_nbr where sim_card_id='40872'
892330000000014624


select 
select a.acc_nbr,a.acc_nbr_id,b.sim_card_id,b.iccid,b.sim_state  from 
acc_nbr a left join sim_nbr c on a.acc_nbr_id=c.acc_nbr_id 
left join sim_card b on b.sim_card_id=c.sim_card_id
where acc_nbr in ()


select * from sim_state

