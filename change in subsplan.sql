select * from subs_upp_inst where subs_id='1710821' and price_plan_id in ('3019','3104')

update subs_upp_inst set price_plan_id='3904' where subs_upp_inst_id='1710821' AND SUBS_ID='1710821'

select * from prod where indep_prod_id='1710821'

update prod set offer_id='3906' where prod_id='1764090' and indep_prod_id='1710821'

select * from prod where prod_id='1710821'


update prod set subs_plan_id='3908' where prod_id='1710821';

select * from subs where acc_nbr='175375'


select * from offer where offer_id=3908 like '%Standard%'

select * from offer where offer_type=3 and offer_name like '%JUMP%'

select * from offer_type where offer_type=3

BA 3019---3---offer---    3906 standard
BA 3018---4---offer       3905--satndard
BA 3021---7----prod       3908---standard
BA 3017---4---offer       3904--standard

update

