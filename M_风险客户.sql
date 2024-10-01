/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     2022/3/9 15:59:33                            */
/*==============================================================*/


--drop table M_RISK_CUST_INFO cascade constraints;

/*==============================================================*/
/* Table: M_RISK_CUST_INFO                                      */
/*==============================================================*/
create table M_RISK_CUST_INFO 
(
   ECIF_CUST_NO         CHAR(32),
   CUST_NAME            CHAR(32),
   MRG_STS              CHAR(20),
   COU_CERT_NO          CHAR(19),
   COU_NAME             CHAR(12),
   INDV_TAX_NO          CHAR(25),
   INDV_INSURS_NO       CHAR(25),
   MN_INCO              CHAR(30),
   ECON_RESUR           CHAR(20),
   OTH_ECON_RESUR       CHAR(46),
   DEPEND_CNT           NUMBER(12,0),
   AFF_INSTN_NO         CHAR(9),
   EMP_FLG              CHAR(10),
   POT_VIP_FLG          CHAR(10),
   SPEC_VIP_FLG         CHAR(10),
   INDV_CUST_ACCUM_TRN_LMT NUMBER(20,2),
   CRED_CRD_GUAR_CNT    NUMBER(12,0),
   FAMI_AVG_MN_INCO     NUMBER(20,2),
   FAMI_CAPI            NUMBER(20,2),
   FAMI_DEBT            NUMBER(20,2),
   FAMI_MN_INCO         NUMBER(20,2),
   GRAD_DT              CHAR(6),
   CHILD_FLG            CHAR(10),
   INDUSTRY_TYP         CHAR(10),
   FAMI_GUAR_TOTL       NUMBER(20,2),
   PLAN_CPTL_CERT_NO    CHAR(32),
   CERT_TYP             CHAR(30),
   CERT_NO              CHAR(20),
   PRIM_NAT             CHAR(30),
   RSDNT_NAT            CHAR(30),
   CONC_CUST_FLG        CHAR(10),
   IS_BLACK_LIST        CHAR(10),
   INDV_LEV_COD         CHAR(10),
   CRLMT                NUMBER(20,2),
   CRED_LOTP            NUMBER(12,0)
);

comment on table M_RISK_CUST_INFO is
'���տͻ�';

comment on column M_RISK_CUST_INFO.ECIF_CUST_NO is
'�ͻ����';

comment on column M_RISK_CUST_INFO.CUST_NAME is
'�ͻ�����';

comment on column M_RISK_CUST_INFO.MRG_STS is
'����״̬';

comment on column M_RISK_CUST_INFO.COU_CERT_NO is
'��ż֤������';

comment on column M_RISK_CUST_INFO.COU_NAME is
'��ż����';

comment on column M_RISK_CUST_INFO.INDV_TAX_NO is
'������˰��';

comment on column M_RISK_CUST_INFO.INDV_INSURS_NO is
'������ᱣ�պ�';

comment on column M_RISK_CUST_INFO.MN_INCO is
'������';

comment on column M_RISK_CUST_INFO.ECON_RESUR is
'��Ҫ������Դ';

comment on column M_RISK_CUST_INFO.OTH_ECON_RESUR is
'����������Դ';

comment on column M_RISK_CUST_INFO.DEPEND_CNT is
'��������';

comment on column M_RISK_CUST_INFO.AFF_INSTN_NO is
'��������';

comment on column M_RISK_CUST_INFO.EMP_FLG is
'Ա����־';

comment on column M_RISK_CUST_INFO.POT_VIP_FLG is
'Ǳ��VIP��־';

comment on column M_RISK_CUST_INFO.SPEC_VIP_FLG is
'����VIP��־';

comment on column M_RISK_CUST_INFO.INDV_CUST_ACCUM_TRN_LMT is
'���˿ͻ��ۼ�ת���޶�';

comment on column M_RISK_CUST_INFO.CRED_CRD_GUAR_CNT is
'���ÿ���������';

comment on column M_RISK_CUST_INFO.FAMI_AVG_MN_INCO is
'��ͥ�˾�������';

comment on column M_RISK_CUST_INFO.FAMI_CAPI is
'��ͥ���ʲ�';

comment on column M_RISK_CUST_INFO.FAMI_DEBT is
'��ͥ�ܸ�ծ';

comment on column M_RISK_CUST_INFO.FAMI_MN_INCO is
'��ͥ������';

comment on column M_RISK_CUST_INFO.GRAD_DT is
'��ҵ����';

comment on column M_RISK_CUST_INFO.CHILD_FLG is
'�Ƿ�����Ů';

comment on column M_RISK_CUST_INFO.INDUSTRY_TYP is
'������ҵ����';

comment on column M_RISK_CUST_INFO.FAMI_GUAR_TOTL is
'��ͥ���ⵣ���ܶ�';

comment on column M_RISK_CUST_INFO.PLAN_CPTL_CERT_NO is
'ͳ���ʽ�֤����';

comment on column M_RISK_CUST_INFO.CERT_TYP is
'֤������';

comment on column M_RISK_CUST_INFO.CERT_NO is
'֤������';

comment on column M_RISK_CUST_INFO.PRIM_NAT is
'���ڹ�';

comment on column M_RISK_CUST_INFO.RSDNT_NAT is
'��ס��';

comment on column M_RISK_CUST_INFO.CONC_CUST_FLG is
'��ע�ͻ���־';

comment on column M_RISK_CUST_INFO.IS_BLACK_LIST is
'�Ƿ��Ǻ�����';

comment on column M_RISK_CUST_INFO.INDV_LEV_COD is
'���ŵȼ�';

comment on column M_RISK_CUST_INFO.CRLMT is
'���ö��';

comment on column M_RISK_CUST_INFO.CRED_LOTP is
'���û���';

