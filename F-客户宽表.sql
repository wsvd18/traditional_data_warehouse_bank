
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
'个人高端客户信息表';

comment on column F_ECIF_CUST_INFO.ECIF_CUST_NO is
'客户编号';

comment on column F_ECIF_CUST_INFO.CUST_NAME is
'客户姓名';

comment on column F_ECIF_CUST_INFO.BIRTH_DT is
'出生日期';

comment on column F_ECIF_CUST_INFO.SEX is
'性别';

comment on column F_ECIF_CUST_INFO.MRG_STS is
'婚姻状态';

comment on column F_ECIF_CUST_INFO.REGISTER is
'户籍';

comment on column F_ECIF_CUST_INFO.PPL_COD is
'民族代码';

comment on column F_ECIF_CUST_INFO.COU_CERT_NO is
'配偶证件号码';

comment on column F_ECIF_CUST_INFO.COU_NAME is
'配偶姓名';

comment on column F_ECIF_CUST_INFO.RELIGION is
'宗教信仰';

comment on column F_ECIF_CUST_INFO.EDUC_LEV is
'教育水平';

comment on column F_ECIF_CUST_INFO.HOUSE_TYP is
'住宅类型';

comment on column F_ECIF_CUST_INFO.INDV_TAX_NO is
'个人纳税号';

comment on column F_ECIF_CUST_INFO.INDV_INSURS_NO is
'个人社会保险号';

comment on column F_ECIF_CUST_INFO.HAVE_WORK_YR is
'参加工作年份';

comment on column F_ECIF_CUST_INFO.OCCUP_COD is
'职业';

comment on column F_ECIF_CUST_INFO.QUALIFICATION_STS is
'执业资格状况';

comment on column F_ECIF_CUST_INFO.EMPLOYER_NAME is
'工作单位名称';

comment on column F_ECIF_CUST_INFO.UNIT_CHAR is
'单位性质';

comment on column F_ECIF_CUST_INFO.UNIT_WORK_DT is
'现单位工作年限';

comment on column F_ECIF_CUST_INFO.WORK_NO is
'工号';

comment on column F_ECIF_CUST_INFO.POSN is
'职务';

comment on column F_ECIF_CUST_INFO.OFRN is
'职级';

comment on column F_ECIF_CUST_INFO.TITL is
'职称';

comment on column F_ECIF_CUST_INFO.MN_INCO is
'月收入';

comment on column F_ECIF_CUST_INFO.ECON_RESUR is
'主要经济来源';

comment on column F_ECIF_CUST_INFO.OTH_ECON_RESUR is
'其他经济来源';

comment on column F_ECIF_CUST_INFO.DEPEND_CNT is
'供养人数';

comment on column F_ECIF_CUST_INFO.LANGUAGE_PRE is
'语言习惯';

comment on column F_ECIF_CUST_INFO.AFF_INSTN_NO is
'所属机构';

comment on column F_ECIF_CUST_INFO.CUST_MNGR_COD is
'客户经理代码';

comment on column F_ECIF_CUST_INFO.CUST_STS is
'客户状况';

comment on column F_ECIF_CUST_INFO.EMP_FLG is
'员工标志';

comment on column F_ECIF_CUST_INFO.POT_VIP_FLG is
'潜在VIP标志';

comment on column F_ECIF_CUST_INFO.SPEC_VIP_FLG is
'特殊VIP标志';

comment on column F_ECIF_CUST_INFO.INDV_CUST_ACCUM_TRN_LMT is
'个人客户累计转账限额';

comment on column F_ECIF_CUST_INFO.CRED_CRD_GUAR_CNT is
'信用卡担保次数';

comment on column F_ECIF_CUST_INFO.FAMI_AVG_MN_INCO is
'家庭人均月收入';

comment on column F_ECIF_CUST_INFO.FAMI_CAPI is
'家庭总资产';

comment on column F_ECIF_CUST_INFO.FAMI_DEBT is
'家庭总负债';

comment on column F_ECIF_CUST_INFO.FAMI_MN_INCO is
'家庭月收入';

comment on column F_ECIF_CUST_INFO.GRAD_DT is
'毕业年月';

comment on column F_ECIF_CUST_INFO.CHILD_FLG is
'是否有子女';

comment on column F_ECIF_CUST_INFO.INDUSTRY_TYP is
'从事行业类型';

comment on column F_ECIF_CUST_INFO.FAMI_GUAR_TOTL is
'家庭对外担保总额';

comment on column F_ECIF_CUST_INFO.PLAN_CPTL_CERT_NO is
'统筹资金证号码';

comment on column F_ECIF_CUST_INFO.STUDY_INST is
'所在院系';

comment on column F_ECIF_CUST_INFO.STUDY_SPEC is
'专业';

comment on column F_ECIF_CUST_INFO.RESI_YR is
'本地居住时间';

comment on column F_ECIF_CUST_INFO.CERT_TYP is
'证件类型';

comment on column F_ECIF_CUST_INFO.CERT_NO is
'证件号码';

comment on column F_ECIF_CUST_INFO.PRIM_NAT is
'所在国';

comment on column F_ECIF_CUST_INFO.RSDNT_NAT is
'居住国';

comment on column F_ECIF_CUST_INFO.CONC_CUST_FLG is
'关注客户标志';

comment on column F_ECIF_CUST_INFO.BEST_CONT_TM is
'最佳联系时间';

comment on column F_ECIF_CUST_INFO.BEST_CONT_STY is
'最佳联系方式';

comment on column F_ECIF_CUST_INFO.INDV_LEV_TYP is
'征信等级类别';

comment on column F_ECIF_CUST_INFO.INDV_LEV_COD is
'征信等级';

comment on column F_ECIF_CUST_INFO.CRLMT is
'信用额度';

comment on column F_ECIF_CUST_INFO.CRED_LOTP is
'信用积分';

comment on column F_ECIF_CUST_INFO.ADDR_ID is
'联系地址ID';

