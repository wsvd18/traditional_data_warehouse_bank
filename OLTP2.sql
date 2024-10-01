prompt PL/SQL Developer import file
prompt Created on 2022��3��3�� by Administrator
set feedback off
set define off
prompt Creating LN_LNP_ACCT_AMWKPL06...
create table LN_LNP_ACCT_AMWKPL06
(
  rt_cust_num   CHAR(14),
  tr_ext_seq    NUMBER(12),
  tr_eff_date   DATE,
  tr_tran_amt   NUMBER(20,2),
  ba_used_bal   NUMBER(20,2),
  tr_tot_prin   NUMBER(20,2),
  mi_pay_acct_1 CHAR(28),
  tr_sys_date   DATE,
  tr_entry_time NUMBER(12),
  tr_tran_cd    CHAR(4),
  tr_tran_desc  CHAR(25),
  filler        CHAR(18)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table LN_LNP_ACCT_AMWKPL06
  is '���˴���ſ���ˮ����';
comment on column LN_LNP_ACCT_AMWKPL06.rt_cust_num
  is '�����ʺ�';
comment on column LN_LNP_ACCT_AMWKPL06.tr_ext_seq
  is '����ID';
comment on column LN_LNP_ACCT_AMWKPL06.tr_eff_date
  is '�ſ�����';
comment on column LN_LNP_ACCT_AMWKPL06.tr_tran_amt
  is '�ſ���';
comment on column LN_LNP_ACCT_AMWKPL06.ba_used_bal
  is '�ۼƷſ���';
comment on column LN_LNP_ACCT_AMWKPL06.tr_tot_prin
  is '�ʻ����';
comment on column LN_LNP_ACCT_AMWKPL06.mi_pay_acct_1
  is '�տ����ʺ�';
comment on column LN_LNP_ACCT_AMWKPL06.tr_sys_date
  is '��������';
comment on column LN_LNP_ACCT_AMWKPL06.tr_entry_time
  is '����ʱ��';
comment on column LN_LNP_ACCT_AMWKPL06.tr_tran_cd
  is '���״���';
comment on column LN_LNP_ACCT_AMWKPL06.tr_tran_desc
  is '���״���˵��';
comment on column LN_LNP_ACCT_AMWKPL06.filler
  is '����ֶ�';

prompt Creating LN_LNP_ACCT_AMWKPL07...
create table LN_LNP_ACCT_AMWKPL07
(
  rt_acct_num           CHAR(14),
  zm_desc_15_1          CHAR(15),
  tr_eff_date           DATE,
  tran_seq_int          NUMBER(12),
  sche_pay_date         DATE,
  ac_start_date         DATE,
  curr_pmt_num          NUMBER(12),
  num_day_interval      NUMBER(12),
  prin_pay_amt          NUMBER(20,2),
  int_pay_amt           NUMBER(20,2),
  rt_oldst_due_date     DATE,
  penalty_prin_dq       NUMBER(20,2),
  service_fee           NUMBER(20,2),
  tr_tran_cd            CHAR(4),
  rt_loan_rate          NUMBER(12,7),
  rt_acct_prod          CHAR(4),
  curr_penalty_int      NUMBER(20,2),
  bal_of_int_rev        NUMBER(20,2),
  bal_of_coll_int       NUMBER(20,2),
  dq_principal          NUMBER(20,2),
  ac_rate               NUMBER(16,7),
  rt_ctl2_1             CHAR(3),
  reversal_flag         CHAR(1),
  tr_tran_desc          CHAR(25),
  tr_sys_date           DATE,
  ba_due_not_pd         NUMBER(20,2),
  ac_due_not_pd         NUMBER(20,2),
  ff_due_not_pd         NUMBER(20,2),
  rt_tot_prin           NUMBER(20,2),
  actual_alt01_pay      NUMBER(20,2),
  actual_penalty_pay    NUMBER(20,2),
  rt_acct_stat          CHAR(2),
  zx_last_nor_prn_paid  NUMBER(20,2),
  zx_last_past_due_paid NUMBER(20,2),
  zx_last_nor_int_paid  NUMBER(20,2),
  zx_last_past_int_paid NUMBER(20,2),
  zx_last_fcp_paid      NUMBER(20,2)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table LN_LNP_ACCT_AMWKPL07
  is '���˴������ˮ����';
comment on column LN_LNP_ACCT_AMWKPL07.rt_acct_num
  is '�����ʺ�';
comment on column LN_LNP_ACCT_AMWKPL07.zm_desc_15_1
  is '���������';
comment on column LN_LNP_ACCT_AMWKPL07.tr_eff_date
  is '��������';
comment on column LN_LNP_ACCT_AMWKPL07.tran_seq_int
  is '������ˮ��';
comment on column LN_LNP_ACCT_AMWKPL07.sche_pay_date
  is '�ƻ���������';
comment on column LN_LNP_ACCT_AMWKPL07.ac_start_date
  is '��Ϣ����';
comment on column LN_LNP_ACCT_AMWKPL07.curr_pmt_num
  is '��ǰ��������';
comment on column LN_LNP_ACCT_AMWKPL07.num_day_interval
  is '��������';
comment on column LN_LNP_ACCT_AMWKPL07.prin_pay_amt
  is 'ʵ������';
comment on column LN_LNP_ACCT_AMWKPL07.int_pay_amt
  is 'ʵ����Ϣ';
comment on column LN_LNP_ACCT_AMWKPL07.rt_oldst_due_date
  is '�����������';
comment on column LN_LNP_ACCT_AMWKPL07.penalty_prin_dq
  is 'ʵ����Ƿ����Ϣ';
comment on column LN_LNP_ACCT_AMWKPL07.service_fee
  is '������';
comment on column LN_LNP_ACCT_AMWKPL07.tr_tran_cd
  is '���״���';
comment on column LN_LNP_ACCT_AMWKPL07.rt_loan_rate
  is '����';
comment on column LN_LNP_ACCT_AMWKPL07.rt_acct_prod
  is '��������';
comment on column LN_LNP_ACCT_AMWKPL07.curr_penalty_int
  is '��ǰ����';
comment on column LN_LNP_ACCT_AMWKPL07.bal_of_int_rev
  is 'Ӧ����Ϣ���';
comment on column LN_LNP_ACCT_AMWKPL07.bal_of_coll_int
  is '������Ϣ���';
comment on column LN_LNP_ACCT_AMWKPL07.dq_principal
  is '��Ƿ�������';
comment on column LN_LNP_ACCT_AMWKPL07.ac_rate
  is '��Ϣ��';
comment on column LN_LNP_ACCT_AMWKPL07.rt_ctl2_1
  is '���ִ���';
comment on column LN_LNP_ACCT_AMWKPL07.reversal_flag
  is '������־';
comment on column LN_LNP_ACCT_AMWKPL07.tr_tran_desc
  is '����ժҪ';
comment on column LN_LNP_ACCT_AMWKPL07.tr_sys_date
  is '��������';
comment on column LN_LNP_ACCT_AMWKPL07.ba_due_not_pd
  is 'Ӧ������';
comment on column LN_LNP_ACCT_AMWKPL07.ac_due_not_pd
  is 'Ӧ����Ϣ';
comment on column LN_LNP_ACCT_AMWKPL07.ff_due_not_pd
  is 'Ӧ��ΥԼ��';
comment on column LN_LNP_ACCT_AMWKPL07.rt_tot_prin
  is '�������';
comment on column LN_LNP_ACCT_AMWKPL07.actual_alt01_pay
  is 'ʵ����Ϣ����';
comment on column LN_LNP_ACCT_AMWKPL07.actual_penalty_pay
  is 'ʵ��ΥԼ��';
comment on column LN_LNP_ACCT_AMWKPL07.rt_acct_stat
  is '�����־';
comment on column LN_LNP_ACCT_AMWKPL07.zx_last_nor_prn_paid
  is 'ʵ����������';
comment on column LN_LNP_ACCT_AMWKPL07.zx_last_past_due_paid
  is 'ʵ�����ڱ���';
comment on column LN_LNP_ACCT_AMWKPL07.zx_last_nor_int_paid
  is 'ʵ��������Ϣ';
comment on column LN_LNP_ACCT_AMWKPL07.zx_last_past_int_paid
  is 'ʵ��������Ϣ';
comment on column LN_LNP_ACCT_AMWKPL07.zx_last_fcp_paid
  is 'ʵ�����ڷ���';

prompt Creating LN_LNP_CTRT_CBAPP...
create table LN_LNP_CTRT_CBAPP
(
  ecif_cust_no      CHAR(21),
  custname          CHAR(40),
  iscommac          CHAR(1),
  currsign          CHAR(3),
  loankind          CHAR(5),
  loantype          CHAR(1),
  firstorder        CHAR(1),
  payperc           NUMBER(16,2),
  fundsour          CHAR(2),
  loanuse           CHAR(4),
  assukind          CHAR(4),
  contdate          DATE,
  credcapi          NUMBER(20,2),
  cycflag           CHAR(1),
  tcapi             NUMBER(20,2),
  thistcapi         NUMBER(20,2),
  termfreq          CHAR(1),
  tterm             NUMBER(12),
  retutype          CHAR(3),
  trothdueday       CHAR(1),
  fixrateterm       NUMBER(12),
  firstduedate      DATE,
  subsflag          CHAR(1),
  isenousubs        CHAR(1),
  firstpayamt       NUMBER(20,2),
  firstpayperc      NUMBER(16,2),
  corpid            CHAR(20),
  projid            CHAR(20),
  corpappid         CHAR(24),
  releway           CHAR(2),
  payeeacno         CHAR(30),
  payeeacname       CHAR(40),
  payeebankname     CHAR(80),
  intecalckind      CHAR(1),
  intemeth          CHAR(3),
  intebase          CHAR(3),
  aheaddays         NUMBER(12),
  basicinterate     NUMBER(12,7),
  interate          NUMBER(12,7),
  intefineratefloat NUMBER(16,4),
  capifineratefloat NUMBER(16,4),
  finerate          NUMBER(12,7),
  capifinerate      NUMBER(12,7),
  foulrate          NUMBER(16,4),
  emberatefloat     NUMBER(16,4),
  begindate         DATE,
  enddate           DATE,
  loanacno          CHAR(30),
  contkind          CHAR(2),
  contno            CHAR(26),
  apprname          CHAR(40),
  apprtabno         CHAR(30),
  apprdate          DATE,
  apprflag          CHAR(1),
  apprstate         CHAR(2),
  loanstate         CHAR(1)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table LN_LNP_CTRT_CBAPP
  is '���˴���������Ϣ����';
comment on column LN_LNP_CTRT_CBAPP.ecif_cust_no
  is 'ECIF�ͻ���� 8';
comment on column LN_LNP_CTRT_CBAPP.custname
  is '�ͻ�����';
comment on column LN_LNP_CTRT_CBAPP.iscommac
  is '�Ƿ�����ͨ���ʻ�';
comment on column LN_LNP_CTRT_CBAPP.currsign
  is '����';
comment on column LN_LNP_CTRT_CBAPP.loankind
  is '��������';
comment on column LN_LNP_CTRT_CBAPP.loantype
  is '��ϴ����־';
comment on column LN_LNP_CTRT_CBAPP.firstorder
  is '��ϴ��������˳��';
comment on column LN_LNP_CTRT_CBAPP.payperc
  is '��������';
comment on column LN_LNP_CTRT_CBAPP.fundsour
  is '�ʽ���Դ';
comment on column LN_LNP_CTRT_CBAPP.loanuse
  is '������;';
comment on column LN_LNP_CTRT_CBAPP.assukind
  is '������ʽ';
comment on column LN_LNP_CTRT_CBAPP.contdate
  is '��������';
comment on column LN_LNP_CTRT_CBAPP.credcapi
  is '��Ƚ��';
comment on column LN_LNP_CTRT_CBAPP.cycflag
  is '�Ƿ�ѭ��';
comment on column LN_LNP_CTRT_CBAPP.tcapi
  is '������';
comment on column LN_LNP_CTRT_CBAPP.thistcapi
  is '�����ſ���#';
comment on column LN_LNP_CTRT_CBAPP.termfreq
  is '����Ƶ��';
comment on column LN_LNP_CTRT_CBAPP.tterm
  is '��������';
comment on column LN_LNP_CTRT_CBAPP.retutype
  is '���ʽ';
comment on column LN_LNP_CTRT_CBAPP.trothdueday
  is '������Լ��';
comment on column LN_LNP_CTRT_CBAPP.fixrateterm
  is '�̶���������';
comment on column LN_LNP_CTRT_CBAPP.firstduedate
  is '���������';
comment on column LN_LNP_CTRT_CBAPP.subsflag
  is '�ۿ�����';
comment on column LN_LNP_CTRT_CBAPP.isenousubs
  is '�Ƿ����ۿ�';
comment on column LN_LNP_CTRT_CBAPP.firstpayamt
  is '�׸�����';
comment on column LN_LNP_CTRT_CBAPP.firstpayperc
  is '�׸������';
comment on column LN_LNP_CTRT_CBAPP.corpid
  is '���������';
comment on column LN_LNP_CTRT_CBAPP.projid
  is '��Ŀ���';
comment on column LN_LNP_CTRT_CBAPP.corpappid
  is '������Ŀ��ȱ��';
comment on column LN_LNP_CTRT_CBAPP.releway
  is '�ſ�����';
comment on column LN_LNP_CTRT_CBAPP.payeeacno
  is '�տ����ʺ�';
comment on column LN_LNP_CTRT_CBAPP.payeeacname
  is '�տ����ʻ�����';
comment on column LN_LNP_CTRT_CBAPP.payeebankname
  is '�տ����ʻ�������';
comment on column LN_LNP_CTRT_CBAPP.intecalckind
  is '��Ϣ��������';
comment on column LN_LNP_CTRT_CBAPP.intemeth
  is '��Ϣ����';
comment on column LN_LNP_CTRT_CBAPP.intebase
  is '��Ϣ����';
comment on column LN_LNP_CTRT_CBAPP.aheaddays
  is '�ʵ���ǰ����';
comment on column LN_LNP_CTRT_CBAPP.basicinterate
  is '�����׼����';
comment on column LN_LNP_CTRT_CBAPP.interate
  is 'ִ������';
comment on column LN_LNP_CTRT_CBAPP.intefineratefloat
  is '��Ϣ��Ϣ��������(%)';
comment on column LN_LNP_CTRT_CBAPP.capifineratefloat
  is '����Ϣ��������(%)';
comment on column LN_LNP_CTRT_CBAPP.finerate
  is '������Ϣ����[���֮/��]';
comment on column LN_LNP_CTRT_CBAPP.capifinerate
  is '���ڱ�������[���֮/��]';
comment on column LN_LNP_CTRT_CBAPP.foulrate
  is 'ΥԼ����ȡ����';
comment on column LN_LNP_CTRT_CBAPP.emberatefloat
  is 'Ų�ô��Ϣ���ʸ�������(%)';
comment on column LN_LNP_CTRT_CBAPP.begindate
  is '��������';
comment on column LN_LNP_CTRT_CBAPP.enddate
  is '��������';
comment on column LN_LNP_CTRT_CBAPP.loanacno
  is '�����ʺ�';
comment on column LN_LNP_CTRT_CBAPP.contkind
  is '����ͬ��ʽ';
comment on column LN_LNP_CTRT_CBAPP.contno
  is '����ͬ���';
comment on column LN_LNP_CTRT_CBAPP.apprname
  is '����������';
comment on column LN_LNP_CTRT_CBAPP.apprtabno
  is '��������';
comment on column LN_LNP_CTRT_CBAPP.apprdate
  is '��������';
comment on column LN_LNP_CTRT_CBAPP.apprflag
  is '�������';
comment on column LN_LNP_CTRT_CBAPP.apprstate
  is '����״̬';
comment on column LN_LNP_CTRT_CBAPP.loanstate
  is '����״̬';

prompt Creating LN_LNP_CUST_CBCREDCUST...
create table LN_LNP_CUST_CBCREDCUST
(
  acustcredid  CHAR(26),
  custcredno   NUMBER(12),
  ecif_cust_no CHAR(21),
  custname     CHAR(40),
  currsign     CHAR(3),
  credamt      NUMBER(20,2),
  assuamt      NUMBER(20,2),
  impaamt      NUMBER(20,2),
  mortamt      NUMBER(20,2),
  credtotalamt NUMBER(20,2),
  begindate    DATE,
  tterm        NUMBER(12),
  enddate      DATE,
  cycflag      CHAR(1),
  leftamt      NUMBER(20,2),
  bankid       CHAR(9),
  acbankid     CHAR(9),
  audiname     CHAR(40),
  apprtabno    CHAR(30),
  apprflag     CHAR(1),
  operid       CHAR(10),
  apprname     CHAR(40),
  apprdate     DATE,
  credstate    CHAR(1)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table LN_LNP_CUST_CBCREDCUST
  is '���˴���ͻ���ȹ�����';
comment on column LN_LNP_CUST_CBCREDCUST.acustcredid
  is 'ALS�ʺ�';
comment on column LN_LNP_CUST_CBCREDCUST.custcredno
  is '���';
comment on column LN_LNP_CUST_CBCREDCUST.ecif_cust_no
  is 'ECIF�ͻ����';
comment on column LN_LNP_CUST_CBCREDCUST.custname
  is '�ͻ�����';
comment on column LN_LNP_CUST_CBCREDCUST.currsign
  is '����';
comment on column LN_LNP_CUST_CBCREDCUST.credamt
  is '���ö��';
comment on column LN_LNP_CUST_CBCREDCUST.assuamt
  is '��֤���';
comment on column LN_LNP_CUST_CBCREDCUST.impaamt
  is '��Ѻ���';
comment on column LN_LNP_CUST_CBCREDCUST.mortamt
  is '��Ѻ���';
comment on column LN_LNP_CUST_CBCREDCUST.credtotalamt
  is '�����ܶ��';
comment on column LN_LNP_CUST_CBCREDCUST.begindate
  is '��ʼ����';
comment on column LN_LNP_CUST_CBCREDCUST.tterm
  is '����';
comment on column LN_LNP_CUST_CBCREDCUST.enddate
  is '��ֹ����';
comment on column LN_LNP_CUST_CBCREDCUST.cycflag
  is '����Ƿ�ѭ��';
comment on column LN_LNP_CUST_CBCREDCUST.leftamt
  is '���ö��';
comment on column LN_LNP_CUST_CBCREDCUST.bankid
  is '������';
comment on column LN_LNP_CUST_CBCREDCUST.acbankid
  is '��ƻ���';
comment on column LN_LNP_CUST_CBCREDCUST.audiname
  is '���������';
comment on column LN_LNP_CUST_CBCREDCUST.apprtabno
  is '��������';
comment on column LN_LNP_CUST_CBCREDCUST.apprflag
  is '����״̬';
comment on column LN_LNP_CUST_CBCREDCUST.operid
  is '������';
comment on column LN_LNP_CUST_CBCREDCUST.apprname
  is '����������';
comment on column LN_LNP_CUST_CBCREDCUST.apprdate
  is '��������';
comment on column LN_LNP_CUST_CBCREDCUST.credstate
  is '�ͻ����״̬';

prompt Creating LN_MABIAO...
create table LN_MABIAO
(
  code  VARCHAR2(100),
  name  VARCHAR2(100),
  mazhi VARCHAR2(100)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Disabling triggers for LN_LNP_ACCT_AMWKPL06...
alter table LN_LNP_ACCT_AMWKPL06 disable all triggers;
prompt Disabling triggers for LN_LNP_ACCT_AMWKPL07...
alter table LN_LNP_ACCT_AMWKPL07 disable all triggers;
prompt Disabling triggers for LN_LNP_CTRT_CBAPP...
alter table LN_LNP_CTRT_CBAPP disable all triggers;
prompt Disabling triggers for LN_LNP_CUST_CBCREDCUST...
alter table LN_LNP_CUST_CBCREDCUST disable all triggers;
prompt Disabling triggers for LN_MABIAO...
alter table LN_MABIAO disable all triggers;
prompt Loading LN_LNP_ACCT_AMWKPL06...
insert into LN_LNP_ACCT_AMWKPL06 (rt_cust_num, tr_ext_seq, tr_eff_date, tr_tran_amt, ba_used_bal, tr_tot_prin, mi_pay_acct_1, tr_sys_date, tr_entry_time, tr_tran_cd, tr_tran_desc, filler)
values ('LN000001      ', 289057684, to_date('20-05-2020', 'dd-mm-yyyy'), 800000, 800000, 200000, '6423805287289052            ', to_date('14-05-2020', 'dd-mm-yyyy'), 83030, 'GSGE', 'BDRNRSTHTR               ', 'BRB               ');
insert into LN_LNP_ACCT_AMWKPL06 (rt_cust_num, tr_ext_seq, tr_eff_date, tr_tran_amt, ba_used_bal, tr_tot_prin, mi_pay_acct_1, tr_sys_date, tr_entry_time, tr_tran_cd, tr_tran_desc, filler)
values ('LN000002      ', 278957429, to_date('21-05-2020', 'dd-mm-yyyy'), 500000, 500000, 300000, '3563626264234526            ', to_date('11-05-2020', 'dd-mm-yyyy'), 123000, 'GRES', 'BSRTHJSRTHSFG            ', null);
insert into LN_LNP_ACCT_AMWKPL06 (rt_cust_num, tr_ext_seq, tr_eff_date, tr_tran_amt, ba_used_bal, tr_tot_prin, mi_pay_acct_1, tr_sys_date, tr_entry_time, tr_tran_cd, tr_tran_desc, filler)
values ('LN000003      ', 758429520, to_date('12-06-2020', 'dd-mm-yyyy'), 1000000, 1000000, 1000000, '5622452546246526            ', to_date('02-06-2020', 'dd-mm-yyyy'), 184030, 'HSRH', 'BSGRBSTRNBSRT            ', 'RTHRETH           ');
insert into LN_LNP_ACCT_AMWKPL06 (rt_cust_num, tr_ext_seq, tr_eff_date, tr_tran_amt, ba_used_bal, tr_tot_prin, mi_pay_acct_1, tr_sys_date, tr_entry_time, tr_tran_cd, tr_tran_desc, filler)
values ('LN000004      ', 7820943552, to_date('08-06-2020', 'dd-mm-yyyy'), 1500000, 1500000, 1000000, '2452523462625752            ', to_date('30-05-2020', 'dd-mm-yyyy'), 93030, 'JYEH', 'SFGBSTRG4WH              ', 'RNTW4TH           ');
insert into LN_LNP_ACCT_AMWKPL06 (rt_cust_num, tr_ext_seq, tr_eff_date, tr_tran_amt, ba_used_bal, tr_tot_prin, mi_pay_acct_1, tr_sys_date, tr_entry_time, tr_tran_cd, tr_tran_desc, filler)
values ('LN000005      ', 5436575753, to_date('03-01-2021', 'dd-mm-yyyy'), 500000, 500000, 500000, '2452624624365377            ', to_date('26-12-2020', 'dd-mm-yyyy'), 103050, 'BDHS', 'BSFVBSRTH53YG            ', 'BRGSBRTS          ');
insert into LN_LNP_ACCT_AMWKPL06 (rt_cust_num, tr_ext_seq, tr_eff_date, tr_tran_amt, ba_used_bal, tr_tot_prin, mi_pay_acct_1, tr_sys_date, tr_entry_time, tr_tran_cd, tr_tran_desc, filler)
values ('LN000006      ', 76473673, to_date('10-11-2020', 'dd-mm-yyyy'), 400000, 400000, 400000, '6745784845908654            ', to_date('01-11-2020', 'dd-mm-yyyy'), 184030, 'YTTY', 'RH54HT4H4G               ', 'DFGBT             ');
insert into LN_LNP_ACCT_AMWKPL06 (rt_cust_num, tr_ext_seq, tr_eff_date, tr_tran_amt, ba_used_bal, tr_tot_prin, mi_pay_acct_1, tr_sys_date, tr_entry_time, tr_tran_cd, tr_tran_desc, filler)
values ('LN000007      ', 653725462, to_date('21-06-2020', 'dd-mm-yyyy'), 500000, 500000, 500000, '4764737275763578            ', to_date('11-06-2020', 'dd-mm-yyyy'), 83030, 'BDHW', 'GG45WG4W5HB              ', 'BRSBRW            ');
insert into LN_LNP_ACCT_AMWKPL06 (rt_cust_num, tr_ext_seq, tr_eff_date, tr_tran_amt, ba_used_bal, tr_tot_prin, mi_pay_acct_1, tr_sys_date, tr_entry_time, tr_tran_cd, tr_tran_desc, filler)
values ('LN000008      ', 56365262, to_date('01-07-2020', 'dd-mm-yyyy'), 400000, 400000, 350000, '3768789467326573            ', to_date('21-06-2020', 'dd-mm-yyyy'), 123030, 'BDTH', 'B4W5HG54WYHB             ', '                  ');
insert into LN_LNP_ACCT_AMWKPL06 (rt_cust_num, tr_ext_seq, tr_eff_date, tr_tran_amt, ba_used_bal, tr_tot_prin, mi_pay_acct_1, tr_sys_date, tr_entry_time, tr_tran_cd, tr_tran_desc, filler)
values ('LN000009      ', 2562652675, to_date('05-08-2020', 'dd-mm-yyyy'), 500000, 500000, 300000, '3563576474556868            ', to_date('02-08-2020', 'dd-mm-yyyy'), 83030, 'NDNV', '5GBGH54H5                ', null);
insert into LN_LNP_ACCT_AMWKPL06 (rt_cust_num, tr_ext_seq, tr_eff_date, tr_tran_amt, ba_used_bal, tr_tot_prin, mi_pay_acct_1, tr_sys_date, tr_entry_time, tr_tran_cd, tr_tran_desc, filler)
values ('LN000010      ', 476736790, to_date('02-10-2020', 'dd-mm-yyyy'), 200000, 200000, 500000, '2527356746484673            ', to_date('23-09-2020', 'dd-mm-yyyy'), 123000, 'VBDN', 'B4WH45HB4W               ', 'BSRNBTR           ');
insert into LN_LNP_ACCT_AMWKPL06 (rt_cust_num, tr_ext_seq, tr_eff_date, tr_tran_amt, ba_used_bal, tr_tot_prin, mi_pay_acct_1, tr_sys_date, tr_entry_time, tr_tran_cd, tr_tran_desc, filler)
values ('LN000010      ', 4753736768, to_date('03-11-2020', 'dd-mm-yyyy'), 200000, 200000, 200000, '2527356746484673            ', to_date('01-11-2020', 'dd-mm-yyyy'), 184030, 'NDJS', 'VBW4H5354HFD             ', null);
commit;
prompt 11 records loaded
prompt Loading LN_LNP_ACCT_AMWKPL07...
insert into LN_LNP_ACCT_AMWKPL07 (rt_acct_num, zm_desc_15_1, tr_eff_date, tran_seq_int, sche_pay_date, ac_start_date, curr_pmt_num, num_day_interval, prin_pay_amt, int_pay_amt, rt_oldst_due_date, penalty_prin_dq, service_fee, tr_tran_cd, rt_loan_rate, rt_acct_prod, curr_penalty_int, bal_of_int_rev, bal_of_coll_int, dq_principal, ac_rate, rt_ctl2_1, reversal_flag, tr_tran_desc, tr_sys_date, ba_due_not_pd, ac_due_not_pd, ff_due_not_pd, rt_tot_prin, actual_alt01_pay, actual_penalty_pay, rt_acct_stat, zx_last_nor_prn_paid, zx_last_past_due_paid, zx_last_nor_int_paid, zx_last_past_int_paid, zx_last_fcp_paid)
values ('LN000001      ', '2635G54Y24     ', to_date('20-05-2020', 'dd-mm-yyyy'), 628498924982, to_date('20-06-2020', 'dd-mm-yyyy'), to_date('20-05-2020', 'dd-mm-yyyy'), 12, 20, 160000, 36800, to_date('20-05-2021', 'dd-mm-yyyy'), 0, 49200, 'FSGR', 4.6, '0211', 4920, 49200, 34200, 15000, 21, 'RUR', '1', '11111                    ', to_date('14-05-2020', 'dd-mm-yyyy'), 640000, 16800, 0, 640000, 1680, 0, 'N ', 160000, 9892, 36800, 0, 250);
insert into LN_LNP_ACCT_AMWKPL07 (rt_acct_num, zm_desc_15_1, tr_eff_date, tran_seq_int, sche_pay_date, ac_start_date, curr_pmt_num, num_day_interval, prin_pay_amt, int_pay_amt, rt_oldst_due_date, penalty_prin_dq, service_fee, tr_tran_cd, rt_loan_rate, rt_acct_prod, curr_penalty_int, bal_of_int_rev, bal_of_coll_int, dq_principal, ac_rate, rt_ctl2_1, reversal_flag, tr_tran_desc, tr_sys_date, ba_due_not_pd, ac_due_not_pd, ff_due_not_pd, rt_tot_prin, actual_alt01_pay, actual_penalty_pay, rt_acct_stat, zx_last_nor_prn_paid, zx_last_past_due_paid, zx_last_nor_int_paid, zx_last_past_int_paid, zx_last_fcp_paid)
values ('LN000002      ', 'G34643T456     ', to_date('21-05-2020', 'dd-mm-yyyy'), 234523464236, to_date('21-06-2020', 'dd-mm-yyyy'), to_date('21-05-2020', 'dd-mm-yyyy'), 12, 20, 125000, 23000, to_date('21-05-2021', 'dd-mm-yyyy'), 0, 30750, 'SGFS', 4.6, '021 ', 0, 30750, 30750, 14000, 21, 'RUR', '1', '22222                    ', to_date('11-05-2020', 'dd-mm-yyyy'), 375000, 13000, 0, 375000, 1300, 0, 'N ', 125000, 5290, 23000, 2240, 6543);
insert into LN_LNP_ACCT_AMWKPL07 (rt_acct_num, zm_desc_15_1, tr_eff_date, tran_seq_int, sche_pay_date, ac_start_date, curr_pmt_num, num_day_interval, prin_pay_amt, int_pay_amt, rt_oldst_due_date, penalty_prin_dq, service_fee, tr_tran_cd, rt_loan_rate, rt_acct_prod, curr_penalty_int, bal_of_int_rev, bal_of_coll_int, dq_principal, ac_rate, rt_ctl2_1, reversal_flag, tr_tran_desc, tr_sys_date, ba_due_not_pd, ac_due_not_pd, ff_due_not_pd, rt_tot_prin, actual_alt01_pay, actual_penalty_pay, rt_acct_stat, zx_last_nor_prn_paid, zx_last_past_due_paid, zx_last_nor_int_paid, zx_last_past_int_paid, zx_last_fcp_paid)
values ('LN000003      ', 'W45YY5Y35Y     ', to_date('12-06-2020', 'dd-mm-yyyy'), 242652757335, to_date('12-07-2020', 'dd-mm-yyyy'), to_date('12-06-2020', 'dd-mm-yyyy'), 6, 10, 200000, 46000, to_date('12-12-2021', 'dd-mm-yyyy'), 0, 61500, 'HSHT', 4.6, '0211', 0, 61500, 61500, 16000, 21, 'CNY', '1', '1111                     ', to_date('02-06-2020', 'dd-mm-yyyy'), 800000, 26000, 0, 800000, 2600, 0, 'N ', 200000, 2919, 46000, 450, 2542);
insert into LN_LNP_ACCT_AMWKPL07 (rt_acct_num, zm_desc_15_1, tr_eff_date, tran_seq_int, sche_pay_date, ac_start_date, curr_pmt_num, num_day_interval, prin_pay_amt, int_pay_amt, rt_oldst_due_date, penalty_prin_dq, service_fee, tr_tran_cd, rt_loan_rate, rt_acct_prod, curr_penalty_int, bal_of_int_rev, bal_of_coll_int, dq_principal, ac_rate, rt_ctl2_1, reversal_flag, tr_tran_desc, tr_sys_date, ba_due_not_pd, ac_due_not_pd, ff_due_not_pd, rt_tot_prin, actual_alt01_pay, actual_penalty_pay, rt_acct_stat, zx_last_nor_prn_paid, zx_last_past_due_paid, zx_last_nor_int_paid, zx_last_past_int_paid, zx_last_fcp_paid)
values ('LN000004      ', 'E2462Y542Y2    ', to_date('08-06-2020', 'dd-mm-yyyy'), 536735676586, to_date('08-07-2020', 'dd-mm-yyyy'), to_date('08-06-2020', 'dd-mm-yyyy'), 6, 15, 250000, 75000, to_date('08-12-2021', 'dd-mm-yyyy'), 0, 92250, 'GFSS', 5, '022 ', 922, 92250, 92250, 17000, 21, 'GBP', '0', '2212                     ', to_date('30-05-2020', 'dd-mm-yyyy'), 1250000, 35000, 0, 1250000, 3500, 0, 'N ', 250000, 29198, 75000, 0, 0);
insert into LN_LNP_ACCT_AMWKPL07 (rt_acct_num, zm_desc_15_1, tr_eff_date, tran_seq_int, sche_pay_date, ac_start_date, curr_pmt_num, num_day_interval, prin_pay_amt, int_pay_amt, rt_oldst_due_date, penalty_prin_dq, service_fee, tr_tran_cd, rt_loan_rate, rt_acct_prod, curr_penalty_int, bal_of_int_rev, bal_of_coll_int, dq_principal, ac_rate, rt_ctl2_1, reversal_flag, tr_tran_desc, tr_sys_date, ba_due_not_pd, ac_due_not_pd, ff_due_not_pd, rt_tot_prin, actual_alt01_pay, actual_penalty_pay, rt_acct_stat, zx_last_nor_prn_paid, zx_last_past_due_paid, zx_last_nor_int_paid, zx_last_past_int_paid, zx_last_fcp_paid)
values ('LN000005      ', 'G24Y552YHB     ', to_date('03-01-2021', 'dd-mm-yyyy'), 657326563575, to_date('03-02-2021', 'dd-mm-yyyy'), to_date('03-01-2021', 'dd-mm-yyyy'), 6, 15, 119047.62, 23000, to_date('03-07-2021', 'dd-mm-yyyy'), 0, 30750, 'GFHS', 4.6, '0211', 0, 30750, 30750, 15000, 21, 'CNY', '0', '123213213                ', to_date('26-12-2020', 'dd-mm-yyyy'), 380952.39, 13000, 0, 380952.38, 1300, 0, 'N ', 119047.62, 519, 23000, 3530, 840);
insert into LN_LNP_ACCT_AMWKPL07 (rt_acct_num, zm_desc_15_1, tr_eff_date, tran_seq_int, sche_pay_date, ac_start_date, curr_pmt_num, num_day_interval, prin_pay_amt, int_pay_amt, rt_oldst_due_date, penalty_prin_dq, service_fee, tr_tran_cd, rt_loan_rate, rt_acct_prod, curr_penalty_int, bal_of_int_rev, bal_of_coll_int, dq_principal, ac_rate, rt_ctl2_1, reversal_flag, tr_tran_desc, tr_sys_date, ba_due_not_pd, ac_due_not_pd, ff_due_not_pd, rt_tot_prin, actual_alt01_pay, actual_penalty_pay, rt_acct_stat, zx_last_nor_prn_paid, zx_last_past_due_paid, zx_last_nor_int_paid, zx_last_past_int_paid, zx_last_fcp_paid)
values ('LN000006      ', 'BE5Y43YG53     ', to_date('10-11-2020', 'dd-mm-yyyy'), 375352657765, to_date('10-12-2020', 'dd-mm-yyyy'), to_date('10-11-2020', 'dd-mm-yyyy'), 12, 20, 160000, 18400, to_date('10-11-2021', 'dd-mm-yyyy'), 0, 24600, 'BGDN', 4.6, '0211', 246, 24600, 24600, 4000, 21, 'CNY', '1', '123213                   ', to_date('01-11-2020', 'dd-mm-yyyy'), 240000, 18400, 0, 240000, 1840, 0, 'N ', 160000, 292, 18400, 630, 350);
insert into LN_LNP_ACCT_AMWKPL07 (rt_acct_num, zm_desc_15_1, tr_eff_date, tran_seq_int, sche_pay_date, ac_start_date, curr_pmt_num, num_day_interval, prin_pay_amt, int_pay_amt, rt_oldst_due_date, penalty_prin_dq, service_fee, tr_tran_cd, rt_loan_rate, rt_acct_prod, curr_penalty_int, bal_of_int_rev, bal_of_coll_int, dq_principal, ac_rate, rt_ctl2_1, reversal_flag, tr_tran_desc, tr_sys_date, ba_due_not_pd, ac_due_not_pd, ff_due_not_pd, rt_tot_prin, actual_alt01_pay, actual_penalty_pay, rt_acct_stat, zx_last_nor_prn_paid, zx_last_past_due_paid, zx_last_nor_int_paid, zx_last_past_int_paid, zx_last_fcp_paid)
values ('LN000007      ', '524524YG5Y     ', to_date('21-06-2020', 'dd-mm-yyyy'), 246262496522, to_date('21-07-2020', 'dd-mm-yyyy'), to_date('21-06-2020', 'dd-mm-yyyy'), 6, 10, 119047.62, 23000, to_date('21-12-2021', 'dd-mm-yyyy'), 0, 30750, 'BGHB', 4.6, '02  ', 0, 30750, 30750, 15000, 21, 'JPY', '1', '12321                    ', to_date('11-06-2020', 'dd-mm-yyyy'), 380952.39, 23000, 0, 380952.38, 2300, 0, 'N ', 119047.62, 919, 23000, 0, 0);
insert into LN_LNP_ACCT_AMWKPL07 (rt_acct_num, zm_desc_15_1, tr_eff_date, tran_seq_int, sche_pay_date, ac_start_date, curr_pmt_num, num_day_interval, prin_pay_amt, int_pay_amt, rt_oldst_due_date, penalty_prin_dq, service_fee, tr_tran_cd, rt_loan_rate, rt_acct_prod, curr_penalty_int, bal_of_int_rev, bal_of_coll_int, dq_principal, ac_rate, rt_ctl2_1, reversal_flag, tr_tran_desc, tr_sys_date, ba_due_not_pd, ac_due_not_pd, ff_due_not_pd, rt_tot_prin, actual_alt01_pay, actual_penalty_pay, rt_acct_stat, zx_last_nor_prn_paid, zx_last_past_due_paid, zx_last_nor_int_paid, zx_last_past_int_paid, zx_last_fcp_paid)
values ('LN000008      ', 'GBWRHY25H      ', to_date('01-07-2020', 'dd-mm-yyyy'), 852963414562, to_date('01-08-2020', 'dd-mm-yyyy'), to_date('01-07-2020', 'dd-mm-yyyy'), 12, 15, 133333.34, 18400, to_date('01-07-2021', 'dd-mm-yyyy'), 0, 24600, 'SFAE', 4.6, '0212', 2460, 24600, 24600, 17000, 21, 'CNY', '1', '3123213                  ', to_date('21-06-2020', 'dd-mm-yyyy'), 266666.67, 18400, 0, 266666.66, 1840, 0, 'N ', 133333.34, 191, 18400, 3420, 6740);
insert into LN_LNP_ACCT_AMWKPL07 (rt_acct_num, zm_desc_15_1, tr_eff_date, tran_seq_int, sche_pay_date, ac_start_date, curr_pmt_num, num_day_interval, prin_pay_amt, int_pay_amt, rt_oldst_due_date, penalty_prin_dq, service_fee, tr_tran_cd, rt_loan_rate, rt_acct_prod, curr_penalty_int, bal_of_int_rev, bal_of_coll_int, dq_principal, ac_rate, rt_ctl2_1, reversal_flag, tr_tran_desc, tr_sys_date, ba_due_not_pd, ac_due_not_pd, ff_due_not_pd, rt_tot_prin, actual_alt01_pay, actual_penalty_pay, rt_acct_stat, zx_last_nor_prn_paid, zx_last_past_due_paid, zx_last_nor_int_paid, zx_last_past_int_paid, zx_last_fcp_paid)
values ('LN000009      ', 'BEWY52H56JJ    ', to_date('05-08-2020', 'dd-mm-yyyy'), 521456214892, to_date('05-09-2020', 'dd-mm-yyyy'), to_date('05-08-2020', 'dd-mm-yyyy'), 12, 20, 250000, 23000, to_date('05-08-2021', 'dd-mm-yyyy'), 0, 30750, 'BGFS', 4.6, '0211', 307, 30750, 30750, 15000, 21, 'CNY', '1', '123213                   ', to_date('25-07-2020', 'dd-mm-yyyy'), 250000, 23000, 0, 250000, 2300, 0, 'N ', 250000, 1819, 23000, 6530, 0);
insert into LN_LNP_ACCT_AMWKPL07 (rt_acct_num, zm_desc_15_1, tr_eff_date, tran_seq_int, sche_pay_date, ac_start_date, curr_pmt_num, num_day_interval, prin_pay_amt, int_pay_amt, rt_oldst_due_date, penalty_prin_dq, service_fee, tr_tran_cd, rt_loan_rate, rt_acct_prod, curr_penalty_int, bal_of_int_rev, bal_of_coll_int, dq_principal, ac_rate, rt_ctl2_1, reversal_flag, tr_tran_desc, tr_sys_date, ba_due_not_pd, ac_due_not_pd, ff_due_not_pd, rt_tot_prin, actual_alt01_pay, actual_penalty_pay, rt_acct_stat, zx_last_nor_prn_paid, zx_last_past_due_paid, zx_last_nor_int_paid, zx_last_past_int_paid, zx_last_fcp_paid)
values ('LN000010      ', 'J64J753U63H    ', to_date('02-10-2020', 'dd-mm-yyyy'), 632145862125, to_date('02-11-2020', 'dd-mm-yyyy'), to_date('02-10-2020', 'dd-mm-yyyy'), 6, 15, 200000, 9200, to_date('02-04-2021', 'dd-mm-yyyy'), 0, 12300, 'BFGF', 4.6, '0212', 123, 12300, 12300, 20000, 21, 'CNY', '1', '123213123                ', to_date('23-09-2020', 'dd-mm-yyyy'), 0, 8000, 0, 0, 800, 0, 'Y ', 200000, 0, 9200, 0, 730);
insert into LN_LNP_ACCT_AMWKPL07 (rt_acct_num, zm_desc_15_1, tr_eff_date, tran_seq_int, sche_pay_date, ac_start_date, curr_pmt_num, num_day_interval, prin_pay_amt, int_pay_amt, rt_oldst_due_date, penalty_prin_dq, service_fee, tr_tran_cd, rt_loan_rate, rt_acct_prod, curr_penalty_int, bal_of_int_rev, bal_of_coll_int, dq_principal, ac_rate, rt_ctl2_1, reversal_flag, tr_tran_desc, tr_sys_date, ba_due_not_pd, ac_due_not_pd, ff_due_not_pd, rt_tot_prin, actual_alt01_pay, actual_penalty_pay, rt_acct_stat, zx_last_nor_prn_paid, zx_last_past_due_paid, zx_last_nor_int_paid, zx_last_past_int_paid, zx_last_fcp_paid)
values ('LN000010      ', 'J64J753U63H    ', to_date('03-11-2020', 'dd-mm-yyyy'), 862187412396, to_date('03-12-2020', 'dd-mm-yyyy'), to_date('03-11-2020', 'dd-mm-yyyy'), 6, 10, 100000, 9200, to_date('03-05-2021', 'dd-mm-yyyy'), 0, 12300, 'BSFR', 4.6, '0212', 0, 12300, 12300, 15000, 21, 'CNY', '1', '213213213                ', to_date('01-11-2020', 'dd-mm-yyyy'), 100000, 9200, 0, 100000, 920, 0, 'N ', 100000, 5984, 9200, 5620, 0);
commit;
prompt 11 records loaded
prompt Loading LN_LNP_CTRT_CBAPP...
insert into LN_LNP_CTRT_CBAPP (ecif_cust_no, custname, iscommac, currsign, loankind, loantype, firstorder, payperc, fundsour, loanuse, assukind, contdate, credcapi, cycflag, tcapi, thistcapi, termfreq, tterm, retutype, trothdueday, fixrateterm, firstduedate, subsflag, isenousubs, firstpayamt, firstpayperc, corpid, projid, corpappid, releway, payeeacno, payeeacname, payeebankname, intecalckind, intemeth, intebase, aheaddays, basicinterate, interate, intefineratefloat, capifineratefloat, finerate, capifinerate, foulrate, emberatefloat, begindate, enddate, loanacno, contkind, contno, apprname, apprtabno, apprdate, apprflag, apprstate, loanstate)
values ('GD000001             ', '��ɺ�                                  ', '1', 'RUR', '0211 ', '1', '1', .2, '03', 'FP01', 'B06 ', to_date('01-05-2020', 'dd-mm-yyyy'), 1000000, '0', 800000, 500000, 'M', 60, '201', 'Y', 24, to_date('01-06-2020', 'dd-mm-yyyy'), 'A', '1', 240000, .3, '6256                ', '6574283964          ', '2423573                 ', 'DS', '6423805287289052              ', '��ɺ�                                  ', '010                                                                             ', '1', 'B01', 'M  ', 5, 4.75, 4.6, 21, 30, 35, 35, .25, 35, to_date('20-05-2020', 'dd-mm-yyyy'), to_date('20-05-2025', 'dd-mm-yyyy'), 'LN000001                      ', 'A1', 'Y4728G4W5                 ', '��Ƚ                                    ', '4252526                       ', to_date('22-05-2020', 'dd-mm-yyyy'), '1', '1 ', '1');
insert into LN_LNP_CTRT_CBAPP (ecif_cust_no, custname, iscommac, currsign, loankind, loantype, firstorder, payperc, fundsour, loanuse, assukind, contdate, credcapi, cycflag, tcapi, thistcapi, termfreq, tterm, retutype, trothdueday, fixrateterm, firstduedate, subsflag, isenousubs, firstpayamt, firstpayperc, corpid, projid, corpappid, releway, payeeacno, payeeacname, payeebankname, intecalckind, intemeth, intebase, aheaddays, basicinterate, interate, intefineratefloat, capifineratefloat, finerate, capifinerate, foulrate, emberatefloat, begindate, enddate, loanacno, contkind, contno, apprname, apprtabno, apprdate, apprflag, apprstate, loanstate)
values ('GD000001             ', '��ɺ�                                  ', '1', 'RUR', '021  ', '0', '1', .25, '03', 'FP03', 'B02 ', to_date('13-05-2020', 'dd-mm-yyyy'), 800000, '0', 500000, 400000, 'M', 48, '201', 'Y', 12, to_date('13-06-2020', 'dd-mm-yyyy'), 'D', '1', 100000, .2, '563256              ', '3563563572          ', '626537                  ', 'GF', '3563626264234526              ', '��ɺ�                                  ', '010                                                                             ', '2', 'B01', 'M  ', 6, 4.75, 4.6, 21, 30, 35, 35, .25, 35, to_date('21-05-2020', 'dd-mm-yyyy'), to_date('21-05-2024', 'dd-mm-yyyy'), 'LN000002                      ', 'A1', 'GE654624T                 ', '������                                  ', '25462                         ', to_date('23-05-2020', 'dd-mm-yyyy'), '1', '1 ', '1');
insert into LN_LNP_CTRT_CBAPP (ecif_cust_no, custname, iscommac, currsign, loankind, loantype, firstorder, payperc, fundsour, loanuse, assukind, contdate, credcapi, cycflag, tcapi, thistcapi, termfreq, tterm, retutype, trothdueday, fixrateterm, firstduedate, subsflag, isenousubs, firstpayamt, firstpayperc, corpid, projid, corpappid, releway, payeeacno, payeeacname, payeebankname, intecalckind, intemeth, intebase, aheaddays, basicinterate, interate, intefineratefloat, capifineratefloat, finerate, capifinerate, foulrate, emberatefloat, begindate, enddate, loanacno, contkind, contno, apprname, apprtabno, apprdate, apprflag, apprstate, loanstate)
values ('GD000005             ', '���                                  ', '0', 'CNY', '0211 ', '1', '2', .2, '03', 'FP01', 'A01 ', to_date('11-06-2020', 'dd-mm-yyyy'), 2000000, '0', 1000000, 800000, 'M', 60, '201', 'Y', 36, to_date('11-07-2020', 'dd-mm-yyyy'), 'F', '1', 300000, .3, '25632               ', '54246254            ', '3463637                 ', 'GF', '5622452546246526              ', '���                                  ', '020                                                                             ', '2', 'B01', 'M  ', 4, 4.75, 4.6, 21, 30, 30, 30, .25, 30, to_date('12-06-2020', 'dd-mm-yyyy'), to_date('12-06-2025', 'dd-mm-yyyy'), 'LN000003                      ', 'A2', 'GW4T25654                 ', 'Ҷï��                                  ', '264262                        ', to_date('15-06-2020', 'dd-mm-yyyy'), '1', '1 ', '1');
insert into LN_LNP_CTRT_CBAPP (ecif_cust_no, custname, iscommac, currsign, loankind, loantype, firstorder, payperc, fundsour, loanuse, assukind, contdate, credcapi, cycflag, tcapi, thistcapi, termfreq, tterm, retutype, trothdueday, fixrateterm, firstduedate, subsflag, isenousubs, firstpayamt, firstpayperc, corpid, projid, corpappid, releway, payeeacno, payeeacname, payeebankname, intecalckind, intemeth, intebase, aheaddays, basicinterate, interate, intefineratefloat, capifineratefloat, finerate, capifinerate, foulrate, emberatefloat, begindate, enddate, loanacno, contkind, contno, apprname, apprtabno, apprdate, apprflag, apprstate, loanstate)
values ('GD000007             ', '���Ʒ�                                  ', '0', 'GBP', '022  ', '0', '1', .17, '04', 'FP03', 'B06 ', to_date('02-07-2020', 'dd-mm-yyyy'), 2500000, '0', 1500000, 1000000, 'M', 72, '101', 'Y', 36, to_date('02-08-2020', 'dd-mm-yyyy'), 'G', '0', 500000, .34, '02026               ', '2654562             ', '226357                  ', 'BG', '2452523462625752              ', '��С��                                  ', '0532                                                                            ', '2', 'A01', 'M  ', 7, 4.9, 5, 21, 30, 35, 35, .25, 20, to_date('08-06-2020', 'dd-mm-yyyy'), to_date('08-06-2026', 'dd-mm-yyyy'), 'LN000004                      ', 'A2', 'WT4363462                 ', '��ТȪ                                  ', '836753                        ', to_date('10-06-2020', 'dd-mm-yyyy'), '1', '1 ', '1');
insert into LN_LNP_CTRT_CBAPP (ecif_cust_no, custname, iscommac, currsign, loankind, loantype, firstorder, payperc, fundsour, loanuse, assukind, contdate, credcapi, cycflag, tcapi, thistcapi, termfreq, tterm, retutype, trothdueday, fixrateterm, firstduedate, subsflag, isenousubs, firstpayamt, firstpayperc, corpid, projid, corpappid, releway, payeeacno, payeeacname, payeebankname, intecalckind, intemeth, intebase, aheaddays, basicinterate, interate, intefineratefloat, capifineratefloat, finerate, capifinerate, foulrate, emberatefloat, begindate, enddate, loanacno, contkind, contno, apprname, apprtabno, apprdate, apprflag, apprstate, loanstate)
values ('GD000008             ', '����ƽ                                  ', '1', 'CNY', '0211 ', '1', '2', .24, '03', 'FP01', 'A02 ', to_date('23-01-2021', 'dd-mm-yyyy'), 1000000, '1', 500000, 400000, 'M', 50, '202', 'Y', 24, to_date('23-02-2021', 'dd-mm-yyyy'), 'Y', '1', 200000, .4, '52063               ', '537467648           ', '245657678               ', 'BH', '2452624624365377              ', '����ƽ                                  ', '0532                                                                            ', '1', 'B02', 'M  ', 6, 4.75, 4.6, 21, 30, 25, 25, .2, 25, to_date('03-01-2021', 'dd-mm-yyyy'), to_date('03-03-2025', 'dd-mm-yyyy'), 'LN000005                      ', 'A1', '4352TGT4WT42              ', '����                                  ', '3573736                       ', to_date('06-01-2021', 'dd-mm-yyyy'), '1', '1 ', '1');
insert into LN_LNP_CTRT_CBAPP (ecif_cust_no, custname, iscommac, currsign, loankind, loantype, firstorder, payperc, fundsour, loanuse, assukind, contdate, credcapi, cycflag, tcapi, thistcapi, termfreq, tterm, retutype, trothdueday, fixrateterm, firstduedate, subsflag, isenousubs, firstpayamt, firstpayperc, corpid, projid, corpappid, releway, payeeacno, payeeacname, payeebankname, intecalckind, intemeth, intebase, aheaddays, basicinterate, interate, intefineratefloat, capifineratefloat, finerate, capifinerate, foulrate, emberatefloat, begindate, enddate, loanacno, contkind, contno, apprname, apprtabno, apprdate, apprflag, apprstate, loanstate)
values ('GD000006             ', '�ｨ��                                  ', '0', 'CNY', '0211 ', '1', '1', .4, '03', 'FP01', 'C10 ', to_date('01-12-2020', 'dd-mm-yyyy'), 900000, '0', 400000, 300000, 'M', 30, '201', 'Y', 24, to_date('01-01-2021', 'dd-mm-yyyy'), 'H', '1', 150000, .3, '632220              ', '67857859950         ', '626262                  ', 'BG', '6745784845908654              ', '�ｨ��                                  ', '0531                                                                            ', '1', 'B01', 'M  ', 6, 4.75, 4.6, 21, 30, 20, 20, .25, 30, to_date('10-11-2020', 'dd-mm-yyyy'), to_date('10-05-2022', 'dd-mm-yyyy'), 'LN000006                      ', 'A1', 'T3Q245                    ', '������                                  ', '35673738                      ', to_date('13-11-2020', 'dd-mm-yyyy'), '1', '1 ', '1');
insert into LN_LNP_CTRT_CBAPP (ecif_cust_no, custname, iscommac, currsign, loankind, loantype, firstorder, payperc, fundsour, loanuse, assukind, contdate, credcapi, cycflag, tcapi, thistcapi, termfreq, tterm, retutype, trothdueday, fixrateterm, firstduedate, subsflag, isenousubs, firstpayamt, firstpayperc, corpid, projid, corpappid, releway, payeeacno, payeeacname, payeebankname, intecalckind, intemeth, intebase, aheaddays, basicinterate, interate, intefineratefloat, capifineratefloat, finerate, capifinerate, foulrate, emberatefloat, begindate, enddate, loanacno, contkind, contno, apprname, apprtabno, apprdate, apprflag, apprstate, loanstate)
values ('DD000001             ', '������                                  ', '0', 'JPY', '02   ', '0', '2', .24, '04', 'FP03', 'A05 ', to_date('09-07-2020', 'dd-mm-yyyy'), 1000000, '0', 500000, 400000, 'M', 50, '201', 'Y', 24, to_date('09-08-2020', 'dd-mm-yyyy'), 'A', '0', 100000, .2, '6245265             ', '4895869680          ', '24653475                ', 'BG', '4764737275763578              ', '������                                  ', '010                                                                             ', '1', 'B01', 'M  ', 7, 4.75, 4.6, 21, 30, 30, 30, .2, 30, to_date('21-06-2020', 'dd-mm-yyyy'), to_date('21-08-2024', 'dd-mm-yyyy'), 'LN000007                      ', 'A2', 'T32454326                 ', '��ʯ                                    ', '6774684                       ', to_date('25-06-2020', 'dd-mm-yyyy'), '1', '1 ', '1');
insert into LN_LNP_CTRT_CBAPP (ecif_cust_no, custname, iscommac, currsign, loankind, loantype, firstorder, payperc, fundsour, loanuse, assukind, contdate, credcapi, cycflag, tcapi, thistcapi, termfreq, tterm, retutype, trothdueday, fixrateterm, firstduedate, subsflag, isenousubs, firstpayamt, firstpayperc, corpid, projid, corpappid, releway, payeeacno, payeeacname, payeebankname, intecalckind, intemeth, intebase, aheaddays, basicinterate, interate, intefineratefloat, capifineratefloat, finerate, capifinerate, foulrate, emberatefloat, begindate, enddate, loanacno, contkind, contno, apprname, apprtabno, apprdate, apprflag, apprstate, loanstate)
values ('DD000002             ', 'Ǯǰ                                    ', '1', 'CNY', '0212 ', '0', '1', .34, '03', 'FP02', 'A01 ', to_date('16-07-2020', 'dd-mm-yyyy'), 7500000, '1', 400000, 300000, 'M', 36, '101', 'Y', 36, to_date('16-08-2020', 'dd-mm-yyyy'), 'A', '1', 100000, .25, '62631               ', '59595890            ', '2426653                 ', 'FD', '3768789467326573              ', '���Ӱ�                                  ', '0532                                                                            ', '2', 'A01', 'M  ', 5, 4.75, 4.6, 21, 30, 30, 30, .25, 35, to_date('01-07-2020', 'dd-mm-yyyy'), to_date('01-07-2023', 'dd-mm-yyyy'), 'LN000008                      ', 'A1', 'TTWERT46T43               ', '����                                    ', '48468463                      ', to_date('05-07-2020', 'dd-mm-yyyy'), '1', '1 ', '1');
insert into LN_LNP_CTRT_CBAPP (ecif_cust_no, custname, iscommac, currsign, loankind, loantype, firstorder, payperc, fundsour, loanuse, assukind, contdate, credcapi, cycflag, tcapi, thistcapi, termfreq, tterm, retutype, trothdueday, fixrateterm, firstduedate, subsflag, isenousubs, firstpayamt, firstpayperc, corpid, projid, corpappid, releway, payeeacno, payeeacname, payeebankname, intecalckind, intemeth, intebase, aheaddays, basicinterate, interate, intefineratefloat, capifineratefloat, finerate, capifinerate, foulrate, emberatefloat, begindate, enddate, loanacno, contkind, contno, apprname, apprtabno, apprdate, apprflag, apprstate, loanstate)
values ('DD000003             ', '���                                    ', '0', 'CNY', '0211 ', '1', '1', .5, '03', 'FP01', 'A13 ', to_date('21-09-2020', 'dd-mm-yyyy'), 800000, '0', 500000, 400000, 'M', 24, '201', 'Y', 0, to_date('21-10-2020', 'dd-mm-yyyy'), 'F', '1', 300000, .6, '7852962             ', '35637376            ', '376362                  ', 'VF', '3563526257365868              ', '���                                    ', '0531                                                                            ', '1', 'B01', 'M  ', 4, 4.75, 4.6, 21, 30, 35, 35, .2, 35, to_date('05-08-2020', 'dd-mm-yyyy'), to_date('05-08-2022', 'dd-mm-yyyy'), 'LN000009                      ', 'A1', 'GW4Y26                    ', '��־��                                  ', '357378                        ', to_date('08-08-2020', 'dd-mm-yyyy'), '1', '1 ', '1');
insert into LN_LNP_CTRT_CBAPP (ecif_cust_no, custname, iscommac, currsign, loankind, loantype, firstorder, payperc, fundsour, loanuse, assukind, contdate, credcapi, cycflag, tcapi, thistcapi, termfreq, tterm, retutype, trothdueday, fixrateterm, firstduedate, subsflag, isenousubs, firstpayamt, firstpayperc, corpid, projid, corpappid, releway, payeeacno, payeeacname, payeebankname, intecalckind, intemeth, intebase, aheaddays, basicinterate, interate, intefineratefloat, capifineratefloat, finerate, capifinerate, foulrate, emberatefloat, begindate, enddate, loanacno, contkind, contno, apprname, apprtabno, apprdate, apprflag, apprstate, loanstate)
values ('DD000003             ', '���                                    ', '0', 'CNY', '0212 ', '0', '1', .34, '03', 'FP02', 'B01 ', to_date('11-10-2020', 'dd-mm-yyyy'), 600000, '0', 400000, 300000, 'M', 36, '201', 'Y', 12, to_date('11-11-2020', 'dd-mm-yyyy'), 'F', '1', 100000, .25, '45285               ', '3653738749          ', '5436542                 ', 'DS', '2527356746484673              ', '���                                    ', '0531                                                                            ', '1', 'B01', 'M  ', 5, 4.75, 4.6, 21, 30, 25, 25, .25, 25, to_date('02-10-2020', 'dd-mm-yyyy'), to_date('02-10-2023', 'dd-mm-yyyy'), 'LN000010                      ', 'A2', 'T23462TG2                 ', '�̳���                                  ', '3673838                       ', to_date('06-10-2020', 'dd-mm-yyyy'), '1', '1 ', '1');
commit;
prompt 10 records loaded
prompt Loading LN_LNP_CUST_CBCREDCUST...
insert into LN_LNP_CUST_CBCREDCUST (acustcredid, custcredno, ecif_cust_no, custname, currsign, credamt, assuamt, impaamt, mortamt, credtotalamt, begindate, tterm, enddate, cycflag, leftamt, bankid, acbankid, audiname, apprtabno, apprflag, operid, apprname, apprdate, credstate)
values ('T54WT4T4WT                ', 25, 'GD000001             ', '��ɺ�                                  ', 'RUR', 1000000, 800000, 600000, 500000, 1500000, to_date('20-05-2020', 'dd-mm-yyyy'), 60, to_date('20-05-2025', 'dd-mm-yyyy'), '0', 800000, '010      ', 'FSEGW    ', '��ΰ                                    ', 'W4YT54WG45W                   ', '1', '������    ', '�����                                  ', to_date('20-04-2020', 'dd-mm-yyyy'), '1');
insert into LN_LNP_CUST_CBCREDCUST (acustcredid, custcredno, ecif_cust_no, custname, currsign, credamt, assuamt, impaamt, mortamt, credtotalamt, begindate, tterm, enddate, cycflag, leftamt, bankid, acbankid, audiname, apprtabno, apprflag, operid, apprname, apprdate, credstate)
values ('G54WT54T                  ', 36, 'GD000001             ', '��ɺ�                                  ', 'RUR', 800000, 500000, 400000, 300000, 850000, to_date('21-05-2020', 'dd-mm-yyyy'), 48, to_date('21-05-2024', 'dd-mm-yyyy'), '0', 500000, '010      ', 'RTHW     ', '������                                  ', 'G45WGW435                     ', '1', 'л����    ', '����                                    ', to_date('21-04-2020', 'dd-mm-yyyy'), '1');
insert into LN_LNP_CUST_CBCREDCUST (acustcredid, custcredno, ecif_cust_no, custname, currsign, credamt, assuamt, impaamt, mortamt, credtotalamt, begindate, tterm, enddate, cycflag, leftamt, bankid, acbankid, audiname, apprtabno, apprflag, operid, apprname, apprdate, credstate)
values ('G45W5T4TG                 ', 14, 'GD000005             ', '���                                  ', 'CNY', 2000000, 1000000, 500000, 300000, 2500000, to_date('12-06-2020', 'dd-mm-yyyy'), 60, to_date('12-06-2025', 'dd-mm-yyyy'), '0', 1000000, '020      ', 'BRTHRW   ', '��ƽ                                    ', 'G45Y54YGRTG                   ', '1', '����      ', '���                                    ', to_date('12-05-2020', 'dd-mm-yyyy'), '1');
insert into LN_LNP_CUST_CBCREDCUST (acustcredid, custcredno, ecif_cust_no, custname, currsign, credamt, assuamt, impaamt, mortamt, credtotalamt, begindate, tterm, enddate, cycflag, leftamt, bankid, acbankid, audiname, apprtabno, apprflag, operid, apprname, apprdate, credstate)
values ('EWERW3TT4                 ', 28, 'GD000007             ', '���Ʒ�                                  ', 'GBP', 2500000, 1500000, 600000, 400000, 3000000, to_date('08-06-2020', 'dd-mm-yyyy'), 72, to_date('08-06-2026', 'dd-mm-yyyy'), '0', 1500000, '0532     ', 'HWTH     ', '����                                    ', 'H5EYGH365YU                   ', '1', '����      ', '���ؾ�                                  ', to_date('08-05-2020', 'dd-mm-yyyy'), '1');
insert into LN_LNP_CUST_CBCREDCUST (acustcredid, custcredno, ecif_cust_no, custname, currsign, credamt, assuamt, impaamt, mortamt, credtotalamt, begindate, tterm, enddate, cycflag, leftamt, bankid, acbankid, audiname, apprtabno, apprflag, operid, apprname, apprdate, credstate)
values ('4WTGGT45WY5               ', 39, 'GD000008             ', '����ƽ                                  ', 'CNY', 1000000, 500000, 200000, 100000, 1500000, to_date('03-01-2021', 'dd-mm-yyyy'), 50, to_date('03-03-2025', 'dd-mm-yyyy'), '1', 500000, '0532     ', 'RETHW    ', '����ɽ                                  ', '63YH54HY45Y                   ', '1', '��Ө��    ', '����                                    ', to_date('03-02-2021', 'dd-mm-yyyy'), '1');
insert into LN_LNP_CUST_CBCREDCUST (acustcredid, custcredno, ecif_cust_no, custname, currsign, credamt, assuamt, impaamt, mortamt, credtotalamt, begindate, tterm, enddate, cycflag, leftamt, bankid, acbankid, audiname, apprtabno, apprflag, operid, apprname, apprdate, credstate)
values ('RWT45T43THG               ', 54, 'GD000006             ', '�ｨ��                                  ', 'CNY', 900000, 400000, 100000, 200000, 1000000, to_date('10-11-2020', 'dd-mm-yyyy'), 30, to_date('10-05-2022', 'dd-mm-yyyy'), '1', 400000, '0531     ', 'HTWH     ', '������                                  ', 'V45EY5HHGR                    ', '1', 'л����    ', '�ڹ�                                    ', to_date('10-10-2020', 'dd-mm-yyyy'), '1');
insert into LN_LNP_CUST_CBCREDCUST (acustcredid, custcredno, ecif_cust_no, custname, currsign, credamt, assuamt, impaamt, mortamt, credtotalamt, begindate, tterm, enddate, cycflag, leftamt, bankid, acbankid, audiname, apprtabno, apprflag, operid, apprname, apprdate, credstate)
values ('GWRETGW34T                ', 59, 'DD000001             ', '������                                  ', 'JPY', 1000000, 500000, 200000, 200000, 1500000, to_date('21-06-2020', 'dd-mm-yyyy'), 50, to_date('21-08-2024', 'dd-mm-yyyy'), '1', 500000, '010      ', 'RTEHER   ', '������                                  ', 'TE4YY53Y5H                    ', '1', '�ܱ�      ', '�ڹ���                                  ', to_date('21-05-2020', 'dd-mm-yyyy'), '3');
insert into LN_LNP_CUST_CBCREDCUST (acustcredid, custcredno, ecif_cust_no, custname, currsign, credamt, assuamt, impaamt, mortamt, credtotalamt, begindate, tterm, enddate, cycflag, leftamt, bankid, acbankid, audiname, apprtabno, apprflag, operid, apprname, apprdate, credstate)
values ('G4WTT34R3                 ', 56, 'DD000002             ', 'Ǯǰ                                    ', 'CNY', 7500000, 400000, 200000, 200000, 8000000, to_date('01-07-2020', 'dd-mm-yyyy'), 36, to_date('01-07-2023', 'dd-mm-yyyy'), '0', 400000, '0532     ', 'BTREHE   ', '�ն�                                    ', 'GE5Y34H5                      ', '1', '�޽���    ', '����ʤ                                  ', to_date('01-06-2020', 'dd-mm-yyyy'), '3');
insert into LN_LNP_CUST_CBCREDCUST (acustcredid, custcredno, ecif_cust_no, custname, currsign, credamt, assuamt, impaamt, mortamt, credtotalamt, begindate, tterm, enddate, cycflag, leftamt, bankid, acbankid, audiname, apprtabno, apprflag, operid, apprname, apprdate, credstate)
values ('FR4WT35Y45Y               ', 21, 'DD000003             ', '���                                    ', 'CNY', 800000, 500000, 100000, 100000, 850000, to_date('05-08-2020', 'dd-mm-yyyy'), 24, to_date('05-08-2022', 'dd-mm-yyyy'), '0', 500000, '0531     ', 'HYTRE    ', 'Ѧ�׷�                                  ', 'G34Y5654GTE                   ', '1', '��־ΰ    ', '������                                  ', to_date('05-07-2020', 'dd-mm-yyyy'), '1');
insert into LN_LNP_CUST_CBCREDCUST (acustcredid, custcredno, ecif_cust_no, custname, currsign, credamt, assuamt, impaamt, mortamt, credtotalamt, begindate, tterm, enddate, cycflag, leftamt, bankid, acbankid, audiname, apprtabno, apprflag, operid, apprname, apprdate, credstate)
values ('GF4W5523T54               ', 33, 'DD000003             ', '���                                    ', 'CNY', 600000, 400000, 300000, 250000, 650000, to_date('02-10-2020', 'dd-mm-yyyy'), 36, to_date('02-10-2023', 'dd-mm-yyyy'), '0', 400000, '0531     ', 'TREHR    ', '������                                  ', 'G346U3HH45                    ', '1', '������    ', '�Ⱞ��                                  ', to_date('02-09-2020', 'dd-mm-yyyy'), '1');
commit;
prompt 10 records loaded
prompt Loading LN_MABIAO...
insert into LN_MABIAO (code, name, mazhi)
values ('064', '��Ʊ��������Ȩ�ع�/����', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('065', '�ƽ�ع�/����', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('07', '�ƽ�֤ȯ���', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('071', 'ծȯ���', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('072', 'Ʊ�ݽ��', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('073', '��Ʊ��������Ȩ���', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('074', '�ƽ���', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('075', '�����ʲ����', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('08', 'ó������', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('081', '����ó������', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('082', '����ó������', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('09', '��������', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('10', '����Ŵ������ʲ�', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('11', 'ת����', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('12', '��������', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('99', '��������', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('01', '��Ӫ�ʽ�', '051');
insert into LN_MABIAO (code, name, mazhi)
values ('02', 'ί�л���', '051');
insert into LN_MABIAO (code, name, mazhi)
values ('03', '���п�', '051');
insert into LN_MABIAO (code, name, mazhi)
values ('04', '���˽��㻧 ', '051');
insert into LN_MABIAO (code, name, mazhi)
values ('05', '�Թ����ڻ� ', '051');
insert into LN_MABIAO (code, name, mazhi)
values ('06', '������ ', '051');
insert into LN_MABIAO (code, name, mazhi)
values ('07', 'Ӧ����', '051');
insert into LN_MABIAO (code, name, mazhi)
values ('08', 'ת����', '051');
insert into LN_MABIAO (code, name, mazhi)
values ('09', '����', '051');
insert into LN_MABIAO (code, name, mazhi)
values ('FP01', '��ҵ�÷�', '054');
insert into LN_MABIAO (code, name, mazhi)
values ('FP02', '���ó�', '054');
insert into LN_MABIAO (code, name, mazhi)
values ('FP03', '����', '054');
insert into LN_MABIAO (code, name, mazhi)
values ('0', '����', 'ODS0039');
insert into LN_MABIAO (code, name, mazhi)
values ('1', '����', 'ODS0039');
insert into LN_MABIAO (code, name, mazhi)
values ('2', '������', 'ODS0039');
insert into LN_MABIAO (code, name, mazhi)
values ('X', 'δ�ṩ', 'ODS0039');
insert into LN_MABIAO (code, name, mazhi)
values ('0', 'δ֪���Ա�', 'DEM0100005');
insert into LN_MABIAO (code, name, mazhi)
values ('1', '��', 'DEM0100005');
insert into LN_MABIAO (code, name, mazhi)
values ('2', 'Ů', 'DEM0100005');
insert into LN_MABIAO (code, name, mazhi)
values ('5', 'Ů�Ըģ��䣩Ϊ����', 'DEM0100005');
insert into LN_MABIAO (code, name, mazhi)
values ('6', '���Ըģ��䣩ΪŮ��', 'DEM0100005');
insert into LN_MABIAO (code, name, mazhi)
values ('9', 'δ˵�����Ա�', 'DEM0100005');
insert into LN_MABIAO (code, name, mazhi)
values ('10', 'δ��', 'DEM0100003');
insert into LN_MABIAO (code, name, mazhi)
values ('19', '�ѻ�', 'DEM0100003');
insert into LN_MABIAO (code, name, mazhi)
values ('20', '�ѻ�����Ů', 'DEM0100003');
insert into LN_MABIAO (code, name, mazhi)
values ('21', '�ѻ�����Ů', 'DEM0100003');
insert into LN_MABIAO (code, name, mazhi)
values ('22', '����', 'DEM0100003');
insert into LN_MABIAO (code, name, mazhi)
values ('23', '�ٻ�', 'DEM0100003');
insert into LN_MABIAO (code, name, mazhi)
values ('24', '����', 'DEM0100003');
insert into LN_MABIAO (code, name, mazhi)
values ('30', 'ɥż', 'DEM0100003');
insert into LN_MABIAO (code, name, mazhi)
values ('39', '���', 'DEM0100003');
insert into LN_MABIAO (code, name, mazhi)
values ('40', '�������Ů', 'DEM0100003');
insert into LN_MABIAO (code, name, mazhi)
values ('41', '�������Ů', 'DEM0100003');
insert into LN_MABIAO (code, name, mazhi)
values ('90', 'δ˵���Ļ���״��', 'DEM0100003');
insert into LN_MABIAO (code, name, mazhi)
values ('01', '���� ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('02', '�ɹ��� ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('03', '���� ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('04', '���� ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('05', 'ά����� ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('06', '���� ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('07', '���� ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('08', '׳�� ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('09', '������ ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('10', '������ ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('11', '���� ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('12', '���� ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('13', '���� ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('14', '���� ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('15', '������ ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('16', '������ ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('17', '�������� ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('18', '���� ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('19', '���� ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('20', '������ ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('21', '���� ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('22', '��� ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('23', '��ɽ�� ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('24', '������ ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('25', 'ˮ�� ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('26', '������ ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('27', '������ ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('28', '������ ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('29', '�¶������� ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('30', '���� ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('31', '���Ӷ��� ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('32', '������ ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('33', 'Ǽ�� ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('34', '������ ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('35', '������ ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('36', 'ë���� ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('37', '������ ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('38', '������ ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('39', '������ ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('40', '������ ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('41', '�������� ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('42', 'ŭ�� ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('43', '���α���� ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('44', '����˹�� ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('45', '���¿��� ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('46', '������ ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('47', '������ ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('48', 'ԣ���� ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('49', '���� ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('50', '�������� ', 'DEM0100001');
commit;
prompt 100 records committed...
insert into LN_MABIAO (code, name, mazhi)
values ('51', '������ ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('52', '���״��� ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('53', '������ ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('54', '�Ű��� ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('55', '����� ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('56', '��ŵ�� ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('57', '����', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('97', 'δ�ṩ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('98', '���Ѫͳ ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('01', '��ʿ', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('02', '��ʿ��', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('10', '�о���', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('11', '�о�����ҵ', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('19', '�о�����ҵ', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('20', '��ѧ����(��ơ���ѧ��)', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('21', '��ѧ��ҵ', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('28', '�൱��ѧ��ҵ', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('29', '��ѧ��ҵ', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('30', '��ѧר�ƺ�ר��ѧУ(��ơ���ר��)', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('31', 'ר�Ʊ�ҵ', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('38', '�൱ר�Ʊ�ҵ', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('39', 'ר����ҵ', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('40', '�е�רҵѧУ���еȼ���ѧУ', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('41', '��ר��ҵ', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('42', '�м���ҵ', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('48', '�൱��ר���м���ҵ', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('49', '��ר���м���ҵ', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('50', '����ѧУ', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('51', '����ѧУ��ҵ', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('59', '����ѧУ��ҵ', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('60', '����', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('61', '���б�ҵ', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('62', 'ְҵ���б�ҵ', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('63', 'ũҵ���б�ҵ', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('68', '�൱���б�ҵ', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('69', '������ҵ', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('70', '����', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('71', '���б�ҵ', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('72', 'ְҵ���б�ҵ', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('73', 'ũҵ���б�ҵ', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('78', '�൱���б�ҵ', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('79', '������ҵ', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('80', 'Сѧ', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('81', 'Сѧ��ҵ', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('88', '�൱Сѧ��ҵ', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('89', 'Сѧ��ҵ', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('90', '��ä�����ä', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('99', 'δ֪', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('01', '���һ��ء���Ⱥ��֯����ҵ����ҵ��λ������', 'PAR0400044');
insert into LN_MABIAO (code, name, mazhi)
values ('02', '������Ա���й���Ա', 'PAR0400044');
insert into LN_MABIAO (code, name, mazhi)
values ('03', 'רҵ������Ա', 'PAR0400044');
insert into LN_MABIAO (code, name, mazhi)
values ('04', '��ҵ������ҵ��Ա', 'PAR0400044');
insert into LN_MABIAO (code, name, mazhi)
values ('05', 'ũ���֡������桢ˮ��ҵ������Ա', 'PAR0400044');
insert into LN_MABIAO (code, name, mazhi)
values ('06', '�����������豸������Ա���й���Ա', 'PAR0400044');
insert into LN_MABIAO (code, name, mazhi)
values ('07', '����', 'PAR0400044');
insert into LN_MABIAO (code, name, mazhi)
values ('08', '��������������ҵ��Ա', 'PAR0400044');
insert into LN_MABIAO (code, name, mazhi)
values ('99', 'δ�ṩ', 'PAR0400044');
insert into LN_MABIAO (code, name, mazhi)
values ('09', '��������ӹ���', 'PAR0400044');
insert into LN_MABIAO (code, name, mazhi)
values ('10', '����', 'PAR0400044');
insert into LN_MABIAO (code, name, mazhi)
values ('11', '�����Ա', 'PAR0400044');
insert into LN_MABIAO (code, name, mazhi)
values ('12', '��ũ', 'PAR0400044');
insert into LN_MABIAO (code, name, mazhi)
values ('13', '˽Ӫҵ��', 'PAR0400044');
insert into LN_MABIAO (code, name, mazhi)
values ('14', '����', 'PAR0400044');
insert into LN_MABIAO (code, name, mazhi)
values ('15', '��ʦ', 'PAR0400044');
insert into LN_MABIAO (code, name, mazhi)
values ('16', 'ҽ��', 'PAR0400044');
insert into LN_MABIAO (code, name, mazhi)
values ('17', '����Ա', 'PAR0400044');
insert into LN_MABIAO (code, name, mazhi)
values ('18', '��������', 'PAR0400044');
insert into LN_MABIAO (code, name, mazhi)
values ('19', '��ѧ�����', 'PAR0400044');
insert into LN_MABIAO (code, name, mazhi)
values ('20', '����', 'PAR0400044');
insert into LN_MABIAO (code, name, mazhi)
values ('A', 'ũ���֡�������ҵ', '100084');
insert into LN_MABIAO (code, name, mazhi)
values ('B', '�ɿ�ҵ', '100084');
insert into LN_MABIAO (code, name, mazhi)
values ('C', '����ҵ', '100084');
insert into LN_MABIAO (code, name, mazhi)
values ('D', '������������ȼ����ˮ�����͹�Ӧҵ', '100084');
insert into LN_MABIAO (code, name, mazhi)
values ('E', '����ҵ', '100084');
insert into LN_MABIAO (code, name, mazhi)
values ('F', '����������ҵ', '100084');
insert into LN_MABIAO (code, name, mazhi)
values ('G', '��ͨ���䡢�ִ�������ҵ', '100084');
insert into LN_MABIAO (code, name, mazhi)
values ('H', 'ס�޺Ͳ���ҵ', '100084');
insert into LN_MABIAO (code, name, mazhi)
values ('I', '��Ϣ���䡢�������Ϣ��������ҵ', '100084');
insert into LN_MABIAO (code, name, mazhi)
values ('J', '����ҵ', '100084');
insert into LN_MABIAO (code, name, mazhi)
values ('K', '���ز�ҵ', '100084');
insert into LN_MABIAO (code, name, mazhi)
values ('L', '���޺��������ҵ', '100084');
insert into LN_MABIAO (code, name, mazhi)
values ('M', '��ѧ�о��ͼ�������ҵ', '100084');
insert into LN_MABIAO (code, name, mazhi)
values ('N', 'ˮ���������͹�����ʩ����ҵ', '100084');
insert into LN_MABIAO (code, name, mazhi)
values ('O', '��������������������ҵ', '100084');
insert into LN_MABIAO (code, name, mazhi)
values ('P', '����', '100084');
insert into LN_MABIAO (code, name, mazhi)
values ('Q', '��������Ṥ��', '100084');
insert into LN_MABIAO (code, name, mazhi)
values ('R', '�Ļ�������������ҵ', '100084');
insert into LN_MABIAO (code, name, mazhi)
values ('S', '����������ᱣ�Ϻ������֯', '100084');
insert into LN_MABIAO (code, name, mazhi)
values ('T', '������֯', '100084');
insert into LN_MABIAO (code, name, mazhi)
values ('Z', 'δ֪', '100084');
insert into LN_MABIAO (code, name, mazhi)
values ('X', 'δ�ṩ', '100084');
insert into LN_MABIAO (code, name, mazhi)
values ('0', '���֤', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('01', '��һ�����֤', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('02', '�ڶ������֤', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('1', '���ڲ�', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('2', '����', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('21', '�й�����', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('22', '�������', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('3', '����֤', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('31', '����֤', 'PAA0100006');
commit;
prompt 200 records committed...
insert into LN_MABIAO (code, name, mazhi)
values ('32', '��������֤', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('33', '����ѧԺ֤', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('4', 'ʿ��֤', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('5', '�۰ľ��������ڵ�ͨ��֤', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('51', '���ͨ��֤', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('52', '����ͨ��֤', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('6', '̨��ͬ�������ڵ�ͨ��֤', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('7', '��ʱ���֤', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('8', '����˾���֤', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('81', '��������þ�ס֤', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('82', '������뾳ͨ��֤', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('9', '����֤', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('101', '����ίԱ��֤��', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('102', 'ѧ��֤', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('103', '���ݸɲ�����֤', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('104', '��ְ�ɲ�����֤', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('X', '����֤��', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('2001', 'Ӫҵִ�պ�', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('2002', '��ҵ��������', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('2003', '������', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('2004', '˰��Ǽ�֤', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('ABW', '��³��', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('AFG', '������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('AGO', '������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('AIA', '������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('ALB', '����������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('AND', '������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('ANT', '����������˹', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('ARE', '������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('ARG', '����͢', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('ARM', '��������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('ASM', '������Ħ��', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('ATA', '�ϼ���', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('ATF', '�����ϲ�����', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('ATG', '����ϺͰͲ���', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('AUS', '�Ĵ�����', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('AUT', '�µ���', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('AZE', '�����ݽ�', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('BDI', '��¡��', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('BEL', '����ʱ', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('BEN', '����', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('BFA', '�����ɷ���', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('BGD', '�ϼ�����', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('BGR', '��������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('BHR', '����', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('BHS', '�͹���', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('BIH', '��˹���Ǻͺ�����ά��', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('BLR', '�׶���˹', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('BLZ', '������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('BMU', '��Ľ��', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('BOL', '����ά��', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('BRA', '����', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('BRB', '�ͰͶ�˹', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('BRN', '����', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('BTN', '����', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('BVT', '��ά��', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('BWA', '��������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('CAF', '�з�', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('CAN', '���ô�', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('CCK', '�ƿ�˹(����)Ⱥ��', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('CHE', '��ʿ', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('CHL', '����', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('CHN', '�й�', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('CIV', '���ص���', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('CMR', '����¡', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('COD', '�չ�����Congo,', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('COG', '�չ�������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('COK', '���Ⱥ��', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('COL ', '���ױ���', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('COM', '��Ħ��', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('CPV', '��ý�', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('CRI', '��˹�����', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('CUB', '�Ű�', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('CXR', 'ʥ����', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('CYM', '����Ⱥ��', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('CYP', '����·˹', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('CZE', '�ݿ�', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('DEU', '�¹�', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('DJI', '������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('DMA', '�������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('DNK', '����', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('DOM', '������ӹ��͹�', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('DZA', '����������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('ECU', '��϶��', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('EGY', '����', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('ERI', '����������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('ESH', '��������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('ESP', '������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('EST', '��ɳ����', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('ETH', '���������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('FIN', '����', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('FJI', '쳼�', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('FLK', '���ά��˹Ⱥ��(������Ⱥ��)', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('FRA', '����', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('FRO', '����Ⱥ��', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('FSM', '�ܿ���������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('GAB', '����', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('GBR', 'Ӣ��', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('GEO', '��³����', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('GHA', '����', 'DEM0100011');
commit;
prompt 300 records committed...
insert into LN_MABIAO (code, name, mazhi)
values ('GIB', 'ֱ������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('GIN', '������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('GLP', '�ϵ�����', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('GMB', '�Ա���Gambia', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('GNB', '�����Ǳ���', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('GNQ', '���������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('GRC', 'ϣ��', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('GRD', '�����ɴ�', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('GRL', '������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('GTM', 'Σ������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('GUF', '����������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('GUM', '�ص�', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('GUY', '������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('HKG', '���', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('HMD', '�յµ���������ɵ�', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('HND', '�鶼��˹', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('HRV', '���޵���', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('HTI', '����', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('HUN', '������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('IDN', 'ӡ��������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('IND ', 'ӡ��', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('IOT', 'Ӣ��ӡ��������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('IRL', '������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('IRN', '����', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('IRQ', '������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('ISL', '����', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('ISR', '��ɫ��', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('ITA', '�����', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('JAM', '�����', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('JOR', 'Լ��', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('JPN', '�ձ�', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('KAZ', '������˹̹', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('KEN', '������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('KGZ', '������˹˹̹', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('KHM', '����կ', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('KIR', '�����˹', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('KNA', 'ʥ���ĺ���ά˹', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('KOR', '����', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('KWT', '������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('LAO', '����', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('LBN', '�����', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('LBR', '��������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('LBY', '������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('LCA', 'ʥ¬����', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('LIE', '��֧��ʿ��', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('LKA', '˹������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('LSO', '������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('LTU', '������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('LUX', '¬ɭ��', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('LVA', '����ά��', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('MAC', '����', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('MAR', 'Ħ���', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('MCO', 'Ħ�ɸ�', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('MDA', 'Ħ������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('MDG', '����˹��', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('MDV', '�������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('MEX', 'ī����', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('MHL', '���ܶ�Ⱥ��', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('MKD', '��˹��', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('MLI', '����', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('MLT', '�����', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('MMR', '���', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('MNE', '��ɽMontenegro ', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('MNG', '�ɹ�', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('MNP', '����������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('MOZ', 'Īɣ�ȿ�', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('MRT', 'ë��������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('MSR', '����������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('MTQ', '�������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('MUS', 'ë����˹', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('MWI', '����ά', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('MYS', '��������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('MYT', '��Լ��', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('NAM', '���ױ���', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('NCL', '�¿��������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('NER', '���ն�', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('NFK', 'ŵ���˵�', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('NGA', '��������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('NIC', '�������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('NIU', 'Ŧ��', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('NLD', '����', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('NOR', 'Ų��', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('NPL', '�Ჴ��', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('NRU', '�³', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('NZL', '������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('OMN', '����', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('PAK', '�ͻ�˹̹', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('PAN', '������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('PCN', 'Ƥ�ؿ���Ⱥ��', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('PER', '��³', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('PHL', '���ɱ�', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('PLW', '����', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('PNG', '�Ͳ����¼�����', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('POL', '����', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('PRI', '�������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('PRK', '����', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('PRT', '������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('PRY', '������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('PSE', '����˹̹', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('PYF', '��������������', 'DEM0100011');
commit;
prompt 400 records committed...
insert into LN_MABIAO (code, name, mazhi)
values ('QAT', '������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('REU', '������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('ROM', '��������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('RUS', '����˹', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('RWA', '¬����', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('SAU', 'ɳ�ذ�����', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('"SCGͣ��"', '"����ά�Ǻͺ�ɽͣ��"', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('SDN', '�յ�', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('SEN', '���ڼӶ�', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('SGP', '�¼���', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('SGS', '�������ǵ�����ɣ��Τ�浺', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('SHN', 'ʥ������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('SJM', '˹�߶���Ⱥ��������Ⱥ��', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('SLB', '������Ⱥ��', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('SLE', '��������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('SLV', '�����߶�', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('SMR', 'ʥ����ŵ', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('SOM', '������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('SPM', 'ʥƤ�������ܿ�¡', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('SRB', '����ά��Serbia', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('STP', 'ʥ��������������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('SUR', '������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('SVK', '˹�工��', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('SVN', '˹��������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('SWE', '���', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('SWZ', '˹��ʿ��', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('SYC', '�����', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('SYR', '������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('TCA', '�ؿ�˹�Ϳ���˹Ⱥ��', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('TCD', 'է��', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('TGO', '���', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('THA', '̩��', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('TJK', '������˹̹', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('TKL', '�п���', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('TKM', '������˹̹', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('TMP', '������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('TON', '����', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('TTO', '�������Ͷ�͸�', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('TUN', 'ͻ��˹', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('TUR', '������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('TUV', 'ͼ��¬', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('TWN ', '�й�̨��', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('TZA', '̹ɣ����', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('UGA', '�ڸɴ�', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('UKR', '�ڿ���', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('UMI', '����������С����', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('URY', '������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('USA', '����', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('UZB', '���ȱ��˹̹', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('VAT', '��ٸ�', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('VCT', 'ʥ��ɭ�غ͸����ɶ�˹', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('VEN', 'ί������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('VGB', 'Ӣ��ά����Ⱥ��', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('VIR', '����ά����Ⱥ��', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('VNM', 'Խ��', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('VUT', '��Ŭ��ͼ', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('WLF', '����˹�͸�ͼ��Ⱥ��', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('WSM', '����Ħ��', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('YEM', 'Ҳ��', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('Z01', '��˰��', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('Z02', '�ӹ���', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('Z03', '��ʯ������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('ZAF', '�Ϸ�', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('ZAR', '������', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('ZMB', '�ޱ���', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('ZWE', '��Ͳ�Τ', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('YUG', '��˹����', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('01', '�ż�', '100067');
insert into LN_MABIAO (code, name, mazhi)
values ('02', '�ֻ�', '100067');
insert into LN_MABIAO (code, name, mazhi)
values ('03', '�����ʼ�', '100067');
insert into LN_MABIAO (code, name, mazhi)
values ('04', '��ҳ', '100067');
insert into LN_MABIAO (code, name, mazhi)
values ('05', '��ʱͨѶ', '100067');
insert into LN_MABIAO (code, name, mazhi)
values ('01', 'AAA��', '100115');
insert into LN_MABIAO (code, name, mazhi)
values ('02', 'AA��', '100115');
insert into LN_MABIAO (code, name, mazhi)
values ('03', 'A��', '100115');
insert into LN_MABIAO (code, name, mazhi)
values ('04', 'BBB��', '100115');
insert into LN_MABIAO (code, name, mazhi)
values ('05', 'BB��', '100115');
insert into LN_MABIAO (code, name, mazhi)
values ('06', 'B��', '100115');
insert into LN_MABIAO (code, name, mazhi)
values ('07', 'F��', '100115');
insert into LN_MABIAO (code, name, mazhi)
values ('08', 'δͨ��', '100115');
insert into LN_MABIAO (code, name, mazhi)
values ('09', '����', '100115');
insert into LN_MABIAO (code, name, mazhi)
values ('00', 'δ�ṩ˵�������õȼ�', '100115');
insert into LN_MABIAO (code, name, mazhi)
values ('X', 'δ�ṩ', '100115');
insert into LN_MABIAO (code, name, mazhi)
values ('A001', '����������ҵ��λ', 'PAA2100001');
insert into LN_MABIAO (code, name, mazhi)
values ('A002', '�ƽ�����', 'PAA2100001');
insert into LN_MABIAO (code, name, mazhi)
values ('A003', '�ʵ�ͨ��', 'PAA2100001');
insert into LN_MABIAO (code, name, mazhi)
values ('A004', '����', 'PAA2100001');
insert into LN_MABIAO (code, name, mazhi)
values ('A005', 'IT���硢�����', 'PAA2100001');
insert into LN_MABIAO (code, name, mazhi)
values ('A006', '��ҵ��ó��', 'PAA2100001');
insert into LN_MABIAO (code, name, mazhi)
values ('A007', '���ڻ���', 'PAA2100001');
insert into LN_MABIAO (code, name, mazhi)
values ('A008', '���ز�����', 'PAA2100001');
insert into LN_MABIAO (code, name, mazhi)
values ('A009', '���վ��͡��н�', 'PAA2100001');
insert into LN_MABIAO (code, name, mazhi)
values ('A010', '���Ρ����ꡢ����', 'PAA2100001');
insert into LN_MABIAO (code, name, mazhi)
values ('A011', '����ҵ���������', 'PAA2100001');
insert into LN_MABIAO (code, name, mazhi)
values ('A012', '���', 'PAA2100001');
insert into LN_MABIAO (code, name, mazhi)
values ('A013', 'ũ��������', 'PAA2100001');
insert into LN_MABIAO (code, name, mazhi)
values ('A014', '����ҵ���ӹ�ҵ', 'PAA2100001');
insert into LN_MABIAO (code, name, mazhi)
values ('A015', '����ҵ', 'PAA2100001');
insert into LN_MABIAO (code, name, mazhi)
values ('A016', 'װ��', 'PAA2100001');
insert into LN_MABIAO (code, name, mazhi)
values ('A017', '��ʦ�����ʦ', 'PAA2100001');
commit;
prompt 500 records committed...
insert into LN_MABIAO (code, name, mazhi)
values ('A018', '����', 'PAA2100001');
insert into LN_MABIAO (code, name, mazhi)
values ('A', '���пعɾ���', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('A01', '���пع�', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('A0101', '������Կع�', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('A0102', '���о��Կع�', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('A02', '����ع�', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('A0201', '������Կع�', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('A0202', '������Կع�', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('B', '�ǹ��пعɾ���', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('B01', '˽�˿ع�', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('B0101', '˽����Կع�', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('B0102', '˽�˾��Կع�', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('B02', '�۰�̨�ع�', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('B0201', '�۰�̨��Կع�', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('B0202', '�۰�̨���Կع�', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('B03', '���̿ع�', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('B0301', '������Կع�', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('B0302', '���̾��Կع�', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('C06', 'ũ����幤�̻�', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('C07', 'ũ��', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('C08', '��ͨ����', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('C09', 'ũ��רҵ������', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('C10', '����ũ�徭����֯', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('C11', 'ũ��������ҵ', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('C12', '������ҵ', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('C13', '����ҵ��ҵ', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('C14', '���ز�', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('C15', '������ʩ', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('C16', '������ҵ', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('C17', '������λ', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('C18', 'ҽ�Ƶ�λ', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('C19', '��ҵ��λ', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('AFA', '��������', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('ALL', '�п�', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('DZD', '���������ǵ��ɶ�', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('ADP', '������������', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('AON', '�¿��߲�', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('AZM', '�����ݽ�������', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('ARS', '����͢����', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('AUD', '�Ĵ�����Ԫ', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('ATS', '����', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('BSD', '�͹���Ԫ', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('BHD', '���ֵ��ɶ�', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('BDT', '����', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('AMD', '�������Ǵ�ķ', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('BBD', '�ͰͶ�˹Ԫ', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('BEF', '����ʱ����', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('BMD', '��Ľ��Ԫ', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('BTN', 'Ŭ����³ķ', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('BOB', '����ά�Ǳ���', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('BWP', '����', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('BZD', '������Ԫ', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('SBD', '������Ⱥ��Ԫ', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('BND', '����Ԫ', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('BGL', '�и�', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('MMK', '��Ԫ', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('BIF', '��¡�Ϸ���', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('BYB', '�׶���˹¬��', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('KHR', '���', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('CAD', '���ô�Ԫ', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('CVE', '��ýǰ�˹���', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('KYD', '����Ⱥ��Ԫ', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('LKR', '˹������¬��', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('CLP', '��������', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('CNY', '�����Ԫ', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('COP', '���ױ��Ǳ���', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('KMF', '��Ħ�޷���', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('ZRN', '��������', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('CRC', '��˹����ӿ���', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('HRK', '���޵��ǿ���', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('CUP', '�Űͱ���', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('CYP', '����·˹��', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('CZK', '�ݿ˿���', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('DKK', '�������', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('DOP', '������ӱ���', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('ECS', '�տ���', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('SVC', '�����߶����', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('ETB', '��������Ǳȶ�', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('EEK', '����ķ', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('FKP', '������Ⱥ����', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('FJD', '쳼�Ԫ', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('FIM', '���', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('FRF', '��������', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('DJF', '�����ᷨ��', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('GMD', '������', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('DEM', '�¹����', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('GHC', '����', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('GIP', 'ֱ�����Ӱ�', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('GRD', '��������', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('GTQ', '����', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('GNF', '�����Ƿ���', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('GYD', '������Ԫ', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('HTG', '�ŵ�', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('HNL', '��Ƥ��', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('HKD', '���Ԫ', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('HUF', '����', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('ISK', '��������', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('INR', 'ӡ��¬��', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('IDR', '¬��', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('IRR', '�������Ƕ�', 'ACC1300012');
commit;
prompt 600 records committed...
insert into LN_MABIAO (code, name, mazhi)
values ('IQD', '�����˵��ɶ�', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('IEP', '��������', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('ILS', '���˶�', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('ITL', '���������', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('JMD', '�����Ԫ', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('JPY', '��Ԫ', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('KZT', '���', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('JOD', 'Լ�����ɶ�', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('KES', '����������', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('KPW', '������Ԫ', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('KRW', 'Բ', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('KWD', '�����ص��ɶ�', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('KGS', '��ķ', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('LAK', '����', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('LBP', '����۰�', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('LSL', '����', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('LVL', '����ά������', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('LRD', '��������Ԫ', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('LYD', '�����ǵ��ɶ�', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('LTL', '������', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('LUF', '¬ɭ������', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('MOP', '����Ԫ', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('MGF', '�����ʲ����', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('MWK', '���߲�', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('MYR', '���������ּ���', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('MVR', '¬����', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('MTL', '���������', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('MRO', '�ڼ���', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('MUR', 'ë����˹¬��', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('MXN', 'ī�������', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('MNT', 'ͼ�����', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('MDL', 'Ħ����������', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('MAD', 'Ħ������ķ', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('MZM', '���ݿ���', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('OMR', '�������Ƕ�', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('NAD', '���ױ���Ԫ', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('NPR', '�Ჴ��¬��', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('NLG', '������', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('ANG', '����������˹��', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('AWG', '��³�Ͷ�', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('VUV', '��ͼ', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('NZD', '������Ԫ', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('NIO', '��ƶ��', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('NGN', '����', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('NOK', 'Ų������', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('PKR', '�ͻ�˹̹¬��', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('PAB', '�Ͳ���', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('PGK', '����', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('PYG', '������', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('PEN', '����', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('PHP', '���ɱ�����', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('PLZ', '������', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('PTE', '��������˹���', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('GWP', '�����Ǳ��ܱ���', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('TPE', '���ۺ���˹���', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('QAR', '���������Ƕ�', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('ROL', '����', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('RWF', '¬���﷨��', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('SHP', 'ʥ�����ð�', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('STD', '�಼��', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('SAR', 'ɳ�����Ƕ�', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('SCR', '�����¬��', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('SLL', '����', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('SGD', '�¼���Ԫ', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('SKK', '˹�工�˿���', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('VND', '��', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('SIT', '������', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('SOS', '����������', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('ZAR', '����', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('ZWD', '��Ͳ�ΤԪ', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('ESP', '������������', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('SDD', '�յ����ɶ�', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('SRG', '�����϶�', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('SZL', '��������', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('SEK', '������', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('CHF', '��ʿ����', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('SYP', '�����ǰ�', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('TJR', '������¬��', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('THB', '��', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('TOP', '���', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('TTD', '�������Ͷ�͸�Ԫ', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('AED', 'UAE����ķ', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('TND', 'ͻ��˹���ɶ�', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('TRL', '����������', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('TMM', '������', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('UGX', '�ڸɴ�����', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('UAK', '���', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('MKD', '���ɶ�', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('RUR', '����˹¬��', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('EGP', '������', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('GBP', 'Ӣ��', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('TZS', '̹ɣ��������', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('USD', '��Ԫ', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('UYU', '���������', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('UZS', '���ȱ��˹̹��ķ', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('VEB', '������', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('WST', '����', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('YER', 'Ҳ�����Ƕ�', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('YUN', '��˹������ɶ�', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('ZMK', '���߲�', 'ACC1300012');
commit;
prompt 700 records committed...
insert into LN_MABIAO (code, name, mazhi)
values ('TWD', '��̨��Ԫ', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('XAF', 'CRA���� BEAC', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('XCD', '�����ձ�Ԫ', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('XOF', 'CFA����BCEAO', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('XPF', 'CFP����', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('XEU', 'ŷ�޻��ҵ�λ��E.C.U.)', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('XBA', 'ŷ�޻�ϵ�λ��EUR-CO)', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('XBB', 'ŷ�޻��ҵ�λ��E.M.U.-6)', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('XBC', 'ŷ���˻�����λ��E.U.A.-9)', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('XB5', 'ŷ���˻�������λ��E.U.A.-17)', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('XAU', '�ƽ�', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('XDR', '�ر����Ȩ', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('XAG', '��', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('XPT', '���׽�', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('XTS', 'Ϊ�����ر����Ĵ���', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('XPD', '��', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('EUR', 'ŷԪ��EUR��', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('ECV', 'UVC', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('BOV', 'M������', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('PLN', '������', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('BRL', '�������', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('CLF', '��չ��λ', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('ZAL', '���������أ�', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('USN', '�����գ�', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('USS', '��ͬ�գ�', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('XXX', 'δ�����Ľ��׻��Ҵ���', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('E01', '�����ŷԪ', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('R01', '����������', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('T01', '����Һϼ�', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('U01', '�������Ԫ', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('X01', '�ƽ�����ҼƼۣ�', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('X02', '�ƽ���Ԫ�Ƽۣ�', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('CS01', '����', 'DEM0200004');
insert into LN_MABIAO (code, name, mazhi)
values ('CS02', '����', 'DEM0200004');
insert into LN_MABIAO (code, name, mazhi)
values ('CS03', 'С��', 'DEM0200004');
insert into LN_MABIAO (code, name, mazhi)
values ('CS04', '΢��', 'DEM0200004');
insert into LN_MABIAO (code, name, mazhi)
values ('CS05', '����', 'DEM0200004');
insert into LN_MABIAO (code, name, mazhi)
values ('X', 'δ�ṩ', 'DEM0200004');
insert into LN_MABIAO (code, name, mazhi)
values ('01', '���Ҽ�', 'DEM0200003');
insert into LN_MABIAO (code, name, mazhi)
values ('02', 'ʡ��', 'DEM0200003');
insert into LN_MABIAO (code, name, mazhi)
values ('03', '�м�', 'DEM0200003');
insert into LN_MABIAO (code, name, mazhi)
values ('04', '�ؼ�', 'DEM0200003');
insert into LN_MABIAO (code, name, mazhi)
values ('05', '��', 'DEM0200003');
insert into LN_MABIAO (code, name, mazhi)
values ('00', 'δ�ṩ˵��������', 'DEM0200005');
insert into LN_MABIAO (code, name, mazhi)
values ('01', 'һ��', 'DEM0200005');
insert into LN_MABIAO (code, name, mazhi)
values ('02', '����', 'DEM0200005');
insert into LN_MABIAO (code, name, mazhi)
values ('03', '����', 'DEM0200005');
insert into LN_MABIAO (code, name, mazhi)
values ('04', 'δͨ��', 'DEM0200005');
insert into LN_MABIAO (code, name, mazhi)
values ('05', '����', 'DEM0200005');
insert into LN_MABIAO (code, name, mazhi)
values ('06', 'һ����Ա', 'DEM0200005');
insert into LN_MABIAO (code, name, mazhi)
values ('07', '��һ��', 'DEM0200005');
insert into LN_MABIAO (code, name, mazhi)
values ('X', 'δ�ṩ', 'DEM0200005');
insert into LN_MABIAO (code, name, mazhi)
values ('01', '�ٴ���', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('02', '��ͨ����', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('021', '���Ѵ���', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('0211', '����ס������', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('0212', '�����������Ѵ���', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('0213', '��ѧ����', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('02131', '������ѧ����', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('02132', 'һ����ҵ����ѧ����', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('0219', '�������Ѵ���', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('022', '��Ӫ����', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('023', '�̶��ʲ�����', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('03', '���', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('04', '͸֧', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('041', '�˻�͸֧', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('042', '���ǿ�͸֧', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('043', '׼���ǿ�͸֧', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('05', '���', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('051', '�жҵ��', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('052', '�������', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('053', '����֤���', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('054', '�������', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('06', '�ع�/����', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('061', 'ծȯ�ع�/����', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('062', 'Ʊ�ݻع�/����', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('063', '����ع�/����', '053');
commit;
prompt 777 records loaded
prompt Enabling triggers for LN_LNP_ACCT_AMWKPL06...
alter table LN_LNP_ACCT_AMWKPL06 enable all triggers;
prompt Enabling triggers for LN_LNP_ACCT_AMWKPL07...
alter table LN_LNP_ACCT_AMWKPL07 enable all triggers;
prompt Enabling triggers for LN_LNP_CTRT_CBAPP...
alter table LN_LNP_CTRT_CBAPP enable all triggers;
prompt Enabling triggers for LN_LNP_CUST_CBCREDCUST...
alter table LN_LNP_CUST_CBCREDCUST enable all triggers;
prompt Enabling triggers for LN_MABIAO...
alter table LN_MABIAO enable all triggers;
set feedback on
set define on
prompt Done.
