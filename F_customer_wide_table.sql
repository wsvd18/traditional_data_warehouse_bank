
--drop table F_ECIF_CUST_INFO cascade constraints;

/*==============================================================*/
/* Table: F_ECIF_CUST_INFO                                      */
/*==============================================================*/
create table F_ECIF_CUST_INFO 
(
   ECIF_CUST_NO         CHAR(32),
   CUST_NAME            CHAR(32),
   BIRTH_DT             DATE,
   SEX                  CHAR(2),
   MRG_STS              CHAR(20),
   REGISTER             CHAR(10),
   PPL_COD              CHAR(2),
   COU_CERT_NO          CHAR(19),
   COU_NAME             CHAR(12),
   RELIGION             CHAR(20),
   EDUC_LEV             CHAR(2),
   HOUSE_TYP            CHAR(10),
   INDV_TAX_NO          CHAR(25),
   INDV_INSURS_NO       CHAR(25),
   HAVE_WORK_YR         CHAR(4),
   OCCUP_COD            CHAR(40),
   QUALIFICATION_STS    CHAR(30),
   EMPLOYER_NAME        CHAR(40),
   UNIT_CHAR            CHAR(10),
   UNIT_WORK_DT         DATE,
   WORK_NO              CHAR(18),
   POSN                 CHAR(10),
   OFRN                 CHAR(8),
   TITL                 CHAR(10),
   MN_INCO              CHAR(3),
   ECON_RESUR           CHAR(20),
   OTH_ECON_RESUR       CHAR(46),
   DEPEND_CNT           NUMBER(12,0),
   LANGUAGE_PRE         CHAR(10),
   AFF_INSTN_NO         CHAR(9),
   CUST_MNGR_COD        CHAR(12),
   CUST_STS             CHAR(4),
   EMP_FLG              CHAR(1),
   POT_VIP_FLG          CHAR(10),
   SPEC_VIP_FLG         CHAR(10),
   INDV_CUST_ACCUM_TRN_LMT NUMBER(20,2),
   CRED_CRD_GUAR_CNT    NUMBER(12,0),
   FAMI_AVG_MN_INCO     NUMBER(20,2),
   FAMI_CAPI            NUMBER(20,2),
   FAMI_DEBT            NUMBER(20,2),
   FAMI_MN_INCO         NUMBER(20,2),
   GRAD_DT              CHAR(6),
   CHILD_FLG            CHAR(1),
   INDUSTRY_TYP         CHAR(10),
   FAMI_GUAR_TOTL       NUMBER(20,2),
   PLAN_CPTL_CERT_NO    CHAR(32),
   STUDY_INST           CHAR(80),
   STUDY_SPEC           CHAR(80),
   RESI_YR              NUMBER(12,0),
   CERT_TYP             CHAR(3),
   CERT_NO              CHAR(20),
   PRIM_NAT             CHAR(3),
   RSDNT_NAT            CHAR(3),
   CONC_CUST_FLG        CHAR(10),
   BEST_CONT_TM         CHAR(10),
   BEST_CONT_STY        CHAR(10),
   IF_HIGH_BALCK        CHAR(2),
   INDV_LEV_TYP         CHAR(10),
   INDV_LEV_COD         CHAR(10),
   CRLMT                NUMBER(20,2),
   CRED_LOTP            NUMBER(12,0),
   ADDR_ID              CHAR(50)
);

comment on table F_ECIF_CUST_INFO is
'���˸߶˿ͻ���Ϣ��';

comment on column F_ECIF_CUST_INFO.ECIF_CUST_NO is
'�ͻ����';

comment on column F_ECIF_CUST_INFO.CUST_NAME is
'�ͻ�����';

comment on column F_ECIF_CUST_INFO.BIRTH_DT is
'��������';

comment on column F_ECIF_CUST_INFO.SEX is
'�Ա�';

comment on column F_ECIF_CUST_INFO.MRG_STS is
'����״̬';

comment on column F_ECIF_CUST_INFO.REGISTER is
'����';

comment on column F_ECIF_CUST_INFO.PPL_COD is
'�������';

comment on column F_ECIF_CUST_INFO.COU_CERT_NO is
'��ż֤������';

comment on column F_ECIF_CUST_INFO.COU_NAME is
'��ż����';

comment on column F_ECIF_CUST_INFO.RELIGION is
'�ڽ�����';

comment on column F_ECIF_CUST_INFO.EDUC_LEV is
'����ˮƽ';

comment on column F_ECIF_CUST_INFO.HOUSE_TYP is
'סլ����';

comment on column F_ECIF_CUST_INFO.INDV_TAX_NO is
'������˰��';

comment on column F_ECIF_CUST_INFO.INDV_INSURS_NO is
'������ᱣ�պ�';

comment on column F_ECIF_CUST_INFO.HAVE_WORK_YR is
'�μӹ������';

comment on column F_ECIF_CUST_INFO.OCCUP_COD is
'ְҵ';

comment on column F_ECIF_CUST_INFO.QUALIFICATION_STS is
'ִҵ�ʸ�״��';

comment on column F_ECIF_CUST_INFO.EMPLOYER_NAME is
'������λ����';

comment on column F_ECIF_CUST_INFO.UNIT_CHAR is
'��λ����';

comment on column F_ECIF_CUST_INFO.UNIT_WORK_DT is
'�ֵ�λ��������';

comment on column F_ECIF_CUST_INFO.WORK_NO is
'����';

comment on column F_ECIF_CUST_INFO.POSN is
'ְ��';

comment on column F_ECIF_CUST_INFO.OFRN is
'ְ��';

comment on column F_ECIF_CUST_INFO.TITL is
'ְ��';

comment on column F_ECIF_CUST_INFO.MN_INCO is
'������';

comment on column F_ECIF_CUST_INFO.ECON_RESUR is
'��Ҫ������Դ';

comment on column F_ECIF_CUST_INFO.OTH_ECON_RESUR is
'����������Դ';

comment on column F_ECIF_CUST_INFO.DEPEND_CNT is
'��������';

comment on column F_ECIF_CUST_INFO.LANGUAGE_PRE is
'����ϰ��';

comment on column F_ECIF_CUST_INFO.AFF_INSTN_NO is
'��������';

comment on column F_ECIF_CUST_INFO.CUST_MNGR_COD is
'�ͻ��������';

comment on column F_ECIF_CUST_INFO.CUST_STS is
'�ͻ�״��';

comment on column F_ECIF_CUST_INFO.EMP_FLG is
'Ա����־';

comment on column F_ECIF_CUST_INFO.POT_VIP_FLG is
'Ǳ��VIP��־';

comment on column F_ECIF_CUST_INFO.SPEC_VIP_FLG is
'����VIP��־';

comment on column F_ECIF_CUST_INFO.INDV_CUST_ACCUM_TRN_LMT is
'���˿ͻ��ۼ�ת���޶�';

comment on column F_ECIF_CUST_INFO.CRED_CRD_GUAR_CNT is
'���ÿ���������';

comment on column F_ECIF_CUST_INFO.FAMI_AVG_MN_INCO is
'��ͥ�˾�������';

comment on column F_ECIF_CUST_INFO.FAMI_CAPI is
'��ͥ���ʲ�';

comment on column F_ECIF_CUST_INFO.FAMI_DEBT is
'��ͥ�ܸ�ծ';

comment on column F_ECIF_CUST_INFO.FAMI_MN_INCO is
'��ͥ������';

comment on column F_ECIF_CUST_INFO.GRAD_DT is
'��ҵ����';

comment on column F_ECIF_CUST_INFO.CHILD_FLG is
'�Ƿ�����Ů';

comment on column F_ECIF_CUST_INFO.INDUSTRY_TYP is
'������ҵ����';

comment on column F_ECIF_CUST_INFO.FAMI_GUAR_TOTL is
'��ͥ���ⵣ���ܶ�';

comment on column F_ECIF_CUST_INFO.PLAN_CPTL_CERT_NO is
'ͳ���ʽ�֤����';

comment on column F_ECIF_CUST_INFO.STUDY_INST is
'����Ժϵ';

comment on column F_ECIF_CUST_INFO.STUDY_SPEC is
'רҵ';

comment on column F_ECIF_CUST_INFO.RESI_YR is
'���ؾ�סʱ��';

comment on column F_ECIF_CUST_INFO.CERT_TYP is
'֤������';

comment on column F_ECIF_CUST_INFO.CERT_NO is
'֤������';

comment on column F_ECIF_CUST_INFO.PRIM_NAT is
'���ڹ�';

comment on column F_ECIF_CUST_INFO.RSDNT_NAT is
'��ס��';

comment on column F_ECIF_CUST_INFO.CONC_CUST_FLG is
'��ע�ͻ���־';

comment on column F_ECIF_CUST_INFO.BEST_CONT_TM is
'�����ϵʱ��';

comment on column F_ECIF_CUST_INFO.BEST_CONT_STY is
'�����ϵ��ʽ';

comment on column F_ECIF_CUST_INFO.INDV_LEV_TYP is
'���ŵȼ����';

comment on column F_ECIF_CUST_INFO.INDV_LEV_COD is
'���ŵȼ�';

comment on column F_ECIF_CUST_INFO.CRLMT is
'���ö��';

comment on column F_ECIF_CUST_INFO.CRED_LOTP is
'���û���';

comment on column F_ECIF_CUST_INFO.ADDR_ID is
'��ϵ��ַID';

