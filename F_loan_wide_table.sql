/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     2022/12/02 12:24:46                            */
/*==============================================================*/


--drop table F_LN_LION_INFO cascade constraints;

/*==============================================================*/
/* Table: F_LN_LION_INFO                                        */
/*==============================================================*/
create table F_LN_LION_INFO 
(
   LOANACNO             CHAR(30),
   ECIF_CUST_NO         CHAR(21),
   CUSTNAME             CHAR(40),
   MRG_STS              CHAR(20),
   CURRSIGN             CHAR(30),
   LOANKIND             CHAR(30),
   LOANTYPE             CHAR(10),
   FIRSTORDER           CHAR(10),
   PAYPERC              NUMBER(16,2),
   FUNDSOUR             CHAR(20),
   LOANUSE              CHAR(20),
   ASSUKIND             CHAR(20),
   CONTDATE             DATE,
   CREDCAPI             NUMBER(20,2),
   CYCFLAG              CHAR(1),
   SUM_TRAN_AMT         NUMBER(20,2),
   SUM_PAY_AMT          NUMBER(20,2),
   LN_BALANCE           NUMBER(20,2),
   TCAPI                NUMBER(20,2),
   THISTCAPI            NUMBER(20,2),
   CREDAMT              NUMBER(20,2),
   ASSUAMT              NUMBER(20,2),
   IMPAAMT              NUMBER(20,2),
   MORTAMT              NUMBER(20,2),
   CREDTOTALAMT         NUMBER(20,2),
   TERMFREQ             CHAR(1),
   TTERM                NUMBER(12,0),
   RETUTYPE             CHAR(30),
   TROTHDUEDAY          CHAR(10),
   FIXRATETERM          NUMBER(12,0),
   FIRSTDUEDATE         DATE,
   SUBSFLAG             CHAR(10),
   ISENOUSUBS           CHAR(10),
   FIRSTPAYAMT          NUMBER(20,2),
   FIRSTPAYPERC         NUMBER(16,2),
   RELEWAY              CHAR(20),
   PAYEEACNO            CHAR(30),
   PAYEEACNAME          CHAR(40),
   PAYEEBANKNAME        CHAR(80),
   INTECALCKIND         CHAR(10),
   INTEMETH             CHAR(30),
   INTEBASE             CHAR(30),
   AHEADDAYS            NUMBER(12,0),
   BASICINTERATE        NUMBER(12,7),
   INTERATE             NUMBER(12,7),
   BEGINDATE            DATE,
   ENDDATE              DATE,
   APPRNAME             CHAR(40),
   APPRTABNO            CHAR(30),
   APPRDATE             DATE,
   APPRFLAG             CHAR(10),
   APPRSTATE            CHAR(20),
   LOANSTATE            CHAR(10)
);

comment on table F_LN_LION_INFO is
'贷款宽表';

comment on column F_LN_LION_INFO.LOANACNO is
'贷款帐号';

comment on column F_LN_LION_INFO.ECIF_CUST_NO is
'ECIF客户编号';

comment on column F_LN_LION_INFO.CUSTNAME is
'客户姓名';

comment on column F_LN_LION_INFO.MRG_STS is
'婚姻状态';

comment on column F_LN_LION_INFO.CURRSIGN is
'币种';

comment on column F_LN_LION_INFO.LOANKIND is
'贷款种类';

comment on column F_LN_LION_INFO.LOANTYPE is
'组合贷款标志';

comment on column F_LN_LION_INFO.FIRSTORDER is
'组合贷款还款优先顺序';

comment on column F_LN_LION_INFO.PAYPERC is
'偿还比例';

comment on column F_LN_LION_INFO.FUNDSOUR is
'资金来源';

comment on column F_LN_LION_INFO.LOANUSE is
'贷款用途';

comment on column F_LN_LION_INFO.ASSUKIND is
'担保方式';

comment on column F_LN_LION_INFO.CONTDATE is
'申请日期';

comment on column F_LN_LION_INFO.CREDCAPI is
'额度金额';

comment on column F_LN_LION_INFO.CYCFLAG is
'是否循环';

comment on column F_LN_LION_INFO.SUM_TRAN_AMT is
'放款总金额';

comment on column F_LN_LION_INFO.SUM_PAY_AMT is
'还款总金额';

comment on column F_LN_LION_INFO.LN_BALANCE is
'贷款余额';

comment on column F_LN_LION_INFO.TCAPI is
'贷款金额';

comment on column F_LN_LION_INFO.THISTCAPI is
'开户放款金额#';

comment on column F_LN_LION_INFO.CREDAMT is
'信用额度';

comment on column F_LN_LION_INFO.ASSUAMT is
'保证额度';

comment on column F_LN_LION_INFO.IMPAAMT is
'质押额度';

comment on column F_LN_LION_INFO.MORTAMT is
'抵押额度';

comment on column F_LN_LION_INFO.CREDTOTALAMT is
'授信总额度';

comment on column F_LN_LION_INFO.TERMFREQ is
'期限频率';

comment on column F_LN_LION_INFO.TTERM is
'贷款期限';

comment on column F_LN_LION_INFO.RETUTYPE is
'还款方式';

comment on column F_LN_LION_INFO.TROTHDUEDAY is
'还款日约定';

comment on column F_LN_LION_INFO.FIXRATETERM is
'固定利率期数';

comment on column F_LN_LION_INFO.FIRSTDUEDATE is
'最初到期日';

comment on column F_LN_LION_INFO.SUBSFLAG is
'扣款类型';

comment on column F_LN_LION_INFO.ISENOUSUBS is
'是否足额扣款';

comment on column F_LN_LION_INFO.FIRSTPAYAMT is
'首付款金额';

comment on column F_LN_LION_INFO.FIRSTPAYPERC is
'首付款比例';

comment on column F_LN_LION_INFO.RELEWAY is
'放款渠道';

comment on column F_LN_LION_INFO.PAYEEACNO is
'收款人帐号';

comment on column F_LN_LION_INFO.PAYEEACNAME is
'收款人帐户名称';

comment on column F_LN_LION_INFO.PAYEEBANKNAME is
'收款人帐户开户行';

comment on column F_LN_LION_INFO.INTECALCKIND is
'计息计算类型';

comment on column F_LN_LION_INFO.INTEMETH is
'计息方法';

comment on column F_LN_LION_INFO.INTEBASE is
'计息基础';

comment on column F_LN_LION_INFO.AHEADDAYS is
'帐单提前天数';

comment on column F_LN_LION_INFO.BASICINTERATE is
'贷款基准利率';

comment on column F_LN_LION_INFO.INTERATE is
'执行利率';

comment on column F_LN_LION_INFO.BEGINDATE is
'开户日期';

comment on column F_LN_LION_INFO.ENDDATE is
'到期日期';

comment on column F_LN_LION_INFO.APPRNAME is
'审批人姓名';

comment on column F_LN_LION_INFO.APPRTABNO is
'审批表编号';

comment on column F_LN_LION_INFO.APPRDATE is
'审批日期';

comment on column F_LN_LION_INFO.APPRFLAG is
'审批意见';

comment on column F_LN_LION_INFO.APPRSTATE is
'审批状态';

comment on column F_LN_LION_INFO.LOANSTATE is
'贷款状态';

