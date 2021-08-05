/**1.**/select * from subs
select * from prod
/**1.**/update prod_state='B' where prod_id in ()
/**2.**/update acc_nbr set acc_nbr='I' where acc_nbr in ()


update prod set prod_state='B' where prod_id in (
select prod_id/**acc_nbr**/ from subs a,prod b
where prod_id=subs_id
and  acc_nbr in (
))






update  acc_nbr set acc_nbr_state='T' where acc_nbr='100239'
 in ()

select * from acc_nbr where acc_nbr='100239'


select * from order_item where acc_nbr='150973'

update order_item set order_state='E' WHERE order_item_id='994221'


select * from subs where acc_nbr='150973'


select * from prod where prod_id='2505221'


update prod set prod_state='G' where prod_id='2505221'







