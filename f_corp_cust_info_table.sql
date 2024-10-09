prompt PL/SQL Developer Export User Objects for user BI_F@SCOTT
prompt Created by Minqi on 2024年8月7日
set define off
spool BI_F_f.log

prompt
prompt Creating table CI_CIE_CORP_CUST_INFO
prompt ====================================
prompt
create table BI_F.CI_CIE_CORP_CUST_INFO
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
  ods_1st_lev_br_no              CHAR(3),
  ods_src_dt                     CHAR(23),
  ods_src_sys_no                 CHAR(10),
  ods_load_dt                    CHAR(23)
)
;
comment on table BI_F.CI_CIE_CORP_CUST_INFO
  is '公司客户信息表';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.ecif_cust_no
  is '客户编号';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.corp_cust_info_id
  is 'organisationId';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.seq_no
  is 'sequenceNumber';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.org_instn_cod
  is '组织机构代码';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.govn_cert_no
  is '营业执照号';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.govn_expd_dt
  is '营业执照有效期';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.ln_crd_no
  is '贷款卡号';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.opac_perm_no
  is '开户许可证号';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.industry_typ
  is '行业类别';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.ccb_industry_typ
  is '建行信贷政策的行业分类';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.belong_sys
  is '所属系统';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.ofc_pic_dept
  is '上级主管部门';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.cptl_pic_dept
  is '资金主管部门';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.entp_unit_char
  is '企业单位性质';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.entp_unit_econ_typ
  is '企业单位经济类型';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.entp_unit_deal_org_typ
  is '企业单位经营组织形式小类';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.econ_char
  is '经济性质';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.exist_dt
  is '成立日期';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.reg_dt
  is '注册日期';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.reg_cptl_curr_cod
  is '注册资本币别';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.reg_cptl
  is '注册资本';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.fact_rcv_cptl
  is '实收资本';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.deal_prd
  is '经营期限';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.entp_size
  is '企业规模';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.entp_lev_cod
  is '企业级别代码';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.tax_reg_no
  is '税务登记编号';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.tax_condit
  is '纳税情况';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.tax_reg_sts
  is '税务登记状态';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.taxr_scal
  is '纳税人规模';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.deal_typ
  is '经营种类';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.cust_main_busn
  is '客户主营业务';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.cust_oth_busn
  is '客户兼营业务';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.lead_prod
  is '主导产品';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.emp_cnt
  is '员工总数';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.emp_mn_avg_inco
  is '员工月平均收入';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.consign_corp_leader_name
  is '委托法人名称';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.consign_corp_leader_cert_no
  is '委托法人证件号码';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.consign_corp_leader_eff_bgn_dt
  is '委托法人有效期起日';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.consign_corp_leader_eff_end_dt
  is '委托法人有效期迄日';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.fin_contr
  is '财务联系人';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.deal_liab_pr
  is '经营主责任人';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.deal_post_liab_pr
  is '经营岗位责任人';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.list_entp_flg
  is '是否上市企业';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.dbt_shar_cust_flg
  is '是否债款转股客户';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.deb_into_shar_bank
  is '债转股商业银行';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.strp_bad_asst_cust_flg
  is '是否剥离不良资产客户';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.strp_bad_asst_offb
  is '剥离不良资产的商业银行';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.high_tec_reg_flg
  is '是否在高新开发区注册';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.cust_rela_mana_dept
  is '客户关系管理部门';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.aff_instn_no
  is '所属机构';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.std_opun_cod
  is '基线机构编码';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.cust_mngr_cod
  is '客户经理代码';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.ccb_cret_cust_flg
  is '建行额度授信客户标志';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.ccb_ipmrk_cust_flg
  is '建行重点营销客户标志';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.inter_ctl_cust_flg
  is '内控名单客户标志';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.ccb_rela_entp_flg
  is '是否建行关联企业';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.ccb_entit_flg
  is '是否建行自办实体';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.ccb_coper_agr_cust_flg
  is '是否与建行签订银企合作协议';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.main_bank
  is '主办银行';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.reg_shop_flg
  is '注册商户标志';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.reg_mang_bank
  is '注册商户管辖行';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.base_dep_acct_no
  is '基本存款账户账号';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.pena_sts
  is '违约状态';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.entp_cred_lev
  is '企业信用等级';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.entp_apti_lev
  is '企业资质等级';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.fcurr_bal_lmt
  is '外币余额限制';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.ccb_cust_flg
  is '我行客户标志';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.asset_save_typ
  is '资产保全类型';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.base_acct_awbk
  is '基本账户开户行';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.cert_typ
  is '证件类型';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.cert_no
  is '证件号码';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.prim_nat
  is '所在国';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.rsdnt_nat
  is '居住国';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.cust_lev
  is '客户等级';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.conc_cust_flg
  is '关注客户标志';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.best_cont_tm
  is '最佳联系时间';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.best_cont_sty
  is '最佳联系方式';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.upd_tlr
  is '更新柜员';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.upd_instn
  is '更新机构';


prompt Done
spool off
set define on
