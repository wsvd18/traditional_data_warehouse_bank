prompt PL/SQL Developer Export User Objects for user BI_ODS@ORCL
prompt Created by Admin on 2024��8��7��
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
  is '��˾�ͻ���Ϣ��';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.ecif_cust_no
  is '�ͻ����';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.corp_cust_info_id
  is 'organisationId';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.seq_no
  is 'sequenceNumber';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.org_instn_cod
  is '��֯��������';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.govn_cert_no
  is 'Ӫҵִ�պ�';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.govn_expd_dt
  is 'Ӫҵִ����Ч��';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.ln_crd_no
  is '�����';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.opac_perm_no
  is '�������֤��';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.industry_typ
  is '��ҵ���';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.ccb_industry_typ
  is '�����Ŵ����ߵ���ҵ����';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.belong_sys
  is '����ϵͳ';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.ofc_pic_dept
  is '�ϼ����ܲ���';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.cptl_pic_dept
  is '�ʽ����ܲ���';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.entp_unit_char
  is '��ҵ��λ����';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.entp_unit_econ_typ
  is '��ҵ��λ��������';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.entp_unit_deal_org_typ
  is '��ҵ��λ��Ӫ��֯��ʽС��';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.econ_char
  is '��������';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.exist_dt
  is '��������';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.reg_dt
  is 'ע������';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.reg_cptl_curr_cod
  is 'ע���ʱ��ұ�';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.reg_cptl
  is 'ע���ʱ�';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.fact_rcv_cptl
  is 'ʵ���ʱ�';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.deal_prd
  is '��Ӫ����';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.entp_size
  is '��ҵ��ģ';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.entp_lev_cod
  is '��ҵ�������';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.tax_reg_no
  is '˰��ǼǱ��';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.tax_condit
  is '��˰���';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.tax_reg_sts
  is '˰��Ǽ�״̬';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.taxr_scal
  is '��˰�˹�ģ';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.deal_typ
  is '��Ӫ����';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.cust_main_busn
  is '�ͻ���Ӫҵ��';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.cust_oth_busn
  is '�ͻ���Ӫҵ��';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.lead_prod
  is '������Ʒ';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.emp_cnt
  is 'Ա������';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.emp_mn_avg_inco
  is 'Ա����ƽ������';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.consign_corp_leader_name
  is 'ί�з�������';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.consign_corp_leader_cert_no
  is 'ί�з���֤������';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.consign_corp_leader_eff_bgn_dt
  is 'ί�з�����Ч������';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.consign_corp_leader_eff_end_dt
  is 'ί�з�����Ч������';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.fin_contr
  is '������ϵ��';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.deal_liab_pr
  is '��Ӫ��������';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.deal_post_liab_pr
  is '��Ӫ��λ������';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.list_entp_flg
  is '�Ƿ�������ҵ';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.dbt_shar_cust_flg
  is '�Ƿ�ծ��ת�ɿͻ�';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.deb_into_shar_bank
  is 'ծת����ҵ����';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.strp_bad_asst_cust_flg
  is '�Ƿ���벻���ʲ��ͻ�';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.strp_bad_asst_offb
  is '���벻���ʲ�����ҵ����';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.high_tec_reg_flg
  is '�Ƿ��ڸ��¿�����ע��';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.cust_rela_mana_dept
  is '�ͻ���ϵ������';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.aff_instn_no
  is '��������';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.std_opun_cod
  is '���߻�������';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.cust_mngr_cod
  is '�ͻ��������';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.ccb_cret_cust_flg
  is '���ж�����ſͻ���־';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.ccb_ipmrk_cust_flg
  is '�����ص�Ӫ���ͻ���־';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.inter_ctl_cust_flg
  is '�ڿ������ͻ���־';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.ccb_rela_entp_flg
  is '�Ƿ��й�����ҵ';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.ccb_entit_flg
  is '�Ƿ����԰�ʵ��';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.ccb_coper_agr_cust_flg
  is '�Ƿ��뽨��ǩ���������Э��';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.main_bank
  is '��������';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.reg_shop_flg
  is 'ע���̻���־';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.reg_mang_bank
  is 'ע���̻���Ͻ��';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.base_dep_acct_no
  is '��������˻��˺�';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.pena_sts
  is 'ΥԼ״̬';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.entp_cred_lev
  is '��ҵ���õȼ�';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.entp_apti_lev
  is '��ҵ���ʵȼ�';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.fcurr_bal_lmt
  is '����������';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.ccb_cust_flg
  is '���пͻ���־';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.asset_save_typ
  is '�ʲ���ȫ����';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.base_acct_awbk
  is '�����˻�������';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.cert_typ
  is '֤������';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.cert_no
  is '֤������';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.prim_nat
  is '���ڹ�';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.rsdnt_nat
  is '��ס��';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.cust_lev
  is '�ͻ��ȼ�';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.conc_cust_flg
  is '��ע�ͻ���־';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.best_cont_tm
  is '�����ϵʱ��';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.best_cont_sty
  is '�����ϵ��ʽ';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.upd_tlr
  is '���¹�Ա';
comment on column BI_ODS.CI_CIE_CORP_CUST_INFO.upd_instn
  is '���»���';

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
  is '���˸߶˺�������Ϣ��';
comment on column BI_ODS.CI_CIPH_HIGH_BLACK_LIST_INFO.ecif_cust_no
  is 'ECIF�ͻ����';
comment on column BI_ODS.CI_CIPH_HIGH_BLACK_LIST_INFO.cust_name
  is '�ͻ�����';
comment on column BI_ODS.CI_CIPH_HIGH_BLACK_LIST_INFO.cert_no
  is '֤������';
comment on column BI_ODS.CI_CIPH_HIGH_BLACK_LIST_INFO.cert_typ
  is '֤������';
comment on column BI_ODS.CI_CIPH_HIGH_BLACK_LIST_INFO.trnlst_flg
  is 'ת�б�־';
comment on column BI_ODS.CI_CIPH_HIGH_BLACK_LIST_INFO.trnlst_cause
  is 'ת��ԭ��';
comment on column BI_ODS.CI_CIPH_HIGH_BLACK_LIST_INFO.trnlst_dt
  is 'ת������';
comment on column BI_ODS.CI_CIPH_HIGH_BLACK_LIST_INFO.trnlst_desc
  is 'ת��˵��';
comment on column BI_ODS.CI_CIPH_HIGH_BLACK_LIST_INFO.reg_black_list_cnt
  is '�������������';
comment on column BI_ODS.CI_CIPH_HIGH_BLACK_LIST_INFO.bank_id
  is '������';
comment on column BI_ODS.CI_CIPH_HIGH_BLACK_LIST_INFO.oper_id
  is '������';
comment on column BI_ODS.CI_CIPH_HIGH_BLACK_LIST_INFO.appv_dt
  is '��׼����';
comment on column BI_ODS.CI_CIPH_HIGH_BLACK_LIST_INFO.appv_opin
  is '��׼���';
comment on column BI_ODS.CI_CIPH_HIGH_BLACK_LIST_INFO.appv_id
  is '��׼��';
comment on column BI_ODS.CI_CIPH_HIGH_BLACK_LIST_INFO.data_src_bank
  is '������Դ����';
comment on column BI_ODS.CI_CIPH_HIGH_BLACK_LIST_INFO.data_src_typ
  is '������Դ����';
comment on column BI_ODS.CI_CIPH_HIGH_BLACK_LIST_INFO.data_src_unit
  is '������Դ��λ';
comment on column BI_ODS.CI_CIPH_HIGH_BLACK_LIST_INFO.manual_trnlst_flg
  is '�Ƿ��˹�ת��';
comment on column BI_ODS.CI_CIPH_HIGH_BLACK_LIST_INFO.ext_sys_no
  is '�ⲿϵͳ��';
comment on column BI_ODS.CI_CIPH_HIGH_BLACK_LIST_INFO.ext_sys_cust_no
  is '�ⲿϵͳ�ͻ����';

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
  is '���˸߶˿ͻ���Ϣ��';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.ecif_cust_no
  is '�ͻ����';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.cust_name
  is '�ͻ�����';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.birth_dt
  is '��������';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.sex
  is '�Ա�';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.mrg_sts
  is '����״̬';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.register
  is '����';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.ppl_cod
  is '�������';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.cou_cert_no
  is '��ż֤������';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.cou_name
  is '��ż����';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.religion
  is '�ڽ�����';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.educ_lev
  is '����ˮƽ';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.house_typ
  is 'סլ����';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.indv_tax_no
  is '������˰��';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.indv_insurs_no
  is '������ᱣ�պ�';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.have_work_yr
  is '�μӹ������';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.occup_cod
  is 'ְҵ';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.qualification_sts
  is 'ִҵ�ʸ�״��';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.employer_name
  is '������λ����';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.unit_char
  is '��λ����';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.unit_work_dt
  is '�ֵ�λ��������';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.work_no
  is '����';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.posn
  is 'ְ��';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.ofrn
  is 'ְ��';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.titl
  is 'ְ��';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.mn_inco
  is '������';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.econ_resur
  is '��Ҫ������Դ';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.oth_econ_resur
  is '����������Դ';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.depend_cnt
  is '��������';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.language_pre
  is '����ϰ��';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.aff_instn_no
  is '��������';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.cust_mngr_cod
  is '�ͻ��������';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.cust_sts
  is '�ͻ�״��';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.emp_flg
  is 'Ա����־';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.pot_vip_flg
  is 'Ǳ��VIP��־';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.spec_vip_flg
  is '����VIP��־';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.indv_cust_accum_trn_lmt
  is '���˿ͻ��ۼ�ת���޶�';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.cred_crd_guar_cnt
  is '���ÿ���������';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.fami_avg_mn_inco
  is '��ͥ�˾�������';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.fami_capi
  is '��ͥ���ʲ�';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.fami_debt
  is '��ͥ�ܸ�ծ';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.fami_mn_inco
  is '��ͥ������';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.grad_dt
  is '��ҵ����';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.child_flg
  is '�Ƿ�����Ů';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.industry_typ
  is '������ҵ����';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.fami_guar_totl
  is '��ͥ���ⵣ���ܶ�';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.plan_cptl_cert_no
  is 'ͳ���ʽ�֤����';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.study_inst
  is '����Ժϵ';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.study_spec
  is 'רҵ';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.resi_yr
  is '���ؾ�סʱ��';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.cert_typ
  is '֤������';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.cert_no
  is '֤������';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.prim_nat
  is '���ڹ�';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.rsdnt_nat
  is '��ס��';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.conc_cust_flg
  is '��ע�ͻ���־';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.best_cont_tm
  is '�����ϵʱ��';
comment on column BI_ODS.CI_CIPH_HIGH_CUST_INFO.best_cont_sty
  is '�����ϵ��ʽ';

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
  is '���˸߶˸��˵ȼ���Ϣ��';
comment on column BI_ODS.CI_CIPH_HIGH_INDV_LEV_INFO.ecif_cust_no
  is 'ECIF�ͻ����';
comment on column BI_ODS.CI_CIPH_HIGH_INDV_LEV_INFO.indv_lev_typ
  is '���ŵȼ����';
comment on column BI_ODS.CI_CIPH_HIGH_INDV_LEV_INFO.eval_instn
  is '��������';
comment on column BI_ODS.CI_CIPH_HIGH_INDV_LEV_INFO.eval_dt
  is '��������';
comment on column BI_ODS.CI_CIPH_HIGH_INDV_LEV_INFO.indv_lev_cod
  is '���ŵȼ�';
comment on column BI_ODS.CI_CIPH_HIGH_INDV_LEV_INFO.crlmt
  is '���ö��';
comment on column BI_ODS.CI_CIPH_HIGH_INDV_LEV_INFO.cred_lotp
  is '���û���';
comment on column BI_ODS.CI_CIPH_HIGH_INDV_LEV_INFO.eval_val
  is '���۷�ֵ';
comment on column BI_ODS.CI_CIPH_HIGH_INDV_LEV_INFO.eval_desc
  is '����˵��';
comment on column BI_ODS.CI_CIPH_HIGH_INDV_LEV_INFO.bank_id
  is '������';
comment on column BI_ODS.CI_CIPH_HIGH_INDV_LEV_INFO.ext_sys_cust_no
  is '�ⲿϵͳ�ͻ����';
comment on column BI_ODS.CI_CIPH_HIGH_INDV_LEV_INFO.ext_sys_no
  is '�ⲿϵͳ��';

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
  is '���˸߶˲����˺���ϵ��ַ�Ĺ�ϵ��';
comment on column BI_ODS.CI_CIPH_HIGH_PTY_ADDR_RELA.ecif_cust_no
  is '�ͻ����';
comment on column BI_ODS.CI_CIPH_HIGH_PTY_ADDR_RELA.pty_addr_rela_typ
  is '����������ϵ��ַ��ϵ����';
comment on column BI_ODS.CI_CIPH_HIGH_PTY_ADDR_RELA.addr_id
  is '��ϵ��ַID';

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
  is '���˵Ͷ˿ͻ���Ϣ��';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.ecif_cust_no
  is '�ͻ����';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.indv_id
  is 'individualId';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.seq_no
  is 'sequenceNumber';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.birth_dt
  is '��������';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.sex
  is '�Ա�';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.mrg_sts
  is '����״̬';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.register
  is '����';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.ppl_cod
  is '�������';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.cou_cert_no
  is '��ż֤������';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.cou_name
  is '��ż����';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.religion
  is '�ڽ�����';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.educ_lev
  is '����ˮƽ';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.house_typ
  is 'סլ����';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.indv_tax_no
  is '������˰��';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.indv_insurs_no
  is '������ᱣ�պ�';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.have_work_yr
  is '�μӹ������';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.occup_cod
  is 'ְҵ';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.qualification_sts
  is 'ִҵ�ʸ�״��';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.employer_name
  is '������λ����';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.unit_char
  is '��λ����';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.unit_work_dt
  is '�ֵ�λ��������';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.work_no
  is '����';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.posn
  is 'ְ��';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.ofrn
  is 'ְ��';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.titl
  is 'ְ��';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.mn_inco
  is '������';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.econ_resur
  is '��Ҫ������Դ';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.oth_econ_resur
  is '����������Դ';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.depend_cnt
  is '��������';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.language_pre
  is '����ϰ��';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.aff_instn_no
  is '��������';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.std_opun_cod
  is '���߻�������';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.cust_mngr_cod
  is '�ͻ��������';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.cust_sts
  is '�ͻ�״��';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.emp_flg
  is 'Ա����־';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.pot_vip_flg
  is 'Ǳ��VIP��־';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.spec_vip_flg
  is '����VIP��־';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.indv_cust_accum_trn_lmt
  is '���˿ͻ��ۼ�ת���޶�';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.cred_crd_guar_cnt
  is '���ÿ���������';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.fami_avg_mn_inco
  is '��ͥ�˾�������';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.fami_capi
  is '��ͥ���ʲ�';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.fami_debt
  is '��ͥ�ܸ�ծ';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.fami_mn_inco
  is '��ͥ������';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.grad_dt
  is '��ҵ����';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.child_flg
  is '�Ƿ�����Ů';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.industry_typ
  is '������ҵ����';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.fami_guar_totl
  is '��ͥ���ⵣ���ܶ�';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.plan_cptl_cert_no
  is 'ͳ���ʽ�֤����';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.study_inst
  is '����Ժϵ';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.study_spec
  is 'רҵ';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.resi_yr
  is '���ؾ�סʱ��';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.cert_typ
  is '֤������';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.cert_no
  is '֤������';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.prim_nat
  is '���ڹ�';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.rsdnt_nat
  is '��ס��';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.cust_lev
  is '�ͻ��ȼ�';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.conc_cust_flg
  is '��ע�ͻ���־';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.best_cont_tm
  is '�����ϵʱ��';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.best_cont_sty
  is '�����ϵ��ʽ';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.upd_tlr
  is '���¹�Ա';
comment on column BI_ODS.CI_CIPL_LOW_CUST_INFO.upd_instn
  is '���»���';

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
  is '���˴���ſ���ˮ����';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL06.rt_cust_num
  is '�����ʺ�';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL06.tr_ext_seq
  is '����ID';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL06.tr_eff_date
  is '�ſ�����';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL06.tr_tran_amt
  is '�ſ���';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL06.ba_used_bal
  is '�ۼƷſ���';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL06.tr_tot_prin
  is '�ʻ����';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL06.mi_pay_acct_1
  is '�տ����ʺ�';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL06.tr_sys_date
  is '��������';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL06.tr_entry_time
  is '����ʱ��';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL06.tr_tran_cd
  is '���״���';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL06.tr_tran_desc
  is '���״���˵��';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL06.filler
  is '����ֶ�';

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
  is '���˴������ˮ����';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.rt_acct_num
  is '�����ʺ�';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.zm_desc_15_1
  is '���������';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.tr_eff_date
  is '��������';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.tran_seq_int
  is '������ˮ��';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.sche_pay_date
  is '�ƻ���������';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.ac_start_date
  is '��Ϣ����';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.curr_pmt_num
  is '��ǰ��������';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.num_day_interval
  is '��������';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.prin_pay_amt
  is 'ʵ������';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.int_pay_amt
  is 'ʵ����Ϣ';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.rt_oldst_due_date
  is '�����������';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.penalty_prin_dq
  is 'ʵ����Ƿ����Ϣ';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.service_fee
  is '������';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.tr_tran_cd
  is '���״���';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.rt_loan_rate
  is '����';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.rt_acct_prod
  is '��������';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.curr_penalty_int
  is '��ǰ����';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.bal_of_int_rev
  is 'Ӧ����Ϣ���';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.bal_of_coll_int
  is '������Ϣ���';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.dq_principal
  is '��Ƿ�������';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.ac_rate
  is '��Ϣ��';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.rt_ctl2_1
  is '���ִ���';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.reversal_flag
  is '������־';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.tr_tran_desc
  is '����ժҪ';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.tr_sys_date
  is '��������';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.ba_due_not_pd
  is 'Ӧ������';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.ac_due_not_pd
  is 'Ӧ����Ϣ';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.ff_due_not_pd
  is 'Ӧ��ΥԼ��';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.rt_tot_prin
  is '�������';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.actual_alt01_pay
  is 'ʵ����Ϣ����';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.actual_penalty_pay
  is 'ʵ��ΥԼ��';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.rt_acct_stat
  is '�����־';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.zx_last_nor_prn_paid
  is 'ʵ����������';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.zx_last_past_due_paid
  is 'ʵ�����ڱ���';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.zx_last_nor_int_paid
  is 'ʵ��������Ϣ';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.zx_last_past_int_paid
  is 'ʵ��������Ϣ';
comment on column BI_ODS.LN_LNP_ACCT_AMWKPL07.zx_last_fcp_paid
  is 'ʵ�����ڷ���';

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
  is '���˴���������Ϣ����';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.ecif_cust_no
  is 'ECIF�ͻ���� 8';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.custname
  is '�ͻ�����';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.iscommac
  is '�Ƿ�����ͨ���ʻ�';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.currsign
  is '����';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.loankind
  is '��������';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.loantype
  is '��ϴ����־';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.firstorder
  is '��ϴ��������˳��';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.payperc
  is '��������';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.fundsour
  is '�ʽ���Դ';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.loanuse
  is '������;';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.assukind
  is '������ʽ';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.contdate
  is '��������';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.credcapi
  is '��Ƚ��';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.cycflag
  is '�Ƿ�ѭ��';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.tcapi
  is '������';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.thistcapi
  is '�����ſ���#';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.termfreq
  is '����Ƶ��';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.tterm
  is '��������';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.retutype
  is '���ʽ';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.trothdueday
  is '������Լ��';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.fixrateterm
  is '�̶���������';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.firstduedate
  is '���������';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.subsflag
  is '�ۿ�����';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.isenousubs
  is '�Ƿ����ۿ�';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.firstpayamt
  is '�׸�����';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.firstpayperc
  is '�׸������';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.corpid
  is '���������';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.projid
  is '��Ŀ���';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.corpappid
  is '������Ŀ��ȱ��';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.releway
  is '�ſ�����';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.payeeacno
  is '�տ����ʺ�';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.payeeacname
  is '�տ����ʻ�����';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.payeebankname
  is '�տ����ʻ�������';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.intecalckind
  is '��Ϣ��������';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.intemeth
  is '��Ϣ����';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.intebase
  is '��Ϣ����';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.aheaddays
  is '�ʵ���ǰ����';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.basicinterate
  is '�����׼����';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.interate
  is 'ִ������';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.intefineratefloat
  is '��Ϣ��Ϣ��������(%)';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.capifineratefloat
  is '����Ϣ��������(%)';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.finerate
  is '������Ϣ����[���֮/��]';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.capifinerate
  is '���ڱ�������[���֮/��]';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.foulrate
  is 'ΥԼ����ȡ����';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.emberatefloat
  is 'Ų�ô��Ϣ���ʸ�������(%)';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.begindate
  is '��������';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.enddate
  is '��������';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.loanacno
  is '�����ʺ�';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.contkind
  is '����ͬ��ʽ';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.contno
  is '����ͬ���';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.apprname
  is '����������';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.apprtabno
  is '��������';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.apprdate
  is '��������';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.apprflag
  is '�������';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.apprstate
  is '����״̬';
comment on column BI_ODS.LN_LNP_CTRT_CBAPP.loanstate
  is '����״̬';

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
  is '���˴���ͻ���ȹ�����';
comment on column BI_ODS.LN_LNP_CUST_CBCREDCUST.acustcredid
  is 'ALS�ʺ�';
comment on column BI_ODS.LN_LNP_CUST_CBCREDCUST.custcredno
  is '���';
comment on column BI_ODS.LN_LNP_CUST_CBCREDCUST.ecif_cust_no
  is 'ECIF�ͻ����';
comment on column BI_ODS.LN_LNP_CUST_CBCREDCUST.custname
  is '�ͻ�����';
comment on column BI_ODS.LN_LNP_CUST_CBCREDCUST.currsign
  is '����';
comment on column BI_ODS.LN_LNP_CUST_CBCREDCUST.credamt
  is '���ö��';
comment on column BI_ODS.LN_LNP_CUST_CBCREDCUST.assuamt
  is '��֤���';
comment on column BI_ODS.LN_LNP_CUST_CBCREDCUST.impaamt
  is '��Ѻ���';
comment on column BI_ODS.LN_LNP_CUST_CBCREDCUST.mortamt
  is '��Ѻ���';
comment on column BI_ODS.LN_LNP_CUST_CBCREDCUST.credtotalamt
  is '�����ܶ��';
comment on column BI_ODS.LN_LNP_CUST_CBCREDCUST.begindate
  is '��ʼ����';
comment on column BI_ODS.LN_LNP_CUST_CBCREDCUST.tterm
  is '����';
comment on column BI_ODS.LN_LNP_CUST_CBCREDCUST.enddate
  is '��ֹ����';
comment on column BI_ODS.LN_LNP_CUST_CBCREDCUST.cycflag
  is '����Ƿ�ѭ��';
comment on column BI_ODS.LN_LNP_CUST_CBCREDCUST.leftamt
  is '���ö��';
comment on column BI_ODS.LN_LNP_CUST_CBCREDCUST.bankid
  is '������';
comment on column BI_ODS.LN_LNP_CUST_CBCREDCUST.acbankid
  is '��ƻ���';
comment on column BI_ODS.LN_LNP_CUST_CBCREDCUST.audiname
  is '���������';
comment on column BI_ODS.LN_LNP_CUST_CBCREDCUST.apprtabno
  is '��������';
comment on column BI_ODS.LN_LNP_CUST_CBCREDCUST.apprflag
  is '����״̬';
comment on column BI_ODS.LN_LNP_CUST_CBCREDCUST.operid
  is '������';
comment on column BI_ODS.LN_LNP_CUST_CBCREDCUST.apprname
  is '����������';
comment on column BI_ODS.LN_LNP_CUST_CBCREDCUST.apprdate
  is '��������';
comment on column BI_ODS.LN_LNP_CUST_CBCREDCUST.credstate
  is '�ͻ����״̬';

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
