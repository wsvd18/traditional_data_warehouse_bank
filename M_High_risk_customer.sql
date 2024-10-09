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
'风险客户';

comment on column M_RISK_CUST_INFO.ECIF_CUST_NO is
'客户编号';

comment on column M_RISK_CUST_INFO.CUST_NAME is
'客户姓名';

comment on column M_RISK_CUST_INFO.MRG_STS is
'婚姻状态';

comment on column M_RISK_CUST_INFO.COU_CERT_NO is
'配偶证件号码';

comment on column M_RISK_CUST_INFO.COU_NAME is
'配偶姓名';

comment on column M_RISK_CUST_INFO.INDV_TAX_NO is
'个人纳税号';

comment on column M_RISK_CUST_INFO.INDV_INSURS_NO is
'个人社会保险号';

comment on column M_RISK_CUST_INFO.MN_INCO is
'月收入';

comment on column M_RISK_CUST_INFO.ECON_RESUR is
'主要经济来源';

comment on column M_RISK_CUST_INFO.OTH_ECON_RESUR is
'其他经济来源';

comment on column M_RISK_CUST_INFO.DEPEND_CNT is
'供养人数';

comment on column M_RISK_CUST_INFO.AFF_INSTN_NO is
'所属机构';

comment on column M_RISK_CUST_INFO.EMP_FLG is
'员工标志';

comment on column M_RISK_CUST_INFO.POT_VIP_FLG is
'潜在VIP标志';

comment on column M_RISK_CUST_INFO.SPEC_VIP_FLG is
'特殊VIP标志';

comment on column M_RISK_CUST_INFO.INDV_CUST_ACCUM_TRN_LMT is
'个人客户累计转账限额';

comment on column M_RISK_CUST_INFO.CRED_CRD_GUAR_CNT is
'信用卡担保次数';

comment on column M_RISK_CUST_INFO.FAMI_AVG_MN_INCO is
'家庭人均月收入';

comment on column M_RISK_CUST_INFO.FAMI_CAPI is
'家庭总资产';

comment on column M_RISK_CUST_INFO.FAMI_DEBT is
'家庭总负债';

comment on column M_RISK_CUST_INFO.FAMI_MN_INCO is
'家庭月收入';

comment on column M_RISK_CUST_INFO.GRAD_DT is
'毕业年月';

comment on column M_RISK_CUST_INFO.CHILD_FLG is
'是否有子女';

comment on column M_RISK_CUST_INFO.INDUSTRY_TYP is
'从事行业类型';

comment on column M_RISK_CUST_INFO.FAMI_GUAR_TOTL is
'家庭对外担保总额';

comment on column M_RISK_CUST_INFO.PLAN_CPTL_CERT_NO is
'统筹资金证号码';

comment on column M_RISK_CUST_INFO.CERT_TYP is
'证件类型';

comment on column M_RISK_CUST_INFO.CERT_NO is
'证件号码';

comment on column M_RISK_CUST_INFO.PRIM_NAT is
'所在国';

comment on column M_RISK_CUST_INFO.RSDNT_NAT is
'居住国';

comment on column M_RISK_CUST_INFO.CONC_CUST_FLG is
'关注客户标志';

comment on column M_RISK_CUST_INFO.IS_BLACK_LIST is
'是否是黑名单';

comment on column M_RISK_CUST_INFO.INDV_LEV_COD is
'征信等级';

comment on column M_RISK_CUST_INFO.CRLMT is
'信用额度';

comment on column M_RISK_CUST_INFO.CRED_LOTP is
'信用积分';

