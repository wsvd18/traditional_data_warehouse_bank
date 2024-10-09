prompt PL/SQL Developer Export User Objects for user BI_ODS@ORCL
prompt Created by Admin on 2024年8月7日
set define off
spool oltp-to-ods.log

prompt
prompt Creating table CI_CIE_CORP_CUST_INFO
prompt ====================================
prompt
create table BI_ODS.CI_CIE_CORP_CUST_INFO
(
  ecif_cust_no                   CHAR(32),
  corp_cust_info_id              CHAR(20),
  seq_no                         NUMBER(12),
  org_instn_cod                  CHAR(20),
  govn_cert_no                   CHAR(30),
  govn_expd_dt                   DATE,
  ln_crd_no                      CHAR(28),
  opac_perm_no                   CHAR(30),
  industry_typ                   CHAR(5),
  ccb_industry_typ               CHAR(10),
  belong_sys                     CHAR(10),
  ofc_pic_dept                   CHAR(10),
  cptl_pic_dept                  CHAR(10),
  entp_unit_char                 CHAR(10),
  entp_unit_econ_typ             CHAR(10),
  entp_unit_deal_org_typ         CHAR(10),
  econ_char                      CHAR(10),
  exist_dt                       DATE,
  reg_dt                         DATE,
  reg_cptl_curr_cod              CHAR(3),
  reg_cptl                       NUMBER(20,2),
  fact_rcv_cptl                  NUMBER(20,2),
  deal_prd                       CHAR(10),
  entp_size                      CHAR(4),
  entp_lev_cod                   CHAR(2),
  tax_reg_no                     CHAR(20),
  tax_condit                     CHAR(20),
  tax_reg_sts                    CHAR(20),
  taxr_scal                      CHAR(10),
  deal_typ                       CHAR(20),
  cust_main_busn                 CHAR(200),
  cust_oth_busn                  CHAR(200),
  lead_prod                      CHAR(20),
  emp_cnt                        NUMBER(12),
  emp_mn_avg_inco                CHAR(20),
  consign_corp_leader_name       CHAR(40),
  consign_corp_leader_cert_no    CHAR(19),
  consign_corp_leader_eff_bgn_dt DATE,
  consign_corp_leader_eff_end_dt DATE,
  fin_contr                      CHAR(60),
  deal_liab_pr                   CHAR(200),
  deal_post_liab_pr              CHAR(100),
  list_entp_flg                  CHAR(1),
  dbt_shar_cust_flg              CHAR(1),
  deb_into_shar_bank             CHAR(30),
  strp_bad_asst_cust_flg         CHAR(1),
  strp_bad_asst_offb             CHAR(30),
  high_tec_reg_flg               CHAR(1),
  cust_rela_mana_dept            CHAR(10),
  aff_instn_no                   CHAR(9),
  std_opun_cod                   CHAR(9),
  cust_mngr_cod                  CHAR(12),
  ccb_cret_cust_flg              CHAR(10),
  ccb_ipmrk_cust_flg             CHAR(10),
  inter_ctl_cust_flg             CHAR(10),
  ccb_rela_entp_flg              CHAR(10),
  ccb_entit_flg                  CHAR(10),
  ccb_coper_agr_cust_flg         CHAR(10),
  main_bank                      CHAR(20),
  reg_shop_flg                   CHAR(10),
  reg_mang_bank                  CHAR(9),
  base_dep_acct_no               CHAR(30),
  pena_sts                       CHAR(20),
  entp_cred_lev                  CHAR(3),
  entp_apti_lev                  CHAR(2),
  fcurr_bal_lmt                  NUMBER(20,2),
  ccb_cust_flg                   CHAR(10),
  asset_save_typ                 CHAR(10),
  base_acct_awbk                 CHAR(100),
  cert_typ                       CHAR(3),
  cert_no                        CHAR(20),
  prim_nat                       CHAR(3),
  rsdnt_nat                      CHAR(3),
  cust_lev                       CHAR(10),
  conc_cust_flg                  CHAR(10),
  best_cont_tm                   CHAR(10),
  best_cont_sty                  CHAR(10),
  upd_tlr                        CHAR(12),
  upd_instn                      CHAR(9),
ODS_1ST_LEV_BR_NO	CHAR(3),
ODS_SRC_DT          CHAR(23),
ODS_SRC_SYS_NO      CHAR(10),
ODS_LOAD_DT         CHAR(23)
)
;
comment on table BI_ODS.CI_CIE_CORP_CUST_INFO
  is '公司客户信息表';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.ecif_cust_no
  is '客户编号';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.corp_cust_info_id
  is 'organisationId';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.seq_no
  is 'sequenceNumber';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.org_instn_cod
  is '组织机构代码';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.govn_cert_no
  is '营业执照号';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.govn_expd_dt
  is '营业执照有效期';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.ln_crd_no
  is '贷款卡号';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.opac_perm_no
  is '开户许可证号';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.industry_typ
  is '行业类别';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.ccb_industry_typ
  is '建行信贷政策的行业分类';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.belong_sys
  is '所属系统';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.ofc_pic_dept
  is '上级主管部门';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.cptl_pic_dept
  is '资金主管部门';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.entp_unit_char
  is '企业单位性质';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.entp_unit_econ_typ
  is '企业单位经济类型';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.entp_unit_deal_org_typ
  is '企业单位经营组织形式小类';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.econ_char
  is '经济性质';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.exist_dt
  is '成立日期';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.reg_dt
  is '注册日期';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.reg_cptl_curr_cod
  is '注册资本币别';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.reg_cptl
  is '注册资本';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.fact_rcv_cptl
  is '实收资本';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.deal_prd
  is '经营期限';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.entp_size
  is '企业规模';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.entp_lev_cod
  is '企业级别代码';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.tax_reg_no
  is '税务登记编号';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.tax_condit
  is '纳税情况';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.tax_reg_sts
  is '税务登记状态';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.taxr_scal
  is '纳税人规模';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.deal_typ
  is '经营种类';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.cust_main_busn
  is '客户主营业务';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.cust_oth_busn
  is '客户兼营业务';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.lead_prod
  is '主导产品';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.emp_cnt
  is '员工总数';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.emp_mn_avg_inco
  is '员工月平均收入';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.consign_corp_leader_name
  is '委托法人名称';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.consign_corp_leader_cert_no
  is '委托法人证件号码';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.consign_corp_leader_eff_bgn_dt
  is '委托法人有效期起日';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.consign_corp_leader_eff_end_dt
  is '委托法人有效期迄日';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.fin_contr
  is '财务联系人';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.deal_liab_pr
  is '经营主责任人';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.deal_post_liab_pr
  is '经营岗位责任人';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.list_entp_flg
  is '是否上市企业';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.dbt_shar_cust_flg
  is '是否债款转股客户';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.deb_into_shar_bank
  is '债转股商业银行';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.strp_bad_asst_cust_flg
  is '是否剥离不良资产客户';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.strp_bad_asst_offb
  is '剥离不良资产的商业银行';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.high_tec_reg_flg
  is '是否在高新开发区注册';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.cust_rela_mana_dept
  is '客户关系管理部门';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.aff_instn_no
  is '所属机构';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.std_opun_cod
  is '基线机构编码';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.cust_mngr_cod
  is '客户经理代码';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.ccb_cret_cust_flg
  is '建行额度授信客户标志';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.ccb_ipmrk_cust_flg
  is '建行重点营销客户标志';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.inter_ctl_cust_flg
  is '内控名单客户标志';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.ccb_rela_entp_flg
  is '是否建行关联企业';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.ccb_entit_flg
  is '是否建行自办实体';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.ccb_coper_agr_cust_flg
  is '是否与建行签订银企合作协议';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.main_bank
  is '主办银行';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.reg_shop_flg
  is '注册商户标志';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.reg_mang_bank
  is '注册商户管辖行';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.base_dep_acct_no
  is '基本存款账户账号';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.pena_sts
  is '违约状态';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.entp_cred_lev
  is '企业信用等级';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.entp_apti_lev
  is '企业资质等级';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.fcurr_bal_lmt
  is '外币余额限制';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.ccb_cust_flg
  is '我行客户标志';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.asset_save_typ
  is '资产保全类型';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.base_acct_awbk
  is '基本账户开户行';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.cert_typ
  is '证件类型';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.cert_no
  is '证件号码';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.prim_nat
  is '所在国';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.rsdnt_nat
  is '居住国';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.cust_lev
  is '客户等级';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.conc_cust_flg
  is '关注客户标志';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.best_cont_tm
  is '最佳联系时间';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.best_cont_sty
  is '最佳联系方式';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.upd_tlr
  is '更新柜员';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.upd_instn
  is '更新机构';

prompt
prompt Creating table CI_CIPH_HIGH_BLACK_LIST_INFO
prompt ===========================================
prompt
create table BI_ODS.CI_CIPH_HIGH_BLACK_LIST_INFO
(
  ecif_cust_no       CHAR(21),
  cust_name          CHAR(80),
  cert_no            CHAR(20),
  cert_typ           CHAR(10),
  trnlst_flg         CHAR(10),
  trnlst_cause       CHAR(2),
  trnlst_dt          DATE,
  trnlst_desc        VARCHAR2(255),
  reg_black_list_cnt NUMBER(12),
  bank_id            CHAR(9),
  oper_id            CHAR(20),
  appv_dt            DATE,
  appv_opin          CHAR(10),
  appv_id            CHAR(20),
  data_src_bank      CHAR(9),
  data_src_typ       CHAR(10),
  data_src_unit      CHAR(4),
  manual_trnlst_flg  CHAR(1),
  ext_sys_no         CHAR(10),
  ext_sys_cust_no    CHAR(32),
ODS_1ST_LEV_BR_NO	CHAR(3),
ODS_SRC_DT          CHAR(23),
ODS_SRC_SYS_NO      CHAR(10),
ODS_LOAD_DT         CHAR(23)
)
;
comment on table BI_ODS.CI_CIPH_HIGH_BLACK_LIST_INFO
  is '个人高端黑名单信息表';
comment on column BI_ODS.CI_CIPH_HIGH_BLACK_LIST_INFO.ecif_cust_no
  is 'ECIF客户编号';
comment on column BI_ODS.CI_CIPH_HIGH_BLACK_LIST_INFO.cust_name
  is '客户姓名';
comment on column BI_ODS.CI_CIPH_HIGH_BLACK_LIST_INFO.cert_no
  is '证件号码';
comment on column BI_ODS.CI_CIPH_HIGH_BLACK_LIST_INFO.cert_typ
  is '证件类型';
comment on column BI_ODS.CI_CIPH_HIGH_BLACK_LIST_INFO.trnlst_flg
  is '转列标志';
comment on column BI_ODS.CI_CIPH_HIGH_BLACK_LIST_INFO.trnlst_cause
  is '转列原因';
comment on column BI_ODS.CI_CIPH_HIGH_BLACK_LIST_INFO.trnlst_dt
  is '转列日期';
comment on column BI_ODS.CI_CIPH_HIGH_BLACK_LIST_INFO.trnlst_desc
  is '转列说明';
comment on column BI_ODS.CI_CIPH_HIGH_BLACK_LIST_INFO.reg_black_list_cnt
  is '进入黑名单次数';
comment on column BI_ODS.CI_CIPH_HIGH_BLACK_LIST_INFO.bank_id
  is '经办行';
comment on column BI_ODS.CI_CIPH_HIGH_BLACK_LIST_INFO.oper_id
  is '经办人';
comment on column BI_ODS.CI_CIPH_HIGH_BLACK_LIST_INFO.appv_dt
  is '核准日期';
comment on column BI_ODS.CI_CIPH_HIGH_BLACK_LIST_INFO.appv_opin
  is '核准意见';
comment on column BI_ODS.CI_CIPH_HIGH_BLACK_LIST_INFO.appv_id
  is '核准人';
comment on column BI_ODS.CI_CIPH_HIGH_BLACK_LIST_INFO.data_src_bank
  is '数据来源分行';
comment on column BI_ODS.CI_CIPH_HIGH_BLACK_LIST_INFO.data_src_typ
  is '数据来源分类';
comment on column BI_ODS.CI_CIPH_HIGH_BLACK_LIST_INFO.data_src_unit
  is '数据来源单位';
comment on column BI_ODS.CI_CIPH_HIGH_BLACK_LIST_INFO.manual_trnlst_flg
  is '是否人工转列';
comment on column BI_ODS.CI_CIPH_HIGH_BLACK_LIST_INFO.ext_sys_no
  is '外部系统号';
comment on column BI_ODS.CI_CIPH_HIGH_BLACK_LIST_INFO.ext_sys_cust_no
  is '外部系统客户编号';

prompt
prompt Creating table CI_CIPH_HIGH_CUST_INFO
prompt =====================================
prompt
create table BI_ODS.CI_CIPH_HIGH_CUST_INFO
(
  ecif_cust_no            CHAR(32),
  cust_name               CHAR(32),
  birth_dt                DATE,
  sex                     CHAR(2),
  mrg_sts                 CHAR(2),
  register                CHAR(10),
  ppl_cod                 CHAR(2),
  cou_cert_no             CHAR(19),
  cou_name                CHAR(12),
  religion                CHAR(10),
  educ_lev                CHAR(2),
  house_typ               CHAR(10),
  indv_tax_no             CHAR(25),
  indv_insurs_no          CHAR(25),
  have_work_yr            CHAR(4),
  occup_cod               CHAR(10),
  qualification_sts       CHAR(20),
  employer_name           CHAR(40),
  unit_char               CHAR(10),
  unit_work_dt            DATE,
  work_no                 CHAR(18),
  posn                    CHAR(10),
  ofrn                    CHAR(8),
  titl                    CHAR(10),
  mn_inco                 CHAR(3),
  econ_resur              CHAR(20),
  oth_econ_resur          CHAR(46),
  depend_cnt              NUMBER(12),
  language_pre            CHAR(10),
  aff_instn_no            CHAR(9),
  cust_mngr_cod           CHAR(12),
  cust_sts                CHAR(4),
  emp_flg                 CHAR(1),
  pot_vip_flg             CHAR(10),
  spec_vip_flg            CHAR(10),
  indv_cust_accum_trn_lmt NUMBER(20,2),
  cred_crd_guar_cnt       NUMBER(12),
  fami_avg_mn_inco        NUMBER(20,2),
  fami_capi               NUMBER(20,2),
  fami_debt               NUMBER(20,2),
  fami_mn_inco            NUMBER(20,2),
  grad_dt                 CHAR(6),
  child_flg               CHAR(1),
  industry_typ            CHAR(10),
  fami_guar_totl          NUMBER(20,2),
  plan_cptl_cert_no       CHAR(32),
  study_inst              CHAR(80),
  study_spec              CHAR(80),
  resi_yr                 NUMBER(12),
  cert_typ                CHAR(3),
  cert_no                 CHAR(20),
  prim_nat                CHAR(3),
  rsdnt_nat               CHAR(3),
  conc_cust_flg           CHAR(10),
  best_cont_tm            CHAR(10),
  best_cont_sty           CHAR(10),
ODS_1ST_LEV_BR_NO	CHAR(3),
ODS_SRC_DT          CHAR(23),
ODS_SRC_SYS_NO      CHAR(10),
ODS_LOAD_DT         CHAR(23)
)
;
comment on table BI_ODS.CI_CIPH_HIGH_CUST_INFO
  is '个人高端客户信息表';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.ecif_cust_no
  is '客户编号';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.cust_name
  is '客户姓名';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.birth_dt
  is '出生日期';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.sex
  is '性别';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.mrg_sts
  is '婚姻状态';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.register
  is '户籍';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.ppl_cod
  is '民族代码';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.cou_cert_no
  is '配偶证件号码';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.cou_name
  is '配偶姓名';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.religion
  is '宗教信仰';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.educ_lev
  is '教育水平';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.house_typ
  is '住宅类型';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.indv_tax_no
  is '个人纳税号';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.indv_insurs_no
  is '个人社会保险号';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.have_work_yr
  is '参加工作年份';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.occup_cod
  is '职业';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.qualification_sts
  is '执业资格状况';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.employer_name
  is '工作单位名称';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.unit_char
  is '单位性质';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.unit_work_dt
  is '现单位工作年限';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.work_no
  is '工号';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.posn
  is '职务';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.ofrn
  is '职级';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.titl
  is '职称';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.mn_inco
  is '月收入';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.econ_resur
  is '主要经济来源';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.oth_econ_resur
  is '其他经济来源';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.depend_cnt
  is '供养人数';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.language_pre
  is '语言习惯';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.aff_instn_no
  is '所属机构';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.cust_mngr_cod
  is '客户经理代码';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.cust_sts
  is '客户状况';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.emp_flg
  is '员工标志';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.pot_vip_flg
  is '潜在VIP标志';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.spec_vip_flg
  is '特殊VIP标志';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.indv_cust_accum_trn_lmt
  is '个人客户累计转账限额';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.cred_crd_guar_cnt
  is '信用卡担保次数';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.fami_avg_mn_inco
  is '家庭人均月收入';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.fami_capi
  is '家庭总资产';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.fami_debt
  is '家庭总负债';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.fami_mn_inco
  is '家庭月收入';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.grad_dt
  is '毕业年月';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.child_flg
  is '是否有子女';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.industry_typ
  is '从事行业类型';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.fami_guar_totl
  is '家庭对外担保总额';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.plan_cptl_cert_no
  is '统筹资金证号码';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.study_inst
  is '所在院系';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.study_spec
  is '专业';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.resi_yr
  is '本地居住时间';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.cert_typ
  is '证件类型';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.cert_no
  is '证件号码';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.prim_nat
  is '所在国';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.rsdnt_nat
  is '居住国';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.conc_cust_flg
  is '关注客户标志';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.best_cont_tm
  is '最佳联系时间';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.best_cont_sty
  is '最佳联系方式';

prompt
prompt Creating table CI_CIPH_HIGH_INDV_LEV_INFO
prompt =========================================
prompt
create table BI_ODS.CI_CIPH_HIGH_INDV_LEV_INFO
(
  ecif_cust_no    CHAR(21),
  indv_lev_typ    CHAR(10),
  eval_instn      CHAR(40),
  eval_dt         DATE,
  indv_lev_cod    CHAR(10),
  crlmt           NUMBER(20,2),
  cred_lotp       NUMBER(12),
  eval_val        NUMBER(20,2),
  eval_desc       CHAR(200),
  bank_id         CHAR(9),
  ext_sys_cust_no CHAR(32),
  ext_sys_no      CHAR(10),
ODS_1ST_LEV_BR_NO	CHAR(3),
ODS_SRC_DT          CHAR(23),
ODS_SRC_SYS_NO      CHAR(10),
ODS_LOAD_DT         CHAR(23)
)
;
comment on table BI_ODS.CI_CIPH_HIGH_INDV_LEV_INFO
  is '个人高端个人等级信息表';
comment on column BI_ODS.CI_CIPH_HIGH_INDV_LEV_INFO.ecif_cust_no
  is 'ECIF客户编号';
comment on column BI_ODS.CI_CIPH_HIGH_INDV_LEV_INFO.indv_lev_typ
  is '征信等级类别';
comment on column BI_ODS.CI_CIPH_HIGH_INDV_LEV_INFO.eval_instn
  is '评定机构';
comment on column BI_ODS.CI_CIPH_HIGH_INDV_LEV_INFO.eval_dt
  is '评定日期';
comment on column BI_ODS.CI_CIPH_HIGH_INDV_LEV_INFO.indv_lev_cod
  is '征信等级';
comment on column BI_ODS.CI_CIPH_HIGH_INDV_LEV_INFO.crlmt
  is '信用额度';
comment on column BI_ODS.CI_CIPH_HIGH_INDV_LEV_INFO.cred_lotp
  is '信用积分';
comment on column BI_ODS.CI_CIPH_HIGH_INDV_LEV_INFO.eval_val
  is '评价分值';
comment on column BI_ODS.CI_CIPH_HIGH_INDV_LEV_INFO.eval_desc
  is '评价说明';
comment on column BI_ODS.CI_CIPH_HIGH_INDV_LEV_INFO.bank_id
  is '经办行';
comment on column BI_ODS.CI_CIPH_HIGH_INDV_LEV_INFO.ext_sys_cust_no
  is '外部系统客户编号';
comment on column BI_ODS.CI_CIPH_HIGH_INDV_LEV_INFO.ext_sys_no
  is '外部系统号';

prompt
prompt Creating table CI_CIPH_HIGH_PTY_ADDR_RELA
prompt =========================================
prompt
create table BI_ODS.CI_CIPH_HIGH_PTY_ADDR_RELA
(
  ecif_cust_no      CHAR(32),
  pty_addr_rela_typ CHAR(10),
  addr_id           CHAR(50),
ODS_1ST_LEV_BR_NO	CHAR(3),
ODS_SRC_DT          CHAR(23),
ODS_SRC_SYS_NO      CHAR(10),
ODS_LOAD_DT         CHAR(23)
)
;
comment on table BI_ODS.CI_CIPH_HIGH_PTY_ADDR_RELA
  is '个人高端参与人和联系地址的关系表';
comment on column BI_ODS.CI_CIPH_HIGH_PTY_ADDR_RELA.ecif_cust_no
  is '客户编号';
comment on column BI_ODS.CI_CIPH_HIGH_PTY_ADDR_RELA.pty_addr_rela_typ
  is '参与人与联系地址关系类型';
comment on column BI_ODS.CI_CIPH_HIGH_PTY_ADDR_RELA.addr_id
  is '联系地址ID';

prompt
prompt Creating table CI_CIPL_LOW_CUST_INFO
prompt ====================================
prompt
create table BI_ODS.CI_CIPL_LOW_CUST_INFO
(
  ecif_cust_no            CHAR(32),
  indv_id                 CHAR(20),
  seq_no                  NUMBER(12),
  birth_dt                DATE,
  sex                     CHAR(2),
  mrg_sts                 CHAR(2),
  register                CHAR(10),
  ppl_cod                 CHAR(2),
  cou_cert_no             CHAR(19),
  cou_name                CHAR(12),
  religion                CHAR(2),
  educ_lev                CHAR(2),
  house_typ               CHAR(10),
  indv_tax_no             CHAR(25),
  indv_insurs_no          CHAR(25),
  have_work_yr            CHAR(4),
  occup_cod               CHAR(20),
  qualification_sts       CHAR(20),
  employer_name           CHAR(40),
  unit_char               CHAR(10),
  unit_work_dt            DATE,
  work_no                 CHAR(18),
  posn                    CHAR(8),
  ofrn                    CHAR(8),
  titl                    CHAR(10),
  mn_inco                 CHAR(3),
  econ_resur              CHAR(20),
  oth_econ_resur          CHAR(46),
  depend_cnt              NUMBER(12),
  language_pre            CHAR(10),
  aff_instn_no            CHAR(9),
  std_opun_cod            CHAR(9),
  cust_mngr_cod           CHAR(12),
  cust_sts                CHAR(4),
  emp_flg                 CHAR(1),
  pot_vip_flg             CHAR(10),
  spec_vip_flg            CHAR(10),
  indv_cust_accum_trn_lmt NUMBER(20,2),
  cred_crd_guar_cnt       NUMBER(12),
  fami_avg_mn_inco        NUMBER(20,2),
  fami_capi               NUMBER(20,2),
  fami_debt               NUMBER(20,2),
  fami_mn_inco            NUMBER(20,2),
  grad_dt                 CHAR(6),
  child_flg               CHAR(1),
  industry_typ            CHAR(10),
  fami_guar_totl          NUMBER(20,2),
  plan_cptl_cert_no       CHAR(32),
  study_inst              CHAR(80),
  study_spec              CHAR(80),
  resi_yr                 NUMBER(12),
  cert_typ                CHAR(3),
  cert_no                 CHAR(20),
  prim_nat                CHAR(3),
  rsdnt_nat               CHAR(3),
  cust_lev                CHAR(10),
  conc_cust_flg           CHAR(10),
  best_cont_tm            CHAR(10),
  best_cont_sty           CHAR(10),
  upd_tlr                 CHAR(12),
  upd_instn               CHAR(9),
ODS_1ST_LEV_BR_NO	CHAR(3),
ODS_SRC_DT          CHAR(23),
ODS_SRC_SYS_NO      CHAR(10),
ODS_LOAD_DT         CHAR(23)
)
;
comment on table BI_ODS.CI_CIPL_LOW_CUST_INFO
  is '个人低端客户信息表';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.ecif_cust_no
  is '客户编号';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.indv_id
  is 'individualId';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.seq_no
  is 'sequenceNumber';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.birth_dt
  is '出生日期';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.sex
  is '性别';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.mrg_sts
  is '婚姻状态';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.register
  is '户籍';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.ppl_cod
  is '民族代码';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.cou_cert_no
  is '配偶证件号码';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.cou_name
  is '配偶姓名';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.religion
  is '宗教信仰';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.educ_lev
  is '教育水平';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.house_typ
  is '住宅类型';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.indv_tax_no
  is '个人纳税号';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.indv_insurs_no
  is '个人社会保险号';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.have_work_yr
  is '参加工作年份';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.occup_cod
  is '职业';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.qualification_sts
  is '执业资格状况';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.employer_name
  is '工作单位名称';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.unit_char
  is '单位性质';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.unit_work_dt
  is '现单位工作年限';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.work_no
  is '工号';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.posn
  is '职务';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.ofrn
  is '职级';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.titl
  is '职称';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.mn_inco
  is '月收入';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.econ_resur
  is '主要经济来源';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.oth_econ_resur
  is '其他经济来源';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.depend_cnt
  is '供养人数';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.language_pre
  is '语言习惯';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.aff_instn_no
  is '所属机构';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.std_opun_cod
  is '基线机构编码';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.cust_mngr_cod
  is '客户经理代码';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.cust_sts
  is '客户状况';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.emp_flg
  is '员工标志';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.pot_vip_flg
  is '潜在VIP标志';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.spec_vip_flg
  is '特殊VIP标志';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.indv_cust_accum_trn_lmt
  is '个人客户累计转账限额';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.cred_crd_guar_cnt
  is '信用卡担保次数';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.fami_avg_mn_inco
  is '家庭人均月收入';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.fami_capi
  is '家庭总资产';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.fami_debt
  is '家庭总负债';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.fami_mn_inco
  is '家庭月收入';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.grad_dt
  is '毕业年月';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.child_flg
  is '是否有子女';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.industry_typ
  is '从事行业类型';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.fami_guar_totl
  is '家庭对外担保总额';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.plan_cptl_cert_no
  is '统筹资金证号码';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.study_inst
  is '所在院系';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.study_spec
  is '专业';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.resi_yr
  is '本地居住时间';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.cert_typ
  is '证件类型';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.cert_no
  is '证件号码';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.prim_nat
  is '所在国';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.rsdnt_nat
  is '居住国';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.cust_lev
  is '客户等级';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.conc_cust_flg
  is '关注客户标志';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.best_cont_tm
  is '最佳联系时间';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.best_cont_sty
  is '最佳联系方式';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.upd_tlr
  is '更新柜员';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.upd_instn
  is '更新机构';

prompt
prompt Creating table CI_MABIAO
prompt ========================
prompt
create table BI_ODS.CI_MABIAO
(
  code  VARCHAR2(100),
  name  VARCHAR2(100),
  mazhi VARCHAR2(100),
ODS_1ST_LEV_BR_NO	CHAR(3),
ODS_SRC_DT          CHAR(23),
ODS_SRC_SYS_NO      CHAR(10),
ODS_LOAD_DT         CHAR(23)
)
;

prompt
prompt Creating table LN_LNP_ACCT_AMWKPL06
prompt ===================================
prompt
create table BI_ODS.LN_LNP_ACCT_AMWKPL06
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
  filler        CHAR(18),
ODS_1ST_LEV_BR_NO	CHAR(3),
ODS_SRC_DT          CHAR(23),
ODS_SRC_SYS_NO      CHAR(10),
ODS_LOAD_DT         CHAR(23)
)
;
comment on table BI_ODS.LN_LNP_ACCT_AMWKPL06
  is '个人贷款放款流水档表';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL06.rt_cust_num
  is '贷款帐号';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL06.tr_ext_seq
  is '发放ID';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL06.tr_eff_date
  is '放款日期';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL06.tr_tran_amt
  is '放款金额';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL06.ba_used_bal
  is '累计放款金额';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL06.tr_tot_prin
  is '帐户余额';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL06.mi_pay_acct_1
  is '收款人帐号';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL06.tr_sys_date
  is '交易日期';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL06.tr_entry_time
  is '交易时间';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL06.tr_tran_cd
  is '交易代码';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL06.tr_tran_desc
  is '交易代码说明';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL06.filler
  is '填充字段';

prompt
prompt Creating table LN_LNP_ACCT_AMWKPL07
prompt ===================================
prompt
create table BI_ODS.LN_LNP_ACCT_AMWKPL07
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
  zx_last_fcp_paid      NUMBER(20,2),
ODS_1ST_LEV_BR_NO	CHAR(3),
ODS_SRC_DT          CHAR(23),
ODS_SRC_SYS_NO      CHAR(10),
ODS_LOAD_DT         CHAR(23)
)
;
comment on table BI_ODS.LN_LNP_ACCT_AMWKPL07
  is '个人贷款还款流水档表';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.rt_acct_num
  is '贷款帐号';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.zm_desc_15_1
  is '网点机构号';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.tr_eff_date
  is '记帐日期';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.tran_seq_int
  is '交易流水号';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.sche_pay_date
  is '计划还款日期';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.ac_start_date
  is '计息起期';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.curr_pmt_num
  is '当前还款期数';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.num_day_interval
  is '期内天数';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.prin_pay_amt
  is '实还本金';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.int_pay_amt
  is '实还利息';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.rt_oldst_due_date
  is '最近还款日期';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.penalty_prin_dq
  is '实还拖欠本金罚息';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.service_fee
  is '手续费';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.tr_tran_cd
  is '交易代码';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.rt_loan_rate
  is '利率';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.rt_acct_prod
  is '贷款种类';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.curr_penalty_int
  is '当前罚金';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.bal_of_int_rev
  is '应收利息余额';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.bal_of_coll_int
  is '催收利息余额';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.dq_principal
  is '拖欠本金余额';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.ac_rate
  is '罚息率';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.rt_ctl2_1
  is '币种代码';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.reversal_flag
  is '冲正标志';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.tr_tran_desc
  is '交易摘要';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.tr_sys_date
  is '交易日期';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.ba_due_not_pd
  is '应还本金';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.ac_due_not_pd
  is '应还利息';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.ff_due_not_pd
  is '应还违约金';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.rt_tot_prin
  is '本金余额';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.actual_alt01_pay
  is '实还利息复利';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.actual_penalty_pay
  is '实还违约金';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.rt_acct_stat
  is '结清标志';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.zx_last_nor_prn_paid
  is '实还正常本金';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.zx_last_past_due_paid
  is '实还逾期本金';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.zx_last_nor_int_paid
  is '实还正常利息';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.zx_last_past_int_paid
  is '实还逾期利息';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.zx_last_fcp_paid
  is '实还逾期费用';

prompt
prompt Creating table LN_LNP_CTRT_CBAPP
prompt ================================
prompt
create table BI_ODS.LN_LNP_CTRT_CBAPP
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
  loanstate         CHAR(1),
ODS_1ST_LEV_BR_NO	CHAR(3),
ODS_SRC_DT          CHAR(23),
ODS_SRC_SYS_NO      CHAR(10),
ODS_LOAD_DT         CHAR(23)
)
;
comment on table BI_ODS.LN_LNP_CTRT_CBAPP
  is '个人贷款申请信息档表';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.ecif_cust_no
  is 'ECIF客户编号 8';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.custname
  is '客户姓名';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.iscommac
  is '是否启用通贷帐户';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.currsign
  is '币种';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.loankind
  is '贷款种类';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.loantype
  is '组合贷款标志';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.firstorder
  is '组合贷款还款优先顺序';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.payperc
  is '偿还比例';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.fundsour
  is '资金来源';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.loanuse
  is '贷款用途';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.assukind
  is '担保方式';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.contdate
  is '申请日期';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.credcapi
  is '额度金额';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.cycflag
  is '是否循环';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.tcapi
  is '贷款金额';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.thistcapi
  is '开户放款金额#';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.termfreq
  is '期限频率';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.tterm
  is '贷款期限';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.retutype
  is '还款方式';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.trothdueday
  is '还款日约定';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.fixrateterm
  is '固定利率期数';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.firstduedate
  is '最初到期日';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.subsflag
  is '扣款类型';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.isenousubs
  is '是否足额扣款';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.firstpayamt
  is '首付款金额';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.firstpayperc
  is '首付款比例';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.corpid
  is '合作方编号';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.projid
  is '项目编号';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.corpappid
  is '合作项目额度编号';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.releway
  is '放款渠道';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.payeeacno
  is '收款人帐号';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.payeeacname
  is '收款人帐户名称';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.payeebankname
  is '收款人帐户开户行';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.intecalckind
  is '计息计算类型';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.intemeth
  is '计息方法';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.intebase
  is '计息基础';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.aheaddays
  is '帐单提前天数';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.basicinterate
  is '贷款基准利率';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.interate
  is '执行利率';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.intefineratefloat
  is '利息罚息浮动比例(%)';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.capifineratefloat
  is '本金罚息浮动比例(%)';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.finerate
  is '逾期利息利率[万分之/日]';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.capifinerate
  is '逾期本金利率[万分之/日]';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.foulrate
  is '违约金收取比率';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.emberatefloat
  is '挪用贷款罚息利率浮动比例(%)';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.begindate
  is '开户日期';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.enddate
  is '到期日期';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.loanacno
  is '贷款帐号';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.contkind
  is '借款合同格式';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.contno
  is '借款合同编号';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.apprname
  is '审批人姓名';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.apprtabno
  is '审批表编号';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.apprdate
  is '审批日期';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.apprflag
  is '审批意见';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.apprstate
  is '审批状态';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.loanstate
  is '贷款状态';

prompt
prompt Creating table LN_LNP_CUST_CBCREDCUST
prompt =====================================
prompt
create table BI_ODS.LN_LNP_CUST_CBCREDCUST
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
  credstate    CHAR(1),
ODS_1ST_LEV_BR_NO	CHAR(3),
ODS_SRC_DT          CHAR(23),
ODS_SRC_SYS_NO      CHAR(10),
ODS_LOAD_DT         CHAR(23)
)
;
comment on table BI_ODS.LN_LNP_CUST_CBCREDCUST
  is '个人贷款客户额度管理档表';
comment on column BI_ODS.LN_LNP_CUST_CBCREDCUST.acustcredid
  is 'ALS帐号';
comment on column BI_ODS.LN_LNP_CUST_CBCREDCUST.custcredno
  is '序号';
comment on column BI_ODS.LN_LNP_CUST_CBCREDCUST.ecif_cust_no
  is 'ECIF客户编号';
comment on column BI_ODS.LN_LNP_CUST_CBCREDCUST.custname
  is '客户姓名';
comment on column BI_ODS.LN_LNP_CUST_CBCREDCUST.currsign
  is '币种';
comment on column BI_ODS.LN_LNP_CUST_CBCREDCUST.credamt
  is '信用额度';
comment on column BI_ODS.LN_LNP_CUST_CBCREDCUST.assuamt
  is '保证额度';
comment on column BI_ODS.LN_LNP_CUST_CBCREDCUST.impaamt
  is '质押额度';
comment on column BI_ODS.LN_LNP_CUST_CBCREDCUST.mortamt
  is '抵押额度';
comment on column BI_ODS.LN_LNP_CUST_CBCREDCUST.credtotalamt
  is '授信总额度';
comment on column BI_ODS.LN_LNP_CUST_CBCREDCUST.begindate
  is '起始日期';
comment on column BI_ODS.LN_LNP_CUST_CBCREDCUST.tterm
  is '期限';
comment on column BI_ODS.LN_LNP_CUST_CBCREDCUST.enddate
  is '截止日期';
comment on column BI_ODS.LN_LNP_CUST_CBCREDCUST.cycflag
  is '额度是否循环';
comment on column BI_ODS.LN_LNP_CUST_CBCREDCUST.leftamt
  is '可用额度';
comment on column BI_ODS.LN_LNP_CUST_CBCREDCUST.bankid
  is '经办行';
comment on column BI_ODS.LN_LNP_CUST_CBCREDCUST.acbankid
  is '会计机构';
comment on column BI_ODS.LN_LNP_CUST_CBCREDCUST.audiname
  is '审核人姓名';
comment on column BI_ODS.LN_LNP_CUST_CBCREDCUST.apprtabno
  is '审批表编号';
comment on column BI_ODS.LN_LNP_CUST_CBCREDCUST.apprflag
  is '审批状态';
comment on column BI_ODS.LN_LNP_CUST_CBCREDCUST.operid
  is '经办人';
comment on column BI_ODS.LN_LNP_CUST_CBCREDCUST.apprname
  is '审批人姓名';
comment on column BI_ODS.LN_LNP_CUST_CBCREDCUST.apprdate
  is '审批日期';
comment on column BI_ODS.LN_LNP_CUST_CBCREDCUST.credstate
  is '客户额度状态';

prompt
prompt Creating table LN_MABIAO
prompt ========================
prompt
create table BI_ODS.LN_MABIAO
(
  code  VARCHAR2(100),
  name  VARCHAR2(100),
  mazhi VARCHAR2(100),
ODS_1ST_LEV_BR_NO	CHAR(3),
ODS_SRC_DT          CHAR(23),
ODS_SRC_SYS_NO      CHAR(10),
ODS_LOAD_DT         CHAR(23)
)
;


prompt Done
spool off
set define on
