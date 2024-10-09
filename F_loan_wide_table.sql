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
'������';

comment on column F_LN_LION_INFO.LOANACNO is
'�����ʺ�';

comment on column F_LN_LION_INFO.ECIF_CUST_NO is
'ECIF�ͻ����';

comment on column F_LN_LION_INFO.CUSTNAME is
'�ͻ�����';

comment on column F_LN_LION_INFO.MRG_STS is
'����״̬';

comment on column F_LN_LION_INFO.CURRSIGN is
'����';

comment on column F_LN_LION_INFO.LOANKIND is
'��������';

comment on column F_LN_LION_INFO.LOANTYPE is
'��ϴ����־';

comment on column F_LN_LION_INFO.FIRSTORDER is
'��ϴ��������˳��';

comment on column F_LN_LION_INFO.PAYPERC is
'��������';

comment on column F_LN_LION_INFO.FUNDSOUR is
'�ʽ���Դ';

comment on column F_LN_LION_INFO.LOANUSE is
'������;';

comment on column F_LN_LION_INFO.ASSUKIND is
'������ʽ';

comment on column F_LN_LION_INFO.CONTDATE is
'��������';

comment on column F_LN_LION_INFO.CREDCAPI is
'��Ƚ��';

comment on column F_LN_LION_INFO.CYCFLAG is
'�Ƿ�ѭ��';

comment on column F_LN_LION_INFO.SUM_TRAN_AMT is
'�ſ��ܽ��';

comment on column F_LN_LION_INFO.SUM_PAY_AMT is
'�����ܽ��';

comment on column F_LN_LION_INFO.LN_BALANCE is
'�������';

comment on column F_LN_LION_INFO.TCAPI is
'������';

comment on column F_LN_LION_INFO.THISTCAPI is
'�����ſ���#';

comment on column F_LN_LION_INFO.CREDAMT is
'���ö��';

comment on column F_LN_LION_INFO.ASSUAMT is
'��֤���';

comment on column F_LN_LION_INFO.IMPAAMT is
'��Ѻ���';

comment on column F_LN_LION_INFO.MORTAMT is
'��Ѻ���';

comment on column F_LN_LION_INFO.CREDTOTALAMT is
'�����ܶ��';

comment on column F_LN_LION_INFO.TERMFREQ is
'����Ƶ��';

comment on column F_LN_LION_INFO.TTERM is
'��������';

comment on column F_LN_LION_INFO.RETUTYPE is
'���ʽ';

comment on column F_LN_LION_INFO.TROTHDUEDAY is
'������Լ��';

comment on column F_LN_LION_INFO.FIXRATETERM is
'�̶���������';

comment on column F_LN_LION_INFO.FIRSTDUEDATE is
'���������';

comment on column F_LN_LION_INFO.SUBSFLAG is
'�ۿ�����';

comment on column F_LN_LION_INFO.ISENOUSUBS is
'�Ƿ����ۿ�';

comment on column F_LN_LION_INFO.FIRSTPAYAMT is
'�׸�����';

comment on column F_LN_LION_INFO.FIRSTPAYPERC is
'�׸������';

comment on column F_LN_LION_INFO.RELEWAY is
'�ſ�����';

comment on column F_LN_LION_INFO.PAYEEACNO is
'�տ����ʺ�';

comment on column F_LN_LION_INFO.PAYEEACNAME is
'�տ����ʻ�����';

comment on column F_LN_LION_INFO.PAYEEBANKNAME is
'�տ����ʻ�������';

comment on column F_LN_LION_INFO.INTECALCKIND is
'��Ϣ��������';

comment on column F_LN_LION_INFO.INTEMETH is
'��Ϣ����';

comment on column F_LN_LION_INFO.INTEBASE is
'��Ϣ����';

comment on column F_LN_LION_INFO.AHEADDAYS is
'�ʵ���ǰ����';

comment on column F_LN_LION_INFO.BASICINTERATE is
'�����׼����';

comment on column F_LN_LION_INFO.INTERATE is
'ִ������';

comment on column F_LN_LION_INFO.BEGINDATE is
'��������';

comment on column F_LN_LION_INFO.ENDDATE is
'��������';

comment on column F_LN_LION_INFO.APPRNAME is
'����������';

comment on column F_LN_LION_INFO.APPRTABNO is
'��������';

comment on column F_LN_LION_INFO.APPRDATE is
'��������';

comment on column F_LN_LION_INFO.APPRFLAG is
'�������';

comment on column F_LN_LION_INFO.APPRSTATE is
'����״̬';

comment on column F_LN_LION_INFO.LOANSTATE is
'����״̬';

