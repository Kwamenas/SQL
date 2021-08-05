select * from acc_nbr----acc_nbr_id
select * from sim_nbr---acc_nbr_id,sim_card_id
select * from sim_card----sim_card_id,ICCID,IMSI

select a.acc_nbr,c.ICCID,c.IMSI from acc_nbr a,sim_nbr b,sim_card c
where a.acc_nbr_id=b.acc_nbr_id
and a.acc_nbr='112117'
and b.sim_card_id=c.sim_card_id


SELECT * FROM ACC_NBR WHERE ACC_NBR='000064'

UPDATE ACC_NBR SET ACC_NBR_STATE='A' where acc_nbr='000064'

SELECT * FROM SIM_CARD WHERE ICCID='892330000000017835'

select * from acc_nbr_state

update sim_card set sim_state='

select * from sim_state


SELECT * FROM ACC_NBR_STATE

Insert into CC.ADVICE  (ADVICE_ID, ADVICE_TYPE, SUBS_ID, ACC_NBR,MSG,CREATED_DATE, STATE, STATE_DATE, MESSAGE_ID, PART_ID, SP_ID) Values  (advice_id_seq.nextval, 89, -1, REC.PHONE_NUMBER,'Congratulations, you have received 2GB bonus data to use this weekend. Your bonus is valid from midnight on Friday till midnight on Sunday. Busy, making good things happen.',sysdate, 'A', sysdate,to_char(sysdate+2,'YYMMDDHH24MISS')||1675918, 5, 0);
