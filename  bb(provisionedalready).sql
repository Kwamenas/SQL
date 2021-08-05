select a.acc_nbr from subs a ,prod b,gm_goods_inst c
where a.subs_id=b.prod_id
and to_char(a.subs_id)=c.goods_sn
and b.prod_state='I'
and c.model_id=87
and c.goods_state='A';

select * from goods_price;

select * from gm_model where model_id=226;