/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     2022/12/3 2:36:40                            */
/*==============================================================*/


--drop table M_RISK_BADLOAN_INFO cascade constraints;

/*==============================================================*/
/* Table: M_RISK_BADLOAN_INFO                                   */
/*==============================================================*/
create table M_RISK_BADLOAN_INFO 
(
   LOANACNO             CHAR(30),
   ECIF_CUST_NO         CHAR(21),
   CUSTNAME             CHAR(40),
   CURRSIGN             CHAR(30),
   LOANKIND             CHAR(30),
   FUNDSOUR             CHAR(20),
   LOANUSE              CHAR(20),
   ASSUKIND             CHAR(20),
   CONTDATE             DATE,
   CREDCAPI             NUMBER(20,2),
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
   TERMFREQ             CHAR(10),
   TTERM                NUMBER(12,0),
   RETUTYPE             CHAR(30),
   TROTHDUEDAY          CHAR(10),
   FIXRATETERM          NUMBER(12,0),
   FIRSTDUEDATE         DATE,
   SUBSFLAG             CHAR(10),
   RELEWAY              CHAR(20),
   LOANSTATE            CHAR(10)
);

comment on table M_RISK_BADLOAN_INFO is
'不良贷款';

comment on column M_RISK_BADLOAN_INFO.LOANACNO is
'贷款帐号';

comment on column M_RISK_BADLOAN_INFO.ECIF_CUST_NO is
'ECIF客户编号';

comment on column M_RISK_BADLOAN_INFO.CUSTNAME is
'客户姓名';

comment on column M_RISK_BADLOAN_INFO.CURRSIGN is
'币种';

comment on column M_RISK_BADLOAN_INFO.LOANKIND is
'贷款种类';

comment on column M_RISK_BADLOAN_INFO.FUNDSOUR is
'资金来源';

comment on column M_RISK_BADLOAN_INFO.LOANUSE is
'贷款用途';

comment on column M_RISK_BADLOAN_INFO.ASSUKIND is
'担保方式';

comment on column M_RISK_BADLOAN_INFO.CONTDATE is
'申请日期';

comment on column M_RISK_BADLOAN_INFO.CREDCAPI is
'额度金额';

comment on column M_RISK_BADLOAN_INFO.SUM_TRAN_AMT is
'放款总金额';

comment on column M_RISK_BADLOAN_INFO.SUM_PAY_AMT is
'还款总金额';

comment on column M_RISK_BADLOAN_INFO.LN_BALANCE is
'贷款余额';

comment on column M_RISK_BADLOAN_INFO.TCAPI is
'贷款金额';

comment on column M_RISK_BADLOAN_INFO.THISTCAPI is
'开户放款金额';

comment on column M_RISK_BADLOAN_INFO.CREDAMT is
'信用额度';

comment on column M_RISK_BADLOAN_INFO.ASSUAMT is
'保证额度';

comment on column M_RISK_BADLOAN_INFO.IMPAAMT is
'质押额度';

comment on column M_RISK_BADLOAN_INFO.MORTAMT is
'抵押额度';

comment on column M_RISK_BADLOAN_INFO.CREDTOTALAMT is
'授信总额度';

comment on column M_RISK_BADLOAN_INFO.TERMFREQ is
'期限频率';

comment on column M_RISK_BADLOAN_INFO.TTERM is
'贷款期限';

comment on column M_RISK_BADLOAN_INFO.RETUTYPE is
'还款方式';

comment on column M_RISK_BADLOAN_INFO.TROTHDUEDAY is
'还款日约定';

comment on column M_RISK_BADLOAN_INFO.FIXRATETERM is
'固定利率期数';

comment on column M_RISK_BADLOAN_INFO.FIRSTDUEDATE is
'最初到期日';

comment on column M_RISK_BADLOAN_INFO.SUBSFLAG is
'扣款类型';

comment on column M_RISK_BADLOAN_INFO.RELEWAY is
'放款渠道';

comment on column M_RISK_BADLOAN_INFO.LOANSTATE is
'贷款状态';

