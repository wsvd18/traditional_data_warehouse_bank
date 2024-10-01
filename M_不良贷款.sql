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
'��������';

comment on column M_RISK_BADLOAN_INFO.LOANACNO is
'�����ʺ�';

comment on column M_RISK_BADLOAN_INFO.ECIF_CUST_NO is
'ECIF�ͻ����';

comment on column M_RISK_BADLOAN_INFO.CUSTNAME is
'�ͻ�����';

comment on column M_RISK_BADLOAN_INFO.CURRSIGN is
'����';

comment on column M_RISK_BADLOAN_INFO.LOANKIND is
'��������';

comment on column M_RISK_BADLOAN_INFO.FUNDSOUR is
'�ʽ���Դ';

comment on column M_RISK_BADLOAN_INFO.LOANUSE is
'������;';

comment on column M_RISK_BADLOAN_INFO.ASSUKIND is
'������ʽ';

comment on column M_RISK_BADLOAN_INFO.CONTDATE is
'��������';

comment on column M_RISK_BADLOAN_INFO.CREDCAPI is
'��Ƚ��';

comment on column M_RISK_BADLOAN_INFO.SUM_TRAN_AMT is
'�ſ��ܽ��';

comment on column M_RISK_BADLOAN_INFO.SUM_PAY_AMT is
'�����ܽ��';

comment on column M_RISK_BADLOAN_INFO.LN_BALANCE is
'�������';

comment on column M_RISK_BADLOAN_INFO.TCAPI is
'������';

comment on column M_RISK_BADLOAN_INFO.THISTCAPI is
'�����ſ���';

comment on column M_RISK_BADLOAN_INFO.CREDAMT is
'���ö��';

comment on column M_RISK_BADLOAN_INFO.ASSUAMT is
'��֤���';

comment on column M_RISK_BADLOAN_INFO.IMPAAMT is
'��Ѻ���';

comment on column M_RISK_BADLOAN_INFO.MORTAMT is
'��Ѻ���';

comment on column M_RISK_BADLOAN_INFO.CREDTOTALAMT is
'�����ܶ��';

comment on column M_RISK_BADLOAN_INFO.TERMFREQ is
'����Ƶ��';

comment on column M_RISK_BADLOAN_INFO.TTERM is
'��������';

comment on column M_RISK_BADLOAN_INFO.RETUTYPE is
'���ʽ';

comment on column M_RISK_BADLOAN_INFO.TROTHDUEDAY is
'������Լ��';

comment on column M_RISK_BADLOAN_INFO.FIXRATETERM is
'�̶���������';

comment on column M_RISK_BADLOAN_INFO.FIRSTDUEDATE is
'���������';

comment on column M_RISK_BADLOAN_INFO.SUBSFLAG is
'�ۿ�����';

comment on column M_RISK_BADLOAN_INFO.RELEWAY is
'�ſ�����';

comment on column M_RISK_BADLOAN_INFO.LOANSTATE is
'����״̬';

