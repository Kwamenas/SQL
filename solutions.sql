----UNABLE TO CHANGE STATE OF PRODUCT WHILES ALL CATLOUGES ARE DISABLED**************/CANT BUNDLE



select * from acc where acc_nbr = 123971





******confriming company thi

select * from subs where acc_nbr ='101464'

select * From prod where prod_id ='411778'

select * from prod_state

select * from bal where acct_id ='7053777'

select * from order_item where ACC_NBR='119085' order by state_date desc 

UPDATE ORDER_ITEM SET ORDER_STATE ='P' WHERE ACC_NBR='119085' AND ORDER_ITEM_ID='515033' 

SELECT * FROM ORDER_STATE


Select * from sa_order where order_item_id=
select * from sa_wo where order_item_id=



select ACCT_ID,GROSS_BAL ,CONSUME_BAL from bal where acct_id in



select  distinct acc_nbr,acct_id from subs where acc_nbr in 
select * from bal

003297
286447

select * From prod where prod_id ='286447'
293494


********transfer query************************

select * from acct_book where acct_id ='9021247' and acct_book_type='L'
order by created_date desc


select * from bal where bal_id= 136763

select * from bal where acct_id=17015061

select * from subs where acc_nbr=133220

select * from subs where acct_id='9021247'


select * from subs where acc_nbr= 100278;
select * from prod where prod_id=260007;

select * from prod_state

select * from subs_upp_inst where subs_id=260007;

116337.......10014022
103577.......9021247

select * from acct_book_type


116337 
103577 

select * from bal










*****----customers DATA BREAKDOWN***********

### so select from the table 

3028---april
3029--- may
3030----june
3031-----july
3032------aug
3033-----sep


**1**
select * from billing_cycle where billing_cycle_type_id =1

select * from billing_cycle_type;

sel


/recurring/


select bal_id1,acct_id1,billing_nbr,charge1,charge2,charge3,charge4,charge5,charge6,charge7,charge8,charge9,byte_up,byte_down
from event_usage_c_3034@link_rb where billing_nbr=233131361 and acct_id1=15013077 and bal_id1='233355'

union all
select bal_id1,acct_id1,billing_nbr,charge1,charge2,charge3,charge4,charge5,charge6,charge7,charge8,charge9,byte_up,byte_down
from event_usage_c_3030@link_rb where billing_nbr=233120720 and acct_id1=9039045 and bal_id1 ='129245'
union all
select bal_id1,acct_id1,billing_nbr,charge1,charge2,charge3,charge4,charge5,charge6,charge7,charge8,charge9,byte_up,byte_down
from event_usage_c_3031@link_rb where billing_nbr=233120720 and acct_id1=9039045 and bal_id1 ='192595'
union all
select bal_id1,acct_id1,billing_nbr,charge1,charge2,charge3,charge4,charge5,charge6,charge7,charge8,charge9,byte_up,byte_down
from event_usage_c_3031@link_rb where billing_nbr=233120720 and acct_id1=9039045 and bal_id1='265811'

union all
select bal_id1,acct_id1,billing_nbr,charge1,charge2,charge3,charge4,charge5,charge6,charge7,charge8,charge9,byte_up,byte_down
from event_usage_c_3009@link_rb where billing_nbr=233120717 and acct_id1=9039042 and bal_id1='242869'








select * from bal where bal_id=233355



select * from bal where  consume_bal <>'0'  and gross_bal<>'0' and acct_id=9039045 and acct_res_id in('2','3')

select  * from acct_res where acct_res_id=7

recurring balance id
    94709--05           
    129245--06 
   192595--07
   242869--08
   
  305909--09

3028---april
3029--- may
3030----june
3031-----july
3032------aug
3033-----sep


purchased balance id
  85293 --/04/05
  235567 --/07/08
  265809 --/08/09
   265811--/08/9

3028---april
3029--- may
3030----june
3031-----july
3032------aug
3033-----sep

 
---purchased----must be edited 

select billing_nbr,charge1,charge2,charge3,charge4,charge5,START_TIME,re_name from(select *
from event_usage_c_3037@link_rb where billing_nbr=233149485 and bal_id1 not in(select bal_id from bal where  acct_id=11026104 and consume_bal ='0'  and gross_bal='0'and acct_res_id=2)
)a, re b
where a.re_id=b.re_id



union all 

select bal_id1,acct_id1,billing_nbr,charge1,charge2,charge3,charge4,charge5,charge6,charge7,charge8,charge9,byte_up,byte_down
from event_usage_c_3029@link_rb where billing_nbr=233120720 and acct_id1=9039045 and bal_id1 ='85293'
union all
select bal_id1,acct_id1,billing_nbr,charge1,charge2,charge3,charge4,charge5,charge6,charge7,charge8,charge9,byte_up,byte_down
from event_usage_c_3031@link_rb where billing_nbr=233120720 and acct_id1=9039045 and bal_id1 ='235567'
union all 
select bal_id1,acct_id1,billing_nbr,charge1,charge2,charge3,charge4,charge5,charge6,charge7,charge8,charge9,byte_up,byte_down
from event_usage_c_3032@link_rb where billing_nbr=233120720 and acct_id1=9039045 and bal_id1  in('235567','265809','265811')
union all
select bal_id1,acct_id1,billing_nbr,charge1,charge2,charge3,charge4,charge5,charge6,charge7,charge8,charge9,byte_up,byte_down
from event_usage_c_3033@link_rb where billing_nbr=233120720 and acct_id1=9039045 and bal_id1 in('265809','265811')

union all
select bal_id1,acct_id1,billing_nbr,charge1,charge2,charge3,charge4,charge5,charge6,charge7,charge8,charge9,byte_up,byte_down
from event_usage_c_3033@link_rb where billing_nbr=233120719 and acct_id1=9039044

select * from bal where BAL_ID=270645






select * from event_usage_c_3040@link_rb where billing_nbr='233168188'


#for recurring consume_bal=0 gross_bal=0 acct_res_id=2#


SELECT * FROM RE


describe  table bal

XXXX: Billing_cycle_id for specific billing_cycle (check from the table billing_cycle)

SELECT * FROM RE (Contains list of all Event Codes and Event names)

-----simplE WAY---
select billing_nbr,START_TIME, charge1, charge2, charge3, charge4, re_name from (select * from event_usage_c_3001@link_rb where billing_nbr=233120717 and bal_id1 in
(select bal_id from bal where acct_id=9039042 and gross_bal=0 and acct_res_id=2 and  consume_bal=0)
union all
select * from event_usage_c_3002@link_rb where billing_nbr=233120717 and bal_id1
in (select bal_id from bal where acct_id=9039042 and gross_bal=0 and acct_res_id=2 and  consume_bal=0)
union all
select * from event_usage_c_3003@link_rb where billing_nbr=233120717 and bal_id1
in (select bal_id from bal where acct_id=9039042 and gross_bal=0 and acct_res_id=2 and  consume_bal=0)
union all
select * from event_usage_c_3004@link_rb where billing_nbr=233120717 and bal_id1
in (select bal_id from bal where acct_id=9039042 and gross_bal=0 and acct_res_id=2 and  consume_bal=0)
union all
select * from event_usage_c_3005@link_rb where billing_nbr=233120717 and bal_id1
in (select bal_id from bal where acct_id=9039042 and gross_bal=0 and acct_res_id=2 and  consume_bal=0)
union all
select * from event_usage_c_3006@link_rb where billing_nbr=233120717 and bal_id1
in (select bal_id from bal where acct_id=9039042 and gross_bal=0 and acct_res_id=2 and  consume_bal=0)
union all
select * from event_usage_c_3007@link_rb where billing_nbr=233120717 and bal_id1
in (select bal_id from bal where acct_id=9039042 and gross_bal=0 and acct_res_id=2 and  consume_bal=0)
union all
select * from event_usage_c_3008@link_rb where billing_nbr=233120717 and bal_id1
in (select bal_id from bal where acct_id=9039042 and gross_bal=0 and acct_res_id=2 and  consume_bal=0)
union all
select * from event_usage_c_3009@link_rb where billing_nbr=233120717 and bal_id1
in (select bal_id from bal where acct_id=9039042 and gross_bal=0 and acct_res_id=2 and  consume_bal=0)) a, re b
where a.re_id=b.re_id
order by 2




94711


select * from subs where acc_nbr=9039042
**** to get sms blast messages*****


select * from advice_his

select * from 


select * from drm.
----unlock user thus CRM---
1UUYBGXJB54=
select * from bfm_user where user_code='287930193' like '%Nii%'


delete from bfm_user where user_id=677

update bfm_user set pwd='1UUYBGXJB54=' where user_id='519'


select * from BFM_USER_DPRIV_REF_BFM_USER


select * from subs where acc_nbr=149445

select * from org_advice_type





---confirming company thus DRM----
select a.*,org_name 
  from gm_goods_inst a, bfm_org b
 where a.goods_sn in
       (select to_char(a.subs_id)
          from wholesale_inst a, sim_card b
         where a.sim_card_id = b.sim_card_id
           and b.iccid ='892330000000060145')
and a.org_id=b.org_id

select * from GM_MODEL where mode_code='101'

select * from bfm_org





------explanation of above query----------------
----0-THEY CONTAIN THESE THREE --TABLES--
select * from wholesale_inst----sim card_id,subs_id

select * from gm_goods_inst where GOODS_SN IN (--GOODS_ID & ORG_ID goods_sn

select * from bfm_org  WHERE ORG_ID=133 101--DEALER,ORG_ID

select * from sim_card ----ICCID AND SIM_CARD ID & ORG_ID 101

SELECT * FROM SIM_CARD WHERE ICCID ='892330000000021867'


select * from sim_card where iccid in('892330000000045011','892330000000035667')

select * from bfm_org


select * from subs where ACC_NBR='23013010'

----updating company----
=-




   '892330000000024636',
   '892330000000032633',
   '892330000000013582',
   '892330000000024630',
   '892330000000024056',
   '892330000000024635',
   '892330000000024622',

-----transfer of  ownership----

select * from cust where cust_name like'%Lucas Test%'

cust_id 8180

select * from subs where acc_nbr='000180'

56445
update cust set PHONE_NUMBER ='0501367501' where CUST_ID='56445'


------select * from albums join artists on albums.artist_id=artists.id;------- eg of join


-------emergency and offline CDRs---

select count(*) from event_filelist where state='N'

UPDATE event_filelist set sate ='W' where state ='N'



SELECT * from gm_goods_inst where goods_sn
 in ('2571374236822085',
'6359374126121087',
'0828290025800917',
'4374002257347801',
'7818500510228433',
'8703952731879642',
'3742801231770955',
'9644603667953759',
'3413484667460947',
'8416299106086390',
'4288097653463544',
'8169700748214724',
'9158970594665976',
'6272594926602900',
'8888212640968952',
'7888542980416046',
'6380497316950801',
'9041154546758713',
'5822875235941765',
'4340164383082746',
'6868095778612967',
'5752088488357623',
'2699893406825996',
'1159254468371489',
'4436391894612963',
'1851677906564808',
'4540530209082303',
'9202513060231801',
'1326680523224760',
'7059109483535205',
'9942693379719906',
'5473913094944898',
'9217268598788702',
'9934031240765107',
'1180725839748309',
'4281797661669179',
'5331084905943090',
'7263722682973506',
'1690640447824448',
'3526664437388709',
'6062503308609173',
'8868423284019003',
'3543512853770159',
'8878385939863884',
'8391011819150138',
'0384046732319106',
'4670433171425407',
'0070752216859458',
'6901102335470524',
'0292944340422227',
'2041083245221622',
'3306987920761631',
'0749593429819369',
'9970785132814949',
'9295602178826803',
'5813173032306832',
'4396646889081885',
'7009457713425420',
'4054376518898052',
'8441354260738376',
'3263792837651093',
'1177975138579586',
'9519631882152109',
'7306954062706156',
'2726872108871102',
'6381358532477159',
'0198007782934282',
'3376546507523545',
'9975126094174464',
'9497681112505857',
'6624979857230569',
'7924531720134351',
'2869663620987289',
'4231344648107022',
'9306405788693455',
'6656758472049592',
'6745381071662756',
'1914918934002385',
'3744617440328057',
'0845339860400272',
'6439301990759425',
'8962372463664541',
'0624534432756909',
'4499075863217842',
'1712382616819472',
'5244310998189815',
'8618795758462894',
'0433566441788098',
'9958116209052078',
'3037776311686449',
'2634282228393589',
'4960491758836396',
'9327677658885105',
'3309119255362394',
'3028742973748706',
'0721601984588818',
'9433872079039154',
'3394192027114404',
'3995610304062230',
'9577022578055454')



select * from gm_goods_state
delete from  GM_GOODS_INST where goods_sn in

_DPRIV_REF_BFM_USER

select * from all_tables where table_name like '%BFM_USER%' and owner='CC'




select * from ADVICE_HIS  WHERE sender_param like'%yaabiri@yahoo.com%'


select * from ADVICE_HIS_BAKUP where acc_nbr='0246554098' and advice_type='33'


select * from acct_book

----moving lifestyle package from one customer to another----
select * from subs_upp_inst



select * from gm_model where mode_code=102 like'%Mifi%'

101


select * from offer


select * from gm_goods_inst

select * from wholesale_inst

select * from subs

select * from gm_model


select * from acc_nbr where acc_nbr in ('1159510',
'159509',
'159508',
'159507',
'159495',
'159506',
'159505',
'159504',
'159503',
'159502',
'159501',
'159500',
'159498',
'159499',
'159497',
'159496',
'159463',
'159464',
'159465',
'159511')



