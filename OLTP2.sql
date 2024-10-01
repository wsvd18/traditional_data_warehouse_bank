prompt PL/SQL Developer import file
prompt Created on 2022年3月3日 by Administrator
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
  is '个人贷款放款流水档表';
comment on column LN_LNP_ACCT_AMWKPL06.rt_cust_num
  is '贷款帐号';
comment on column LN_LNP_ACCT_AMWKPL06.tr_ext_seq
  is '发放ID';
comment on column LN_LNP_ACCT_AMWKPL06.tr_eff_date
  is '放款日期';
comment on column LN_LNP_ACCT_AMWKPL06.tr_tran_amt
  is '放款金额';
comment on column LN_LNP_ACCT_AMWKPL06.ba_used_bal
  is '累计放款金额';
comment on column LN_LNP_ACCT_AMWKPL06.tr_tot_prin
  is '帐户余额';
comment on column LN_LNP_ACCT_AMWKPL06.mi_pay_acct_1
  is '收款人帐号';
comment on column LN_LNP_ACCT_AMWKPL06.tr_sys_date
  is '交易日期';
comment on column LN_LNP_ACCT_AMWKPL06.tr_entry_time
  is '交易时间';
comment on column LN_LNP_ACCT_AMWKPL06.tr_tran_cd
  is '交易代码';
comment on column LN_LNP_ACCT_AMWKPL06.tr_tran_desc
  is '交易代码说明';
comment on column LN_LNP_ACCT_AMWKPL06.filler
  is '填充字段';

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
  is '个人贷款还款流水档表';
comment on column LN_LNP_ACCT_AMWKPL07.rt_acct_num
  is '贷款帐号';
comment on column LN_LNP_ACCT_AMWKPL07.zm_desc_15_1
  is '网点机构号';
comment on column LN_LNP_ACCT_AMWKPL07.tr_eff_date
  is '记帐日期';
comment on column LN_LNP_ACCT_AMWKPL07.tran_seq_int
  is '交易流水号';
comment on column LN_LNP_ACCT_AMWKPL07.sche_pay_date
  is '计划还款日期';
comment on column LN_LNP_ACCT_AMWKPL07.ac_start_date
  is '计息起期';
comment on column LN_LNP_ACCT_AMWKPL07.curr_pmt_num
  is '当前还款期数';
comment on column LN_LNP_ACCT_AMWKPL07.num_day_interval
  is '期内天数';
comment on column LN_LNP_ACCT_AMWKPL07.prin_pay_amt
  is '实还本金';
comment on column LN_LNP_ACCT_AMWKPL07.int_pay_amt
  is '实还利息';
comment on column LN_LNP_ACCT_AMWKPL07.rt_oldst_due_date
  is '最近还款日期';
comment on column LN_LNP_ACCT_AMWKPL07.penalty_prin_dq
  is '实还拖欠本金罚息';
comment on column LN_LNP_ACCT_AMWKPL07.service_fee
  is '手续费';
comment on column LN_LNP_ACCT_AMWKPL07.tr_tran_cd
  is '交易代码';
comment on column LN_LNP_ACCT_AMWKPL07.rt_loan_rate
  is '利率';
comment on column LN_LNP_ACCT_AMWKPL07.rt_acct_prod
  is '贷款种类';
comment on column LN_LNP_ACCT_AMWKPL07.curr_penalty_int
  is '当前罚金';
comment on column LN_LNP_ACCT_AMWKPL07.bal_of_int_rev
  is '应收利息余额';
comment on column LN_LNP_ACCT_AMWKPL07.bal_of_coll_int
  is '催收利息余额';
comment on column LN_LNP_ACCT_AMWKPL07.dq_principal
  is '拖欠本金余额';
comment on column LN_LNP_ACCT_AMWKPL07.ac_rate
  is '罚息率';
comment on column LN_LNP_ACCT_AMWKPL07.rt_ctl2_1
  is '币种代码';
comment on column LN_LNP_ACCT_AMWKPL07.reversal_flag
  is '冲正标志';
comment on column LN_LNP_ACCT_AMWKPL07.tr_tran_desc
  is '交易摘要';
comment on column LN_LNP_ACCT_AMWKPL07.tr_sys_date
  is '交易日期';
comment on column LN_LNP_ACCT_AMWKPL07.ba_due_not_pd
  is '应还本金';
comment on column LN_LNP_ACCT_AMWKPL07.ac_due_not_pd
  is '应还利息';
comment on column LN_LNP_ACCT_AMWKPL07.ff_due_not_pd
  is '应还违约金';
comment on column LN_LNP_ACCT_AMWKPL07.rt_tot_prin
  is '本金余额';
comment on column LN_LNP_ACCT_AMWKPL07.actual_alt01_pay
  is '实还利息复利';
comment on column LN_LNP_ACCT_AMWKPL07.actual_penalty_pay
  is '实还违约金';
comment on column LN_LNP_ACCT_AMWKPL07.rt_acct_stat
  is '结清标志';
comment on column LN_LNP_ACCT_AMWKPL07.zx_last_nor_prn_paid
  is '实还正常本金';
comment on column LN_LNP_ACCT_AMWKPL07.zx_last_past_due_paid
  is '实还逾期本金';
comment on column LN_LNP_ACCT_AMWKPL07.zx_last_nor_int_paid
  is '实还正常利息';
comment on column LN_LNP_ACCT_AMWKPL07.zx_last_past_int_paid
  is '实还逾期利息';
comment on column LN_LNP_ACCT_AMWKPL07.zx_last_fcp_paid
  is '实还逾期费用';

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
  is '个人贷款申请信息档表';
comment on column LN_LNP_CTRT_CBAPP.ecif_cust_no
  is 'ECIF客户编号 8';
comment on column LN_LNP_CTRT_CBAPP.custname
  is '客户姓名';
comment on column LN_LNP_CTRT_CBAPP.iscommac
  is '是否启用通贷帐户';
comment on column LN_LNP_CTRT_CBAPP.currsign
  is '币种';
comment on column LN_LNP_CTRT_CBAPP.loankind
  is '贷款种类';
comment on column LN_LNP_CTRT_CBAPP.loantype
  is '组合贷款标志';
comment on column LN_LNP_CTRT_CBAPP.firstorder
  is '组合贷款还款优先顺序';
comment on column LN_LNP_CTRT_CBAPP.payperc
  is '偿还比例';
comment on column LN_LNP_CTRT_CBAPP.fundsour
  is '资金来源';
comment on column LN_LNP_CTRT_CBAPP.loanuse
  is '贷款用途';
comment on column LN_LNP_CTRT_CBAPP.assukind
  is '担保方式';
comment on column LN_LNP_CTRT_CBAPP.contdate
  is '申请日期';
comment on column LN_LNP_CTRT_CBAPP.credcapi
  is '额度金额';
comment on column LN_LNP_CTRT_CBAPP.cycflag
  is '是否循环';
comment on column LN_LNP_CTRT_CBAPP.tcapi
  is '贷款金额';
comment on column LN_LNP_CTRT_CBAPP.thistcapi
  is '开户放款金额#';
comment on column LN_LNP_CTRT_CBAPP.termfreq
  is '期限频率';
comment on column LN_LNP_CTRT_CBAPP.tterm
  is '贷款期限';
comment on column LN_LNP_CTRT_CBAPP.retutype
  is '还款方式';
comment on column LN_LNP_CTRT_CBAPP.trothdueday
  is '还款日约定';
comment on column LN_LNP_CTRT_CBAPP.fixrateterm
  is '固定利率期数';
comment on column LN_LNP_CTRT_CBAPP.firstduedate
  is '最初到期日';
comment on column LN_LNP_CTRT_CBAPP.subsflag
  is '扣款类型';
comment on column LN_LNP_CTRT_CBAPP.isenousubs
  is '是否足额扣款';
comment on column LN_LNP_CTRT_CBAPP.firstpayamt
  is '首付款金额';
comment on column LN_LNP_CTRT_CBAPP.firstpayperc
  is '首付款比例';
comment on column LN_LNP_CTRT_CBAPP.corpid
  is '合作方编号';
comment on column LN_LNP_CTRT_CBAPP.projid
  is '项目编号';
comment on column LN_LNP_CTRT_CBAPP.corpappid
  is '合作项目额度编号';
comment on column LN_LNP_CTRT_CBAPP.releway
  is '放款渠道';
comment on column LN_LNP_CTRT_CBAPP.payeeacno
  is '收款人帐号';
comment on column LN_LNP_CTRT_CBAPP.payeeacname
  is '收款人帐户名称';
comment on column LN_LNP_CTRT_CBAPP.payeebankname
  is '收款人帐户开户行';
comment on column LN_LNP_CTRT_CBAPP.intecalckind
  is '计息计算类型';
comment on column LN_LNP_CTRT_CBAPP.intemeth
  is '计息方法';
comment on column LN_LNP_CTRT_CBAPP.intebase
  is '计息基础';
comment on column LN_LNP_CTRT_CBAPP.aheaddays
  is '帐单提前天数';
comment on column LN_LNP_CTRT_CBAPP.basicinterate
  is '贷款基准利率';
comment on column LN_LNP_CTRT_CBAPP.interate
  is '执行利率';
comment on column LN_LNP_CTRT_CBAPP.intefineratefloat
  is '利息罚息浮动比例(%)';
comment on column LN_LNP_CTRT_CBAPP.capifineratefloat
  is '本金罚息浮动比例(%)';
comment on column LN_LNP_CTRT_CBAPP.finerate
  is '逾期利息利率[万分之/日]';
comment on column LN_LNP_CTRT_CBAPP.capifinerate
  is '逾期本金利率[万分之/日]';
comment on column LN_LNP_CTRT_CBAPP.foulrate
  is '违约金收取比率';
comment on column LN_LNP_CTRT_CBAPP.emberatefloat
  is '挪用贷款罚息利率浮动比例(%)';
comment on column LN_LNP_CTRT_CBAPP.begindate
  is '开户日期';
comment on column LN_LNP_CTRT_CBAPP.enddate
  is '到期日期';
comment on column LN_LNP_CTRT_CBAPP.loanacno
  is '贷款帐号';
comment on column LN_LNP_CTRT_CBAPP.contkind
  is '借款合同格式';
comment on column LN_LNP_CTRT_CBAPP.contno
  is '借款合同编号';
comment on column LN_LNP_CTRT_CBAPP.apprname
  is '审批人姓名';
comment on column LN_LNP_CTRT_CBAPP.apprtabno
  is '审批表编号';
comment on column LN_LNP_CTRT_CBAPP.apprdate
  is '审批日期';
comment on column LN_LNP_CTRT_CBAPP.apprflag
  is '审批意见';
comment on column LN_LNP_CTRT_CBAPP.apprstate
  is '审批状态';
comment on column LN_LNP_CTRT_CBAPP.loanstate
  is '贷款状态';

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
  is '个人贷款客户额度管理档表';
comment on column LN_LNP_CUST_CBCREDCUST.acustcredid
  is 'ALS帐号';
comment on column LN_LNP_CUST_CBCREDCUST.custcredno
  is '序号';
comment on column LN_LNP_CUST_CBCREDCUST.ecif_cust_no
  is 'ECIF客户编号';
comment on column LN_LNP_CUST_CBCREDCUST.custname
  is '客户姓名';
comment on column LN_LNP_CUST_CBCREDCUST.currsign
  is '币种';
comment on column LN_LNP_CUST_CBCREDCUST.credamt
  is '信用额度';
comment on column LN_LNP_CUST_CBCREDCUST.assuamt
  is '保证额度';
comment on column LN_LNP_CUST_CBCREDCUST.impaamt
  is '质押额度';
comment on column LN_LNP_CUST_CBCREDCUST.mortamt
  is '抵押额度';
comment on column LN_LNP_CUST_CBCREDCUST.credtotalamt
  is '授信总额度';
comment on column LN_LNP_CUST_CBCREDCUST.begindate
  is '起始日期';
comment on column LN_LNP_CUST_CBCREDCUST.tterm
  is '期限';
comment on column LN_LNP_CUST_CBCREDCUST.enddate
  is '截止日期';
comment on column LN_LNP_CUST_CBCREDCUST.cycflag
  is '额度是否循环';
comment on column LN_LNP_CUST_CBCREDCUST.leftamt
  is '可用额度';
comment on column LN_LNP_CUST_CBCREDCUST.bankid
  is '经办行';
comment on column LN_LNP_CUST_CBCREDCUST.acbankid
  is '会计机构';
comment on column LN_LNP_CUST_CBCREDCUST.audiname
  is '审核人姓名';
comment on column LN_LNP_CUST_CBCREDCUST.apprtabno
  is '审批表编号';
comment on column LN_LNP_CUST_CBCREDCUST.apprflag
  is '审批状态';
comment on column LN_LNP_CUST_CBCREDCUST.operid
  is '经办人';
comment on column LN_LNP_CUST_CBCREDCUST.apprname
  is '审批人姓名';
comment on column LN_LNP_CUST_CBCREDCUST.apprdate
  is '审批日期';
comment on column LN_LNP_CUST_CBCREDCUST.credstate
  is '客户额度状态';

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
values ('GD000001             ', '孙成红                                  ', '1', 'RUR', '0211 ', '1', '1', .2, '03', 'FP01', 'B06 ', to_date('01-05-2020', 'dd-mm-yyyy'), 1000000, '0', 800000, 500000, 'M', 60, '201', 'Y', 24, to_date('01-06-2020', 'dd-mm-yyyy'), 'A', '1', 240000, .3, '6256                ', '6574283964          ', '2423573                 ', 'DS', '6423805287289052              ', '孙成红                                  ', '010                                                                             ', '1', 'B01', 'M  ', 5, 4.75, 4.6, 21, 30, 35, 35, .25, 35, to_date('20-05-2020', 'dd-mm-yyyy'), to_date('20-05-2025', 'dd-mm-yyyy'), 'LN000001                      ', 'A1', 'Y4728G4W5                 ', '王冉                                    ', '4252526                       ', to_date('22-05-2020', 'dd-mm-yyyy'), '1', '1 ', '1');
insert into LN_LNP_CTRT_CBAPP (ecif_cust_no, custname, iscommac, currsign, loankind, loantype, firstorder, payperc, fundsour, loanuse, assukind, contdate, credcapi, cycflag, tcapi, thistcapi, termfreq, tterm, retutype, trothdueday, fixrateterm, firstduedate, subsflag, isenousubs, firstpayamt, firstpayperc, corpid, projid, corpappid, releway, payeeacno, payeeacname, payeebankname, intecalckind, intemeth, intebase, aheaddays, basicinterate, interate, intefineratefloat, capifineratefloat, finerate, capifinerate, foulrate, emberatefloat, begindate, enddate, loanacno, contkind, contno, apprname, apprtabno, apprdate, apprflag, apprstate, loanstate)
values ('GD000001             ', '孙成红                                  ', '1', 'RUR', '021  ', '0', '1', .25, '03', 'FP03', 'B02 ', to_date('13-05-2020', 'dd-mm-yyyy'), 800000, '0', 500000, 400000, 'M', 48, '201', 'Y', 12, to_date('13-06-2020', 'dd-mm-yyyy'), 'D', '1', 100000, .2, '563256              ', '3563563572          ', '626537                  ', 'GF', '3563626264234526              ', '孙成红                                  ', '010                                                                             ', '2', 'B01', 'M  ', 6, 4.75, 4.6, 21, 30, 35, 35, .25, 35, to_date('21-05-2020', 'dd-mm-yyyy'), to_date('21-05-2024', 'dd-mm-yyyy'), 'LN000002                      ', 'A1', 'GE654624T                 ', '刘兴亮                                  ', '25462                         ', to_date('23-05-2020', 'dd-mm-yyyy'), '1', '1 ', '1');
insert into LN_LNP_CTRT_CBAPP (ecif_cust_no, custname, iscommac, currsign, loankind, loantype, firstorder, payperc, fundsour, loanuse, assukind, contdate, credcapi, cycflag, tcapi, thistcapi, termfreq, tterm, retutype, trothdueday, fixrateterm, firstduedate, subsflag, isenousubs, firstpayamt, firstpayperc, corpid, projid, corpappid, releway, payeeacno, payeeacname, payeebankname, intecalckind, intemeth, intebase, aheaddays, basicinterate, interate, intefineratefloat, capifineratefloat, finerate, capifinerate, foulrate, emberatefloat, begindate, enddate, loanacno, contkind, contno, apprname, apprtabno, apprdate, apprflag, apprstate, loanstate)
values ('GD000005             ', '杨福林                                  ', '0', 'CNY', '0211 ', '1', '2', .2, '03', 'FP01', 'A01 ', to_date('11-06-2020', 'dd-mm-yyyy'), 2000000, '0', 1000000, 800000, 'M', 60, '201', 'Y', 36, to_date('11-07-2020', 'dd-mm-yyyy'), 'F', '1', 300000, .3, '25632               ', '54246254            ', '3463637                 ', 'GF', '5622452546246526              ', '杨福林                                  ', '020                                                                             ', '2', 'B01', 'M  ', 4, 4.75, 4.6, 21, 30, 30, 30, .25, 30, to_date('12-06-2020', 'dd-mm-yyyy'), to_date('12-06-2025', 'dd-mm-yyyy'), 'LN000003                      ', 'A2', 'GW4T25654                 ', '叶茂中                                  ', '264262                        ', to_date('15-06-2020', 'dd-mm-yyyy'), '1', '1 ', '1');
insert into LN_LNP_CTRT_CBAPP (ecif_cust_no, custname, iscommac, currsign, loankind, loantype, firstorder, payperc, fundsour, loanuse, assukind, contdate, credcapi, cycflag, tcapi, thistcapi, termfreq, tterm, retutype, trothdueday, fixrateterm, firstduedate, subsflag, isenousubs, firstpayamt, firstpayperc, corpid, projid, corpappid, releway, payeeacno, payeeacname, payeebankname, intecalckind, intemeth, intebase, aheaddays, basicinterate, interate, intefineratefloat, capifineratefloat, finerate, capifinerate, foulrate, emberatefloat, begindate, enddate, loanacno, contkind, contno, apprname, apprtabno, apprdate, apprflag, apprstate, loanstate)
values ('GD000007             ', '王云飞                                  ', '0', 'GBP', '022  ', '0', '1', .17, '04', 'FP03', 'B06 ', to_date('02-07-2020', 'dd-mm-yyyy'), 2500000, '0', 1500000, 1000000, 'M', 72, '101', 'Y', 36, to_date('02-08-2020', 'dd-mm-yyyy'), 'G', '0', 500000, .34, '02026               ', '2654562             ', '226357                  ', 'BG', '2452523462625752              ', '付小芳                                  ', '0532                                                                            ', '2', 'A01', 'M  ', 7, 4.9, 5, 21, 30, 35, 35, .25, 20, to_date('08-06-2020', 'dd-mm-yyyy'), to_date('08-06-2026', 'dd-mm-yyyy'), 'LN000004                      ', 'A2', 'WT4363462                 ', '刘孝泉                                  ', '836753                        ', to_date('10-06-2020', 'dd-mm-yyyy'), '1', '1 ', '1');
insert into LN_LNP_CTRT_CBAPP (ecif_cust_no, custname, iscommac, currsign, loankind, loantype, firstorder, payperc, fundsour, loanuse, assukind, contdate, credcapi, cycflag, tcapi, thistcapi, termfreq, tterm, retutype, trothdueday, fixrateterm, firstduedate, subsflag, isenousubs, firstpayamt, firstpayperc, corpid, projid, corpappid, releway, payeeacno, payeeacname, payeebankname, intecalckind, intemeth, intebase, aheaddays, basicinterate, interate, intefineratefloat, capifineratefloat, finerate, capifinerate, foulrate, emberatefloat, begindate, enddate, loanacno, contkind, contno, apprname, apprtabno, apprdate, apprflag, apprstate, loanstate)
values ('GD000008             ', '孙立平                                  ', '1', 'CNY', '0211 ', '1', '2', .24, '03', 'FP01', 'A02 ', to_date('23-01-2021', 'dd-mm-yyyy'), 1000000, '1', 500000, 400000, 'M', 50, '202', 'Y', 24, to_date('23-02-2021', 'dd-mm-yyyy'), 'Y', '1', 200000, .4, '52063               ', '537467648           ', '245657678               ', 'BH', '2452624624365377              ', '孙立平                                  ', '0532                                                                            ', '1', 'B02', 'M  ', 6, 4.75, 4.6, 21, 30, 25, 25, .2, 25, to_date('03-01-2021', 'dd-mm-yyyy'), to_date('03-03-2025', 'dd-mm-yyyy'), 'LN000005                      ', 'A1', '4352TGT4WT42              ', '池向东                                  ', '3573736                       ', to_date('06-01-2021', 'dd-mm-yyyy'), '1', '1 ', '1');
insert into LN_LNP_CTRT_CBAPP (ecif_cust_no, custname, iscommac, currsign, loankind, loantype, firstorder, payperc, fundsour, loanuse, assukind, contdate, credcapi, cycflag, tcapi, thistcapi, termfreq, tterm, retutype, trothdueday, fixrateterm, firstduedate, subsflag, isenousubs, firstpayamt, firstpayperc, corpid, projid, corpappid, releway, payeeacno, payeeacname, payeebankname, intecalckind, intemeth, intebase, aheaddays, basicinterate, interate, intefineratefloat, capifineratefloat, finerate, capifinerate, foulrate, emberatefloat, begindate, enddate, loanacno, contkind, contno, apprname, apprtabno, apprdate, apprflag, apprstate, loanstate)
values ('GD000006             ', '孙建国                                  ', '0', 'CNY', '0211 ', '1', '1', .4, '03', 'FP01', 'C10 ', to_date('01-12-2020', 'dd-mm-yyyy'), 900000, '0', 400000, 300000, 'M', 30, '201', 'Y', 24, to_date('01-01-2021', 'dd-mm-yyyy'), 'H', '1', 150000, .3, '632220              ', '67857859950         ', '626262                  ', 'BG', '6745784845908654              ', '孙建国                                  ', '0531                                                                            ', '1', 'B01', 'M  ', 6, 4.75, 4.6, 21, 30, 20, 20, .25, 30, to_date('10-11-2020', 'dd-mm-yyyy'), to_date('10-05-2022', 'dd-mm-yyyy'), 'LN000006                      ', 'A1', 'T3Q245                    ', '王正华                                  ', '35673738                      ', to_date('13-11-2020', 'dd-mm-yyyy'), '1', '1 ', '1');
insert into LN_LNP_CTRT_CBAPP (ecif_cust_no, custname, iscommac, currsign, loankind, loantype, firstorder, payperc, fundsour, loanuse, assukind, contdate, credcapi, cycflag, tcapi, thistcapi, termfreq, tterm, retutype, trothdueday, fixrateterm, firstduedate, subsflag, isenousubs, firstpayamt, firstpayperc, corpid, projid, corpappid, releway, payeeacno, payeeacname, payeebankname, intecalckind, intemeth, intebase, aheaddays, basicinterate, interate, intefineratefloat, capifineratefloat, finerate, capifinerate, foulrate, emberatefloat, begindate, enddate, loanacno, contkind, contno, apprname, apprtabno, apprdate, apprflag, apprstate, loanstate)
values ('DD000001             ', '刘嘉伦                                  ', '0', 'JPY', '02   ', '0', '2', .24, '04', 'FP03', 'A05 ', to_date('09-07-2020', 'dd-mm-yyyy'), 1000000, '0', 500000, 400000, 'M', 50, '201', 'Y', 24, to_date('09-08-2020', 'dd-mm-yyyy'), 'A', '0', 100000, .2, '6245265             ', '4895869680          ', '24653475                ', 'BG', '4764737275763578              ', '刘嘉伦                                  ', '010                                                                             ', '1', 'B01', 'M  ', 7, 4.75, 4.6, 21, 30, 30, 30, .2, 30, to_date('21-06-2020', 'dd-mm-yyyy'), to_date('21-08-2024', 'dd-mm-yyyy'), 'LN000007                      ', 'A2', 'T32454326                 ', '刘石                                    ', '6774684                       ', to_date('25-06-2020', 'dd-mm-yyyy'), '1', '1 ', '1');
insert into LN_LNP_CTRT_CBAPP (ecif_cust_no, custname, iscommac, currsign, loankind, loantype, firstorder, payperc, fundsour, loanuse, assukind, contdate, credcapi, cycflag, tcapi, thistcapi, termfreq, tterm, retutype, trothdueday, fixrateterm, firstduedate, subsflag, isenousubs, firstpayamt, firstpayperc, corpid, projid, corpappid, releway, payeeacno, payeeacname, payeebankname, intecalckind, intemeth, intebase, aheaddays, basicinterate, interate, intefineratefloat, capifineratefloat, finerate, capifinerate, foulrate, emberatefloat, begindate, enddate, loanacno, contkind, contno, apprname, apprtabno, apprdate, apprflag, apprstate, loanstate)
values ('DD000002             ', '钱前                                    ', '1', 'CNY', '0212 ', '0', '1', .34, '03', 'FP02', 'A01 ', to_date('16-07-2020', 'dd-mm-yyyy'), 7500000, '1', 400000, 300000, 'M', 36, '101', 'Y', 36, to_date('16-08-2020', 'dd-mm-yyyy'), 'A', '1', 100000, .25, '62631               ', '59595890            ', '2426653                 ', 'FD', '3768789467326573              ', '李子安                                  ', '0532                                                                            ', '2', 'A01', 'M  ', 5, 4.75, 4.6, 21, 30, 30, 30, .25, 35, to_date('01-07-2020', 'dd-mm-yyyy'), to_date('01-07-2023', 'dd-mm-yyyy'), 'LN000008                      ', 'A1', 'TTWERT46T43               ', '沈青                                    ', '48468463                      ', to_date('05-07-2020', 'dd-mm-yyyy'), '1', '1 ', '1');
insert into LN_LNP_CTRT_CBAPP (ecif_cust_no, custname, iscommac, currsign, loankind, loantype, firstorder, payperc, fundsour, loanuse, assukind, contdate, credcapi, cycflag, tcapi, thistcapi, termfreq, tterm, retutype, trothdueday, fixrateterm, firstduedate, subsflag, isenousubs, firstpayamt, firstpayperc, corpid, projid, corpappid, releway, payeeacno, payeeacname, payeebankname, intecalckind, intemeth, intebase, aheaddays, basicinterate, interate, intefineratefloat, capifineratefloat, finerate, capifinerate, foulrate, emberatefloat, begindate, enddate, loanacno, contkind, contno, apprname, apprtabno, apprdate, apprflag, apprstate, loanstate)
values ('DD000003             ', '杨辉                                    ', '0', 'CNY', '0211 ', '1', '1', .5, '03', 'FP01', 'A13 ', to_date('21-09-2020', 'dd-mm-yyyy'), 800000, '0', 500000, 400000, 'M', 24, '201', 'Y', 0, to_date('21-10-2020', 'dd-mm-yyyy'), 'F', '1', 300000, .6, '7852962             ', '35637376            ', '376362                  ', 'VF', '3563526257365868              ', '杨辉                                    ', '0531                                                                            ', '1', 'B01', 'M  ', 4, 4.75, 4.6, 21, 30, 35, 35, .2, 35, to_date('05-08-2020', 'dd-mm-yyyy'), to_date('05-08-2022', 'dd-mm-yyyy'), 'LN000009                      ', 'A1', 'GW4Y26                    ', '张志勇                                  ', '357378                        ', to_date('08-08-2020', 'dd-mm-yyyy'), '1', '1 ', '1');
insert into LN_LNP_CTRT_CBAPP (ecif_cust_no, custname, iscommac, currsign, loankind, loantype, firstorder, payperc, fundsour, loanuse, assukind, contdate, credcapi, cycflag, tcapi, thistcapi, termfreq, tterm, retutype, trothdueday, fixrateterm, firstduedate, subsflag, isenousubs, firstpayamt, firstpayperc, corpid, projid, corpappid, releway, payeeacno, payeeacname, payeebankname, intecalckind, intemeth, intebase, aheaddays, basicinterate, interate, intefineratefloat, capifineratefloat, finerate, capifinerate, foulrate, emberatefloat, begindate, enddate, loanacno, contkind, contno, apprname, apprtabno, apprdate, apprflag, apprstate, loanstate)
values ('DD000003             ', '杨辉                                    ', '0', 'CNY', '0212 ', '0', '1', .34, '03', 'FP02', 'B01 ', to_date('11-10-2020', 'dd-mm-yyyy'), 600000, '0', 400000, 300000, 'M', 36, '201', 'Y', 12, to_date('11-11-2020', 'dd-mm-yyyy'), 'F', '1', 100000, .25, '45285               ', '3653738749          ', '5436542                 ', 'DS', '2527356746484673              ', '杨辉                                    ', '0531                                                                            ', '1', 'B01', 'M  ', 5, 4.75, 4.6, 21, 30, 25, 25, .25, 25, to_date('02-10-2020', 'dd-mm-yyyy'), to_date('02-10-2023', 'dd-mm-yyyy'), 'LN000010                      ', 'A2', 'T23462TG2                 ', '程朝晖                                  ', '3673838                       ', to_date('06-10-2020', 'dd-mm-yyyy'), '1', '1 ', '1');
commit;
prompt 10 records loaded
prompt Loading LN_LNP_CUST_CBCREDCUST...
insert into LN_LNP_CUST_CBCREDCUST (acustcredid, custcredno, ecif_cust_no, custname, currsign, credamt, assuamt, impaamt, mortamt, credtotalamt, begindate, tterm, enddate, cycflag, leftamt, bankid, acbankid, audiname, apprtabno, apprflag, operid, apprname, apprdate, credstate)
values ('T54WT4T4WT                ', 25, 'GD000001             ', '孙成红                                  ', 'RUR', 1000000, 800000, 600000, 500000, 1500000, to_date('20-05-2020', 'dd-mm-yyyy'), 60, to_date('20-05-2025', 'dd-mm-yyyy'), '0', 800000, '010      ', 'FSEGW    ', '赵伟                                    ', 'W4YT54WG45W                   ', '1', '王宪青    ', '王金国                                  ', to_date('20-04-2020', 'dd-mm-yyyy'), '1');
insert into LN_LNP_CUST_CBCREDCUST (acustcredid, custcredno, ecif_cust_no, custname, currsign, credamt, assuamt, impaamt, mortamt, credtotalamt, begindate, tterm, enddate, cycflag, leftamt, bankid, acbankid, audiname, apprtabno, apprflag, operid, apprname, apprdate, credstate)
values ('G54WT54T                  ', 36, 'GD000001             ', '孙成红                                  ', 'RUR', 800000, 500000, 400000, 300000, 850000, to_date('21-05-2020', 'dd-mm-yyyy'), 48, to_date('21-05-2024', 'dd-mm-yyyy'), '0', 500000, '010      ', 'RTHW     ', '陈晓年                                  ', 'G45WGW435                     ', '1', '谢正华    ', '李扬                                    ', to_date('21-04-2020', 'dd-mm-yyyy'), '1');
insert into LN_LNP_CUST_CBCREDCUST (acustcredid, custcredno, ecif_cust_no, custname, currsign, credamt, assuamt, impaamt, mortamt, credtotalamt, begindate, tterm, enddate, cycflag, leftamt, bankid, acbankid, audiname, apprtabno, apprflag, operid, apprname, apprdate, credstate)
values ('G45W5T4TG                 ', 14, 'GD000005             ', '杨福林                                  ', 'CNY', 2000000, 1000000, 500000, 300000, 2500000, to_date('12-06-2020', 'dd-mm-yyyy'), 60, to_date('12-06-2025', 'dd-mm-yyyy'), '0', 1000000, '020      ', 'BRTHRW   ', '陈平                                    ', 'G45Y54YGRTG                   ', '1', '张艳      ', '王岚                                    ', to_date('12-05-2020', 'dd-mm-yyyy'), '1');
insert into LN_LNP_CUST_CBCREDCUST (acustcredid, custcredno, ecif_cust_no, custname, currsign, credamt, assuamt, impaamt, mortamt, credtotalamt, begindate, tterm, enddate, cycflag, leftamt, bankid, acbankid, audiname, apprtabno, apprflag, operid, apprname, apprdate, credstate)
values ('EWERW3TT4                 ', 28, 'GD000007             ', '王云飞                                  ', 'GBP', 2500000, 1500000, 600000, 400000, 3000000, to_date('08-06-2020', 'dd-mm-yyyy'), 72, to_date('08-06-2026', 'dd-mm-yyyy'), '0', 1500000, '0532     ', 'HWTH     ', '朱宁                                    ', 'H5EYGH365YU                   ', '1', '孔祥      ', '姜守军                                  ', to_date('08-05-2020', 'dd-mm-yyyy'), '1');
insert into LN_LNP_CUST_CBCREDCUST (acustcredid, custcredno, ecif_cust_no, custname, currsign, credamt, assuamt, impaamt, mortamt, credtotalamt, begindate, tterm, enddate, cycflag, leftamt, bankid, acbankid, audiname, apprtabno, apprflag, operid, apprname, apprdate, credstate)
values ('4WTGGT45WY5               ', 39, 'GD000008             ', '孙立平                                  ', 'CNY', 1000000, 500000, 200000, 100000, 1500000, to_date('03-01-2021', 'dd-mm-yyyy'), 50, to_date('03-03-2025', 'dd-mm-yyyy'), '1', 500000, '0532     ', 'RETHW    ', '刘正山                                  ', '63YH54HY45Y                   ', '1', '潘莹丽    ', '王俊                                    ', to_date('03-02-2021', 'dd-mm-yyyy'), '1');
insert into LN_LNP_CUST_CBCREDCUST (acustcredid, custcredno, ecif_cust_no, custname, currsign, credamt, assuamt, impaamt, mortamt, credtotalamt, begindate, tterm, enddate, cycflag, leftamt, bankid, acbankid, audiname, apprtabno, apprflag, operid, apprname, apprdate, credstate)
values ('RWT45T43THG               ', 54, 'GD000006             ', '孙建国                                  ', 'CNY', 900000, 400000, 100000, 200000, 1000000, to_date('10-11-2020', 'dd-mm-yyyy'), 30, to_date('10-05-2022', 'dd-mm-yyyy'), '1', 400000, '0531     ', 'HTWH     ', '汪德培                                  ', 'V45EY5HHGR                    ', '1', '谢丹阳    ', '于果                                    ', to_date('10-10-2020', 'dd-mm-yyyy'), '1');
insert into LN_LNP_CUST_CBCREDCUST (acustcredid, custcredno, ecif_cust_no, custname, currsign, credamt, assuamt, impaamt, mortamt, credtotalamt, begindate, tterm, enddate, cycflag, leftamt, bankid, acbankid, audiname, apprtabno, apprflag, operid, apprname, apprdate, credstate)
values ('GWRETGW34T                ', 59, 'DD000001             ', '刘嘉伦                                  ', 'JPY', 1000000, 500000, 200000, 200000, 1500000, to_date('21-06-2020', 'dd-mm-yyyy'), 50, to_date('21-08-2024', 'dd-mm-yyyy'), '1', 500000, '010      ', 'RTEHER   ', '周天勇                                  ', 'TE4YY53Y5H                    ', '1', '周斌      ', '于国梁                                  ', to_date('21-05-2020', 'dd-mm-yyyy'), '3');
insert into LN_LNP_CUST_CBCREDCUST (acustcredid, custcredno, ecif_cust_no, custname, currsign, credamt, assuamt, impaamt, mortamt, credtotalamt, begindate, tterm, enddate, cycflag, leftamt, bankid, acbankid, audiname, apprtabno, apprflag, operid, apprname, apprdate, credstate)
values ('G4WTT34R3                 ', 56, 'DD000002             ', '钱前                                    ', 'CNY', 7500000, 400000, 200000, 200000, 8000000, to_date('01-07-2020', 'dd-mm-yyyy'), 36, to_date('01-07-2023', 'dd-mm-yyyy'), '0', 400000, '0532     ', 'BTREHE   ', '陶冬                                    ', 'GE5Y34H5                      ', '1', '罗建法    ', '朱永胜                                  ', to_date('01-06-2020', 'dd-mm-yyyy'), '3');
insert into LN_LNP_CUST_CBCREDCUST (acustcredid, custcredno, ecif_cust_no, custname, currsign, credamt, assuamt, impaamt, mortamt, credtotalamt, begindate, tterm, enddate, cycflag, leftamt, bankid, acbankid, audiname, apprtabno, apprflag, operid, apprname, apprdate, credstate)
values ('FR4WT35Y45Y               ', 21, 'DD000003             ', '杨辉                                    ', 'CNY', 800000, 500000, 100000, 100000, 850000, to_date('05-08-2020', 'dd-mm-yyyy'), 24, to_date('05-08-2022', 'dd-mm-yyyy'), '0', 500000, '0531     ', 'HYTRE    ', '薛兆丰                                  ', 'G34Y5654GTE                   ', '1', '张志伟    ', '王彩玲                                  ', to_date('05-07-2020', 'dd-mm-yyyy'), '1');
insert into LN_LNP_CUST_CBCREDCUST (acustcredid, custcredno, ecif_cust_no, custname, currsign, credamt, assuamt, impaamt, mortamt, credtotalamt, begindate, tterm, enddate, cycflag, leftamt, bankid, acbankid, audiname, apprtabno, apprflag, operid, apprname, apprdate, credstate)
values ('GF4W5523T54               ', 33, 'DD000003             ', '杨辉                                    ', 'CNY', 600000, 400000, 300000, 250000, 650000, to_date('02-10-2020', 'dd-mm-yyyy'), 36, to_date('02-10-2023', 'dd-mm-yyyy'), '0', 400000, '0531     ', 'TREHR    ', '杨在评                                  ', 'G346U3HH45                    ', '1', '李罗利    ', '吴爱琴                                  ', to_date('02-09-2020', 'dd-mm-yyyy'), '1');
commit;
prompt 10 records loaded
prompt Loading LN_MABIAO...
insert into LN_MABIAO (code, name, mazhi)
values ('064', '股票及其他股权回购/返售', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('065', '黄金回购/返售', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('07', '黄金、证券借贷', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('071', '债券借贷', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('072', '票据借贷', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('073', '股票及其他股权借贷', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('074', '黄金借贷', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('075', '其他资产借贷', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('08', '贸易融资', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('081', '国际贸易融资', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('082', '国内贸易融资', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('09', '融资租赁', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('10', '打包信贷受让资产', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('11', '转贷款', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('12', '并购贷款', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('99', '其他贷款', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('01', '自营资金', '051');
insert into LN_MABIAO (code, name, mazhi)
values ('02', '委托基金', '051');
insert into LN_MABIAO (code, name, mazhi)
values ('03', '银行卡', '051');
insert into LN_MABIAO (code, name, mazhi)
values ('04', '个人结算户 ', '051');
insert into LN_MABIAO (code, name, mazhi)
values ('05', '对公活期户 ', '051');
insert into LN_MABIAO (code, name, mazhi)
values ('06', '代销账 ', '051');
insert into LN_MABIAO (code, name, mazhi)
values ('07', '应解汇款', '051');
insert into LN_MABIAO (code, name, mazhi)
values ('08', '转贷款', '051');
insert into LN_MABIAO (code, name, mazhi)
values ('09', '其他', '051');
insert into LN_MABIAO (code, name, mazhi)
values ('FP01', '商业用房', '054');
insert into LN_MABIAO (code, name, mazhi)
values ('FP02', '商用车', '054');
insert into LN_MABIAO (code, name, mazhi)
values ('FP03', '其他', '054');
insert into LN_MABIAO (code, name, mazhi)
values ('0', '正常', 'ODS0039');
insert into LN_MABIAO (code, name, mazhi)
values ('1', '冲正', 'ODS0039');
insert into LN_MABIAO (code, name, mazhi)
values ('2', '被冲正', 'ODS0039');
insert into LN_MABIAO (code, name, mazhi)
values ('X', '未提供', 'ODS0039');
insert into LN_MABIAO (code, name, mazhi)
values ('0', '未知的性别', 'DEM0100005');
insert into LN_MABIAO (code, name, mazhi)
values ('1', '男', 'DEM0100005');
insert into LN_MABIAO (code, name, mazhi)
values ('2', '女', 'DEM0100005');
insert into LN_MABIAO (code, name, mazhi)
values ('5', '女性改（变）为男性', 'DEM0100005');
insert into LN_MABIAO (code, name, mazhi)
values ('6', '男性改（变）为女性', 'DEM0100005');
insert into LN_MABIAO (code, name, mazhi)
values ('9', '未说明的性别', 'DEM0100005');
insert into LN_MABIAO (code, name, mazhi)
values ('10', '未婚', 'DEM0100003');
insert into LN_MABIAO (code, name, mazhi)
values ('19', '已婚', 'DEM0100003');
insert into LN_MABIAO (code, name, mazhi)
values ('20', '已婚有子女', 'DEM0100003');
insert into LN_MABIAO (code, name, mazhi)
values ('21', '已婚无子女', 'DEM0100003');
insert into LN_MABIAO (code, name, mazhi)
values ('22', '初婚', 'DEM0100003');
insert into LN_MABIAO (code, name, mazhi)
values ('23', '再婚', 'DEM0100003');
insert into LN_MABIAO (code, name, mazhi)
values ('24', '复婚', 'DEM0100003');
insert into LN_MABIAO (code, name, mazhi)
values ('30', '丧偶', 'DEM0100003');
insert into LN_MABIAO (code, name, mazhi)
values ('39', '离婚', 'DEM0100003');
insert into LN_MABIAO (code, name, mazhi)
values ('40', '离婚有子女', 'DEM0100003');
insert into LN_MABIAO (code, name, mazhi)
values ('41', '离婚无子女', 'DEM0100003');
insert into LN_MABIAO (code, name, mazhi)
values ('90', '未说明的婚姻状况', 'DEM0100003');
insert into LN_MABIAO (code, name, mazhi)
values ('01', '汉族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('02', '蒙古族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('03', '回族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('04', '藏族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('05', '维吾尔族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('06', '苗族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('07', '彝族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('08', '壮族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('09', '布依族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('10', '朝鲜族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('11', '满族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('12', '侗族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('13', '瑶族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('14', '白族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('15', '土家族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('16', '哈尼族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('17', '哈萨克族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('18', '傣族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('19', '黎族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('20', '傈僳族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('21', '佤族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('22', '畲族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('23', '高山族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('24', '拉祜族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('25', '水族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('26', '东乡族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('27', '纳西族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('28', '景颇族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('29', '柯尔克孜族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('30', '土族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('31', '达斡尔族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('32', '仫佬族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('33', '羌族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('34', '布朗族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('35', '撒拉族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('36', '毛难族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('37', '仡佬族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('38', '锡伯族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('39', '阿昌族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('40', '普米族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('41', '塔吉克族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('42', '怒族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('43', '乌孜别克族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('44', '俄罗斯族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('45', '鄂温克族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('46', '崩龙族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('47', '保安族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('48', '裕固族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('49', '京族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('50', '塔塔尔族 ', 'DEM0100001');
commit;
prompt 100 records committed...
insert into LN_MABIAO (code, name, mazhi)
values ('51', '独龙族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('52', '鄂伦春族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('53', '赫哲族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('54', '门巴族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('55', '珞巴族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('56', '基诺族 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('57', '其他', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('97', '未提供', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('98', '外国血统 ', 'DEM0100001');
insert into LN_MABIAO (code, name, mazhi)
values ('01', '博士', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('02', '博士后', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('10', '研究生', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('11', '研究生毕业', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('19', '研究生肄业', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('20', '大学本科(简称“大学”)', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('21', '大学毕业', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('28', '相当大学毕业', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('29', '大学肄业', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('30', '大学专科和专科学校(简称“大专”)', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('31', '专科毕业', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('38', '相当专科毕业', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('39', '专科肄业', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('40', '中等专业学校或中等技术学校', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('41', '中专毕业', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('42', '中技毕业', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('48', '相当中专或中技毕业', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('49', '中专或中技肄业', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('50', '技术学校', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('51', '技工学校毕业', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('59', '技工学校肄业', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('60', '高中', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('61', '高中毕业', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('62', '职业高中毕业', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('63', '农业高中毕业', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('68', '相当高中毕业', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('69', '高中肄业', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('70', '初中', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('71', '初中毕业', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('72', '职业初中毕业', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('73', '农业初中毕业', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('78', '相当初中毕业', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('79', '初中肄业', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('80', '小学', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('81', '小学毕业', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('88', '相当小学毕业', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('89', '小学肄业', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('90', '文盲或半文盲', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('99', '未知', 'DEM0100007');
insert into LN_MABIAO (code, name, mazhi)
values ('01', '国家机关、党群组织、企业、事业单位负责人', 'PAR0400044');
insert into LN_MABIAO (code, name, mazhi)
values ('02', '办事人员和有关人员', 'PAR0400044');
insert into LN_MABIAO (code, name, mazhi)
values ('03', '专业技术人员', 'PAR0400044');
insert into LN_MABIAO (code, name, mazhi)
values ('04', '商业、服务业人员', 'PAR0400044');
insert into LN_MABIAO (code, name, mazhi)
values ('05', '农、林、牧、渔、水利业生产人员', 'PAR0400044');
insert into LN_MABIAO (code, name, mazhi)
values ('06', '生产、运输设备操作人员及有关人员', 'PAR0400044');
insert into LN_MABIAO (code, name, mazhi)
values ('07', '军人', 'PAR0400044');
insert into LN_MABIAO (code, name, mazhi)
values ('08', '不便分类的其他从业人员', 'PAR0400044');
insert into LN_MABIAO (code, name, mazhi)
values ('99', '未提供', 'PAR0400044');
insert into LN_MABIAO (code, name, mazhi)
values ('09', '计算机电子工程', 'PAR0400044');
insert into LN_MABIAO (code, name, mazhi)
values ('10', '翻译', 'PAR0400044');
insert into LN_MABIAO (code, name, mazhi)
values ('11', '设计人员', 'PAR0400044');
insert into LN_MABIAO (code, name, mazhi)
values ('12', '务农', 'PAR0400044');
insert into LN_MABIAO (code, name, mazhi)
values ('13', '私营业主', 'PAR0400044');
insert into LN_MABIAO (code, name, mazhi)
values ('14', '工人', 'PAR0400044');
insert into LN_MABIAO (code, name, mazhi)
values ('15', '教师', 'PAR0400044');
insert into LN_MABIAO (code, name, mazhi)
values ('16', '医生', 'PAR0400044');
insert into LN_MABIAO (code, name, mazhi)
values ('17', '公务员', 'PAR0400044');
insert into LN_MABIAO (code, name, mazhi)
values ('18', '技术工人', 'PAR0400044');
insert into LN_MABIAO (code, name, mazhi)
values ('19', '大学生村官', 'PAR0400044');
insert into LN_MABIAO (code, name, mazhi)
values ('20', '其他', 'PAR0400044');
insert into LN_MABIAO (code, name, mazhi)
values ('A', '农、林、牧、渔业', '100084');
insert into LN_MABIAO (code, name, mazhi)
values ('B', '采矿业', '100084');
insert into LN_MABIAO (code, name, mazhi)
values ('C', '制造业', '100084');
insert into LN_MABIAO (code, name, mazhi)
values ('D', '电力、热力、燃气及水生产和供应业', '100084');
insert into LN_MABIAO (code, name, mazhi)
values ('E', '建筑业', '100084');
insert into LN_MABIAO (code, name, mazhi)
values ('F', '批发和零售业', '100084');
insert into LN_MABIAO (code, name, mazhi)
values ('G', '交通运输、仓储和邮政业', '100084');
insert into LN_MABIAO (code, name, mazhi)
values ('H', '住宿和餐饮业', '100084');
insert into LN_MABIAO (code, name, mazhi)
values ('I', '信息传输、软件和信息技术服务业', '100084');
insert into LN_MABIAO (code, name, mazhi)
values ('J', '金融业', '100084');
insert into LN_MABIAO (code, name, mazhi)
values ('K', '房地产业', '100084');
insert into LN_MABIAO (code, name, mazhi)
values ('L', '租赁和商务服务业', '100084');
insert into LN_MABIAO (code, name, mazhi)
values ('M', '科学研究和技术服务业', '100084');
insert into LN_MABIAO (code, name, mazhi)
values ('N', '水利、环境和公共设施管理业', '100084');
insert into LN_MABIAO (code, name, mazhi)
values ('O', '居民服务、修理和其他服务业', '100084');
insert into LN_MABIAO (code, name, mazhi)
values ('P', '教育', '100084');
insert into LN_MABIAO (code, name, mazhi)
values ('Q', '卫生和社会工作', '100084');
insert into LN_MABIAO (code, name, mazhi)
values ('R', '文化、体育和娱乐业', '100084');
insert into LN_MABIAO (code, name, mazhi)
values ('S', '公共管理、社会保障和社会组织', '100084');
insert into LN_MABIAO (code, name, mazhi)
values ('T', '国际组织', '100084');
insert into LN_MABIAO (code, name, mazhi)
values ('Z', '未知', '100084');
insert into LN_MABIAO (code, name, mazhi)
values ('X', '未提供', '100084');
insert into LN_MABIAO (code, name, mazhi)
values ('0', '身份证', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('01', '第一代身份证', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('02', '第二代身份证', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('1', '户口簿', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('2', '护照', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('21', '中国护照', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('22', '外国护照', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('3', '军官证', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('31', '军官证', 'PAA0100006');
commit;
prompt 200 records committed...
insert into LN_MABIAO (code, name, mazhi)
values ('32', '军官退休证', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('33', '军事学院证', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('4', '士兵证', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('5', '港澳居民来往内地通行证', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('51', '香港通行证', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('52', '澳门通行证', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('6', '台湾同胞来往内地通行证', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('7', '临时身份证', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('8', '外国人居留证', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('81', '外国人永久居住证', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('82', '边民出入境通行证', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('9', '警官证', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('101', '村民委员会证明', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('102', '学生证', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('103', '离休干部荣誉证', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('104', '文职干部退休证', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('X', '其他证件', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('2001', '营业执照号', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('2002', '企业机构代码', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('2003', '贷款卡编号', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('2004', '税务登记证', 'PAA0100006');
insert into LN_MABIAO (code, name, mazhi)
values ('ABW', '阿鲁巴', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('AFG', '阿富汗', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('AGO', '安哥拉', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('AIA', '安圭拉', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('ALB', '阿尔巴尼亚', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('AND', '安道尔', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('ANT', '荷属安的列斯', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('ARE', '阿联酋', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('ARG', '阿根廷', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('ARM', '亚美尼亚', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('ASM', '美属萨摩亚', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('ATA', '南极洲', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('ATF', '法属南部领土', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('ATG', '安提瓜和巴布达', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('AUS', '澳大利亚', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('AUT', '奥地利', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('AZE', '阿塞拜疆', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('BDI', '布隆迪', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('BEL', '比利时', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('BEN', '贝宁', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('BFA', '布基纳法索', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('BGD', '孟加拉国', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('BGR', '保加利亚', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('BHR', '巴林', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('BHS', '巴哈马', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('BIH', '波斯尼亚和黑塞哥维那', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('BLR', '白俄罗斯', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('BLZ', '伯利兹', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('BMU', '百慕大', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('BOL', '玻利维亚', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('BRA', '巴西', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('BRB', '巴巴多斯', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('BRN', '文莱', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('BTN', '不丹', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('BVT', '布维岛', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('BWA', '博茨瓦纳', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('CAF', '中非', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('CAN', '加拿大', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('CCK', '科科斯(基林)群岛', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('CHE', '瑞士', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('CHL', '智利', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('CHN', '中国', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('CIV', '科特迪瓦', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('CMR', '喀麦隆', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('COD', '刚果（金）Congo,', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('COG', '刚果（布）', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('COK', '库克群岛', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('COL ', '哥伦比亚', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('COM', '科摩罗', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('CPV', '佛得角', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('CRI', '哥斯达黎加', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('CUB', '古巴', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('CXR', '圣诞岛', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('CYM', '开曼群岛', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('CYP', '塞浦路斯', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('CZE', '捷克', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('DEU', '德国', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('DJI', '吉布提', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('DMA', '多米尼克', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('DNK', '丹麦', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('DOM', '多米尼加共和国', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('DZA', '阿尔及利亚', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('ECU', '厄瓜多尔', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('EGY', '埃及', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('ERI', '厄立特里亚', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('ESH', '西撒哈拉', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('ESP', '西班牙', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('EST', '爱沙尼亚', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('ETH', '埃塞俄比亚', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('FIN', '芬兰', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('FJI', '斐济', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('FLK', '马尔维纳斯群岛(福克兰群岛)', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('FRA', '法国', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('FRO', '法罗群岛', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('FSM', '密克罗尼西亚', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('GAB', '加蓬', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('GBR', '英国', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('GEO', '格鲁吉亚', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('GHA', '加纳', 'DEM0100011');
commit;
prompt 300 records committed...
insert into LN_MABIAO (code, name, mazhi)
values ('GIB', '直布罗陀', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('GIN', '几内亚', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('GLP', '瓜德罗普', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('GMB', '冈比亚Gambia', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('GNB', '几内亚比绍', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('GNQ', '赤道几内亚', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('GRC', '希腊', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('GRD', '格林纳达', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('GRL', '格陵兰', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('GTM', '危地马拉', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('GUF', '法属圭亚那', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('GUM', '关岛', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('GUY', '圭亚那', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('HKG', '香港', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('HMD', '赫德岛和麦克唐纳岛', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('HND', '洪都拉斯', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('HRV', '克罗地亚', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('HTI', '海地', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('HUN', '匈牙利', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('IDN', '印度尼西亚', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('IND ', '印度', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('IOT', '英属印度洋领土', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('IRL', '爱尔兰', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('IRN', '伊朗', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('IRQ', '伊拉克', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('ISL', '冰岛', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('ISR', '以色列', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('ITA', '意大利', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('JAM', '牙买加', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('JOR', '约旦', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('JPN', '日本', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('KAZ', '哈萨克斯坦', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('KEN', '肯尼亚', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('KGZ', '吉尔吉斯斯坦', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('KHM', '柬埔寨', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('KIR', '基里巴斯', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('KNA', '圣基茨和尼维斯', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('KOR', '韩国', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('KWT', '科威特', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('LAO', '老挝', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('LBN', '黎巴嫩', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('LBR', '利比里亚', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('LBY', '利比亚', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('LCA', '圣卢西亚', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('LIE', '列支敦士登', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('LKA', '斯里兰卡', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('LSO', '莱索托', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('LTU', '立陶宛', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('LUX', '卢森堡', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('LVA', '拉脱维亚', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('MAC', '澳门', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('MAR', '摩洛哥', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('MCO', '摩纳哥', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('MDA', '摩尔多瓦', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('MDG', '马达加斯加', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('MDV', '马尔代夫', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('MEX', '墨西哥', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('MHL', '马绍尔群岛', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('MKD', '马斯顿', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('MLI', '马里', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('MLT', '马耳他', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('MMR', '缅甸', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('MNE', '黑山Montenegro ', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('MNG', '蒙古', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('MNP', '北马里亚纳', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('MOZ', '莫桑比克', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('MRT', '毛里塔尼亚', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('MSR', '蒙特塞拉特', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('MTQ', '马提尼克', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('MUS', '毛里求斯', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('MWI', '马拉维', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('MYS', '马来西亚', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('MYT', '马约特', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('NAM', '纳米比亚', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('NCL', '新喀里多尼亚', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('NER', '尼日尔', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('NFK', '诺福克岛', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('NGA', '尼日利亚', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('NIC', '尼加拉瓜', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('NIU', '纽埃', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('NLD', '荷兰', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('NOR', '挪威', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('NPL', '尼泊尔', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('NRU', '瑙鲁', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('NZL', '新西兰', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('OMN', '阿曼', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('PAK', '巴基斯坦', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('PAN', '巴拿马', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('PCN', '皮特凯恩群岛', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('PER', '秘鲁', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('PHL', '菲律宾', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('PLW', '帕劳', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('PNG', '巴布亚新几内亚', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('POL', '波兰', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('PRI', '波多黎各', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('PRK', '朝鲜', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('PRT', '葡萄牙', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('PRY', '巴拉圭', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('PSE', '巴勒斯坦', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('PYF', '法属波利尼西亚', 'DEM0100011');
commit;
prompt 400 records committed...
insert into LN_MABIAO (code, name, mazhi)
values ('QAT', '卡塔尔', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('REU', '留尼汪', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('ROM', '罗马尼亚', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('RUS', '俄罗斯', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('RWA', '卢旺达', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('SAU', '沙特阿拉伯', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('"SCG停用"', '"塞尔维亚和黑山停用"', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('SDN', '苏丹', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('SEN', '塞内加尔', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('SGP', '新加坡', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('SGS', '南乔治亚岛和南桑德韦奇岛', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('SHN', '圣赫勒拿', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('SJM', '斯瓦尔巴群岛和扬马群岛', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('SLB', '所罗门群岛', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('SLE', '塞拉利昂', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('SLV', '萨尔瓦多', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('SMR', '圣马力诺', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('SOM', '索马里', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('SPM', '圣皮埃尔和密克隆', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('SRB', '塞尔维亚Serbia', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('STP', '圣多美和普林西比', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('SUR', '苏里南', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('SVK', '斯洛伐克', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('SVN', '斯洛文尼亚', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('SWE', '瑞典', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('SWZ', '斯威士兰', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('SYC', '塞舌尔', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('SYR', '叙利亚', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('TCA', '特克斯和凯科斯群岛', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('TCD', '乍得', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('TGO', '多哥', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('THA', '泰国', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('TJK', '塔吉克斯坦', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('TKL', '托克劳', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('TKM', '土库曼斯坦', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('TMP', '东帝汶', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('TON', '汤加', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('TTO', '特立尼达和多巴哥', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('TUN', '突尼斯', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('TUR', '土耳其', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('TUV', '图瓦卢', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('TWN ', '中国台湾', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('TZA', '坦桑尼亚', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('UGA', '乌干达', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('UKR', '乌克兰', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('UMI', '美属本土外小岛屿', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('URY', '乌拉圭', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('USA', '美国', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('UZB', '乌兹别克斯坦', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('VAT', '梵蒂冈', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('VCT', '圣文森特和格林纳丁斯', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('VEN', '委内瑞拉', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('VGB', '英属维尔京群岛', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('VIR', '美属维尔京群岛', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('VNM', '越南', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('VUT', '瓦努阿图', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('WLF', '瓦利斯和富图纳群岛', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('WSM', '西萨摩亚', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('YEM', '也门', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('Z01', '保税区', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('Z02', '加工区', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('Z03', '钻石交易所', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('ZAF', '南非', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('ZAR', '扎伊尔', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('ZMB', '赞比亚', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('ZWE', '津巴布韦', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('YUG', '南斯拉夫', 'DEM0100011');
insert into LN_MABIAO (code, name, mazhi)
values ('01', '信件', '100067');
insert into LN_MABIAO (code, name, mazhi)
values ('02', '手机', '100067');
insert into LN_MABIAO (code, name, mazhi)
values ('03', '电子邮件', '100067');
insert into LN_MABIAO (code, name, mazhi)
values ('04', '网页', '100067');
insert into LN_MABIAO (code, name, mazhi)
values ('05', '即时通讯', '100067');
insert into LN_MABIAO (code, name, mazhi)
values ('01', 'AAA级', '100115');
insert into LN_MABIAO (code, name, mazhi)
values ('02', 'AA级', '100115');
insert into LN_MABIAO (code, name, mazhi)
values ('03', 'A级', '100115');
insert into LN_MABIAO (code, name, mazhi)
values ('04', 'BBB级', '100115');
insert into LN_MABIAO (code, name, mazhi)
values ('05', 'BB级', '100115');
insert into LN_MABIAO (code, name, mazhi)
values ('06', 'B级', '100115');
insert into LN_MABIAO (code, name, mazhi)
values ('07', 'F级', '100115');
insert into LN_MABIAO (code, name, mazhi)
values ('08', '未通过', '100115');
insert into LN_MABIAO (code, name, mazhi)
values ('09', '待审定', '100115');
insert into LN_MABIAO (code, name, mazhi)
values ('00', '未提供说明的信用等级', '100115');
insert into LN_MABIAO (code, name, mazhi)
values ('X', '未提供', '100115');
insert into LN_MABIAO (code, name, mazhi)
values ('A001', '政府机关事业单位', 'PAA2100001');
insert into LN_MABIAO (code, name, mazhi)
values ('A002', '科教文卫', 'PAA2100001');
insert into LN_MABIAO (code, name, mazhi)
values ('A003', '邮电通信', 'PAA2100001');
insert into LN_MABIAO (code, name, mazhi)
values ('A004', '部队', 'PAA2100001');
insert into LN_MABIAO (code, name, mazhi)
values ('A005', 'IT网络、计算机', 'PAA2100001');
insert into LN_MABIAO (code, name, mazhi)
values ('A006', '商业、贸易', 'PAA2100001');
insert into LN_MABIAO (code, name, mazhi)
values ('A007', '金融机构', 'PAA2100001');
insert into LN_MABIAO (code, name, mazhi)
values ('A008', '房地产开发', 'PAA2100001');
insert into LN_MABIAO (code, name, mazhi)
values ('A009', '保险经纪、中介', 'PAA2100001');
insert into LN_MABIAO (code, name, mazhi)
values ('A010', '旅游、饭店、娱乐', 'PAA2100001');
insert into LN_MABIAO (code, name, mazhi)
values ('A011', '自由业、个体店铺', 'PAA2100001');
insert into LN_MABIAO (code, name, mazhi)
values ('A012', '广告', 'PAA2100001');
insert into LN_MABIAO (code, name, mazhi)
values ('A013', '农林渔畜牧', 'PAA2100001');
insert into LN_MABIAO (code, name, mazhi)
values ('A014', '制造业、加工业', 'PAA2100001');
insert into LN_MABIAO (code, name, mazhi)
values ('A015', '运输业', 'PAA2100001');
insert into LN_MABIAO (code, name, mazhi)
values ('A016', '装修', 'PAA2100001');
insert into LN_MABIAO (code, name, mazhi)
values ('A017', '律师、会计师', 'PAA2100001');
commit;
prompt 500 records committed...
insert into LN_MABIAO (code, name, mazhi)
values ('A018', '其他', 'PAA2100001');
insert into LN_MABIAO (code, name, mazhi)
values ('A', '公有控股经济', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('A01', '国有控股', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('A0101', '国有相对控股', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('A0102', '国有绝对控股', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('A02', '集体控股', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('A0201', '集体相对控股', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('A0202', '集体绝对控股', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('B', '非公有控股经济', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('B01', '私人控股', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('B0101', '私人相对控股', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('B0102', '私人绝对控股', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('B02', '港澳台控股', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('B0201', '港澳台相对控股', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('B0202', '港澳台绝对控股', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('B03', '外商控股', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('B0301', '外商相对控股', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('B0302', '外商绝对控股', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('C06', '农村个体工商户', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('C07', '农户', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('C08', '普通个人', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('C09', '农民专业合作社', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('C10', '其他农村经济组织', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('C11', '农林牧渔企业', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('C12', '工商企业', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('C13', '服务业企业', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('C14', '房地产', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('C15', '基础设施', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('C16', '其他企业', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('C17', '教育单位', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('C18', '医疗单位', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('C19', '事业单位', '100061');
insert into LN_MABIAO (code, name, mazhi)
values ('AFA', '阿富汗尼', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('ALL', '列克', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('DZD', '阿尔及利亚第纳尔', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('ADP', '安道尔比赛塔', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('AON', '新克瓦查', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('AZM', '阿塞拜疆马纳特', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('ARS', '阿根廷比索', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('AUD', '澳大利亚元', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('ATS', '先令', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('BSD', '巴哈马元', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('BHD', '巴林第纳尔', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('BDT', '塔卡', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('AMD', '亚美尼亚达姆', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('BBD', '巴巴多斯元', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('BEF', '比利时法郎', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('BMD', '百慕大元', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('BTN', '努尔特鲁姆', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('BOB', '玻利维亚比索', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('BWP', '普拉', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('BZD', '伯利兹元', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('SBD', '所罗门群岛元', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('BND', '文莱元', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('BGL', '列弗', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('MMK', '缅元', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('BIF', '布隆迪法郎', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('BYB', '白俄罗斯卢布', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('KHR', '瑞尔', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('CAD', '加拿大元', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('CVE', '佛得角埃斯库多', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('KYD', '开曼群岛元', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('LKR', '斯里兰卡卢布', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('CLP', '智利比索', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('CNY', '人民币元', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('COP', '哥伦比亚比索', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('KMF', '科摩罗法郎', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('ZRN', '新扎伊尔', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('CRC', '哥斯达黎加科朗', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('HRK', '克罗地亚库纳', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('CUP', '古巴比索', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('CYP', '塞浦路斯镑', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('CZK', '捷克克郎', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('DKK', '丹麦克郎', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('DOP', '多米尼加比索', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('ECS', '苏克雷', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('SVC', '萨尔瓦多科朗', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('ETB', '埃塞俄比亚比尔', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('EEK', '克罗姆', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('FKP', '福克兰群岛镑', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('FJD', '斐济元', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('FIM', '马克', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('FRF', '法国法郎', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('DJF', '吉布提法郎', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('GMD', '达拉西', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('DEM', '德国马克', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('GHC', '塞地', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('GIP', '直布罗陀镑', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('GRD', '德拉克马', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('GTQ', '格查尔', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('GNF', '几内亚法郎', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('GYD', '圭亚那元', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('HTG', '古德', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('HNL', '伦皮拉', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('HKD', '香港元', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('HUF', '福林', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('ISK', '冰岛克郎', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('INR', '印度卢比', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('IDR', '卢比', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('IRR', '伊朗里亚尔', 'ACC1300012');
commit;
prompt 600 records committed...
insert into LN_MABIAO (code, name, mazhi)
values ('IQD', '伊拉克第纳尔', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('IEP', '爱尔兰镑', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('ILS', '锡克尔', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('ITL', '意大利里拉', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('JMD', '牙买加元', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('JPY', '日元', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('KZT', '坚戈', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('JOD', '约旦第纳尔', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('KES', '肯尼亚先令', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('KPW', '北朝鲜元', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('KRW', '圆', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('KWD', '科威特第纳尔', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('KGS', '索姆', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('LAK', '基普', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('LBP', '黎巴嫩镑', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('LSL', '罗提', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('LVL', '拉脱维亚拉特', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('LRD', '利比里亚元', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('LYD', '利比亚第纳尔', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('LTL', '立陶宛', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('LUF', '卢森堡法郎', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('MOP', '澳门元', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('MGF', '马尔加什法郎', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('MWK', '克瓦查', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('MYR', '马来西亚林吉特', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('MVR', '卢菲亚', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('MTL', '马耳他里拉', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('MRO', '乌吉亚', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('MUR', '毛里求斯卢比', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('MXN', '墨西哥比索', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('MNT', '图格里克', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('MDL', '摩尔多瓦列伊', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('MAD', '摩洛哥迪拉姆', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('MZM', '麦梯卡尔', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('OMR', '阿曼里亚尔', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('NAD', '纳米比亚元', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('NPR', '尼泊尔卢比', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('NLG', '荷兰盾', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('ANG', '荷属安的列斯盾', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('AWG', '阿鲁巴盾', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('VUV', '瓦图', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('NZD', '新西兰元', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('NIO', '金科多巴', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('NGN', '奈拉', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('NOK', '挪威克朗', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('PKR', '巴基斯坦卢比', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('PAB', '巴波亚', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('PGK', '基那', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('PYG', '瓜拉尼', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('PEN', '索尔', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('PHP', '菲律宾比索', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('PLZ', '兹罗提', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('PTE', '葡萄牙埃斯库多', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('GWP', '几内亚比绍比索', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('TPE', '东帝汉埃斯库多', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('QAR', '卡塔尔里亚尔', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('ROL', '列伊', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('RWF', '卢旺达法郎', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('SHP', '圣赫勒拿镑', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('STD', '多布拉', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('SAR', '沙特里亚尔', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('SCR', '塞舌尔卢比', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('SLL', '利昂', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('SGD', '新加坡元', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('SKK', '斯洛伐克克朗', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('VND', '盾', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('SIT', '托拉尔', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('SOS', '索马里先令', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('ZAR', '兰特', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('ZWD', '津巴布韦元', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('ESP', '西班牙比赛塔', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('SDD', '苏丹第纳尔', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('SRG', '苏里南盾', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('SZL', '里兰吉尼', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('SEK', '瑞典克朗', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('CHF', '瑞士法郎', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('SYP', '叙利亚镑', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('TJR', '塔吉克卢布', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('THB', '铢', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('TOP', '邦加', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('TTD', '特立尼达和多巴哥元', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('AED', 'UAE迪拉姆', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('TND', '突尼斯第纳尔', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('TRL', '土耳其里拉', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('TMM', '马纳特', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('UGX', '乌干达先令', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('UAK', '库邦', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('MKD', '第纳尔', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('RUR', '俄罗斯卢布', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('EGP', '埃及镑', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('GBP', '英镑', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('TZS', '坦桑尼亚先令', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('USD', '美元', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('UYU', '乌拉圭比索', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('UZS', '乌兹别克斯坦苏姆', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('VEB', '博利瓦', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('WST', '塔拉', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('YER', '也门里亚尔', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('YUN', '南斯拉夫第纳尔', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('ZMK', '克瓦查', 'ACC1300012');
commit;
prompt 700 records committed...
insert into LN_MABIAO (code, name, mazhi)
values ('TWD', '新台湾元', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('XAF', 'CRA法郎 BEAC', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('XCD', '东加勒比元', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('XOF', 'CFA法郎BCEAO', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('XPF', 'CFP法郎', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('XEU', '欧洲货币单位（E.C.U.)', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('XBA', '欧洲混合单位（EUR-CO)', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('XBB', '欧洲货币单位（E.M.U.-6)', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('XBC', '欧洲账户９单位（E.U.A.-9)', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('XB5', '欧洲账户１７单位（E.U.A.-17)', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('XAU', '黄金', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('XDR', '特别提款权', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('XAG', '银', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('XPT', '铂白金', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('XTS', '为测试特别保留的代码', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('XPD', '钯', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('EUR', '欧元（EUR）', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('ECV', 'UVC', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('BOV', 'Mｖｄｏｌ', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('PLN', '兹罗提', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('BRL', '巴西瑞尔', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('CLF', '发展单位', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('ZAL', '（金融兰特）', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('USN', '（次日）', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('USS', '（同日）', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('XXX', '未包括的交易货币代码', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('E01', '外币折欧元', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('R01', '外币折人民币', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('T01', '本外币合计', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('U01', '外币折美元', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('X01', '黄金（人民币计价）', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('X02', '黄金（美元计价）', 'ACC1300012');
insert into LN_MABIAO (code, name, mazhi)
values ('CS01', '大型', 'DEM0200004');
insert into LN_MABIAO (code, name, mazhi)
values ('CS02', '中型', 'DEM0200004');
insert into LN_MABIAO (code, name, mazhi)
values ('CS03', '小型', 'DEM0200004');
insert into LN_MABIAO (code, name, mazhi)
values ('CS04', '微型', 'DEM0200004');
insert into LN_MABIAO (code, name, mazhi)
values ('CS05', '其他', 'DEM0200004');
insert into LN_MABIAO (code, name, mazhi)
values ('X', '未提供', 'DEM0200004');
insert into LN_MABIAO (code, name, mazhi)
values ('01', '国家级', 'DEM0200003');
insert into LN_MABIAO (code, name, mazhi)
values ('02', '省级', 'DEM0200003');
insert into LN_MABIAO (code, name, mazhi)
values ('03', '市级', 'DEM0200003');
insert into LN_MABIAO (code, name, mazhi)
values ('04', '县级', 'DEM0200003');
insert into LN_MABIAO (code, name, mazhi)
values ('05', '无', 'DEM0200003');
insert into LN_MABIAO (code, name, mazhi)
values ('00', '未提供说明的资质', 'DEM0200005');
insert into LN_MABIAO (code, name, mazhi)
values ('01', '一级', 'DEM0200005');
insert into LN_MABIAO (code, name, mazhi)
values ('02', '二级', 'DEM0200005');
insert into LN_MABIAO (code, name, mazhi)
values ('03', '三级', 'DEM0200005');
insert into LN_MABIAO (code, name, mazhi)
values ('04', '未通过', 'DEM0200005');
insert into LN_MABIAO (code, name, mazhi)
values ('05', '待审定', 'DEM0200005');
insert into LN_MABIAO (code, name, mazhi)
values ('06', '一级会员', 'DEM0200005');
insert into LN_MABIAO (code, name, mazhi)
values ('07', '非一级', 'DEM0200005');
insert into LN_MABIAO (code, name, mazhi)
values ('X', '未提供', 'DEM0200005');
insert into LN_MABIAO (code, name, mazhi)
values ('01', '再贷款', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('02', '普通贷款', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('021', '消费贷款', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('0211', '个人住房贷款', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('0212', '个人汽车消费贷款', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('0213', '助学贷款', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('02131', '国家助学贷款', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('02132', '一般商业性助学贷款', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('0219', '其他消费贷款', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('022', '经营贷款', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('023', '固定资产贷款', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('03', '拆借', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('04', '透支', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('041', '账户透支', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('042', '贷记卡透支', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('043', '准贷记卡透支', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('05', '垫款', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('051', '承兑垫款', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('052', '担保垫款', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('053', '信用证垫款', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('054', '其他垫款', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('06', '回购/返售', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('061', '债券回购/返售', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('062', '票据回购/返售', '053');
insert into LN_MABIAO (code, name, mazhi)
values ('063', '贷款回购/返售', '053');
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
