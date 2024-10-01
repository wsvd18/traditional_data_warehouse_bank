prompt PL/SQL Developer import file
prompt Created on 2022年3月3日 by Administrator
set feedback off
set define off
prompt Creating CI_CIE_CORP_CUST_INFO...
create table CI_CIE_CORP_CUST_INFO
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
  upd_instn                      CHAR(9)
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
comment on table CI_CIE_CORP_CUST_INFO
  is '公司客户信息表';
comment on column CI_CIE_CORP_CUST_INFO.ecif_cust_no
  is '客户编号';
comment on column CI_CIE_CORP_CUST_INFO.corp_cust_info_id
  is 'organisationId';
comment on column CI_CIE_CORP_CUST_INFO.seq_no
  is 'sequenceNumber';
comment on column CI_CIE_CORP_CUST_INFO.org_instn_cod
  is '组织机构代码';
comment on column CI_CIE_CORP_CUST_INFO.govn_cert_no
  is '营业执照号';
comment on column CI_CIE_CORP_CUST_INFO.govn_expd_dt
  is '营业执照有效期';
comment on column CI_CIE_CORP_CUST_INFO.ln_crd_no
  is '贷款卡号';
comment on column CI_CIE_CORP_CUST_INFO.opac_perm_no
  is '开户许可证号';
comment on column CI_CIE_CORP_CUST_INFO.industry_typ
  is '行业类别';
comment on column CI_CIE_CORP_CUST_INFO.ccb_industry_typ
  is '建行信贷政策的行业分类';
comment on column CI_CIE_CORP_CUST_INFO.belong_sys
  is '所属系统';
comment on column CI_CIE_CORP_CUST_INFO.ofc_pic_dept
  is '上级主管部门';
comment on column CI_CIE_CORP_CUST_INFO.cptl_pic_dept
  is '资金主管部门';
comment on column CI_CIE_CORP_CUST_INFO.entp_unit_char
  is '企业单位性质';
comment on column CI_CIE_CORP_CUST_INFO.entp_unit_econ_typ
  is '企业单位经济类型';
comment on column CI_CIE_CORP_CUST_INFO.entp_unit_deal_org_typ
  is '企业单位经营组织形式小类';
comment on column CI_CIE_CORP_CUST_INFO.econ_char
  is '经济性质';
comment on column CI_CIE_CORP_CUST_INFO.exist_dt
  is '成立日期';
comment on column CI_CIE_CORP_CUST_INFO.reg_dt
  is '注册日期';
comment on column CI_CIE_CORP_CUST_INFO.reg_cptl_curr_cod
  is '注册资本币别';
comment on column CI_CIE_CORP_CUST_INFO.reg_cptl
  is '注册资本';
comment on column CI_CIE_CORP_CUST_INFO.fact_rcv_cptl
  is '实收资本';
comment on column CI_CIE_CORP_CUST_INFO.deal_prd
  is '经营期限';
comment on column CI_CIE_CORP_CUST_INFO.entp_size
  is '企业规模';
comment on column CI_CIE_CORP_CUST_INFO.entp_lev_cod
  is '企业级别代码';
comment on column CI_CIE_CORP_CUST_INFO.tax_reg_no
  is '税务登记编号';
comment on column CI_CIE_CORP_CUST_INFO.tax_condit
  is '纳税情况';
comment on column CI_CIE_CORP_CUST_INFO.tax_reg_sts
  is '税务登记状态';
comment on column CI_CIE_CORP_CUST_INFO.taxr_scal
  is '纳税人规模';
comment on column CI_CIE_CORP_CUST_INFO.deal_typ
  is '经营种类';
comment on column CI_CIE_CORP_CUST_INFO.cust_main_busn
  is '客户主营业务';
comment on column CI_CIE_CORP_CUST_INFO.cust_oth_busn
  is '客户兼营业务';
comment on column CI_CIE_CORP_CUST_INFO.lead_prod
  is '主导产品';
comment on column CI_CIE_CORP_CUST_INFO.emp_cnt
  is '员工总数';
comment on column CI_CIE_CORP_CUST_INFO.emp_mn_avg_inco
  is '员工月平均收入';
comment on column CI_CIE_CORP_CUST_INFO.consign_corp_leader_name
  is '委托法人名称';
comment on column CI_CIE_CORP_CUST_INFO.consign_corp_leader_cert_no
  is '委托法人证件号码';
comment on column CI_CIE_CORP_CUST_INFO.consign_corp_leader_eff_bgn_dt
  is '委托法人有效期起日';
comment on column CI_CIE_CORP_CUST_INFO.consign_corp_leader_eff_end_dt
  is '委托法人有效期迄日';
comment on column CI_CIE_CORP_CUST_INFO.fin_contr
  is '财务联系人';
comment on column CI_CIE_CORP_CUST_INFO.deal_liab_pr
  is '经营主责任人';
comment on column CI_CIE_CORP_CUST_INFO.deal_post_liab_pr
  is '经营岗位责任人';
comment on column CI_CIE_CORP_CUST_INFO.list_entp_flg
  is '是否上市企业';
comment on column CI_CIE_CORP_CUST_INFO.dbt_shar_cust_flg
  is '是否债款转股客户';
comment on column CI_CIE_CORP_CUST_INFO.deb_into_shar_bank
  is '债转股商业银行';
comment on column CI_CIE_CORP_CUST_INFO.strp_bad_asst_cust_flg
  is '是否剥离不良资产客户';
comment on column CI_CIE_CORP_CUST_INFO.strp_bad_asst_offb
  is '剥离不良资产的商业银行';
comment on column CI_CIE_CORP_CUST_INFO.high_tec_reg_flg
  is '是否在高新开发区注册';
comment on column CI_CIE_CORP_CUST_INFO.cust_rela_mana_dept
  is '客户关系管理部门';
comment on column CI_CIE_CORP_CUST_INFO.aff_instn_no
  is '所属机构';
comment on column CI_CIE_CORP_CUST_INFO.std_opun_cod
  is '基线机构编码';
comment on column CI_CIE_CORP_CUST_INFO.cust_mngr_cod
  is '客户经理代码';
comment on column CI_CIE_CORP_CUST_INFO.ccb_cret_cust_flg
  is '建行额度授信客户标志';
comment on column CI_CIE_CORP_CUST_INFO.ccb_ipmrk_cust_flg
  is '建行重点营销客户标志';
comment on column CI_CIE_CORP_CUST_INFO.inter_ctl_cust_flg
  is '内控名单客户标志';
comment on column CI_CIE_CORP_CUST_INFO.ccb_rela_entp_flg
  is '是否建行关联企业';
comment on column CI_CIE_CORP_CUST_INFO.ccb_entit_flg
  is '是否建行自办实体';
comment on column CI_CIE_CORP_CUST_INFO.ccb_coper_agr_cust_flg
  is '是否与建行签订银企合作协议';
comment on column CI_CIE_CORP_CUST_INFO.main_bank
  is '主办银行';
comment on column CI_CIE_CORP_CUST_INFO.reg_shop_flg
  is '注册商户标志';
comment on column CI_CIE_CORP_CUST_INFO.reg_mang_bank
  is '注册商户管辖行';
comment on column CI_CIE_CORP_CUST_INFO.base_dep_acct_no
  is '基本存款账户账号';
comment on column CI_CIE_CORP_CUST_INFO.pena_sts
  is '违约状态';
comment on column CI_CIE_CORP_CUST_INFO.entp_cred_lev
  is '企业信用等级';
comment on column CI_CIE_CORP_CUST_INFO.entp_apti_lev
  is '企业资质等级';
comment on column CI_CIE_CORP_CUST_INFO.fcurr_bal_lmt
  is '外币余额限制';
comment on column CI_CIE_CORP_CUST_INFO.ccb_cust_flg
  is '我行客户标志';
comment on column CI_CIE_CORP_CUST_INFO.asset_save_typ
  is '资产保全类型';
comment on column CI_CIE_CORP_CUST_INFO.base_acct_awbk
  is '基本账户开户行';
comment on column CI_CIE_CORP_CUST_INFO.cert_typ
  is '证件类型';
comment on column CI_CIE_CORP_CUST_INFO.cert_no
  is '证件号码';
comment on column CI_CIE_CORP_CUST_INFO.prim_nat
  is '所在国';
comment on column CI_CIE_CORP_CUST_INFO.rsdnt_nat
  is '居住国';
comment on column CI_CIE_CORP_CUST_INFO.cust_lev
  is '客户等级';
comment on column CI_CIE_CORP_CUST_INFO.conc_cust_flg
  is '关注客户标志';
comment on column CI_CIE_CORP_CUST_INFO.best_cont_tm
  is '最佳联系时间';
comment on column CI_CIE_CORP_CUST_INFO.best_cont_sty
  is '最佳联系方式';
comment on column CI_CIE_CORP_CUST_INFO.upd_tlr
  is '更新柜员';
comment on column CI_CIE_CORP_CUST_INFO.upd_instn
  is '更新机构';

prompt Creating CI_CIPH_HIGH_BLACK_LIST_INFO...
create table CI_CIPH_HIGH_BLACK_LIST_INFO
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
  ext_sys_cust_no    CHAR(32)
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
comment on table CI_CIPH_HIGH_BLACK_LIST_INFO
  is '个人高端黑名单信息表';
comment on column CI_CIPH_HIGH_BLACK_LIST_INFO.ecif_cust_no
  is 'ECIF客户编号';
comment on column CI_CIPH_HIGH_BLACK_LIST_INFO.cust_name
  is '客户姓名';
comment on column CI_CIPH_HIGH_BLACK_LIST_INFO.cert_no
  is '证件号码';
comment on column CI_CIPH_HIGH_BLACK_LIST_INFO.cert_typ
  is '证件类型';
comment on column CI_CIPH_HIGH_BLACK_LIST_INFO.trnlst_flg
  is '转列标志';
comment on column CI_CIPH_HIGH_BLACK_LIST_INFO.trnlst_cause
  is '转列原因';
comment on column CI_CIPH_HIGH_BLACK_LIST_INFO.trnlst_dt
  is '转列日期';
comment on column CI_CIPH_HIGH_BLACK_LIST_INFO.trnlst_desc
  is '转列说明';
comment on column CI_CIPH_HIGH_BLACK_LIST_INFO.reg_black_list_cnt
  is '进入黑名单次数';
comment on column CI_CIPH_HIGH_BLACK_LIST_INFO.bank_id
  is '经办行';
comment on column CI_CIPH_HIGH_BLACK_LIST_INFO.oper_id
  is '经办人';
comment on column CI_CIPH_HIGH_BLACK_LIST_INFO.appv_dt
  is '核准日期';
comment on column CI_CIPH_HIGH_BLACK_LIST_INFO.appv_opin
  is '核准意见';
comment on column CI_CIPH_HIGH_BLACK_LIST_INFO.appv_id
  is '核准人';
comment on column CI_CIPH_HIGH_BLACK_LIST_INFO.data_src_bank
  is '数据来源分行';
comment on column CI_CIPH_HIGH_BLACK_LIST_INFO.data_src_typ
  is '数据来源分类';
comment on column CI_CIPH_HIGH_BLACK_LIST_INFO.data_src_unit
  is '数据来源单位';
comment on column CI_CIPH_HIGH_BLACK_LIST_INFO.manual_trnlst_flg
  is '是否人工转列';
comment on column CI_CIPH_HIGH_BLACK_LIST_INFO.ext_sys_no
  is '外部系统号';
comment on column CI_CIPH_HIGH_BLACK_LIST_INFO.ext_sys_cust_no
  is '外部系统客户编号';

prompt Creating CI_CIPH_HIGH_CUST_INFO...
create table CI_CIPH_HIGH_CUST_INFO
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
  best_cont_sty           CHAR(10)
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
comment on table CI_CIPH_HIGH_CUST_INFO
  is '个人高端客户信息表';
comment on column CI_CIPH_HIGH_CUST_INFO.ecif_cust_no
  is '客户编号';
comment on column CI_CIPH_HIGH_CUST_INFO.cust_name
  is '客户姓名';
comment on column CI_CIPH_HIGH_CUST_INFO.birth_dt
  is '出生日期';
comment on column CI_CIPH_HIGH_CUST_INFO.sex
  is '性别';
comment on column CI_CIPH_HIGH_CUST_INFO.mrg_sts
  is '婚姻状态';
comment on column CI_CIPH_HIGH_CUST_INFO.register
  is '户籍';
comment on column CI_CIPH_HIGH_CUST_INFO.ppl_cod
  is '民族代码';
comment on column CI_CIPH_HIGH_CUST_INFO.cou_cert_no
  is '配偶证件号码';
comment on column CI_CIPH_HIGH_CUST_INFO.cou_name
  is '配偶姓名';
comment on column CI_CIPH_HIGH_CUST_INFO.religion
  is '宗教信仰';
comment on column CI_CIPH_HIGH_CUST_INFO.educ_lev
  is '教育水平';
comment on column CI_CIPH_HIGH_CUST_INFO.house_typ
  is '住宅类型';
comment on column CI_CIPH_HIGH_CUST_INFO.indv_tax_no
  is '个人纳税号';
comment on column CI_CIPH_HIGH_CUST_INFO.indv_insurs_no
  is '个人社会保险号';
comment on column CI_CIPH_HIGH_CUST_INFO.have_work_yr
  is '参加工作年份';
comment on column CI_CIPH_HIGH_CUST_INFO.occup_cod
  is '职业';
comment on column CI_CIPH_HIGH_CUST_INFO.qualification_sts
  is '执业资格状况';
comment on column CI_CIPH_HIGH_CUST_INFO.employer_name
  is '工作单位名称';
comment on column CI_CIPH_HIGH_CUST_INFO.unit_char
  is '单位性质';
comment on column CI_CIPH_HIGH_CUST_INFO.unit_work_dt
  is '现单位工作年限';
comment on column CI_CIPH_HIGH_CUST_INFO.work_no
  is '工号';
comment on column CI_CIPH_HIGH_CUST_INFO.posn
  is '职务';
comment on column CI_CIPH_HIGH_CUST_INFO.ofrn
  is '职级';
comment on column CI_CIPH_HIGH_CUST_INFO.titl
  is '职称';
comment on column CI_CIPH_HIGH_CUST_INFO.mn_inco
  is '月收入';
comment on column CI_CIPH_HIGH_CUST_INFO.econ_resur
  is '主要经济来源';
comment on column CI_CIPH_HIGH_CUST_INFO.oth_econ_resur
  is '其他经济来源';
comment on column CI_CIPH_HIGH_CUST_INFO.depend_cnt
  is '供养人数';
comment on column CI_CIPH_HIGH_CUST_INFO.language_pre
  is '语言习惯';
comment on column CI_CIPH_HIGH_CUST_INFO.aff_instn_no
  is '所属机构';
comment on column CI_CIPH_HIGH_CUST_INFO.cust_mngr_cod
  is '客户经理代码';
comment on column CI_CIPH_HIGH_CUST_INFO.cust_sts
  is '客户状况';
comment on column CI_CIPH_HIGH_CUST_INFO.emp_flg
  is '员工标志';
comment on column CI_CIPH_HIGH_CUST_INFO.pot_vip_flg
  is '潜在VIP标志';
comment on column CI_CIPH_HIGH_CUST_INFO.spec_vip_flg
  is '特殊VIP标志';
comment on column CI_CIPH_HIGH_CUST_INFO.indv_cust_accum_trn_lmt
  is '个人客户累计转账限额';
comment on column CI_CIPH_HIGH_CUST_INFO.cred_crd_guar_cnt
  is '信用卡担保次数';
comment on column CI_CIPH_HIGH_CUST_INFO.fami_avg_mn_inco
  is '家庭人均月收入';
comment on column CI_CIPH_HIGH_CUST_INFO.fami_capi
  is '家庭总资产';
comment on column CI_CIPH_HIGH_CUST_INFO.fami_debt
  is '家庭总负债';
comment on column CI_CIPH_HIGH_CUST_INFO.fami_mn_inco
  is '家庭月收入';
comment on column CI_CIPH_HIGH_CUST_INFO.grad_dt
  is '毕业年月';
comment on column CI_CIPH_HIGH_CUST_INFO.child_flg
  is '是否有子女';
comment on column CI_CIPH_HIGH_CUST_INFO.industry_typ
  is '从事行业类型';
comment on column CI_CIPH_HIGH_CUST_INFO.fami_guar_totl
  is '家庭对外担保总额';
comment on column CI_CIPH_HIGH_CUST_INFO.plan_cptl_cert_no
  is '统筹资金证号码';
comment on column CI_CIPH_HIGH_CUST_INFO.study_inst
  is '所在院系';
comment on column CI_CIPH_HIGH_CUST_INFO.study_spec
  is '专业';
comment on column CI_CIPH_HIGH_CUST_INFO.resi_yr
  is '本地居住时间';
comment on column CI_CIPH_HIGH_CUST_INFO.cert_typ
  is '证件类型';
comment on column CI_CIPH_HIGH_CUST_INFO.cert_no
  is '证件号码';
comment on column CI_CIPH_HIGH_CUST_INFO.prim_nat
  is '所在国';
comment on column CI_CIPH_HIGH_CUST_INFO.rsdnt_nat
  is '居住国';
comment on column CI_CIPH_HIGH_CUST_INFO.conc_cust_flg
  is '关注客户标志';
comment on column CI_CIPH_HIGH_CUST_INFO.best_cont_tm
  is '最佳联系时间';
comment on column CI_CIPH_HIGH_CUST_INFO.best_cont_sty
  is '最佳联系方式';

prompt Creating CI_CIPH_HIGH_INDV_LEV_INFO...
create table CI_CIPH_HIGH_INDV_LEV_INFO
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
  ext_sys_no      CHAR(10)
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
comment on table CI_CIPH_HIGH_INDV_LEV_INFO
  is '个人高端个人等级信息表';
comment on column CI_CIPH_HIGH_INDV_LEV_INFO.ecif_cust_no
  is 'ECIF客户编号';
comment on column CI_CIPH_HIGH_INDV_LEV_INFO.indv_lev_typ
  is '征信等级类别';
comment on column CI_CIPH_HIGH_INDV_LEV_INFO.eval_instn
  is '评定机构';
comment on column CI_CIPH_HIGH_INDV_LEV_INFO.eval_dt
  is '评定日期';
comment on column CI_CIPH_HIGH_INDV_LEV_INFO.indv_lev_cod
  is '征信等级';
comment on column CI_CIPH_HIGH_INDV_LEV_INFO.crlmt
  is '信用额度';
comment on column CI_CIPH_HIGH_INDV_LEV_INFO.cred_lotp
  is '信用积分';
comment on column CI_CIPH_HIGH_INDV_LEV_INFO.eval_val
  is '评价分值';
comment on column CI_CIPH_HIGH_INDV_LEV_INFO.eval_desc
  is '评价说明';
comment on column CI_CIPH_HIGH_INDV_LEV_INFO.bank_id
  is '经办行';
comment on column CI_CIPH_HIGH_INDV_LEV_INFO.ext_sys_cust_no
  is '外部系统客户编号';
comment on column CI_CIPH_HIGH_INDV_LEV_INFO.ext_sys_no
  is '外部系统号';

prompt Creating CI_CIPH_HIGH_PTY_ADDR_RELA...
create table CI_CIPH_HIGH_PTY_ADDR_RELA
(
  ecif_cust_no      CHAR(32),
  pty_addr_rela_typ CHAR(10),
  addr_id           CHAR(50)
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
comment on table CI_CIPH_HIGH_PTY_ADDR_RELA
  is '个人高端参与人和联系地址的关系表';
comment on column CI_CIPH_HIGH_PTY_ADDR_RELA.ecif_cust_no
  is '客户编号';
comment on column CI_CIPH_HIGH_PTY_ADDR_RELA.pty_addr_rela_typ
  is '参与人与联系地址关系类型';
comment on column CI_CIPH_HIGH_PTY_ADDR_RELA.addr_id
  is '联系地址ID';

prompt Creating CI_CIPL_LOW_CUST_INFO...
create table CI_CIPL_LOW_CUST_INFO
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
  upd_instn               CHAR(9)
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
comment on table CI_CIPL_LOW_CUST_INFO
  is '个人低端客户信息表';
comment on column CI_CIPL_LOW_CUST_INFO.ecif_cust_no
  is '客户编号';
comment on column CI_CIPL_LOW_CUST_INFO.indv_id
  is 'individualId';
comment on column CI_CIPL_LOW_CUST_INFO.seq_no
  is 'sequenceNumber';
comment on column CI_CIPL_LOW_CUST_INFO.birth_dt
  is '出生日期';
comment on column CI_CIPL_LOW_CUST_INFO.sex
  is '性别';
comment on column CI_CIPL_LOW_CUST_INFO.mrg_sts
  is '婚姻状态';
comment on column CI_CIPL_LOW_CUST_INFO.register
  is '户籍';
comment on column CI_CIPL_LOW_CUST_INFO.ppl_cod
  is '民族代码';
comment on column CI_CIPL_LOW_CUST_INFO.cou_cert_no
  is '配偶证件号码';
comment on column CI_CIPL_LOW_CUST_INFO.cou_name
  is '配偶姓名';
comment on column CI_CIPL_LOW_CUST_INFO.religion
  is '宗教信仰';
comment on column CI_CIPL_LOW_CUST_INFO.educ_lev
  is '教育水平';
comment on column CI_CIPL_LOW_CUST_INFO.house_typ
  is '住宅类型';
comment on column CI_CIPL_LOW_CUST_INFO.indv_tax_no
  is '个人纳税号';
comment on column CI_CIPL_LOW_CUST_INFO.indv_insurs_no
  is '个人社会保险号';
comment on column CI_CIPL_LOW_CUST_INFO.have_work_yr
  is '参加工作年份';
comment on column CI_CIPL_LOW_CUST_INFO.occup_cod
  is '职业';
comment on column CI_CIPL_LOW_CUST_INFO.qualification_sts
  is '执业资格状况';
comment on column CI_CIPL_LOW_CUST_INFO.employer_name
  is '工作单位名称';
comment on column CI_CIPL_LOW_CUST_INFO.unit_char
  is '单位性质';
comment on column CI_CIPL_LOW_CUST_INFO.unit_work_dt
  is '现单位工作年限';
comment on column CI_CIPL_LOW_CUST_INFO.work_no
  is '工号';
comment on column CI_CIPL_LOW_CUST_INFO.posn
  is '职务';
comment on column CI_CIPL_LOW_CUST_INFO.ofrn
  is '职级';
comment on column CI_CIPL_LOW_CUST_INFO.titl
  is '职称';
comment on column CI_CIPL_LOW_CUST_INFO.mn_inco
  is '月收入';
comment on column CI_CIPL_LOW_CUST_INFO.econ_resur
  is '主要经济来源';
comment on column CI_CIPL_LOW_CUST_INFO.oth_econ_resur
  is '其他经济来源';
comment on column CI_CIPL_LOW_CUST_INFO.depend_cnt
  is '供养人数';
comment on column CI_CIPL_LOW_CUST_INFO.language_pre
  is '语言习惯';
comment on column CI_CIPL_LOW_CUST_INFO.aff_instn_no
  is '所属机构';
comment on column CI_CIPL_LOW_CUST_INFO.std_opun_cod
  is '基线机构编码';
comment on column CI_CIPL_LOW_CUST_INFO.cust_mngr_cod
  is '客户经理代码';
comment on column CI_CIPL_LOW_CUST_INFO.cust_sts
  is '客户状况';
comment on column CI_CIPL_LOW_CUST_INFO.emp_flg
  is '员工标志';
comment on column CI_CIPL_LOW_CUST_INFO.pot_vip_flg
  is '潜在VIP标志';
comment on column CI_CIPL_LOW_CUST_INFO.spec_vip_flg
  is '特殊VIP标志';
comment on column CI_CIPL_LOW_CUST_INFO.indv_cust_accum_trn_lmt
  is '个人客户累计转账限额';
comment on column CI_CIPL_LOW_CUST_INFO.cred_crd_guar_cnt
  is '信用卡担保次数';
comment on column CI_CIPL_LOW_CUST_INFO.fami_avg_mn_inco
  is '家庭人均月收入';
comment on column CI_CIPL_LOW_CUST_INFO.fami_capi
  is '家庭总资产';
comment on column CI_CIPL_LOW_CUST_INFO.fami_debt
  is '家庭总负债';
comment on column CI_CIPL_LOW_CUST_INFO.fami_mn_inco
  is '家庭月收入';
comment on column CI_CIPL_LOW_CUST_INFO.grad_dt
  is '毕业年月';
comment on column CI_CIPL_LOW_CUST_INFO.child_flg
  is '是否有子女';
comment on column CI_CIPL_LOW_CUST_INFO.industry_typ
  is '从事行业类型';
comment on column CI_CIPL_LOW_CUST_INFO.fami_guar_totl
  is '家庭对外担保总额';
comment on column CI_CIPL_LOW_CUST_INFO.plan_cptl_cert_no
  is '统筹资金证号码';
comment on column CI_CIPL_LOW_CUST_INFO.study_inst
  is '所在院系';
comment on column CI_CIPL_LOW_CUST_INFO.study_spec
  is '专业';
comment on column CI_CIPL_LOW_CUST_INFO.resi_yr
  is '本地居住时间';
comment on column CI_CIPL_LOW_CUST_INFO.cert_typ
  is '证件类型';
comment on column CI_CIPL_LOW_CUST_INFO.cert_no
  is '证件号码';
comment on column CI_CIPL_LOW_CUST_INFO.prim_nat
  is '所在国';
comment on column CI_CIPL_LOW_CUST_INFO.rsdnt_nat
  is '居住国';
comment on column CI_CIPL_LOW_CUST_INFO.cust_lev
  is '客户等级';
comment on column CI_CIPL_LOW_CUST_INFO.conc_cust_flg
  is '关注客户标志';
comment on column CI_CIPL_LOW_CUST_INFO.best_cont_tm
  is '最佳联系时间';
comment on column CI_CIPL_LOW_CUST_INFO.best_cont_sty
  is '最佳联系方式';
comment on column CI_CIPL_LOW_CUST_INFO.upd_tlr
  is '更新柜员';
comment on column CI_CIPL_LOW_CUST_INFO.upd_instn
  is '更新机构';

prompt Creating CI_MABIAO...
create table CI_MABIAO
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

prompt Disabling triggers for CI_CIE_CORP_CUST_INFO...
alter table CI_CIE_CORP_CUST_INFO disable all triggers;
prompt Disabling triggers for CI_CIPH_HIGH_BLACK_LIST_INFO...
alter table CI_CIPH_HIGH_BLACK_LIST_INFO disable all triggers;
prompt Disabling triggers for CI_CIPH_HIGH_CUST_INFO...
alter table CI_CIPH_HIGH_CUST_INFO disable all triggers;
prompt Disabling triggers for CI_CIPH_HIGH_INDV_LEV_INFO...
alter table CI_CIPH_HIGH_INDV_LEV_INFO disable all triggers;
prompt Disabling triggers for CI_CIPH_HIGH_PTY_ADDR_RELA...
alter table CI_CIPH_HIGH_PTY_ADDR_RELA disable all triggers;
prompt Disabling triggers for CI_CIPL_LOW_CUST_INFO...
alter table CI_CIPL_LOW_CUST_INFO disable all triggers;
prompt Disabling triggers for CI_MABIAO...
alter table CI_MABIAO disable all triggers;
prompt Loading CI_CIE_CORP_CUST_INFO...
insert into CI_CIE_CORP_CUST_INFO (ecif_cust_no, corp_cust_info_id, seq_no, org_instn_cod, govn_cert_no, govn_expd_dt, ln_crd_no, opac_perm_no, industry_typ, ccb_industry_typ, belong_sys, ofc_pic_dept, cptl_pic_dept, entp_unit_char, entp_unit_econ_typ, entp_unit_deal_org_typ, econ_char, exist_dt, reg_dt, reg_cptl_curr_cod, reg_cptl, fact_rcv_cptl, deal_prd, entp_size, entp_lev_cod, tax_reg_no, tax_condit, tax_reg_sts, taxr_scal, deal_typ, cust_main_busn, cust_oth_busn, lead_prod, emp_cnt, emp_mn_avg_inco, consign_corp_leader_name, consign_corp_leader_cert_no, consign_corp_leader_eff_bgn_dt, consign_corp_leader_eff_end_dt, fin_contr, deal_liab_pr, deal_post_liab_pr, list_entp_flg, dbt_shar_cust_flg, deb_into_shar_bank, strp_bad_asst_cust_flg, strp_bad_asst_offb, high_tec_reg_flg, cust_rela_mana_dept, aff_instn_no, std_opun_cod, cust_mngr_cod, ccb_cret_cust_flg, ccb_ipmrk_cust_flg, inter_ctl_cust_flg, ccb_rela_entp_flg, ccb_entit_flg, ccb_coper_agr_cust_flg, main_bank, reg_shop_flg, reg_mang_bank, base_dep_acct_no, pena_sts, entp_cred_lev, entp_apti_lev, fcurr_bal_lmt, ccb_cust_flg, asset_save_typ, base_acct_awbk, cert_typ, cert_no, prim_nat, rsdnt_nat, cust_lev, conc_cust_flg, best_cont_tm, best_cont_sty, upd_tlr, upd_instn)
values ('QY000001                        ', '00124454            ', 89, '78512416312         ', '7895232562                    ', to_date('01-06-2031', 'dd-mm-yyyy'), '78951285212525              ', '6280948925109                 ', 'E    ', 'A005      ', '企业      ', '10        ', '02        ', '民营单位  ', '个体经济  ', '个体经营  ', 'B01       ', to_date('12-05-2003', 'dd-mm-yyyy'), to_date('12-05-2003', 'dd-mm-yyyy'), 'CHY', 1000000, 400000, '30Y       ', 'CS02', '03', '7814562786          ', '1                   ', '1                   ', '100000    ', 'E48                 ', '房屋建筑                                                                                                                                                                                                ', '装修                                                                                                                                                                                                    ', '钢筋水泥            ', 100, '9000                ', '陈兵                                    ', '265412309856456098 ', to_date('12-05-2015', 'dd-mm-yyyy'), to_date('12-05-2035', 'dd-mm-yyyy'), '刘东华                                                      ', '王广伟                                                                                                                                                                                                  ', '蔡明                                                                                                ', '0', '0', '0                             ', '1', null, '0', '销售部    ', null, null, '86216       ', 'A03       ', 'Y4665     ', '489529U   ', '0         ', '0         ', '0         ', '上海浦东银行        ', '465625    ', '020      ', '7896215621563                 ', '1                   ', '04 ', '02', 500000, null, '01        ', '青岛银行                                                                                            ', '02 ', '236954576940596853  ', 'CHN', 'CHN', '02        ', 'Y465      ', '0830      ', '02        ', '邓国建      ', '7861565  ');
insert into CI_CIE_CORP_CUST_INFO (ecif_cust_no, corp_cust_info_id, seq_no, org_instn_cod, govn_cert_no, govn_expd_dt, ln_crd_no, opac_perm_no, industry_typ, ccb_industry_typ, belong_sys, ofc_pic_dept, cptl_pic_dept, entp_unit_char, entp_unit_econ_typ, entp_unit_deal_org_typ, econ_char, exist_dt, reg_dt, reg_cptl_curr_cod, reg_cptl, fact_rcv_cptl, deal_prd, entp_size, entp_lev_cod, tax_reg_no, tax_condit, tax_reg_sts, taxr_scal, deal_typ, cust_main_busn, cust_oth_busn, lead_prod, emp_cnt, emp_mn_avg_inco, consign_corp_leader_name, consign_corp_leader_cert_no, consign_corp_leader_eff_bgn_dt, consign_corp_leader_eff_end_dt, fin_contr, deal_liab_pr, deal_post_liab_pr, list_entp_flg, dbt_shar_cust_flg, deb_into_shar_bank, strp_bad_asst_cust_flg, strp_bad_asst_offb, high_tec_reg_flg, cust_rela_mana_dept, aff_instn_no, std_opun_cod, cust_mngr_cod, ccb_cret_cust_flg, ccb_ipmrk_cust_flg, inter_ctl_cust_flg, ccb_rela_entp_flg, ccb_entit_flg, ccb_coper_agr_cust_flg, main_bank, reg_shop_flg, reg_mang_bank, base_dep_acct_no, pena_sts, entp_cred_lev, entp_apti_lev, fcurr_bal_lmt, ccb_cust_flg, asset_save_typ, base_acct_awbk, cert_typ, cert_no, prim_nat, rsdnt_nat, cust_lev, conc_cust_flg, best_cont_tm, best_cont_sty, upd_tlr, upd_instn)
values ('QY000003                        ', '000579445           ', 15, '53145420220         ', '7418529630                    ', to_date('10-03-2027', 'dd-mm-yyyy'), '5625252512521               ', 'R48290R28942                  ', 'C    ', 'A007      ', '企业      ', '30        ', '04        ', '民营单位  ', '联营经济  ', '合伙经营  ', 'A02       ', to_date('03-08-2006', 'dd-mm-yyyy'), to_date('03-07-2006', 'dd-mm-yyyy'), 'CAD', 2000000, 350000, '20Y       ', 'CS01', '01', '86256325630         ', '1                   ', '1                   ', '500000    ', 'G53                 ', '汽车制造                                                                                                                                                                                                ', null, null, 2000, '10000               ', '王莹                                    ', '208957825892892405 ', to_date('23-06-2005', 'dd-mm-yyyy'), to_date('23-06-2025', 'dd-mm-yyyy'), '孔船                                                        ', '路长全                                                                                                                                                                                                  ', '姜晓华                                                                                              ', '1', '0', '0                             ', '0', '青岛银行                      ', '1', '市场营销部', '国有机构 ', '45621458 ', '2630        ', 'D07       ', 'G4556     ', '26265U    ', '0         ', '0         ', '0         ', '中国人民银行        ', '02585     ', '010      ', '456256256325632               ', '0                   ', '03 ', '01', 1000000, null, '01        ', '中国农业银行                                                                                        ', '02 ', '728905728181738517  ', 'CHN', 'CHN', '01        ', 'Y485      ', '1840      ', '03        ', '刘兴亮      ', '45625620 ');
insert into CI_CIE_CORP_CUST_INFO (ecif_cust_no, corp_cust_info_id, seq_no, org_instn_cod, govn_cert_no, govn_expd_dt, ln_crd_no, opac_perm_no, industry_typ, ccb_industry_typ, belong_sys, ofc_pic_dept, cptl_pic_dept, entp_unit_char, entp_unit_econ_typ, entp_unit_deal_org_typ, econ_char, exist_dt, reg_dt, reg_cptl_curr_cod, reg_cptl, fact_rcv_cptl, deal_prd, entp_size, entp_lev_cod, tax_reg_no, tax_condit, tax_reg_sts, taxr_scal, deal_typ, cust_main_busn, cust_oth_busn, lead_prod, emp_cnt, emp_mn_avg_inco, consign_corp_leader_name, consign_corp_leader_cert_no, consign_corp_leader_eff_bgn_dt, consign_corp_leader_eff_end_dt, fin_contr, deal_liab_pr, deal_post_liab_pr, list_entp_flg, dbt_shar_cust_flg, deb_into_shar_bank, strp_bad_asst_cust_flg, strp_bad_asst_offb, high_tec_reg_flg, cust_rela_mana_dept, aff_instn_no, std_opun_cod, cust_mngr_cod, ccb_cret_cust_flg, ccb_ipmrk_cust_flg, inter_ctl_cust_flg, ccb_rela_entp_flg, ccb_entit_flg, ccb_coper_agr_cust_flg, main_bank, reg_shop_flg, reg_mang_bank, base_dep_acct_no, pena_sts, entp_cred_lev, entp_apti_lev, fcurr_bal_lmt, ccb_cust_flg, asset_save_typ, base_acct_awbk, cert_typ, cert_no, prim_nat, rsdnt_nat, cust_lev, conc_cust_flg, best_cont_tm, best_cont_sty, upd_tlr, upd_instn)
values ('QY000002                        ', '000032154           ', 452, '56325203000         ', '4562452012                    ', to_date('21-05-2026', 'dd-mm-yyyy'), '05221626252624              ', 'Y43802748763                  ', 'J    ', 'A014      ', '企业      ', '20        ', '03        ', '国企单位  ', '国有经济  ', '国家经营  ', 'A01       ', to_date('17-06-2000', 'dd-mm-yyyy'), to_date('17-06-2000', 'dd-mm-yyyy'), 'CHY', 50000000, 3000000, '50Y       ', 'CS02', '03', '562896836           ', '1                   ', '1                   ', '200000    ', 'J68                 ', '理财产品销售                                                                                                                                                                                            ', '保险销售                                                                                                                                                                                                ', '股票，基金          ', 60, '8000+               ', '郭志列                                  ', '017671987065706341 ', to_date('08-03-2010', 'dd-mm-yyyy'), to_date('08-03-2030', 'dd-mm-yyyy'), '张巨峰                                                      ', '王吉万                                                                                                                                                                                                  ', '杨卓舒                                                                                              ', '0', '0', '0                             ', '1', null, '0', '销售部    ', null, null, '2358        ', 'F15       ', 'K1505     ', '262695U   ', '1         ', '0         ', '1         ', '中国建设银行        ', '969202    ', '0532     ', '632563256325                  ', '0                   ', '03 ', '03', 450000, 'JS0254    ', '02        ', '平安银行                                                                                            ', '02 ', '719083417171134124  ', 'TWN', 'TWN', '02        ', 'Y025      ', '1750      ', '02        ', '林国峰      ', '521598452');
commit;
prompt 3 records loaded
prompt Loading CI_CIPH_HIGH_BLACK_LIST_INFO...
insert into CI_CIPH_HIGH_BLACK_LIST_INFO (ecif_cust_no, cust_name, cert_no, cert_typ, trnlst_flg, trnlst_cause, trnlst_dt, trnlst_desc, reg_black_list_cnt, bank_id, oper_id, appv_dt, appv_opin, appv_id, data_src_bank, data_src_typ, data_src_unit, manual_trnlst_flg, ext_sys_no, ext_sys_cust_no)
values ('GD000006             ', '孙建国                                                                          ', '098765433456788987  ', '02        ', '1235422021', '01', to_date('01-05-2020', 'dd-mm-yyyy'), '1324', 0, '0532     ', '马翔                ', to_date('16-06-2020', 'dd-mm-yyyy'), '1         ', '李金允              ', '020      ', '0000006848', '0101', '0', '7896214564', '789625632563                    ');
insert into CI_CIPH_HIGH_BLACK_LIST_INFO (ecif_cust_no, cust_name, cert_no, cert_typ, trnlst_flg, trnlst_cause, trnlst_dt, trnlst_desc, reg_black_list_cnt, bank_id, oper_id, appv_dt, appv_opin, appv_id, data_src_bank, data_src_typ, data_src_unit, manual_trnlst_flg, ext_sys_no, ext_sys_cust_no)
values ('GD000007             ', '王云飞                                                                          ', '098765456789876543  ', '02        ', '0252625595', '01', to_date('14-07-2020', 'dd-mm-yyyy'), '1234312', 0, '020      ', '王富贵              ', to_date('14-08-2020', 'dd-mm-yyyy'), '1         ', '杜文源              ', '010      ', '0000007854', '0102', '0', '5632156325', '63256325632563                  ');
insert into CI_CIPH_HIGH_BLACK_LIST_INFO (ecif_cust_no, cust_name, cert_no, cert_typ, trnlst_flg, trnlst_cause, trnlst_dt, trnlst_desc, reg_black_list_cnt, bank_id, oper_id, appv_dt, appv_opin, appv_id, data_src_bank, data_src_typ, data_src_unit, manual_trnlst_flg, ext_sys_no, ext_sys_cust_no)
values ('GD000008             ', '孙立平                                                                          ', '098765434567876543  ', '02        ', '2928202229', '01', to_date('03-02-2021', 'dd-mm-yyyy'), '12341324', 1, '010      ', '杨万                ', to_date('03-03-2021', 'dd-mm-yyyy'), '1         ', '贾六                ', '0531     ', '0000001254', '0101', '0', '5632563214', '63056205635635                  ');
insert into CI_CIPH_HIGH_BLACK_LIST_INFO (ecif_cust_no, cust_name, cert_no, cert_typ, trnlst_flg, trnlst_cause, trnlst_dt, trnlst_desc, reg_black_list_cnt, bank_id, oper_id, appv_dt, appv_opin, appv_id, data_src_bank, data_src_typ, data_src_unit, manual_trnlst_flg, ext_sys_no, ext_sys_cust_no)
values ('GD000009             ', '杨海清                                                                          ', '456787654345678976  ', '02        ', '2009299229', '02', to_date('17-06-2020', 'dd-mm-yyyy'), '12341324', 0, '0532     ', '李云                ', to_date('17-07-2020', 'dd-mm-yyyy'), '1         ', '刘飞                ', '0532     ', '0000006474', '0103', '0', '9858522056', '53625625625                     ');
insert into CI_CIPH_HIGH_BLACK_LIST_INFO (ecif_cust_no, cust_name, cert_no, cert_typ, trnlst_flg, trnlst_cause, trnlst_dt, trnlst_desc, reg_black_list_cnt, bank_id, oper_id, appv_dt, appv_opin, appv_id, data_src_bank, data_src_typ, data_src_unit, manual_trnlst_flg, ext_sys_no, ext_sys_cust_no)
values ('GD000010             ', '刘龙                                                                            ', '345678765432345678  ', '02        ', '2962992922', '02', to_date('21-10-2020', 'dd-mm-yyyy'), '12343214132', 0, '0531     ', '郭小龙              ', to_date('21-11-2020', 'dd-mm-yyyy'), '1         ', '刘海欢              ', '0532     ', '0000004785', '0110', '1', '6456258206', '202520256325                    ');
commit;
prompt 5 records loaded
prompt Loading CI_CIPH_HIGH_CUST_INFO...
insert into CI_CIPH_HIGH_CUST_INFO (ecif_cust_no, cust_name, birth_dt, sex, mrg_sts, register, ppl_cod, cou_cert_no, cou_name, religion, educ_lev, house_typ, indv_tax_no, indv_insurs_no, have_work_yr, occup_cod, qualification_sts, employer_name, unit_char, unit_work_dt, work_no, posn, ofrn, titl, mn_inco, econ_resur, oth_econ_resur, depend_cnt, language_pre, aff_instn_no, cust_mngr_cod, cust_sts, emp_flg, pot_vip_flg, spec_vip_flg, indv_cust_accum_trn_lmt, cred_crd_guar_cnt, fami_avg_mn_inco, fami_capi, fami_debt, fami_mn_inco, grad_dt, child_flg, industry_typ, fami_guar_totl, plan_cptl_cert_no, study_inst, study_spec, resi_yr, cert_typ, cert_no, prim_nat, rsdnt_nat, conc_cust_flg, best_cont_tm, best_cont_sty)
values ('GD000001                        ', '孙成红                          ', to_date('01-05-1990', 'dd-mm-yyyy'), '1 ', '10', '山东青岛  ', '01', null, '            ', '佛教      ', '20', '高层住宅  ', '235459456231594562       ', '7564123025               ', '2020', '教师      ', '高等学校教师资格    ', '青岛大学                                ', '事业单位  ', to_date('11-05-2021', 'dd-mm-yyyy'), '002               ', '2         ', '教务主任', '0002      ', '20k', '工资                ', null, 2, '汉语      ', '教育机构 ', '001245      ', '009 ', '0', '0         ', '0         ', 100000, 0, 12000, 500000, 0, 40000, '201107', '1', 'P         ', 0, '345654321345                    ', '数学系                                                                          ', '数学                                                                            ', 60, '02 ', '213654202987462120  ', 'CHN', 'CHN', '0022345625', '1330      ', '01        ');
insert into CI_CIPH_HIGH_CUST_INFO (ecif_cust_no, cust_name, birth_dt, sex, mrg_sts, register, ppl_cod, cou_cert_no, cou_name, religion, educ_lev, house_typ, indv_tax_no, indv_insurs_no, have_work_yr, occup_cod, qualification_sts, employer_name, unit_char, unit_work_dt, work_no, posn, ofrn, titl, mn_inco, econ_resur, oth_econ_resur, depend_cnt, language_pre, aff_instn_no, cust_mngr_cod, cust_sts, emp_flg, pot_vip_flg, spec_vip_flg, indv_cust_accum_trn_lmt, cred_crd_guar_cnt, fami_avg_mn_inco, fami_capi, fami_debt, fami_mn_inco, grad_dt, child_flg, industry_typ, fami_guar_totl, plan_cptl_cert_no, study_inst, study_spec, resi_yr, cert_typ, cert_no, prim_nat, rsdnt_nat, conc_cust_flg, best_cont_tm, best_cont_sty)
values ('GD000002                        ', '丁冬芹                          ', to_date('16-07-1987', 'dd-mm-yyyy'), '1 ', '19', '山东济南  ', '01', '456987456358497852 ', '文杰        ', null, '20', '花园洋房  ', '155256856231594562       ', '4512032659               ', '2019', '医生      ', '临床执业医师资格    ', '青岛大学附属医院                        ', '事业单位  ', to_date('05-05-2021', 'dd-mm-yyyy'), '012               ', '1         ', '主治医师', '0002      ', '25k', '工资                ', '服务员                                        ', 3, '汉语      ', '医疗机构 ', '001425      ', '007 ', '0', '1         ', '0         ', 100000, 1, 13000, 550000, 0, 34000, '201007', '1', 'Q         ', 0, '23456543213456                  ', '临床诊疗学院                                                                    ', '中医学                                                                          ', 56, '02 ', '148841564870987654  ', 'CHN', 'CHN', '2545215326', '1243      ', '01        ');
insert into CI_CIPH_HIGH_CUST_INFO (ecif_cust_no, cust_name, birth_dt, sex, mrg_sts, register, ppl_cod, cou_cert_no, cou_name, religion, educ_lev, house_typ, indv_tax_no, indv_insurs_no, have_work_yr, occup_cod, qualification_sts, employer_name, unit_char, unit_work_dt, work_no, posn, ofrn, titl, mn_inco, econ_resur, oth_econ_resur, depend_cnt, language_pre, aff_instn_no, cust_mngr_cod, cust_sts, emp_flg, pot_vip_flg, spec_vip_flg, indv_cust_accum_trn_lmt, cred_crd_guar_cnt, fami_avg_mn_inco, fami_capi, fami_debt, fami_mn_inco, grad_dt, child_flg, industry_typ, fami_guar_totl, plan_cptl_cert_no, study_inst, study_spec, resi_yr, cert_typ, cert_no, prim_nat, rsdnt_nat, conc_cust_flg, best_cont_tm, best_cont_sty)
values ('GD000003                        ', '王璐                            ', to_date('13-06-1985', 'dd-mm-yyyy'), '1 ', '19', '山东烟台  ', '01', '787654567898765432 ', '郭襄洁      ', '伊斯兰教  ', '21', '花园洋房  ', '235885284920594562       ', '8654120385               ', '2018', '医生      ', '口腔执业医师资格    ', '济南口腔医院                            ', '民营单位  ', to_date('01-05-2021', 'dd-mm-yyyy'), '013               ', '3         ', '总主管  ', '0003      ', '30k', '工资                ', null, 1, '汉语      ', '医疗机构 ', '002154      ', '009 ', '0', '0         ', '0         ', 100000, 0, 10000, 560000, 0, 41000, '201107', '1', 'Q         ', 0, '76453256432                     ', '口腔系                                                                          ', '口腔专业                                                                        ', 76, '02 ', '234567890987654334  ', 'CHN', 'CHN', '5635862563', '0954      ', '03        ');
insert into CI_CIPH_HIGH_CUST_INFO (ecif_cust_no, cust_name, birth_dt, sex, mrg_sts, register, ppl_cod, cou_cert_no, cou_name, religion, educ_lev, house_typ, indv_tax_no, indv_insurs_no, have_work_yr, occup_cod, qualification_sts, employer_name, unit_char, unit_work_dt, work_no, posn, ofrn, titl, mn_inco, econ_resur, oth_econ_resur, depend_cnt, language_pre, aff_instn_no, cust_mngr_cod, cust_sts, emp_flg, pot_vip_flg, spec_vip_flg, indv_cust_accum_trn_lmt, cred_crd_guar_cnt, fami_avg_mn_inco, fami_capi, fami_debt, fami_mn_inco, grad_dt, child_flg, industry_typ, fami_guar_totl, plan_cptl_cert_no, study_inst, study_spec, resi_yr, cert_typ, cert_no, prim_nat, rsdnt_nat, conc_cust_flg, best_cont_tm, best_cont_sty)
values ('GD000004                        ', '孙立军                          ', to_date('07-07-1992', 'dd-mm-yyyy'), '2 ', '10', '河南郑州  ', '01', null, '            ', null, '31', '高层住宅  ', '235459456278554212       ', '2196548120               ', '2019', '翻译      ', '中级翻译资格        ', '北京译传思翻译有限公司                  ', '民营单位  ', to_date('14-04-2021', 'dd-mm-yyyy'), '014               ', '2         ', '副经理  ', '0002      ', '20k', '工资                ', '摄影                                          ', 0, '英语      ', null, '003269      ', '009 ', '0', '0         ', '0         ', 100000, 0, 11000, 650000, 100000, 28000, '201207', '1', 'I         ', 0, '12345675432                     ', '外国语学院                                                                      ', '英语专业                                                                        ', 45, '02 ', '123456789987654323  ', 'CHN', 'CHN', '9876546465', '0834      ', '03        ');
insert into CI_CIPH_HIGH_CUST_INFO (ecif_cust_no, cust_name, birth_dt, sex, mrg_sts, register, ppl_cod, cou_cert_no, cou_name, religion, educ_lev, house_typ, indv_tax_no, indv_insurs_no, have_work_yr, occup_cod, qualification_sts, employer_name, unit_char, unit_work_dt, work_no, posn, ofrn, titl, mn_inco, econ_resur, oth_econ_resur, depend_cnt, language_pre, aff_instn_no, cust_mngr_cod, cust_sts, emp_flg, pot_vip_flg, spec_vip_flg, indv_cust_accum_trn_lmt, cred_crd_guar_cnt, fami_avg_mn_inco, fami_capi, fami_debt, fami_mn_inco, grad_dt, child_flg, industry_typ, fami_guar_totl, plan_cptl_cert_no, study_inst, study_spec, resi_yr, cert_typ, cert_no, prim_nat, rsdnt_nat, conc_cust_flg, best_cont_tm, best_cont_sty)
values ('GD000005                        ', '杨福林                          ', to_date('03-08-1989', 'dd-mm-yyyy'), '1 ', '39', '北京      ', '01', null, '            ', '佛教      ', '10', '多层住宅  ', '235459456231966541       ', '5496543021               ', '2019', '设计人员  ', '初级设计资格        ', '海信                                    ', '国有企业  ', to_date('01-03-2021', 'dd-mm-yyyy'), '005               ', '3         ', '组长    ', '0004      ', '10k', '工资                ', '绘画                                          ', 0, '汉语      ', null, '003688      ', '009 ', '0', '0         ', '0         ', 50000, 0, 8000, 350000, 300000, 26000, '201507', '0', 'C         ', 0, '87453213456                     ', '计算机通信学院                                                                  ', '软件工程专业                                                                    ', 100, '02 ', '456789009876543456  ', 'CHN', 'CHN', '2201558663', '1032      ', '02        ');
insert into CI_CIPH_HIGH_CUST_INFO (ecif_cust_no, cust_name, birth_dt, sex, mrg_sts, register, ppl_cod, cou_cert_no, cou_name, religion, educ_lev, house_typ, indv_tax_no, indv_insurs_no, have_work_yr, occup_cod, qualification_sts, employer_name, unit_char, unit_work_dt, work_no, posn, ofrn, titl, mn_inco, econ_resur, oth_econ_resur, depend_cnt, language_pre, aff_instn_no, cust_mngr_cod, cust_sts, emp_flg, pot_vip_flg, spec_vip_flg, indv_cust_accum_trn_lmt, cred_crd_guar_cnt, fami_avg_mn_inco, fami_capi, fami_debt, fami_mn_inco, grad_dt, child_flg, industry_typ, fami_guar_totl, plan_cptl_cert_no, study_inst, study_spec, resi_yr, cert_typ, cert_no, prim_nat, rsdnt_nat, conc_cust_flg, best_cont_tm, best_cont_sty)
values ('GD000006                        ', '孙建国                          ', to_date('07-06-1991', 'dd-mm-yyyy'), '2 ', '23', '上海      ', '01', '854965871230256480 ', '陈雪冰      ', '佛教      ', '11', '花园洋房  ', '788521226231594562       ', '1302564897               ', '2017', '教师      ', '高等学校教师资格    ', '中国海洋大学                            ', '事业单位  ', to_date('07-02-2021', 'dd-mm-yyyy'), '008               ', '1         ', '副教授  ', '0003      ', '15k', '工资                ', null, 1, '汉语      ', '教育机构 ', '002356      ', '009 ', '0', '0         ', '0         ', 100000, 0, 12000, 500000, 100000, 32000, '201307', '1', 'P         ', 0, '764532134565                    ', '哲学系                                                                          ', '哲学专业                                                                        ', 78, '02 ', '098765433456788987  ', 'CHN', 'CHN', '2598784122', '1122      ', '03        ');
insert into CI_CIPH_HIGH_CUST_INFO (ecif_cust_no, cust_name, birth_dt, sex, mrg_sts, register, ppl_cod, cou_cert_no, cou_name, religion, educ_lev, house_typ, indv_tax_no, indv_insurs_no, have_work_yr, occup_cod, qualification_sts, employer_name, unit_char, unit_work_dt, work_no, posn, ofrn, titl, mn_inco, econ_resur, oth_econ_resur, depend_cnt, language_pre, aff_instn_no, cust_mngr_cod, cust_sts, emp_flg, pot_vip_flg, spec_vip_flg, indv_cust_accum_trn_lmt, cred_crd_guar_cnt, fami_avg_mn_inco, fami_capi, fami_debt, fami_mn_inco, grad_dt, child_flg, industry_typ, fami_guar_totl, plan_cptl_cert_no, study_inst, study_spec, resi_yr, cert_typ, cert_no, prim_nat, rsdnt_nat, conc_cust_flg, best_cont_tm, best_cont_sty)
values ('GD000007                        ', '王云飞                          ', to_date('13-11-1990', 'dd-mm-yyyy'), '2 ', '22', '天津      ', '01', '723697521365489659 ', '付小芳      ', null, '31', '多层住宅  ', '654346556231594562       ', '2310265423               ', '2016', '私营业主  ', '私营执业            ', null, '民营单位  ', to_date('14-11-2020', 'dd-mm-yyyy'), '003               ', '4         ', '总经理  ', '0002      ', '25k', '工资                ', null, 2, '汉语      ', null, '002356      ', '007 ', '0', '1         ', '0         ', 100000, 1, 11000, 660000, 0, 33000, '201107', '1', 'F         ', 0, '2345675432                      ', '工商管理学院                                                                    ', '工商管理专业                                                                    ', 80, '02 ', '098765456789876543  ', 'CHN', 'CHN', '2215522365', '1809      ', '03        ');
insert into CI_CIPH_HIGH_CUST_INFO (ecif_cust_no, cust_name, birth_dt, sex, mrg_sts, register, ppl_cod, cou_cert_no, cou_name, religion, educ_lev, house_typ, indv_tax_no, indv_insurs_no, have_work_yr, occup_cod, qualification_sts, employer_name, unit_char, unit_work_dt, work_no, posn, ofrn, titl, mn_inco, econ_resur, oth_econ_resur, depend_cnt, language_pre, aff_instn_no, cust_mngr_cod, cust_sts, emp_flg, pot_vip_flg, spec_vip_flg, indv_cust_accum_trn_lmt, cred_crd_guar_cnt, fami_avg_mn_inco, fami_capi, fami_debt, fami_mn_inco, grad_dt, child_flg, industry_typ, fami_guar_totl, plan_cptl_cert_no, study_inst, study_spec, resi_yr, cert_typ, cert_no, prim_nat, rsdnt_nat, conc_cust_flg, best_cont_tm, best_cont_sty)
values ('GD000008                        ', '孙立平                          ', to_date('01-02-1991', 'dd-mm-yyyy'), '1 ', '10', '重庆      ', '01', null, '            ', '基督教    ', '10', '高层住宅  ', '098759456231594845       ', '5201236520               ', '2021', '医生      ', '临床执业医师资格    ', '北京协和医院                            ', '事业单位  ', to_date('14-05-2021', 'dd-mm-yyyy'), '003               ', '2         ', '科长    ', '0004      ', '20k', '工资                ', null, 2, '汉语      ', '医疗机构 ', '008974      ', '009 ', '0', '0         ', '0         ', 100000, 0, 12000, 700000, 500000, 34000, '201307', '1', 'Q         ', 0, '437654321                       ', '临床诊疗学院                                                                    ', '法医学                                                                          ', 90, '02 ', '098765434567876543  ', 'CHN', 'CHN', '7852964185', '1900      ', '02        ');
insert into CI_CIPH_HIGH_CUST_INFO (ecif_cust_no, cust_name, birth_dt, sex, mrg_sts, register, ppl_cod, cou_cert_no, cou_name, religion, educ_lev, house_typ, indv_tax_no, indv_insurs_no, have_work_yr, occup_cod, qualification_sts, employer_name, unit_char, unit_work_dt, work_no, posn, ofrn, titl, mn_inco, econ_resur, oth_econ_resur, depend_cnt, language_pre, aff_instn_no, cust_mngr_cod, cust_sts, emp_flg, pot_vip_flg, spec_vip_flg, indv_cust_accum_trn_lmt, cred_crd_guar_cnt, fami_avg_mn_inco, fami_capi, fami_debt, fami_mn_inco, grad_dt, child_flg, industry_typ, fami_guar_totl, plan_cptl_cert_no, study_inst, study_spec, resi_yr, cert_typ, cert_no, prim_nat, rsdnt_nat, conc_cust_flg, best_cont_tm, best_cont_sty)
values ('GD000009                        ', '杨海清                          ', to_date('22-04-1992', 'dd-mm-yyyy'), '1 ', '22', '浙江杭州  ', '01', '021365895126452368 ', '王荣        ', '基督教    ', '20', '多层住宅  ', '440259456231594224       ', '2136468224               ', '2021', '技术工人  ', '中级工程师资格      ', '中国中车股份有限公司                    ', '国有企业  ', to_date('18-12-2020', 'dd-mm-yyyy'), '004               ', '2         ', '副经理  ', '0003      ', '25k', '工资                ', '外卖                                          ', 2, '汉语      ', null, '005987      ', '009 ', '0', '0         ', '0         ', 100000, 0, 13000, 670000, 0, 40000, '201207', '0', 'C         ', 0, '347654323456                    ', '轨道交通学院                                                                    ', '轨道设计专业                                                                    ', 89, '02 ', '456787654345678976  ', 'CHN', 'CHN', '5263632351', '2210      ', '03        ');
insert into CI_CIPH_HIGH_CUST_INFO (ecif_cust_no, cust_name, birth_dt, sex, mrg_sts, register, ppl_cod, cou_cert_no, cou_name, religion, educ_lev, house_typ, indv_tax_no, indv_insurs_no, have_work_yr, occup_cod, qualification_sts, employer_name, unit_char, unit_work_dt, work_no, posn, ofrn, titl, mn_inco, econ_resur, oth_econ_resur, depend_cnt, language_pre, aff_instn_no, cust_mngr_cod, cust_sts, emp_flg, pot_vip_flg, spec_vip_flg, indv_cust_accum_trn_lmt, cred_crd_guar_cnt, fami_avg_mn_inco, fami_capi, fami_debt, fami_mn_inco, grad_dt, child_flg, industry_typ, fami_guar_totl, plan_cptl_cert_no, study_inst, study_spec, resi_yr, cert_typ, cert_no, prim_nat, rsdnt_nat, conc_cust_flg, best_cont_tm, best_cont_sty)
values ('GD000010                        ', '刘龙                            ', to_date('28-08-1993', 'dd-mm-yyyy'), '1 ', '20', '陕西西安  ', '01', '456325915645236203 ', '赵容容      ', null, '20', '高层住宅  ', '232459456231985452       ', '0213565122               ', '2019', '设计人员  ', '初级设计资格        ', '海尔                                    ', '国有企业  ', to_date('23-10-2020', 'dd-mm-yyyy'), '016               ', '3         ', '助理    ', '0004      ', '10k', '工资                ', '外卖                                          ', 1, '汉语      ', null, '005698      ', '009 ', '0', '0         ', '0         ', 50000, 0, 9000, 300000, 0, 21000, '201507', '1', 'I         ', 0, '543568765423                    ', '工业设计学院                                                                    ', '机械设计专业                                                                    ', 90, '02 ', '345678765432345678  ', 'CHN', 'CHN', '0252442636', '0755      ', '02        ');
commit;
prompt 10 records loaded
prompt Loading CI_CIPH_HIGH_INDV_LEV_INFO...
insert into CI_CIPH_HIGH_INDV_LEV_INFO (ecif_cust_no, indv_lev_typ, eval_instn, eval_dt, indv_lev_cod, crlmt, cred_lotp, eval_val, eval_desc, bank_id, ext_sys_cust_no, ext_sys_no)
values ('GD000001             ', '一等      ', '东方金诚国际信用评估有限公司            ', to_date('05-01-2021', 'dd-mm-yyyy'), 'AAA       ', 200000, 21154, 90, 'sdfsa                                                                                                                                                                                                   ', '010      ', '7895485                         ', '86258962  ');
insert into CI_CIPH_HIGH_INDV_LEV_INFO (ecif_cust_no, indv_lev_typ, eval_instn, eval_dt, indv_lev_cod, crlmt, cred_lotp, eval_val, eval_desc, bank_id, ext_sys_cust_no, ext_sys_no)
values ('GD000001             ', '二等      ', '上海新世纪资信评估投资服务有限公司      ', to_date('04-05-2021', 'dd-mm-yyyy'), 'BBB       ', 250000, 12545, 88, 'dsafd                                                                                                                                                                                                   ', '020      ', '486252                          ', '56215625  ');
insert into CI_CIPH_HIGH_INDV_LEV_INFO (ecif_cust_no, indv_lev_typ, eval_instn, eval_dt, indv_lev_cod, crlmt, cred_lotp, eval_val, eval_desc, bank_id, ext_sys_cust_no, ext_sys_no)
values ('GD000002             ', '一等      ', '大公国际资信评估有限公司                ', to_date('19-01-2021', 'dd-mm-yyyy'), 'A         ', 300000, 56456, 87, 'dsfsasg                                                                                                                                                                                                 ', '0531     ', '52562786                        ', '562145621 ');
insert into CI_CIPH_HIGH_INDV_LEV_INFO (ecif_cust_no, indv_lev_typ, eval_instn, eval_dt, indv_lev_cod, crlmt, cred_lotp, eval_val, eval_desc, bank_id, ext_sys_cust_no, ext_sys_no)
values ('GD000003             ', '二等      ', '上海新世纪资信评估投资服务有限公司      ', to_date('09-02-2021', 'dd-mm-yyyy'), 'BB        ', 340000, 52562, 91, 'rtr                                                                                                                                                                                                     ', '0532     ', '5256248                         ', '5214521   ');
insert into CI_CIPH_HIGH_INDV_LEV_INFO (ecif_cust_no, indv_lev_typ, eval_instn, eval_dt, indv_lev_cod, crlmt, cred_lotp, eval_val, eval_desc, bank_id, ext_sys_cust_no, ext_sys_no)
values ('GD000004             ', '二等      ', '东方金诚国际信用评估有限公司            ', to_date('20-01-2021', 'dd-mm-yyyy'), 'B         ', 230000, 78621, 89, 'ertreq                                                                                                                                                                                                  ', '0531     ', '85225520                        ', '5252567852');
insert into CI_CIPH_HIGH_INDV_LEV_INFO (ecif_cust_no, indv_lev_typ, eval_instn, eval_dt, indv_lev_cod, crlmt, cred_lotp, eval_val, eval_desc, bank_id, ext_sys_cust_no, ext_sys_no)
values ('GD000005             ', '一等      ', '上海新世纪资信评估投资服务有限公司      ', to_date('15-02-2021', 'dd-mm-yyyy'), 'AA        ', 340000, 25621, 88, 'asdf                                                                                                                                                                                                    ', '0532     ', '5625208                         ', '52563256  ');
insert into CI_CIPH_HIGH_INDV_LEV_INFO (ecif_cust_no, indv_lev_typ, eval_instn, eval_dt, indv_lev_cod, crlmt, cred_lotp, eval_val, eval_desc, bank_id, ext_sys_cust_no, ext_sys_no)
values ('GD000006             ', '三等      ', '大公国际资信评估有限公司                ', to_date('25-02-2021', 'dd-mm-yyyy'), 'CCC       ', 450000, 56255, 77, 'xczvbx                                                                                                                                                                                                  ', '0532     ', '52527862                        ', '5625632562');
insert into CI_CIPH_HIGH_INDV_LEV_INFO (ecif_cust_no, indv_lev_typ, eval_instn, eval_dt, indv_lev_cod, crlmt, cred_lotp, eval_val, eval_desc, bank_id, ext_sys_cust_no, ext_sys_no)
values ('GD000007             ', '三等      ', '东方金诚国际信用评估有限公司            ', to_date('08-03-2021', 'dd-mm-yyyy'), 'CC        ', 430000, 25142, 86, 'cvzcxv                                                                                                                                                                                                  ', '010      ', '8256345                         ', '85214552  ');
insert into CI_CIPH_HIGH_INDV_LEV_INFO (ecif_cust_no, indv_lev_typ, eval_instn, eval_dt, indv_lev_cod, crlmt, cred_lotp, eval_val, eval_desc, bank_id, ext_sys_cust_no, ext_sys_no)
values ('GD000008             ', '三等      ', '上海新世纪资信评估投资服务有限公司      ', to_date('10-02-2021', 'dd-mm-yyyy'), 'CCC       ', 230000, 52524, 88, 'werty                                                                                                                                                                                                   ', '010      ', '525656                          ', '586214541 ');
insert into CI_CIPH_HIGH_INDV_LEV_INFO (ecif_cust_no, indv_lev_typ, eval_instn, eval_dt, indv_lev_cod, crlmt, cred_lotp, eval_val, eval_desc, bank_id, ext_sys_cust_no, ext_sys_no)
values ('GD000009             ', '三等      ', '上海新世纪资信评估投资服务有限公司      ', to_date('09-02-2021', 'dd-mm-yyyy'), 'C         ', 340000, 51454, 89, 'fgdsgf                                                                                                                                                                                                  ', '0531     ', '52252025                        ', '7820852052');
insert into CI_CIPH_HIGH_INDV_LEV_INFO (ecif_cust_no, indv_lev_typ, eval_instn, eval_dt, indv_lev_cod, crlmt, cred_lotp, eval_val, eval_desc, bank_id, ext_sys_cust_no, ext_sys_no)
values ('GD000010             ', '三等      ', '东方金诚国际信用评估有限公司            ', to_date('22-04-2021', 'dd-mm-yyyy'), 'CC        ', 400000, 24578, 78, 'gffewr                                                                                                                                                                                                  ', '0531     ', '78962584                        ', '584526985 ');
commit;
prompt 11 records loaded
prompt Loading CI_CIPH_HIGH_PTY_ADDR_RELA...
insert into CI_CIPH_HIGH_PTY_ADDR_RELA (ecif_cust_no, pty_addr_rela_typ, addr_id)
values ('GD000001                        ', '所属      ', '上海市浦东新区18号                                ');
insert into CI_CIPH_HIGH_PTY_ADDR_RELA (ecif_cust_no, pty_addr_rela_typ, addr_id)
values ('GD000002                        ', '所属      ', '北京市朝阳区22号                                  ');
insert into CI_CIPH_HIGH_PTY_ADDR_RELA (ecif_cust_no, pty_addr_rela_typ, addr_id)
values ('GD000003                        ', '所属      ', '山东省青岛市市北区8号                             ');
insert into CI_CIPH_HIGH_PTY_ADDR_RELA (ecif_cust_no, pty_addr_rela_typ, addr_id)
values ('GD000004                        ', '所属      ', '北京市朝阳区3号                                   ');
insert into CI_CIPH_HIGH_PTY_ADDR_RELA (ecif_cust_no, pty_addr_rela_typ, addr_id)
values ('GD000005                        ', '所属      ', '江苏省南京市玄武区4号                             ');
insert into CI_CIPH_HIGH_PTY_ADDR_RELA (ecif_cust_no, pty_addr_rela_typ, addr_id)
values ('GD000006                        ', '所属      ', '浙江省杭州市西湖区12号                            ');
insert into CI_CIPH_HIGH_PTY_ADDR_RELA (ecif_cust_no, pty_addr_rela_typ, addr_id)
values ('GD000007                        ', '所属      ', '山东省济南市历下区23号                            ');
insert into CI_CIPH_HIGH_PTY_ADDR_RELA (ecif_cust_no, pty_addr_rela_typ, addr_id)
values ('GD000008                        ', '所属      ', '山东省青岛市市南区34号                            ');
insert into CI_CIPH_HIGH_PTY_ADDR_RELA (ecif_cust_no, pty_addr_rela_typ, addr_id)
values ('GD000009                        ', '所属      ', '上海市徐汇区7号                                   ');
insert into CI_CIPH_HIGH_PTY_ADDR_RELA (ecif_cust_no, pty_addr_rela_typ, addr_id)
values ('GD000010                        ', '所属      ', '北京市海淀区36号                                  ');
commit;
prompt 10 records loaded
prompt Loading CI_CIPL_LOW_CUST_INFO...
insert into CI_CIPL_LOW_CUST_INFO (ecif_cust_no, indv_id, seq_no, birth_dt, sex, mrg_sts, register, ppl_cod, cou_cert_no, cou_name, religion, educ_lev, house_typ, indv_tax_no, indv_insurs_no, have_work_yr, occup_cod, qualification_sts, employer_name, unit_char, unit_work_dt, work_no, posn, ofrn, titl, mn_inco, econ_resur, oth_econ_resur, depend_cnt, language_pre, aff_instn_no, std_opun_cod, cust_mngr_cod, cust_sts, emp_flg, pot_vip_flg, spec_vip_flg, indv_cust_accum_trn_lmt, cred_crd_guar_cnt, fami_avg_mn_inco, fami_capi, fami_debt, fami_mn_inco, grad_dt, child_flg, industry_typ, fami_guar_totl, plan_cptl_cert_no, study_inst, study_spec, resi_yr, cert_typ, cert_no, prim_nat, rsdnt_nat, cust_lev, conc_cust_flg, best_cont_tm, best_cont_sty, upd_tlr, upd_instn)
values ('DD000001                        ', '0012568             ', 23, to_date('10-07-1990', 'dd-mm-yyyy'), '1 ', '10', '北京      ', '01', '23456789765234563  ', '王红        ', '3 ', '21', '高层住宅  ', '754698213021596452       ', '4565889546               ', '2015', '技术工人            ', '初级工程师          ', '特来电股份有限公司                      ', '民营单位  ', to_date('10-05-2021', 'dd-mm-yyyy'), '001245            ', '3       ', '0004    ', '助理      ', '8k ', '工资                ', '外卖                                          ', 0, '汉语      ', '010      ', '345674321', '786212225   ', '009 ', '0', '0         ', '0         ', 100000, 0, 7000, 200000, 0, 15000, '2014  ', '0', 'C         ', 0, '1234598707645321                ', '电气设计学院                                                                    ', '电气设计专业                                                                    ', 201602, '02 ', '236548120315698741  ', 'CHN', 'CHN', '04        ', '78521296  ', '0830      ', '03        ', '曹雪        ', '0532     ');
insert into CI_CIPL_LOW_CUST_INFO (ecif_cust_no, indv_id, seq_no, birth_dt, sex, mrg_sts, register, ppl_cod, cou_cert_no, cou_name, religion, educ_lev, house_typ, indv_tax_no, indv_insurs_no, have_work_yr, occup_cod, qualification_sts, employer_name, unit_char, unit_work_dt, work_no, posn, ofrn, titl, mn_inco, econ_resur, oth_econ_resur, depend_cnt, language_pre, aff_instn_no, std_opun_cod, cust_mngr_cod, cust_sts, emp_flg, pot_vip_flg, spec_vip_flg, indv_cust_accum_trn_lmt, cred_crd_guar_cnt, fami_avg_mn_inco, fami_capi, fami_debt, fami_mn_inco, grad_dt, child_flg, industry_typ, fami_guar_totl, plan_cptl_cert_no, study_inst, study_spec, resi_yr, cert_typ, cert_no, prim_nat, rsdnt_nat, cust_lev, conc_cust_flg, best_cont_tm, best_cont_sty, upd_tlr, upd_instn)
values ('DD000002                        ', '0054621             ', 45, to_date('16-02-1989', 'dd-mm-yyyy'), '2 ', '19', '上海      ', '01', '784652310256489745 ', '李子安      ', '1 ', '10', '多层住宅  ', '789556258412520266       ', '4562574185               ', '2014', '会计                ', '中级会计师资格      ', '毕马威会计事务所                        ', '民营单位  ', to_date('13-04-2021', 'dd-mm-yyyy'), '01236894          ', '2       ', '0003    ', '副经理    ', '12k', '工资                ', null, 2, '汉语      ', '010      ', '324576453', '52205202    ', '009 ', '0', '1         ', '0         ', 150000, 0, 10000, 250000, 0, 20000, '2013  ', '1', 'J         ', 0, '234576890764532                 ', '经济管理学院                                                                    ', '会计学专业                                                                      ', 201511, '02 ', '751296352085241252  ', 'CHN', 'CHN', '03        ', '55245697  ', '1020      ', '02        ', '陈贝贝      ', '0531     ');
insert into CI_CIPL_LOW_CUST_INFO (ecif_cust_no, indv_id, seq_no, birth_dt, sex, mrg_sts, register, ppl_cod, cou_cert_no, cou_name, religion, educ_lev, house_typ, indv_tax_no, indv_insurs_no, have_work_yr, occup_cod, qualification_sts, employer_name, unit_char, unit_work_dt, work_no, posn, ofrn, titl, mn_inco, econ_resur, oth_econ_resur, depend_cnt, language_pre, aff_instn_no, std_opun_cod, cust_mngr_cod, cust_sts, emp_flg, pot_vip_flg, spec_vip_flg, indv_cust_accum_trn_lmt, cred_crd_guar_cnt, fami_avg_mn_inco, fami_capi, fami_debt, fami_mn_inco, grad_dt, child_flg, industry_typ, fami_guar_totl, plan_cptl_cert_no, study_inst, study_spec, resi_yr, cert_typ, cert_no, prim_nat, rsdnt_nat, cust_lev, conc_cust_flg, best_cont_tm, best_cont_sty, upd_tlr, upd_instn)
values ('DD000003                        ', '0022155             ', 21, to_date('23-05-1991', 'dd-mm-yyyy'), '1 ', '10', '重庆      ', '01', '23456765432145634  ', '李娜        ', '4 ', '21', '高层住宅  ', '456325898562056320       ', '1236456857               ', '2014', '建筑师              ', '一级建筑资格        ', '中国建筑一局有限公司                    ', '国企单位  ', to_date('20-04-2021', 'dd-mm-yyyy'), '054897            ', '3       ', '0004    ', '助理      ', '7k ', '工资                ', '外卖                                          ', 0, '汉语      ', '010      ', '234567865', '634285253   ', '009 ', '0', '0         ', '0         ', 100000, 0, 7000, 180000, 0, 13000, '2015  ', '0', 'E         ', 0, '2345768965423456                ', '建筑工程学院                                                                    ', '土木工程专业                                                                    ', 201406, '02 ', '079803275266822584  ', 'CHN', 'CHN', '04        ', '52152456  ', '1830      ', '02        ', '陈春梅      ', '010      ');
commit;
prompt 3 records loaded
prompt Loading CI_MABIAO...
insert into CI_MABIAO (code, name, mazhi)
values ('0', '未知的性别', 'DEM0100005');
insert into CI_MABIAO (code, name, mazhi)
values ('1', '男', 'DEM0100005');
insert into CI_MABIAO (code, name, mazhi)
values ('2', '女', 'DEM0100005');
insert into CI_MABIAO (code, name, mazhi)
values ('5', '女性改（变）为男性', 'DEM0100005');
insert into CI_MABIAO (code, name, mazhi)
values ('6', '男性改（变）为女性', 'DEM0100005');
insert into CI_MABIAO (code, name, mazhi)
values ('9', '未说明的性别', 'DEM0100005');
insert into CI_MABIAO (code, name, mazhi)
values ('10', '未婚', 'DEM0100003');
insert into CI_MABIAO (code, name, mazhi)
values ('19', '已婚', 'DEM0100003');
insert into CI_MABIAO (code, name, mazhi)
values ('20', '已婚有子女', 'DEM0100003');
insert into CI_MABIAO (code, name, mazhi)
values ('21', '已婚无子女', 'DEM0100003');
insert into CI_MABIAO (code, name, mazhi)
values ('22', '初婚', 'DEM0100003');
insert into CI_MABIAO (code, name, mazhi)
values ('23', '再婚', 'DEM0100003');
insert into CI_MABIAO (code, name, mazhi)
values ('24', '复婚', 'DEM0100003');
insert into CI_MABIAO (code, name, mazhi)
values ('30', '丧偶', 'DEM0100003');
insert into CI_MABIAO (code, name, mazhi)
values ('39', '离婚', 'DEM0100003');
insert into CI_MABIAO (code, name, mazhi)
values ('40', '离婚有子女', 'DEM0100003');
insert into CI_MABIAO (code, name, mazhi)
values ('41', '离婚无子女', 'DEM0100003');
insert into CI_MABIAO (code, name, mazhi)
values ('90', '未说明的婚姻状况', 'DEM0100003');
insert into CI_MABIAO (code, name, mazhi)
values ('01', '汉族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('02', '蒙古族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('03', '回族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('04', '藏族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('05', '维吾尔族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('06', '苗族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('07', '彝族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('08', '壮族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('09', '布依族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('10', '朝鲜族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('11', '满族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('12', '侗族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('13', '瑶族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('14', '白族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('15', '土家族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('16', '哈尼族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('17', '哈萨克族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('18', '傣族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('19', '黎族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('20', '傈僳族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('21', '佤族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('22', '畲族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('23', '高山族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('24', '拉祜族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('25', '水族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('26', '东乡族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('27', '纳西族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('28', '景颇族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('29', '柯尔克孜族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('30', '土族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('31', '达斡尔族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('32', '仫佬族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('33', '羌族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('34', '布朗族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('35', '撒拉族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('36', '毛难族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('37', '仡佬族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('38', '锡伯族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('39', '阿昌族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('40', '普米族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('41', '塔吉克族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('42', '怒族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('43', '乌孜别克族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('44', '俄罗斯族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('45', '鄂温克族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('46', '崩龙族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('47', '保安族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('48', '裕固族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('49', '京族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('50', '塔塔尔族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('51', '独龙族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('52', '鄂伦春族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('53', '赫哲族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('54', '门巴族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('55', '珞巴族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('56', '基诺族 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('57', '其他', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('97', '未提供', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('98', '外国血统 ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('01', '博士', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('02', '博士后', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('10', '研究生', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('11', '研究生毕业', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('19', '研究生肄业', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('20', '大学本科(简称“大学”)', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('21', '大学毕业', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('28', '相当大学毕业', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('29', '大学肄业', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('30', '大学专科和专科学校(简称“大专”)', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('31', '专科毕业', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('38', '相当专科毕业', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('39', '专科肄业', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('40', '中等专业学校或中等技术学校', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('41', '中专毕业', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('42', '中技毕业', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('48', '相当中专或中技毕业', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('49', '中专或中技肄业', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('50', '技术学校', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('51', '技工学校毕业', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('59', '技工学校肄业', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('60', '高中', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('61', '高中毕业', 'DEM0100007');
commit;
prompt 100 records committed...
insert into CI_MABIAO (code, name, mazhi)
values ('62', '职业高中毕业', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('63', '农业高中毕业', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('68', '相当高中毕业', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('69', '高中肄业', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('70', '初中', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('71', '初中毕业', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('72', '职业初中毕业', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('73', '农业初中毕业', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('78', '相当初中毕业', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('79', '初中肄业', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('80', '小学', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('81', '小学毕业', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('88', '相当小学毕业', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('89', '小学肄业', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('90', '文盲或半文盲', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('99', '未知', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('01', '国家机关、党群组织、企业、事业单位负责人', 'PAR0400044');
insert into CI_MABIAO (code, name, mazhi)
values ('02', '办事人员和有关人员', 'PAR0400044');
insert into CI_MABIAO (code, name, mazhi)
values ('03', '专业技术人员', 'PAR0400044');
insert into CI_MABIAO (code, name, mazhi)
values ('04', '商业、服务业人员', 'PAR0400044');
insert into CI_MABIAO (code, name, mazhi)
values ('05', '农、林、牧、渔、水利业生产人员', 'PAR0400044');
insert into CI_MABIAO (code, name, mazhi)
values ('06', '生产、运输设备操作人员及有关人员', 'PAR0400044');
insert into CI_MABIAO (code, name, mazhi)
values ('07', '军人', 'PAR0400044');
insert into CI_MABIAO (code, name, mazhi)
values ('08', '不便分类的其他从业人员', 'PAR0400044');
insert into CI_MABIAO (code, name, mazhi)
values ('99', '未提供', 'PAR0400044');
insert into CI_MABIAO (code, name, mazhi)
values ('09', '计算机电子工程', 'PAR0400044');
insert into CI_MABIAO (code, name, mazhi)
values ('10', '翻译', 'PAR0400044');
insert into CI_MABIAO (code, name, mazhi)
values ('11', '设计人员', 'PAR0400044');
insert into CI_MABIAO (code, name, mazhi)
values ('12', '务农', 'PAR0400044');
insert into CI_MABIAO (code, name, mazhi)
values ('13', '私营业主', 'PAR0400044');
insert into CI_MABIAO (code, name, mazhi)
values ('14', '工人', 'PAR0400044');
insert into CI_MABIAO (code, name, mazhi)
values ('15', '教师', 'PAR0400044');
insert into CI_MABIAO (code, name, mazhi)
values ('16', '医生', 'PAR0400044');
insert into CI_MABIAO (code, name, mazhi)
values ('17', '公务员', 'PAR0400044');
insert into CI_MABIAO (code, name, mazhi)
values ('18', '技术工人', 'PAR0400044');
insert into CI_MABIAO (code, name, mazhi)
values ('19', '大学生村官', 'PAR0400044');
insert into CI_MABIAO (code, name, mazhi)
values ('20', '其他', 'PAR0400044');
insert into CI_MABIAO (code, name, mazhi)
values ('1', '高级领导(行政级别局级及局级以上领导或大公司高级管理人员)', null);
insert into CI_MABIAO (code, name, mazhi)
values ('2', '中级领导(行政级别局级以下领导或大公司中级管理人员)', null);
insert into CI_MABIAO (code, name, mazhi)
values ('3', '一般员工', null);
insert into CI_MABIAO (code, name, mazhi)
values ('4', '其他', null);
insert into CI_MABIAO (code, name, mazhi)
values ('9', '未知', null);
insert into CI_MABIAO (code, name, mazhi)
values ('0001', '无   ', null);
insert into CI_MABIAO (code, name, mazhi)
values ('0002', '高级 ', null);
insert into CI_MABIAO (code, name, mazhi)
values ('0003', '中级 ', null);
insert into CI_MABIAO (code, name, mazhi)
values ('0004', '初级 ', null);
insert into CI_MABIAO (code, name, mazhi)
values ('9999', '未知', null);
insert into CI_MABIAO (code, name, mazhi)
values ('A', '农、林、牧、渔业', '100084');
insert into CI_MABIAO (code, name, mazhi)
values ('B', '采矿业', '100084');
insert into CI_MABIAO (code, name, mazhi)
values ('C', '制造业', '100084');
insert into CI_MABIAO (code, name, mazhi)
values ('D', '电力、热力、燃气及水生产和供应业', '100084');
insert into CI_MABIAO (code, name, mazhi)
values ('E', '建筑业', '100084');
insert into CI_MABIAO (code, name, mazhi)
values ('F', '批发和零售业', '100084');
insert into CI_MABIAO (code, name, mazhi)
values ('G', '交通运输、仓储和邮政业', '100084');
insert into CI_MABIAO (code, name, mazhi)
values ('H', '住宿和餐饮业', '100084');
insert into CI_MABIAO (code, name, mazhi)
values ('I', '信息传输、软件和信息技术服务业', '100084');
insert into CI_MABIAO (code, name, mazhi)
values ('J', '金融业', '100084');
insert into CI_MABIAO (code, name, mazhi)
values ('K', '房地产业', '100084');
insert into CI_MABIAO (code, name, mazhi)
values ('L', '租赁和商务服务业', '100084');
insert into CI_MABIAO (code, name, mazhi)
values ('M', '科学研究和技术服务业', '100084');
insert into CI_MABIAO (code, name, mazhi)
values ('N', '水利、环境和公共设施管理业', '100084');
insert into CI_MABIAO (code, name, mazhi)
values ('O', '居民服务、修理和其他服务业', '100084');
insert into CI_MABIAO (code, name, mazhi)
values ('P', '教育', '100084');
insert into CI_MABIAO (code, name, mazhi)
values ('Q', '卫生和社会工作', '100084');
insert into CI_MABIAO (code, name, mazhi)
values ('R', '文化、体育和娱乐业', '100084');
insert into CI_MABIAO (code, name, mazhi)
values ('S', '公共管理、社会保障和社会组织', '100084');
insert into CI_MABIAO (code, name, mazhi)
values ('T', '国际组织', '100084');
insert into CI_MABIAO (code, name, mazhi)
values ('Z', '未知', '100084');
insert into CI_MABIAO (code, name, mazhi)
values ('X', '未提供', '100084');
insert into CI_MABIAO (code, name, mazhi)
values ('0', '身份证', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('01', '第一代身份证', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('02', '第二代身份证', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('1', '户口簿', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('2', '护照', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('21', '中国护照', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('22', '外国护照', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('3', '军官证', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('31', '军官证', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('32', '军官退休证', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('33', '军事学院证', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('4', '士兵证', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('5', '港澳居民来往内地通行证', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('51', '香港通行证', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('52', '澳门通行证', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('6', '台湾同胞来往内地通行证', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('7', '临时身份证', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('8', '外国人居留证', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('81', '外国人永久居住证', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('82', '边民出入境通行证', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('9', '警官证', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('101', '村民委员会证明', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('102', '学生证', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('103', '离休干部荣誉证', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('104', '文职干部退休证', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('X', '其他证件', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('2001', '营业执照号', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('2002', '企业机构代码', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('2003', '贷款卡编号', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('2004', '税务登记证', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('ABW', '阿鲁巴', 'DEM0100011');
commit;
prompt 200 records committed...
insert into CI_MABIAO (code, name, mazhi)
values ('AFG', '阿富汗', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('AGO', '安哥拉', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('AIA', '安圭拉', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('ALB', '阿尔巴尼亚', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('AND', '安道尔', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('ANT', '荷属安的列斯', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('ARE', '阿联酋', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('ARG', '阿根廷', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('ARM', '亚美尼亚', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('ASM', '美属萨摩亚', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('ATA', '南极洲', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('ATF', '法属南部领土', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('ATG', '安提瓜和巴布达', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('AUS', '澳大利亚', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('AUT', '奥地利', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('AZE', '阿塞拜疆', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('BDI', '布隆迪', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('BEL', '比利时', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('BEN', '贝宁', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('BFA', '布基纳法索', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('BGD', '孟加拉国', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('BGR', '保加利亚', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('BHR', '巴林', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('BHS', '巴哈马', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('BIH', '波斯尼亚和黑塞哥维那', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('BLR', '白俄罗斯', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('BLZ', '伯利兹', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('BMU', '百慕大', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('BOL', '玻利维亚', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('BRA', '巴西', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('BRB', '巴巴多斯', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('BRN', '文莱', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('BTN', '不丹', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('BVT', '布维岛', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('BWA', '博茨瓦纳', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('CAF', '中非', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('CAN', '加拿大', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('CCK', '科科斯(基林)群岛', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('CHE', '瑞士', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('CHL', '智利', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('CHN', '中国', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('CIV', '科特迪瓦', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('CMR', '喀麦隆', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('COD', '刚果（金）Congo,', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('COG', '刚果（布）', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('COK', '库克群岛', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('COL ', '哥伦比亚', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('COM', '科摩罗', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('CPV', '佛得角', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('CRI', '哥斯达黎加', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('CUB', '古巴', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('CXR', '圣诞岛', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('CYM', '开曼群岛', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('CYP', '塞浦路斯', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('CZE', '捷克', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('DEU', '德国', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('DJI', '吉布提', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('DMA', '多米尼克', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('DNK', '丹麦', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('DOM', '多米尼加共和国', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('DZA', '阿尔及利亚', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('ECU', '厄瓜多尔', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('EGY', '埃及', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('ERI', '厄立特里亚', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('ESH', '西撒哈拉', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('ESP', '西班牙', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('EST', '爱沙尼亚', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('ETH', '埃塞俄比亚', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('FIN', '芬兰', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('FJI', '斐济', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('FLK', '马尔维纳斯群岛(福克兰群岛)', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('FRA', '法国', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('FRO', '法罗群岛', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('FSM', '密克罗尼西亚', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('GAB', '加蓬', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('GBR', '英国', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('GEO', '格鲁吉亚', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('GHA', '加纳', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('GIB', '直布罗陀', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('GIN', '几内亚', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('GLP', '瓜德罗普', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('GMB', '冈比亚Gambia', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('GNB', '几内亚比绍', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('GNQ', '赤道几内亚', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('GRC', '希腊', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('GRD', '格林纳达', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('GRL', '格陵兰', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('GTM', '危地马拉', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('GUF', '法属圭亚那', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('GUM', '关岛', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('GUY', '圭亚那', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('HKG', '香港', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('HMD', '赫德岛和麦克唐纳岛', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('HND', '洪都拉斯', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('HRV', '克罗地亚', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('HTI', '海地', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('HUN', '匈牙利', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('IDN', '印度尼西亚', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('IND ', '印度', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('IOT', '英属印度洋领土', 'DEM0100011');
commit;
prompt 300 records committed...
insert into CI_MABIAO (code, name, mazhi)
values ('IRL', '爱尔兰', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('IRN', '伊朗', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('IRQ', '伊拉克', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('ISL', '冰岛', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('ISR', '以色列', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('ITA', '意大利', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('JAM', '牙买加', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('JOR', '约旦', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('JPN', '日本', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('KAZ', '哈萨克斯坦', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('KEN', '肯尼亚', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('KGZ', '吉尔吉斯斯坦', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('KHM', '柬埔寨', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('KIR', '基里巴斯', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('KNA', '圣基茨和尼维斯', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('KOR', '韩国', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('KWT', '科威特', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('LAO', '老挝', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('LBN', '黎巴嫩', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('LBR', '利比里亚', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('LBY', '利比亚', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('LCA', '圣卢西亚', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('LIE', '列支敦士登', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('LKA', '斯里兰卡', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('LSO', '莱索托', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('LTU', '立陶宛', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('LUX', '卢森堡', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('LVA', '拉脱维亚', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('MAC', '澳门', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('MAR', '摩洛哥', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('MCO', '摩纳哥', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('MDA', '摩尔多瓦', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('MDG', '马达加斯加', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('MDV', '马尔代夫', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('MEX', '墨西哥', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('MHL', '马绍尔群岛', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('MKD', '马斯顿', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('MLI', '马里', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('MLT', '马耳他', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('MMR', '缅甸', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('MNE', '黑山Montenegro ', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('MNG', '蒙古', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('MNP', '北马里亚纳', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('MOZ', '莫桑比克', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('MRT', '毛里塔尼亚', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('MSR', '蒙特塞拉特', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('MTQ', '马提尼克', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('MUS', '毛里求斯', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('MWI', '马拉维', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('MYS', '马来西亚', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('MYT', '马约特', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('NAM', '纳米比亚', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('NCL', '新喀里多尼亚', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('NER', '尼日尔', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('NFK', '诺福克岛', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('NGA', '尼日利亚', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('NIC', '尼加拉瓜', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('NIU', '纽埃', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('NLD', '荷兰', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('NOR', '挪威', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('NPL', '尼泊尔', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('NRU', '瑙鲁', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('NZL', '新西兰', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('OMN', '阿曼', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('PAK', '巴基斯坦', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('PAN', '巴拿马', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('PCN', '皮特凯恩群岛', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('PER', '秘鲁', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('PHL', '菲律宾', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('PLW', '帕劳', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('PNG', '巴布亚新几内亚', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('POL', '波兰', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('PRI', '波多黎各', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('PRK', '朝鲜', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('PRT', '葡萄牙', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('PRY', '巴拉圭', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('PSE', '巴勒斯坦', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('PYF', '法属波利尼西亚', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('QAT', '卡塔尔', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('REU', '留尼汪', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('ROM', '罗马尼亚', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('RUS', '俄罗斯', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('RWA', '卢旺达', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('SAU', '沙特阿拉伯', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('"SCG停用"', '"塞尔维亚和黑山停用"', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('SDN', '苏丹', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('SEN', '塞内加尔', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('SGP', '新加坡', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('SGS', '南乔治亚岛和南桑德韦奇岛', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('SHN', '圣赫勒拿', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('SJM', '斯瓦尔巴群岛和扬马群岛', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('SLB', '所罗门群岛', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('SLE', '塞拉利昂', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('SLV', '萨尔瓦多', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('SMR', '圣马力诺', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('SOM', '索马里', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('SPM', '圣皮埃尔和密克隆', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('SRB', '塞尔维亚Serbia', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('STP', '圣多美和普林西比', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('SUR', '苏里南', 'DEM0100011');
commit;
prompt 400 records committed...
insert into CI_MABIAO (code, name, mazhi)
values ('SVK', '斯洛伐克', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('SVN', '斯洛文尼亚', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('SWE', '瑞典', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('SWZ', '斯威士兰', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('SYC', '塞舌尔', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('SYR', '叙利亚', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('TCA', '特克斯和凯科斯群岛', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('TCD', '乍得', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('TGO', '多哥', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('THA', '泰国', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('TJK', '塔吉克斯坦', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('TKL', '托克劳', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('TKM', '土库曼斯坦', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('TMP', '东帝汶', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('TON', '汤加', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('TTO', '特立尼达和多巴哥', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('TUN', '突尼斯', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('TUR', '土耳其', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('TUV', '图瓦卢', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('TWN ', '中国台湾', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('TZA', '坦桑尼亚', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('UGA', '乌干达', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('UKR', '乌克兰', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('UMI', '美属本土外小岛屿', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('URY', '乌拉圭', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('USA', '美国', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('UZB', '乌兹别克斯坦', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('VAT', '梵蒂冈', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('VCT', '圣文森特和格林纳丁斯', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('VEN', '委内瑞拉', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('VGB', '英属维尔京群岛', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('VIR', '美属维尔京群岛', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('VNM', '越南', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('VUT', '瓦努阿图', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('WLF', '瓦利斯和富图纳群岛', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('WSM', '西萨摩亚', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('YEM', '也门', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('Z01', '保税区', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('Z02', '加工区', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('Z03', '钻石交易所', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('ZAF', '南非', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('ZAR', '扎伊尔', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('ZMB', '赞比亚', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('ZWE', '津巴布韦', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('YUG', '南斯拉夫', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('01', '信件', '100067');
insert into CI_MABIAO (code, name, mazhi)
values ('02', '手机', '100067');
insert into CI_MABIAO (code, name, mazhi)
values ('03', '电子邮件', '100067');
insert into CI_MABIAO (code, name, mazhi)
values ('04', '网页', '100067');
insert into CI_MABIAO (code, name, mazhi)
values ('05', '即时通讯', '100067');
insert into CI_MABIAO (code, name, mazhi)
values ('01', 'AAA级', '100115');
insert into CI_MABIAO (code, name, mazhi)
values ('02', 'AA级', '100115');
insert into CI_MABIAO (code, name, mazhi)
values ('03', 'A级', '100115');
insert into CI_MABIAO (code, name, mazhi)
values ('04', 'BBB级', '100115');
insert into CI_MABIAO (code, name, mazhi)
values ('05', 'BB级', '100115');
insert into CI_MABIAO (code, name, mazhi)
values ('06', 'B级', '100115');
insert into CI_MABIAO (code, name, mazhi)
values ('07', 'F级', '100115');
insert into CI_MABIAO (code, name, mazhi)
values ('08', '未通过', '100115');
insert into CI_MABIAO (code, name, mazhi)
values ('09', '待审定', '100115');
insert into CI_MABIAO (code, name, mazhi)
values ('00', '未提供说明的信用等级', '100115');
insert into CI_MABIAO (code, name, mazhi)
values ('X', '未提供', '100115');
insert into CI_MABIAO (code, name, mazhi)
values ('A001', '政府机关事业单位', 'PAA2100001');
insert into CI_MABIAO (code, name, mazhi)
values ('A002', '科教文卫', 'PAA2100001');
insert into CI_MABIAO (code, name, mazhi)
values ('A003', '邮电通信', 'PAA2100001');
insert into CI_MABIAO (code, name, mazhi)
values ('A004', '部队', 'PAA2100001');
insert into CI_MABIAO (code, name, mazhi)
values ('A005', 'IT网络、计算机', 'PAA2100001');
insert into CI_MABIAO (code, name, mazhi)
values ('A006', '商业、贸易', 'PAA2100001');
insert into CI_MABIAO (code, name, mazhi)
values ('A007', '金融机构', 'PAA2100001');
insert into CI_MABIAO (code, name, mazhi)
values ('A008', '房地产开发', 'PAA2100001');
insert into CI_MABIAO (code, name, mazhi)
values ('A009', '保险经纪、中介', 'PAA2100001');
insert into CI_MABIAO (code, name, mazhi)
values ('A010', '旅游、饭店、娱乐', 'PAA2100001');
insert into CI_MABIAO (code, name, mazhi)
values ('A011', '自由业、个体店铺', 'PAA2100001');
insert into CI_MABIAO (code, name, mazhi)
values ('A012', '广告', 'PAA2100001');
insert into CI_MABIAO (code, name, mazhi)
values ('A013', '农林渔畜牧', 'PAA2100001');
insert into CI_MABIAO (code, name, mazhi)
values ('A014', '制造业、加工业', 'PAA2100001');
insert into CI_MABIAO (code, name, mazhi)
values ('A015', '运输业', 'PAA2100001');
insert into CI_MABIAO (code, name, mazhi)
values ('A016', '装修', 'PAA2100001');
insert into CI_MABIAO (code, name, mazhi)
values ('A017', '律师、会计师', 'PAA2100001');
insert into CI_MABIAO (code, name, mazhi)
values ('A018', '其他', 'PAA2100001');
insert into CI_MABIAO (code, name, mazhi)
values ('A', '公有控股经济', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('A01', '国有控股', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('A0101', '国有相对控股', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('A0102', '国有绝对控股', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('A02', '集体控股', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('A0201', '集体相对控股', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('A0202', '集体绝对控股', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('B', '非公有控股经济', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('B01', '私人控股', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('B0101', '私人相对控股', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('B0102', '私人绝对控股', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('B02', '港澳台控股', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('B0201', '港澳台相对控股', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('B0202', '港澳台绝对控股', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('B03', '外商控股', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('B0301', '外商相对控股', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('B0302', '外商绝对控股', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('C06', '农村个体工商户', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('C07', '农户', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('C08', '普通个人', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('C09', '农民专业合作社', '100061');
commit;
prompt 500 records committed...
insert into CI_MABIAO (code, name, mazhi)
values ('C10', '其他农村经济组织', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('C11', '农林牧渔企业', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('C12', '工商企业', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('C13', '服务业企业', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('C14', '房地产', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('C15', '基础设施', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('C16', '其他企业', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('C17', '教育单位', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('C18', '医疗单位', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('C19', '事业单位', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('AFA', '阿富汗尼', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('ALL', '列克', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('DZD', '阿尔及利亚第纳尔', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('ADP', '安道尔比赛塔', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('AON', '新克瓦查', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('AZM', '阿塞拜疆马纳特', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('ARS', '阿根廷比索', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('AUD', '澳大利亚元', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('ATS', '先令', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('BSD', '巴哈马元', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('BHD', '巴林第纳尔', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('BDT', '塔卡', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('AMD', '亚美尼亚达姆', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('BBD', '巴巴多斯元', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('BEF', '比利时法郎', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('BMD', '百慕大元', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('BTN', '努尔特鲁姆', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('BOB', '玻利维亚比索', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('BWP', '普拉', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('BZD', '伯利兹元', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('SBD', '所罗门群岛元', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('BND', '文莱元', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('BGL', '列弗', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('MMK', '缅元', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('BIF', '布隆迪法郎', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('BYB', '白俄罗斯卢布', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('KHR', '瑞尔', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('CAD', '加拿大元', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('CVE', '佛得角埃斯库多', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('KYD', '开曼群岛元', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('LKR', '斯里兰卡卢布', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('CLP', '智利比索', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('CNY', '人民币元', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('COP', '哥伦比亚比索', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('KMF', '科摩罗法郎', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('ZRN', '新扎伊尔', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('CRC', '哥斯达黎加科朗', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('HRK', '克罗地亚库纳', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('CUP', '古巴比索', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('CYP', '塞浦路斯镑', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('CZK', '捷克克郎', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('DKK', '丹麦克郎', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('DOP', '多米尼加比索', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('ECS', '苏克雷', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('SVC', '萨尔瓦多科朗', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('ETB', '埃塞俄比亚比尔', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('EEK', '克罗姆', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('FKP', '福克兰群岛镑', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('FJD', '斐济元', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('FIM', '马克', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('FRF', '法国法郎', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('DJF', '吉布提法郎', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('GMD', '达拉西', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('DEM', '德国马克', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('GHC', '塞地', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('GIP', '直布罗陀镑', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('GRD', '德拉克马', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('GTQ', '格查尔', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('GNF', '几内亚法郎', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('GYD', '圭亚那元', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('HTG', '古德', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('HNL', '伦皮拉', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('HKD', '香港元', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('HUF', '福林', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('ISK', '冰岛克郎', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('INR', '印度卢比', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('IDR', '卢比', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('IRR', '伊朗里亚尔', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('IQD', '伊拉克第纳尔', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('IEP', '爱尔兰镑', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('ILS', '锡克尔', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('ITL', '意大利里拉', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('JMD', '牙买加元', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('JPY', '日元', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('KZT', '坚戈', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('JOD', '约旦第纳尔', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('KES', '肯尼亚先令', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('KPW', '北朝鲜元', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('KRW', '圆', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('KWD', '科威特第纳尔', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('KGS', '索姆', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('LAK', '基普', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('LBP', '黎巴嫩镑', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('LSL', '罗提', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('LVL', '拉脱维亚拉特', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('LRD', '利比里亚元', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('LYD', '利比亚第纳尔', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('LTL', '立陶宛', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('LUF', '卢森堡法郎', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('MOP', '澳门元', 'ACC1300012');
commit;
prompt 600 records committed...
insert into CI_MABIAO (code, name, mazhi)
values ('MGF', '马尔加什法郎', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('MWK', '克瓦查', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('MYR', '马来西亚林吉特', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('MVR', '卢菲亚', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('MTL', '马耳他里拉', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('MRO', '乌吉亚', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('MUR', '毛里求斯卢比', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('MXN', '墨西哥比索', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('MNT', '图格里克', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('MDL', '摩尔多瓦列伊', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('MAD', '摩洛哥迪拉姆', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('MZM', '麦梯卡尔', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('OMR', '阿曼里亚尔', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('NAD', '纳米比亚元', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('NPR', '尼泊尔卢比', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('NLG', '荷兰盾', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('ANG', '荷属安的列斯盾', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('AWG', '阿鲁巴盾', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('VUV', '瓦图', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('NZD', '新西兰元', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('NIO', '金科多巴', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('NGN', '奈拉', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('NOK', '挪威克朗', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('PKR', '巴基斯坦卢比', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('PAB', '巴波亚', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('PGK', '基那', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('PYG', '瓜拉尼', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('PEN', '索尔', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('PHP', '菲律宾比索', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('PLZ', '兹罗提', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('PTE', '葡萄牙埃斯库多', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('GWP', '几内亚比绍比索', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('TPE', '东帝汉埃斯库多', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('QAR', '卡塔尔里亚尔', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('ROL', '列伊', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('RWF', '卢旺达法郎', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('SHP', '圣赫勒拿镑', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('STD', '多布拉', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('SAR', '沙特里亚尔', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('SCR', '塞舌尔卢比', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('SLL', '利昂', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('SGD', '新加坡元', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('SKK', '斯洛伐克克朗', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('VND', '盾', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('SIT', '托拉尔', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('SOS', '索马里先令', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('ZAR', '兰特', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('ZWD', '津巴布韦元', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('ESP', '西班牙比赛塔', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('SDD', '苏丹第纳尔', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('SRG', '苏里南盾', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('SZL', '里兰吉尼', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('SEK', '瑞典克朗', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('CHF', '瑞士法郎', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('SYP', '叙利亚镑', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('TJR', '塔吉克卢布', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('THB', '铢', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('TOP', '邦加', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('TTD', '特立尼达和多巴哥元', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('AED', 'UAE迪拉姆', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('TND', '突尼斯第纳尔', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('TRL', '土耳其里拉', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('TMM', '马纳特', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('UGX', '乌干达先令', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('UAK', '库邦', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('MKD', '第纳尔', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('RUR', '俄罗斯卢布', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('EGP', '埃及镑', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('GBP', '英镑', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('TZS', '坦桑尼亚先令', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('USD', '美元', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('UYU', '乌拉圭比索', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('UZS', '乌兹别克斯坦苏姆', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('VEB', '博利瓦', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('WST', '塔拉', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('YER', '也门里亚尔', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('YUN', '南斯拉夫第纳尔', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('ZMK', '克瓦查', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('TWD', '新台湾元', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('XAF', 'CRA法郎 BEAC', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('XCD', '东加勒比元', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('XOF', 'CFA法郎BCEAO', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('XPF', 'CFP法郎', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('XEU', '欧洲货币单位（E.C.U.)', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('XBA', '欧洲混合单位（EUR-CO)', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('XBB', '欧洲货币单位（E.M.U.-6)', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('XBC', '欧洲账户９单位（E.U.A.-9)', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('XB5', '欧洲账户１７单位（E.U.A.-17)', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('XAU', '黄金', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('XDR', '特别提款权', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('XAG', '银', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('XPT', '铂白金', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('XTS', '为测试特别保留的代码', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('XPD', '钯', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('EUR', '欧元（EUR）', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('ECV', 'UVC', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('BOV', 'Mｖｄｏｌ', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('PLN', '兹罗提', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('BRL', '巴西瑞尔', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('CLF', '发展单位', 'ACC1300012');
commit;
prompt 700 records committed...
insert into CI_MABIAO (code, name, mazhi)
values ('ZAL', '（金融兰特）', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('USN', '（次日）', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('USS', '（同日）', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('XXX', '未包括的交易货币代码', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('E01', '外币折欧元', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('R01', '外币折人民币', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('T01', '本外币合计', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('U01', '外币折美元', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('X01', '黄金（人民币计价）', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('X02', '黄金（美元计价）', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('CS01', '大型', 'DEM0200004');
insert into CI_MABIAO (code, name, mazhi)
values ('CS02', '中型', 'DEM0200004');
insert into CI_MABIAO (code, name, mazhi)
values ('CS03', '小型', 'DEM0200004');
insert into CI_MABIAO (code, name, mazhi)
values ('CS04', '微型', 'DEM0200004');
insert into CI_MABIAO (code, name, mazhi)
values ('CS05', '其他', 'DEM0200004');
insert into CI_MABIAO (code, name, mazhi)
values ('X', '未提供', 'DEM0200004');
insert into CI_MABIAO (code, name, mazhi)
values ('01', '国家级', 'DEM0200003');
insert into CI_MABIAO (code, name, mazhi)
values ('02', '省级', 'DEM0200003');
insert into CI_MABIAO (code, name, mazhi)
values ('03', '市级', 'DEM0200003');
insert into CI_MABIAO (code, name, mazhi)
values ('04', '县级', 'DEM0200003');
insert into CI_MABIAO (code, name, mazhi)
values ('05', '无', 'DEM0200003');
insert into CI_MABIAO (code, name, mazhi)
values ('00', '未提供说明的资质', 'DEM0200005');
insert into CI_MABIAO (code, name, mazhi)
values ('01', '一级', 'DEM0200005');
insert into CI_MABIAO (code, name, mazhi)
values ('02', '二级', 'DEM0200005');
insert into CI_MABIAO (code, name, mazhi)
values ('03', '三级', 'DEM0200005');
insert into CI_MABIAO (code, name, mazhi)
values ('04', '未通过', 'DEM0200005');
insert into CI_MABIAO (code, name, mazhi)
values ('05', '待审定', 'DEM0200005');
insert into CI_MABIAO (code, name, mazhi)
values ('06', '一级会员', 'DEM0200005');
insert into CI_MABIAO (code, name, mazhi)
values ('07', '非一级', 'DEM0200005');
insert into CI_MABIAO (code, name, mazhi)
values ('X', '未提供', 'DEM0200005');
commit;
prompt 730 records loaded
prompt Enabling triggers for CI_CIE_CORP_CUST_INFO...
alter table CI_CIE_CORP_CUST_INFO enable all triggers;
prompt Enabling triggers for CI_CIPH_HIGH_BLACK_LIST_INFO...
alter table CI_CIPH_HIGH_BLACK_LIST_INFO enable all triggers;
prompt Enabling triggers for CI_CIPH_HIGH_CUST_INFO...
alter table CI_CIPH_HIGH_CUST_INFO enable all triggers;
prompt Enabling triggers for CI_CIPH_HIGH_INDV_LEV_INFO...
alter table CI_CIPH_HIGH_INDV_LEV_INFO enable all triggers;
prompt Enabling triggers for CI_CIPH_HIGH_PTY_ADDR_RELA...
alter table CI_CIPH_HIGH_PTY_ADDR_RELA enable all triggers;
prompt Enabling triggers for CI_CIPL_LOW_CUST_INFO...
alter table CI_CIPL_LOW_CUST_INFO enable all triggers;
prompt Enabling triggers for CI_MABIAO...
alter table CI_MABIAO enable all triggers;
set feedback on
set define on
prompt Done.
