prompt PL/SQL Developer import file
prompt Created on 2022��3��3�� by Administrator
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
  is '��˾�ͻ���Ϣ��';
comment on column CI_CIE_CORP_CUST_INFO.ecif_cust_no
  is '�ͻ����';
comment on column CI_CIE_CORP_CUST_INFO.corp_cust_info_id
  is 'organisationId';
comment on column CI_CIE_CORP_CUST_INFO.seq_no
  is 'sequenceNumber';
comment on column CI_CIE_CORP_CUST_INFO.org_instn_cod
  is '��֯��������';
comment on column CI_CIE_CORP_CUST_INFO.govn_cert_no
  is 'Ӫҵִ�պ�';
comment on column CI_CIE_CORP_CUST_INFO.govn_expd_dt
  is 'Ӫҵִ����Ч��';
comment on column CI_CIE_CORP_CUST_INFO.ln_crd_no
  is '�����';
comment on column CI_CIE_CORP_CUST_INFO.opac_perm_no
  is '�������֤��';
comment on column CI_CIE_CORP_CUST_INFO.industry_typ
  is '��ҵ���';
comment on column CI_CIE_CORP_CUST_INFO.ccb_industry_typ
  is '�����Ŵ����ߵ���ҵ����';
comment on column CI_CIE_CORP_CUST_INFO.belong_sys
  is '����ϵͳ';
comment on column CI_CIE_CORP_CUST_INFO.ofc_pic_dept
  is '�ϼ����ܲ���';
comment on column CI_CIE_CORP_CUST_INFO.cptl_pic_dept
  is '�ʽ����ܲ���';
comment on column CI_CIE_CORP_CUST_INFO.entp_unit_char
  is '��ҵ��λ����';
comment on column CI_CIE_CORP_CUST_INFO.entp_unit_econ_typ
  is '��ҵ��λ��������';
comment on column CI_CIE_CORP_CUST_INFO.entp_unit_deal_org_typ
  is '��ҵ��λ��Ӫ��֯��ʽС��';
comment on column CI_CIE_CORP_CUST_INFO.econ_char
  is '��������';
comment on column CI_CIE_CORP_CUST_INFO.exist_dt
  is '��������';
comment on column CI_CIE_CORP_CUST_INFO.reg_dt
  is 'ע������';
comment on column CI_CIE_CORP_CUST_INFO.reg_cptl_curr_cod
  is 'ע���ʱ��ұ�';
comment on column CI_CIE_CORP_CUST_INFO.reg_cptl
  is 'ע���ʱ�';
comment on column CI_CIE_CORP_CUST_INFO.fact_rcv_cptl
  is 'ʵ���ʱ�';
comment on column CI_CIE_CORP_CUST_INFO.deal_prd
  is '��Ӫ����';
comment on column CI_CIE_CORP_CUST_INFO.entp_size
  is '��ҵ��ģ';
comment on column CI_CIE_CORP_CUST_INFO.entp_lev_cod
  is '��ҵ�������';
comment on column CI_CIE_CORP_CUST_INFO.tax_reg_no
  is '˰��ǼǱ��';
comment on column CI_CIE_CORP_CUST_INFO.tax_condit
  is '��˰���';
comment on column CI_CIE_CORP_CUST_INFO.tax_reg_sts
  is '˰��Ǽ�״̬';
comment on column CI_CIE_CORP_CUST_INFO.taxr_scal
  is '��˰�˹�ģ';
comment on column CI_CIE_CORP_CUST_INFO.deal_typ
  is '��Ӫ����';
comment on column CI_CIE_CORP_CUST_INFO.cust_main_busn
  is '�ͻ���Ӫҵ��';
comment on column CI_CIE_CORP_CUST_INFO.cust_oth_busn
  is '�ͻ���Ӫҵ��';
comment on column CI_CIE_CORP_CUST_INFO.lead_prod
  is '������Ʒ';
comment on column CI_CIE_CORP_CUST_INFO.emp_cnt
  is 'Ա������';
comment on column CI_CIE_CORP_CUST_INFO.emp_mn_avg_inco
  is 'Ա����ƽ������';
comment on column CI_CIE_CORP_CUST_INFO.consign_corp_leader_name
  is 'ί�з�������';
comment on column CI_CIE_CORP_CUST_INFO.consign_corp_leader_cert_no
  is 'ί�з���֤������';
comment on column CI_CIE_CORP_CUST_INFO.consign_corp_leader_eff_bgn_dt
  is 'ί�з�����Ч������';
comment on column CI_CIE_CORP_CUST_INFO.consign_corp_leader_eff_end_dt
  is 'ί�з�����Ч������';
comment on column CI_CIE_CORP_CUST_INFO.fin_contr
  is '������ϵ��';
comment on column CI_CIE_CORP_CUST_INFO.deal_liab_pr
  is '��Ӫ��������';
comment on column CI_CIE_CORP_CUST_INFO.deal_post_liab_pr
  is '��Ӫ��λ������';
comment on column CI_CIE_CORP_CUST_INFO.list_entp_flg
  is '�Ƿ�������ҵ';
comment on column CI_CIE_CORP_CUST_INFO.dbt_shar_cust_flg
  is '�Ƿ�ծ��ת�ɿͻ�';
comment on column CI_CIE_CORP_CUST_INFO.deb_into_shar_bank
  is 'ծת����ҵ����';
comment on column CI_CIE_CORP_CUST_INFO.strp_bad_asst_cust_flg
  is '�Ƿ���벻���ʲ��ͻ�';
comment on column CI_CIE_CORP_CUST_INFO.strp_bad_asst_offb
  is '���벻���ʲ�����ҵ����';
comment on column CI_CIE_CORP_CUST_INFO.high_tec_reg_flg
  is '�Ƿ��ڸ��¿�����ע��';
comment on column CI_CIE_CORP_CUST_INFO.cust_rela_mana_dept
  is '�ͻ���ϵ������';
comment on column CI_CIE_CORP_CUST_INFO.aff_instn_no
  is '��������';
comment on column CI_CIE_CORP_CUST_INFO.std_opun_cod
  is '���߻�������';
comment on column CI_CIE_CORP_CUST_INFO.cust_mngr_cod
  is '�ͻ��������';
comment on column CI_CIE_CORP_CUST_INFO.ccb_cret_cust_flg
  is '���ж�����ſͻ���־';
comment on column CI_CIE_CORP_CUST_INFO.ccb_ipmrk_cust_flg
  is '�����ص�Ӫ���ͻ���־';
comment on column CI_CIE_CORP_CUST_INFO.inter_ctl_cust_flg
  is '�ڿ������ͻ���־';
comment on column CI_CIE_CORP_CUST_INFO.ccb_rela_entp_flg
  is '�Ƿ��й�����ҵ';
comment on column CI_CIE_CORP_CUST_INFO.ccb_entit_flg
  is '�Ƿ����԰�ʵ��';
comment on column CI_CIE_CORP_CUST_INFO.ccb_coper_agr_cust_flg
  is '�Ƿ��뽨��ǩ���������Э��';
comment on column CI_CIE_CORP_CUST_INFO.main_bank
  is '��������';
comment on column CI_CIE_CORP_CUST_INFO.reg_shop_flg
  is 'ע���̻���־';
comment on column CI_CIE_CORP_CUST_INFO.reg_mang_bank
  is 'ע���̻���Ͻ��';
comment on column CI_CIE_CORP_CUST_INFO.base_dep_acct_no
  is '��������˻��˺�';
comment on column CI_CIE_CORP_CUST_INFO.pena_sts
  is 'ΥԼ״̬';
comment on column CI_CIE_CORP_CUST_INFO.entp_cred_lev
  is '��ҵ���õȼ�';
comment on column CI_CIE_CORP_CUST_INFO.entp_apti_lev
  is '��ҵ���ʵȼ�';
comment on column CI_CIE_CORP_CUST_INFO.fcurr_bal_lmt
  is '����������';
comment on column CI_CIE_CORP_CUST_INFO.ccb_cust_flg
  is '���пͻ���־';
comment on column CI_CIE_CORP_CUST_INFO.asset_save_typ
  is '�ʲ���ȫ����';
comment on column CI_CIE_CORP_CUST_INFO.base_acct_awbk
  is '�����˻�������';
comment on column CI_CIE_CORP_CUST_INFO.cert_typ
  is '֤������';
comment on column CI_CIE_CORP_CUST_INFO.cert_no
  is '֤������';
comment on column CI_CIE_CORP_CUST_INFO.prim_nat
  is '���ڹ�';
comment on column CI_CIE_CORP_CUST_INFO.rsdnt_nat
  is '��ס��';
comment on column CI_CIE_CORP_CUST_INFO.cust_lev
  is '�ͻ��ȼ�';
comment on column CI_CIE_CORP_CUST_INFO.conc_cust_flg
  is '��ע�ͻ���־';
comment on column CI_CIE_CORP_CUST_INFO.best_cont_tm
  is '�����ϵʱ��';
comment on column CI_CIE_CORP_CUST_INFO.best_cont_sty
  is '�����ϵ��ʽ';
comment on column CI_CIE_CORP_CUST_INFO.upd_tlr
  is '���¹�Ա';
comment on column CI_CIE_CORP_CUST_INFO.upd_instn
  is '���»���';

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
  is '���˸߶˺�������Ϣ��';
comment on column CI_CIPH_HIGH_BLACK_LIST_INFO.ecif_cust_no
  is 'ECIF�ͻ����';
comment on column CI_CIPH_HIGH_BLACK_LIST_INFO.cust_name
  is '�ͻ�����';
comment on column CI_CIPH_HIGH_BLACK_LIST_INFO.cert_no
  is '֤������';
comment on column CI_CIPH_HIGH_BLACK_LIST_INFO.cert_typ
  is '֤������';
comment on column CI_CIPH_HIGH_BLACK_LIST_INFO.trnlst_flg
  is 'ת�б�־';
comment on column CI_CIPH_HIGH_BLACK_LIST_INFO.trnlst_cause
  is 'ת��ԭ��';
comment on column CI_CIPH_HIGH_BLACK_LIST_INFO.trnlst_dt
  is 'ת������';
comment on column CI_CIPH_HIGH_BLACK_LIST_INFO.trnlst_desc
  is 'ת��˵��';
comment on column CI_CIPH_HIGH_BLACK_LIST_INFO.reg_black_list_cnt
  is '�������������';
comment on column CI_CIPH_HIGH_BLACK_LIST_INFO.bank_id
  is '������';
comment on column CI_CIPH_HIGH_BLACK_LIST_INFO.oper_id
  is '������';
comment on column CI_CIPH_HIGH_BLACK_LIST_INFO.appv_dt
  is '��׼����';
comment on column CI_CIPH_HIGH_BLACK_LIST_INFO.appv_opin
  is '��׼���';
comment on column CI_CIPH_HIGH_BLACK_LIST_INFO.appv_id
  is '��׼��';
comment on column CI_CIPH_HIGH_BLACK_LIST_INFO.data_src_bank
  is '������Դ����';
comment on column CI_CIPH_HIGH_BLACK_LIST_INFO.data_src_typ
  is '������Դ����';
comment on column CI_CIPH_HIGH_BLACK_LIST_INFO.data_src_unit
  is '������Դ��λ';
comment on column CI_CIPH_HIGH_BLACK_LIST_INFO.manual_trnlst_flg
  is '�Ƿ��˹�ת��';
comment on column CI_CIPH_HIGH_BLACK_LIST_INFO.ext_sys_no
  is '�ⲿϵͳ��';
comment on column CI_CIPH_HIGH_BLACK_LIST_INFO.ext_sys_cust_no
  is '�ⲿϵͳ�ͻ����';

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
  is '���˸߶˿ͻ���Ϣ��';
comment on column CI_CIPH_HIGH_CUST_INFO.ecif_cust_no
  is '�ͻ����';
comment on column CI_CIPH_HIGH_CUST_INFO.cust_name
  is '�ͻ�����';
comment on column CI_CIPH_HIGH_CUST_INFO.birth_dt
  is '��������';
comment on column CI_CIPH_HIGH_CUST_INFO.sex
  is '�Ա�';
comment on column CI_CIPH_HIGH_CUST_INFO.mrg_sts
  is '����״̬';
comment on column CI_CIPH_HIGH_CUST_INFO.register
  is '����';
comment on column CI_CIPH_HIGH_CUST_INFO.ppl_cod
  is '�������';
comment on column CI_CIPH_HIGH_CUST_INFO.cou_cert_no
  is '��ż֤������';
comment on column CI_CIPH_HIGH_CUST_INFO.cou_name
  is '��ż����';
comment on column CI_CIPH_HIGH_CUST_INFO.religion
  is '�ڽ�����';
comment on column CI_CIPH_HIGH_CUST_INFO.educ_lev
  is '����ˮƽ';
comment on column CI_CIPH_HIGH_CUST_INFO.house_typ
  is 'סլ����';
comment on column CI_CIPH_HIGH_CUST_INFO.indv_tax_no
  is '������˰��';
comment on column CI_CIPH_HIGH_CUST_INFO.indv_insurs_no
  is '������ᱣ�պ�';
comment on column CI_CIPH_HIGH_CUST_INFO.have_work_yr
  is '�μӹ������';
comment on column CI_CIPH_HIGH_CUST_INFO.occup_cod
  is 'ְҵ';
comment on column CI_CIPH_HIGH_CUST_INFO.qualification_sts
  is 'ִҵ�ʸ�״��';
comment on column CI_CIPH_HIGH_CUST_INFO.employer_name
  is '������λ����';
comment on column CI_CIPH_HIGH_CUST_INFO.unit_char
  is '��λ����';
comment on column CI_CIPH_HIGH_CUST_INFO.unit_work_dt
  is '�ֵ�λ��������';
comment on column CI_CIPH_HIGH_CUST_INFO.work_no
  is '����';
comment on column CI_CIPH_HIGH_CUST_INFO.posn
  is 'ְ��';
comment on column CI_CIPH_HIGH_CUST_INFO.ofrn
  is 'ְ��';
comment on column CI_CIPH_HIGH_CUST_INFO.titl
  is 'ְ��';
comment on column CI_CIPH_HIGH_CUST_INFO.mn_inco
  is '������';
comment on column CI_CIPH_HIGH_CUST_INFO.econ_resur
  is '��Ҫ������Դ';
comment on column CI_CIPH_HIGH_CUST_INFO.oth_econ_resur
  is '����������Դ';
comment on column CI_CIPH_HIGH_CUST_INFO.depend_cnt
  is '��������';
comment on column CI_CIPH_HIGH_CUST_INFO.language_pre
  is '����ϰ��';
comment on column CI_CIPH_HIGH_CUST_INFO.aff_instn_no
  is '��������';
comment on column CI_CIPH_HIGH_CUST_INFO.cust_mngr_cod
  is '�ͻ��������';
comment on column CI_CIPH_HIGH_CUST_INFO.cust_sts
  is '�ͻ�״��';
comment on column CI_CIPH_HIGH_CUST_INFO.emp_flg
  is 'Ա����־';
comment on column CI_CIPH_HIGH_CUST_INFO.pot_vip_flg
  is 'Ǳ��VIP��־';
comment on column CI_CIPH_HIGH_CUST_INFO.spec_vip_flg
  is '����VIP��־';
comment on column CI_CIPH_HIGH_CUST_INFO.indv_cust_accum_trn_lmt
  is '���˿ͻ��ۼ�ת���޶�';
comment on column CI_CIPH_HIGH_CUST_INFO.cred_crd_guar_cnt
  is '���ÿ���������';
comment on column CI_CIPH_HIGH_CUST_INFO.fami_avg_mn_inco
  is '��ͥ�˾�������';
comment on column CI_CIPH_HIGH_CUST_INFO.fami_capi
  is '��ͥ���ʲ�';
comment on column CI_CIPH_HIGH_CUST_INFO.fami_debt
  is '��ͥ�ܸ�ծ';
comment on column CI_CIPH_HIGH_CUST_INFO.fami_mn_inco
  is '��ͥ������';
comment on column CI_CIPH_HIGH_CUST_INFO.grad_dt
  is '��ҵ����';
comment on column CI_CIPH_HIGH_CUST_INFO.child_flg
  is '�Ƿ�����Ů';
comment on column CI_CIPH_HIGH_CUST_INFO.industry_typ
  is '������ҵ����';
comment on column CI_CIPH_HIGH_CUST_INFO.fami_guar_totl
  is '��ͥ���ⵣ���ܶ�';
comment on column CI_CIPH_HIGH_CUST_INFO.plan_cptl_cert_no
  is 'ͳ���ʽ�֤����';
comment on column CI_CIPH_HIGH_CUST_INFO.study_inst
  is '����Ժϵ';
comment on column CI_CIPH_HIGH_CUST_INFO.study_spec
  is 'רҵ';
comment on column CI_CIPH_HIGH_CUST_INFO.resi_yr
  is '���ؾ�סʱ��';
comment on column CI_CIPH_HIGH_CUST_INFO.cert_typ
  is '֤������';
comment on column CI_CIPH_HIGH_CUST_INFO.cert_no
  is '֤������';
comment on column CI_CIPH_HIGH_CUST_INFO.prim_nat
  is '���ڹ�';
comment on column CI_CIPH_HIGH_CUST_INFO.rsdnt_nat
  is '��ס��';
comment on column CI_CIPH_HIGH_CUST_INFO.conc_cust_flg
  is '��ע�ͻ���־';
comment on column CI_CIPH_HIGH_CUST_INFO.best_cont_tm
  is '�����ϵʱ��';
comment on column CI_CIPH_HIGH_CUST_INFO.best_cont_sty
  is '�����ϵ��ʽ';

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
  is '���˸߶˸��˵ȼ���Ϣ��';
comment on column CI_CIPH_HIGH_INDV_LEV_INFO.ecif_cust_no
  is 'ECIF�ͻ����';
comment on column CI_CIPH_HIGH_INDV_LEV_INFO.indv_lev_typ
  is '���ŵȼ����';
comment on column CI_CIPH_HIGH_INDV_LEV_INFO.eval_instn
  is '��������';
comment on column CI_CIPH_HIGH_INDV_LEV_INFO.eval_dt
  is '��������';
comment on column CI_CIPH_HIGH_INDV_LEV_INFO.indv_lev_cod
  is '���ŵȼ�';
comment on column CI_CIPH_HIGH_INDV_LEV_INFO.crlmt
  is '���ö��';
comment on column CI_CIPH_HIGH_INDV_LEV_INFO.cred_lotp
  is '���û���';
comment on column CI_CIPH_HIGH_INDV_LEV_INFO.eval_val
  is '���۷�ֵ';
comment on column CI_CIPH_HIGH_INDV_LEV_INFO.eval_desc
  is '����˵��';
comment on column CI_CIPH_HIGH_INDV_LEV_INFO.bank_id
  is '������';
comment on column CI_CIPH_HIGH_INDV_LEV_INFO.ext_sys_cust_no
  is '�ⲿϵͳ�ͻ����';
comment on column CI_CIPH_HIGH_INDV_LEV_INFO.ext_sys_no
  is '�ⲿϵͳ��';

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
  is '���˸߶˲����˺���ϵ��ַ�Ĺ�ϵ��';
comment on column CI_CIPH_HIGH_PTY_ADDR_RELA.ecif_cust_no
  is '�ͻ����';
comment on column CI_CIPH_HIGH_PTY_ADDR_RELA.pty_addr_rela_typ
  is '����������ϵ��ַ��ϵ����';
comment on column CI_CIPH_HIGH_PTY_ADDR_RELA.addr_id
  is '��ϵ��ַID';

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
  is '���˵Ͷ˿ͻ���Ϣ��';
comment on column CI_CIPL_LOW_CUST_INFO.ecif_cust_no
  is '�ͻ����';
comment on column CI_CIPL_LOW_CUST_INFO.indv_id
  is 'individualId';
comment on column CI_CIPL_LOW_CUST_INFO.seq_no
  is 'sequenceNumber';
comment on column CI_CIPL_LOW_CUST_INFO.birth_dt
  is '��������';
comment on column CI_CIPL_LOW_CUST_INFO.sex
  is '�Ա�';
comment on column CI_CIPL_LOW_CUST_INFO.mrg_sts
  is '����״̬';
comment on column CI_CIPL_LOW_CUST_INFO.register
  is '����';
comment on column CI_CIPL_LOW_CUST_INFO.ppl_cod
  is '�������';
comment on column CI_CIPL_LOW_CUST_INFO.cou_cert_no
  is '��ż֤������';
comment on column CI_CIPL_LOW_CUST_INFO.cou_name
  is '��ż����';
comment on column CI_CIPL_LOW_CUST_INFO.religion
  is '�ڽ�����';
comment on column CI_CIPL_LOW_CUST_INFO.educ_lev
  is '����ˮƽ';
comment on column CI_CIPL_LOW_CUST_INFO.house_typ
  is 'סլ����';
comment on column CI_CIPL_LOW_CUST_INFO.indv_tax_no
  is '������˰��';
comment on column CI_CIPL_LOW_CUST_INFO.indv_insurs_no
  is '������ᱣ�պ�';
comment on column CI_CIPL_LOW_CUST_INFO.have_work_yr
  is '�μӹ������';
comment on column CI_CIPL_LOW_CUST_INFO.occup_cod
  is 'ְҵ';
comment on column CI_CIPL_LOW_CUST_INFO.qualification_sts
  is 'ִҵ�ʸ�״��';
comment on column CI_CIPL_LOW_CUST_INFO.employer_name
  is '������λ����';
comment on column CI_CIPL_LOW_CUST_INFO.unit_char
  is '��λ����';
comment on column CI_CIPL_LOW_CUST_INFO.unit_work_dt
  is '�ֵ�λ��������';
comment on column CI_CIPL_LOW_CUST_INFO.work_no
  is '����';
comment on column CI_CIPL_LOW_CUST_INFO.posn
  is 'ְ��';
comment on column CI_CIPL_LOW_CUST_INFO.ofrn
  is 'ְ��';
comment on column CI_CIPL_LOW_CUST_INFO.titl
  is 'ְ��';
comment on column CI_CIPL_LOW_CUST_INFO.mn_inco
  is '������';
comment on column CI_CIPL_LOW_CUST_INFO.econ_resur
  is '��Ҫ������Դ';
comment on column CI_CIPL_LOW_CUST_INFO.oth_econ_resur
  is '����������Դ';
comment on column CI_CIPL_LOW_CUST_INFO.depend_cnt
  is '��������';
comment on column CI_CIPL_LOW_CUST_INFO.language_pre
  is '����ϰ��';
comment on column CI_CIPL_LOW_CUST_INFO.aff_instn_no
  is '��������';
comment on column CI_CIPL_LOW_CUST_INFO.std_opun_cod
  is '���߻�������';
comment on column CI_CIPL_LOW_CUST_INFO.cust_mngr_cod
  is '�ͻ��������';
comment on column CI_CIPL_LOW_CUST_INFO.cust_sts
  is '�ͻ�״��';
comment on column CI_CIPL_LOW_CUST_INFO.emp_flg
  is 'Ա����־';
comment on column CI_CIPL_LOW_CUST_INFO.pot_vip_flg
  is 'Ǳ��VIP��־';
comment on column CI_CIPL_LOW_CUST_INFO.spec_vip_flg
  is '����VIP��־';
comment on column CI_CIPL_LOW_CUST_INFO.indv_cust_accum_trn_lmt
  is '���˿ͻ��ۼ�ת���޶�';
comment on column CI_CIPL_LOW_CUST_INFO.cred_crd_guar_cnt
  is '���ÿ���������';
comment on column CI_CIPL_LOW_CUST_INFO.fami_avg_mn_inco
  is '��ͥ�˾�������';
comment on column CI_CIPL_LOW_CUST_INFO.fami_capi
  is '��ͥ���ʲ�';
comment on column CI_CIPL_LOW_CUST_INFO.fami_debt
  is '��ͥ�ܸ�ծ';
comment on column CI_CIPL_LOW_CUST_INFO.fami_mn_inco
  is '��ͥ������';
comment on column CI_CIPL_LOW_CUST_INFO.grad_dt
  is '��ҵ����';
comment on column CI_CIPL_LOW_CUST_INFO.child_flg
  is '�Ƿ�����Ů';
comment on column CI_CIPL_LOW_CUST_INFO.industry_typ
  is '������ҵ����';
comment on column CI_CIPL_LOW_CUST_INFO.fami_guar_totl
  is '��ͥ���ⵣ���ܶ�';
comment on column CI_CIPL_LOW_CUST_INFO.plan_cptl_cert_no
  is 'ͳ���ʽ�֤����';
comment on column CI_CIPL_LOW_CUST_INFO.study_inst
  is '����Ժϵ';
comment on column CI_CIPL_LOW_CUST_INFO.study_spec
  is 'רҵ';
comment on column CI_CIPL_LOW_CUST_INFO.resi_yr
  is '���ؾ�סʱ��';
comment on column CI_CIPL_LOW_CUST_INFO.cert_typ
  is '֤������';
comment on column CI_CIPL_LOW_CUST_INFO.cert_no
  is '֤������';
comment on column CI_CIPL_LOW_CUST_INFO.prim_nat
  is '���ڹ�';
comment on column CI_CIPL_LOW_CUST_INFO.rsdnt_nat
  is '��ס��';
comment on column CI_CIPL_LOW_CUST_INFO.cust_lev
  is '�ͻ��ȼ�';
comment on column CI_CIPL_LOW_CUST_INFO.conc_cust_flg
  is '��ע�ͻ���־';
comment on column CI_CIPL_LOW_CUST_INFO.best_cont_tm
  is '�����ϵʱ��';
comment on column CI_CIPL_LOW_CUST_INFO.best_cont_sty
  is '�����ϵ��ʽ';
comment on column CI_CIPL_LOW_CUST_INFO.upd_tlr
  is '���¹�Ա';
comment on column CI_CIPL_LOW_CUST_INFO.upd_instn
  is '���»���';

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
values ('QY000001                        ', '00124454            ', 89, '78512416312         ', '7895232562                    ', to_date('01-06-2031', 'dd-mm-yyyy'), '78951285212525              ', '6280948925109                 ', 'E    ', 'A005      ', '��ҵ      ', '10        ', '02        ', '��Ӫ��λ  ', '���徭��  ', '���徭Ӫ  ', 'B01       ', to_date('12-05-2003', 'dd-mm-yyyy'), to_date('12-05-2003', 'dd-mm-yyyy'), 'CHY', 1000000, 400000, '30Y       ', 'CS02', '03', '7814562786          ', '1                   ', '1                   ', '100000    ', 'E48                 ', '���ݽ���                                                                                                                                                                                                ', 'װ��                                                                                                                                                                                                    ', '�ֽ�ˮ��            ', 100, '9000                ', '�±�                                    ', '265412309856456098 ', to_date('12-05-2015', 'dd-mm-yyyy'), to_date('12-05-2035', 'dd-mm-yyyy'), '������                                                      ', '����ΰ                                                                                                                                                                                                  ', '����                                                                                                ', '0', '0', '0                             ', '1', null, '0', '���۲�    ', null, null, '86216       ', 'A03       ', 'Y4665     ', '489529U   ', '0         ', '0         ', '0         ', '�Ϻ��ֶ�����        ', '465625    ', '020      ', '7896215621563                 ', '1                   ', '04 ', '02', 500000, null, '01        ', '�ൺ����                                                                                            ', '02 ', '236954576940596853  ', 'CHN', 'CHN', '02        ', 'Y465      ', '0830      ', '02        ', '�˹���      ', '7861565  ');
insert into CI_CIE_CORP_CUST_INFO (ecif_cust_no, corp_cust_info_id, seq_no, org_instn_cod, govn_cert_no, govn_expd_dt, ln_crd_no, opac_perm_no, industry_typ, ccb_industry_typ, belong_sys, ofc_pic_dept, cptl_pic_dept, entp_unit_char, entp_unit_econ_typ, entp_unit_deal_org_typ, econ_char, exist_dt, reg_dt, reg_cptl_curr_cod, reg_cptl, fact_rcv_cptl, deal_prd, entp_size, entp_lev_cod, tax_reg_no, tax_condit, tax_reg_sts, taxr_scal, deal_typ, cust_main_busn, cust_oth_busn, lead_prod, emp_cnt, emp_mn_avg_inco, consign_corp_leader_name, consign_corp_leader_cert_no, consign_corp_leader_eff_bgn_dt, consign_corp_leader_eff_end_dt, fin_contr, deal_liab_pr, deal_post_liab_pr, list_entp_flg, dbt_shar_cust_flg, deb_into_shar_bank, strp_bad_asst_cust_flg, strp_bad_asst_offb, high_tec_reg_flg, cust_rela_mana_dept, aff_instn_no, std_opun_cod, cust_mngr_cod, ccb_cret_cust_flg, ccb_ipmrk_cust_flg, inter_ctl_cust_flg, ccb_rela_entp_flg, ccb_entit_flg, ccb_coper_agr_cust_flg, main_bank, reg_shop_flg, reg_mang_bank, base_dep_acct_no, pena_sts, entp_cred_lev, entp_apti_lev, fcurr_bal_lmt, ccb_cust_flg, asset_save_typ, base_acct_awbk, cert_typ, cert_no, prim_nat, rsdnt_nat, cust_lev, conc_cust_flg, best_cont_tm, best_cont_sty, upd_tlr, upd_instn)
values ('QY000003                        ', '000579445           ', 15, '53145420220         ', '7418529630                    ', to_date('10-03-2027', 'dd-mm-yyyy'), '5625252512521               ', 'R48290R28942                  ', 'C    ', 'A007      ', '��ҵ      ', '30        ', '04        ', '��Ӫ��λ  ', '��Ӫ����  ', '�ϻﾭӪ  ', 'A02       ', to_date('03-08-2006', 'dd-mm-yyyy'), to_date('03-07-2006', 'dd-mm-yyyy'), 'CAD', 2000000, 350000, '20Y       ', 'CS01', '01', '86256325630         ', '1                   ', '1                   ', '500000    ', 'G53                 ', '��������                                                                                                                                                                                                ', null, null, 2000, '10000               ', '��Ө                                    ', '208957825892892405 ', to_date('23-06-2005', 'dd-mm-yyyy'), to_date('23-06-2025', 'dd-mm-yyyy'), '�״�                                                        ', '·��ȫ                                                                                                                                                                                                  ', '������                                                                                              ', '1', '0', '0                             ', '0', '�ൺ����                      ', '1', '�г�Ӫ����', '���л��� ', '45621458 ', '2630        ', 'D07       ', 'G4556     ', '26265U    ', '0         ', '0         ', '0         ', '�й���������        ', '02585     ', '010      ', '456256256325632               ', '0                   ', '03 ', '01', 1000000, null, '01        ', '�й�ũҵ����                                                                                        ', '02 ', '728905728181738517  ', 'CHN', 'CHN', '01        ', 'Y485      ', '1840      ', '03        ', '������      ', '45625620 ');
insert into CI_CIE_CORP_CUST_INFO (ecif_cust_no, corp_cust_info_id, seq_no, org_instn_cod, govn_cert_no, govn_expd_dt, ln_crd_no, opac_perm_no, industry_typ, ccb_industry_typ, belong_sys, ofc_pic_dept, cptl_pic_dept, entp_unit_char, entp_unit_econ_typ, entp_unit_deal_org_typ, econ_char, exist_dt, reg_dt, reg_cptl_curr_cod, reg_cptl, fact_rcv_cptl, deal_prd, entp_size, entp_lev_cod, tax_reg_no, tax_condit, tax_reg_sts, taxr_scal, deal_typ, cust_main_busn, cust_oth_busn, lead_prod, emp_cnt, emp_mn_avg_inco, consign_corp_leader_name, consign_corp_leader_cert_no, consign_corp_leader_eff_bgn_dt, consign_corp_leader_eff_end_dt, fin_contr, deal_liab_pr, deal_post_liab_pr, list_entp_flg, dbt_shar_cust_flg, deb_into_shar_bank, strp_bad_asst_cust_flg, strp_bad_asst_offb, high_tec_reg_flg, cust_rela_mana_dept, aff_instn_no, std_opun_cod, cust_mngr_cod, ccb_cret_cust_flg, ccb_ipmrk_cust_flg, inter_ctl_cust_flg, ccb_rela_entp_flg, ccb_entit_flg, ccb_coper_agr_cust_flg, main_bank, reg_shop_flg, reg_mang_bank, base_dep_acct_no, pena_sts, entp_cred_lev, entp_apti_lev, fcurr_bal_lmt, ccb_cust_flg, asset_save_typ, base_acct_awbk, cert_typ, cert_no, prim_nat, rsdnt_nat, cust_lev, conc_cust_flg, best_cont_tm, best_cont_sty, upd_tlr, upd_instn)
values ('QY000002                        ', '000032154           ', 452, '56325203000         ', '4562452012                    ', to_date('21-05-2026', 'dd-mm-yyyy'), '05221626252624              ', 'Y43802748763                  ', 'J    ', 'A014      ', '��ҵ      ', '20        ', '03        ', '����λ  ', '���о���  ', '���Ҿ�Ӫ  ', 'A01       ', to_date('17-06-2000', 'dd-mm-yyyy'), to_date('17-06-2000', 'dd-mm-yyyy'), 'CHY', 50000000, 3000000, '50Y       ', 'CS02', '03', '562896836           ', '1                   ', '1                   ', '200000    ', 'J68                 ', '��Ʋ�Ʒ����                                                                                                                                                                                            ', '��������                                                                                                                                                                                                ', '��Ʊ������          ', 60, '8000+               ', '��־��                                  ', '017671987065706341 ', to_date('08-03-2010', 'dd-mm-yyyy'), to_date('08-03-2030', 'dd-mm-yyyy'), '�ž޷�                                                      ', '������                                                                                                                                                                                                  ', '��׿��                                                                                              ', '0', '0', '0                             ', '1', null, '0', '���۲�    ', null, null, '2358        ', 'F15       ', 'K1505     ', '262695U   ', '1         ', '0         ', '1         ', '�й���������        ', '969202    ', '0532     ', '632563256325                  ', '0                   ', '03 ', '03', 450000, 'JS0254    ', '02        ', 'ƽ������                                                                                            ', '02 ', '719083417171134124  ', 'TWN', 'TWN', '02        ', 'Y025      ', '1750      ', '02        ', '�ֹ���      ', '521598452');
commit;
prompt 3 records loaded
prompt Loading CI_CIPH_HIGH_BLACK_LIST_INFO...
insert into CI_CIPH_HIGH_BLACK_LIST_INFO (ecif_cust_no, cust_name, cert_no, cert_typ, trnlst_flg, trnlst_cause, trnlst_dt, trnlst_desc, reg_black_list_cnt, bank_id, oper_id, appv_dt, appv_opin, appv_id, data_src_bank, data_src_typ, data_src_unit, manual_trnlst_flg, ext_sys_no, ext_sys_cust_no)
values ('GD000006             ', '�ｨ��                                                                          ', '098765433456788987  ', '02        ', '1235422021', '01', to_date('01-05-2020', 'dd-mm-yyyy'), '1324', 0, '0532     ', '����                ', to_date('16-06-2020', 'dd-mm-yyyy'), '1         ', '�����              ', '020      ', '0000006848', '0101', '0', '7896214564', '789625632563                    ');
insert into CI_CIPH_HIGH_BLACK_LIST_INFO (ecif_cust_no, cust_name, cert_no, cert_typ, trnlst_flg, trnlst_cause, trnlst_dt, trnlst_desc, reg_black_list_cnt, bank_id, oper_id, appv_dt, appv_opin, appv_id, data_src_bank, data_src_typ, data_src_unit, manual_trnlst_flg, ext_sys_no, ext_sys_cust_no)
values ('GD000007             ', '���Ʒ�                                                                          ', '098765456789876543  ', '02        ', '0252625595', '01', to_date('14-07-2020', 'dd-mm-yyyy'), '1234312', 0, '020      ', '������              ', to_date('14-08-2020', 'dd-mm-yyyy'), '1         ', '����Դ              ', '010      ', '0000007854', '0102', '0', '5632156325', '63256325632563                  ');
insert into CI_CIPH_HIGH_BLACK_LIST_INFO (ecif_cust_no, cust_name, cert_no, cert_typ, trnlst_flg, trnlst_cause, trnlst_dt, trnlst_desc, reg_black_list_cnt, bank_id, oper_id, appv_dt, appv_opin, appv_id, data_src_bank, data_src_typ, data_src_unit, manual_trnlst_flg, ext_sys_no, ext_sys_cust_no)
values ('GD000008             ', '����ƽ                                                                          ', '098765434567876543  ', '02        ', '2928202229', '01', to_date('03-02-2021', 'dd-mm-yyyy'), '12341324', 1, '010      ', '����                ', to_date('03-03-2021', 'dd-mm-yyyy'), '1         ', '����                ', '0531     ', '0000001254', '0101', '0', '5632563214', '63056205635635                  ');
insert into CI_CIPH_HIGH_BLACK_LIST_INFO (ecif_cust_no, cust_name, cert_no, cert_typ, trnlst_flg, trnlst_cause, trnlst_dt, trnlst_desc, reg_black_list_cnt, bank_id, oper_id, appv_dt, appv_opin, appv_id, data_src_bank, data_src_typ, data_src_unit, manual_trnlst_flg, ext_sys_no, ext_sys_cust_no)
values ('GD000009             ', '���                                                                          ', '456787654345678976  ', '02        ', '2009299229', '02', to_date('17-06-2020', 'dd-mm-yyyy'), '12341324', 0, '0532     ', '����                ', to_date('17-07-2020', 'dd-mm-yyyy'), '1         ', '����                ', '0532     ', '0000006474', '0103', '0', '9858522056', '53625625625                     ');
insert into CI_CIPH_HIGH_BLACK_LIST_INFO (ecif_cust_no, cust_name, cert_no, cert_typ, trnlst_flg, trnlst_cause, trnlst_dt, trnlst_desc, reg_black_list_cnt, bank_id, oper_id, appv_dt, appv_opin, appv_id, data_src_bank, data_src_typ, data_src_unit, manual_trnlst_flg, ext_sys_no, ext_sys_cust_no)
values ('GD000010             ', '����                                                                            ', '345678765432345678  ', '02        ', '2962992922', '02', to_date('21-10-2020', 'dd-mm-yyyy'), '12343214132', 0, '0531     ', '��С��              ', to_date('21-11-2020', 'dd-mm-yyyy'), '1         ', '������              ', '0532     ', '0000004785', '0110', '1', '6456258206', '202520256325                    ');
commit;
prompt 5 records loaded
prompt Loading CI_CIPH_HIGH_CUST_INFO...
insert into CI_CIPH_HIGH_CUST_INFO (ecif_cust_no, cust_name, birth_dt, sex, mrg_sts, register, ppl_cod, cou_cert_no, cou_name, religion, educ_lev, house_typ, indv_tax_no, indv_insurs_no, have_work_yr, occup_cod, qualification_sts, employer_name, unit_char, unit_work_dt, work_no, posn, ofrn, titl, mn_inco, econ_resur, oth_econ_resur, depend_cnt, language_pre, aff_instn_no, cust_mngr_cod, cust_sts, emp_flg, pot_vip_flg, spec_vip_flg, indv_cust_accum_trn_lmt, cred_crd_guar_cnt, fami_avg_mn_inco, fami_capi, fami_debt, fami_mn_inco, grad_dt, child_flg, industry_typ, fami_guar_totl, plan_cptl_cert_no, study_inst, study_spec, resi_yr, cert_typ, cert_no, prim_nat, rsdnt_nat, conc_cust_flg, best_cont_tm, best_cont_sty)
values ('GD000001                        ', '��ɺ�                          ', to_date('01-05-1990', 'dd-mm-yyyy'), '1 ', '10', 'ɽ���ൺ  ', '01', null, '            ', '���      ', '20', '�߲�סլ  ', '235459456231594562       ', '7564123025               ', '2020', '��ʦ      ', '�ߵ�ѧУ��ʦ�ʸ�    ', '�ൺ��ѧ                                ', '��ҵ��λ  ', to_date('11-05-2021', 'dd-mm-yyyy'), '002               ', '2         ', '��������', '0002      ', '20k', '����                ', null, 2, '����      ', '�������� ', '001245      ', '009 ', '0', '0         ', '0         ', 100000, 0, 12000, 500000, 0, 40000, '201107', '1', 'P         ', 0, '345654321345                    ', '��ѧϵ                                                                          ', '��ѧ                                                                            ', 60, '02 ', '213654202987462120  ', 'CHN', 'CHN', '0022345625', '1330      ', '01        ');
insert into CI_CIPH_HIGH_CUST_INFO (ecif_cust_no, cust_name, birth_dt, sex, mrg_sts, register, ppl_cod, cou_cert_no, cou_name, religion, educ_lev, house_typ, indv_tax_no, indv_insurs_no, have_work_yr, occup_cod, qualification_sts, employer_name, unit_char, unit_work_dt, work_no, posn, ofrn, titl, mn_inco, econ_resur, oth_econ_resur, depend_cnt, language_pre, aff_instn_no, cust_mngr_cod, cust_sts, emp_flg, pot_vip_flg, spec_vip_flg, indv_cust_accum_trn_lmt, cred_crd_guar_cnt, fami_avg_mn_inco, fami_capi, fami_debt, fami_mn_inco, grad_dt, child_flg, industry_typ, fami_guar_totl, plan_cptl_cert_no, study_inst, study_spec, resi_yr, cert_typ, cert_no, prim_nat, rsdnt_nat, conc_cust_flg, best_cont_tm, best_cont_sty)
values ('GD000002                        ', '������                          ', to_date('16-07-1987', 'dd-mm-yyyy'), '1 ', '19', 'ɽ������  ', '01', '456987456358497852 ', '�Ľ�        ', null, '20', '��԰��  ', '155256856231594562       ', '4512032659               ', '2019', 'ҽ��      ', '�ٴ�ִҵҽʦ�ʸ�    ', '�ൺ��ѧ����ҽԺ                        ', '��ҵ��λ  ', to_date('05-05-2021', 'dd-mm-yyyy'), '012               ', '1         ', '����ҽʦ', '0002      ', '25k', '����                ', '����Ա                                        ', 3, '����      ', 'ҽ�ƻ��� ', '001425      ', '007 ', '0', '1         ', '0         ', 100000, 1, 13000, 550000, 0, 34000, '201007', '1', 'Q         ', 0, '23456543213456                  ', '�ٴ�����ѧԺ                                                                    ', '��ҽѧ                                                                          ', 56, '02 ', '148841564870987654  ', 'CHN', 'CHN', '2545215326', '1243      ', '01        ');
insert into CI_CIPH_HIGH_CUST_INFO (ecif_cust_no, cust_name, birth_dt, sex, mrg_sts, register, ppl_cod, cou_cert_no, cou_name, religion, educ_lev, house_typ, indv_tax_no, indv_insurs_no, have_work_yr, occup_cod, qualification_sts, employer_name, unit_char, unit_work_dt, work_no, posn, ofrn, titl, mn_inco, econ_resur, oth_econ_resur, depend_cnt, language_pre, aff_instn_no, cust_mngr_cod, cust_sts, emp_flg, pot_vip_flg, spec_vip_flg, indv_cust_accum_trn_lmt, cred_crd_guar_cnt, fami_avg_mn_inco, fami_capi, fami_debt, fami_mn_inco, grad_dt, child_flg, industry_typ, fami_guar_totl, plan_cptl_cert_no, study_inst, study_spec, resi_yr, cert_typ, cert_no, prim_nat, rsdnt_nat, conc_cust_flg, best_cont_tm, best_cont_sty)
values ('GD000003                        ', '���                            ', to_date('13-06-1985', 'dd-mm-yyyy'), '1 ', '19', 'ɽ����̨  ', '01', '787654567898765432 ', '�����      ', '��˹����  ', '21', '��԰��  ', '235885284920594562       ', '8654120385               ', '2018', 'ҽ��      ', '��ǻִҵҽʦ�ʸ�    ', '���Ͽ�ǻҽԺ                            ', '��Ӫ��λ  ', to_date('01-05-2021', 'dd-mm-yyyy'), '013               ', '3         ', '������  ', '0003      ', '30k', '����                ', null, 1, '����      ', 'ҽ�ƻ��� ', '002154      ', '009 ', '0', '0         ', '0         ', 100000, 0, 10000, 560000, 0, 41000, '201107', '1', 'Q         ', 0, '76453256432                     ', '��ǻϵ                                                                          ', '��ǻרҵ                                                                        ', 76, '02 ', '234567890987654334  ', 'CHN', 'CHN', '5635862563', '0954      ', '03        ');
insert into CI_CIPH_HIGH_CUST_INFO (ecif_cust_no, cust_name, birth_dt, sex, mrg_sts, register, ppl_cod, cou_cert_no, cou_name, religion, educ_lev, house_typ, indv_tax_no, indv_insurs_no, have_work_yr, occup_cod, qualification_sts, employer_name, unit_char, unit_work_dt, work_no, posn, ofrn, titl, mn_inco, econ_resur, oth_econ_resur, depend_cnt, language_pre, aff_instn_no, cust_mngr_cod, cust_sts, emp_flg, pot_vip_flg, spec_vip_flg, indv_cust_accum_trn_lmt, cred_crd_guar_cnt, fami_avg_mn_inco, fami_capi, fami_debt, fami_mn_inco, grad_dt, child_flg, industry_typ, fami_guar_totl, plan_cptl_cert_no, study_inst, study_spec, resi_yr, cert_typ, cert_no, prim_nat, rsdnt_nat, conc_cust_flg, best_cont_tm, best_cont_sty)
values ('GD000004                        ', '������                          ', to_date('07-07-1992', 'dd-mm-yyyy'), '2 ', '10', '����֣��  ', '01', null, '            ', null, '31', '�߲�סլ  ', '235459456278554212       ', '2196548120               ', '2019', '����      ', '�м������ʸ�        ', '�����봫˼�������޹�˾                  ', '��Ӫ��λ  ', to_date('14-04-2021', 'dd-mm-yyyy'), '014               ', '2         ', '������  ', '0002      ', '20k', '����                ', '��Ӱ                                          ', 0, 'Ӣ��      ', null, '003269      ', '009 ', '0', '0         ', '0         ', 100000, 0, 11000, 650000, 100000, 28000, '201207', '1', 'I         ', 0, '12345675432                     ', '�����ѧԺ                                                                      ', 'Ӣ��רҵ                                                                        ', 45, '02 ', '123456789987654323  ', 'CHN', 'CHN', '9876546465', '0834      ', '03        ');
insert into CI_CIPH_HIGH_CUST_INFO (ecif_cust_no, cust_name, birth_dt, sex, mrg_sts, register, ppl_cod, cou_cert_no, cou_name, religion, educ_lev, house_typ, indv_tax_no, indv_insurs_no, have_work_yr, occup_cod, qualification_sts, employer_name, unit_char, unit_work_dt, work_no, posn, ofrn, titl, mn_inco, econ_resur, oth_econ_resur, depend_cnt, language_pre, aff_instn_no, cust_mngr_cod, cust_sts, emp_flg, pot_vip_flg, spec_vip_flg, indv_cust_accum_trn_lmt, cred_crd_guar_cnt, fami_avg_mn_inco, fami_capi, fami_debt, fami_mn_inco, grad_dt, child_flg, industry_typ, fami_guar_totl, plan_cptl_cert_no, study_inst, study_spec, resi_yr, cert_typ, cert_no, prim_nat, rsdnt_nat, conc_cust_flg, best_cont_tm, best_cont_sty)
values ('GD000005                        ', '���                          ', to_date('03-08-1989', 'dd-mm-yyyy'), '1 ', '39', '����      ', '01', null, '            ', '���      ', '10', '���סլ  ', '235459456231966541       ', '5496543021               ', '2019', '�����Ա  ', '��������ʸ�        ', '����                                    ', '������ҵ  ', to_date('01-03-2021', 'dd-mm-yyyy'), '005               ', '3         ', '�鳤    ', '0004      ', '10k', '����                ', '�滭                                          ', 0, '����      ', null, '003688      ', '009 ', '0', '0         ', '0         ', 50000, 0, 8000, 350000, 300000, 26000, '201507', '0', 'C         ', 0, '87453213456                     ', '�����ͨ��ѧԺ                                                                  ', '�������רҵ                                                                    ', 100, '02 ', '456789009876543456  ', 'CHN', 'CHN', '2201558663', '1032      ', '02        ');
insert into CI_CIPH_HIGH_CUST_INFO (ecif_cust_no, cust_name, birth_dt, sex, mrg_sts, register, ppl_cod, cou_cert_no, cou_name, religion, educ_lev, house_typ, indv_tax_no, indv_insurs_no, have_work_yr, occup_cod, qualification_sts, employer_name, unit_char, unit_work_dt, work_no, posn, ofrn, titl, mn_inco, econ_resur, oth_econ_resur, depend_cnt, language_pre, aff_instn_no, cust_mngr_cod, cust_sts, emp_flg, pot_vip_flg, spec_vip_flg, indv_cust_accum_trn_lmt, cred_crd_guar_cnt, fami_avg_mn_inco, fami_capi, fami_debt, fami_mn_inco, grad_dt, child_flg, industry_typ, fami_guar_totl, plan_cptl_cert_no, study_inst, study_spec, resi_yr, cert_typ, cert_no, prim_nat, rsdnt_nat, conc_cust_flg, best_cont_tm, best_cont_sty)
values ('GD000006                        ', '�ｨ��                          ', to_date('07-06-1991', 'dd-mm-yyyy'), '2 ', '23', '�Ϻ�      ', '01', '854965871230256480 ', '��ѩ��      ', '���      ', '11', '��԰��  ', '788521226231594562       ', '1302564897               ', '2017', '��ʦ      ', '�ߵ�ѧУ��ʦ�ʸ�    ', '�й������ѧ                            ', '��ҵ��λ  ', to_date('07-02-2021', 'dd-mm-yyyy'), '008               ', '1         ', '������  ', '0003      ', '15k', '����                ', null, 1, '����      ', '�������� ', '002356      ', '009 ', '0', '0         ', '0         ', 100000, 0, 12000, 500000, 100000, 32000, '201307', '1', 'P         ', 0, '764532134565                    ', '��ѧϵ                                                                          ', '��ѧרҵ                                                                        ', 78, '02 ', '098765433456788987  ', 'CHN', 'CHN', '2598784122', '1122      ', '03        ');
insert into CI_CIPH_HIGH_CUST_INFO (ecif_cust_no, cust_name, birth_dt, sex, mrg_sts, register, ppl_cod, cou_cert_no, cou_name, religion, educ_lev, house_typ, indv_tax_no, indv_insurs_no, have_work_yr, occup_cod, qualification_sts, employer_name, unit_char, unit_work_dt, work_no, posn, ofrn, titl, mn_inco, econ_resur, oth_econ_resur, depend_cnt, language_pre, aff_instn_no, cust_mngr_cod, cust_sts, emp_flg, pot_vip_flg, spec_vip_flg, indv_cust_accum_trn_lmt, cred_crd_guar_cnt, fami_avg_mn_inco, fami_capi, fami_debt, fami_mn_inco, grad_dt, child_flg, industry_typ, fami_guar_totl, plan_cptl_cert_no, study_inst, study_spec, resi_yr, cert_typ, cert_no, prim_nat, rsdnt_nat, conc_cust_flg, best_cont_tm, best_cont_sty)
values ('GD000007                        ', '���Ʒ�                          ', to_date('13-11-1990', 'dd-mm-yyyy'), '2 ', '22', '���      ', '01', '723697521365489659 ', '��С��      ', null, '31', '���סլ  ', '654346556231594562       ', '2310265423               ', '2016', '˽Ӫҵ��  ', '˽Ӫִҵ            ', null, '��Ӫ��λ  ', to_date('14-11-2020', 'dd-mm-yyyy'), '003               ', '4         ', '�ܾ���  ', '0002      ', '25k', '����                ', null, 2, '����      ', null, '002356      ', '007 ', '0', '1         ', '0         ', 100000, 1, 11000, 660000, 0, 33000, '201107', '1', 'F         ', 0, '2345675432                      ', '���̹���ѧԺ                                                                    ', '���̹���רҵ                                                                    ', 80, '02 ', '098765456789876543  ', 'CHN', 'CHN', '2215522365', '1809      ', '03        ');
insert into CI_CIPH_HIGH_CUST_INFO (ecif_cust_no, cust_name, birth_dt, sex, mrg_sts, register, ppl_cod, cou_cert_no, cou_name, religion, educ_lev, house_typ, indv_tax_no, indv_insurs_no, have_work_yr, occup_cod, qualification_sts, employer_name, unit_char, unit_work_dt, work_no, posn, ofrn, titl, mn_inco, econ_resur, oth_econ_resur, depend_cnt, language_pre, aff_instn_no, cust_mngr_cod, cust_sts, emp_flg, pot_vip_flg, spec_vip_flg, indv_cust_accum_trn_lmt, cred_crd_guar_cnt, fami_avg_mn_inco, fami_capi, fami_debt, fami_mn_inco, grad_dt, child_flg, industry_typ, fami_guar_totl, plan_cptl_cert_no, study_inst, study_spec, resi_yr, cert_typ, cert_no, prim_nat, rsdnt_nat, conc_cust_flg, best_cont_tm, best_cont_sty)
values ('GD000008                        ', '����ƽ                          ', to_date('01-02-1991', 'dd-mm-yyyy'), '1 ', '10', '����      ', '01', null, '            ', '������    ', '10', '�߲�סլ  ', '098759456231594845       ', '5201236520               ', '2021', 'ҽ��      ', '�ٴ�ִҵҽʦ�ʸ�    ', '����Э��ҽԺ                            ', '��ҵ��λ  ', to_date('14-05-2021', 'dd-mm-yyyy'), '003               ', '2         ', '�Ƴ�    ', '0004      ', '20k', '����                ', null, 2, '����      ', 'ҽ�ƻ��� ', '008974      ', '009 ', '0', '0         ', '0         ', 100000, 0, 12000, 700000, 500000, 34000, '201307', '1', 'Q         ', 0, '437654321                       ', '�ٴ�����ѧԺ                                                                    ', '��ҽѧ                                                                          ', 90, '02 ', '098765434567876543  ', 'CHN', 'CHN', '7852964185', '1900      ', '02        ');
insert into CI_CIPH_HIGH_CUST_INFO (ecif_cust_no, cust_name, birth_dt, sex, mrg_sts, register, ppl_cod, cou_cert_no, cou_name, religion, educ_lev, house_typ, indv_tax_no, indv_insurs_no, have_work_yr, occup_cod, qualification_sts, employer_name, unit_char, unit_work_dt, work_no, posn, ofrn, titl, mn_inco, econ_resur, oth_econ_resur, depend_cnt, language_pre, aff_instn_no, cust_mngr_cod, cust_sts, emp_flg, pot_vip_flg, spec_vip_flg, indv_cust_accum_trn_lmt, cred_crd_guar_cnt, fami_avg_mn_inco, fami_capi, fami_debt, fami_mn_inco, grad_dt, child_flg, industry_typ, fami_guar_totl, plan_cptl_cert_no, study_inst, study_spec, resi_yr, cert_typ, cert_no, prim_nat, rsdnt_nat, conc_cust_flg, best_cont_tm, best_cont_sty)
values ('GD000009                        ', '���                          ', to_date('22-04-1992', 'dd-mm-yyyy'), '1 ', '22', '�㽭����  ', '01', '021365895126452368 ', '����        ', '������    ', '20', '���סլ  ', '440259456231594224       ', '2136468224               ', '2021', '��������  ', '�м�����ʦ�ʸ�      ', '�й��г��ɷ����޹�˾                    ', '������ҵ  ', to_date('18-12-2020', 'dd-mm-yyyy'), '004               ', '2         ', '������  ', '0003      ', '25k', '����                ', '����                                          ', 2, '����      ', null, '005987      ', '009 ', '0', '0         ', '0         ', 100000, 0, 13000, 670000, 0, 40000, '201207', '0', 'C         ', 0, '347654323456                    ', '�����ͨѧԺ                                                                    ', '������רҵ                                                                    ', 89, '02 ', '456787654345678976  ', 'CHN', 'CHN', '5263632351', '2210      ', '03        ');
insert into CI_CIPH_HIGH_CUST_INFO (ecif_cust_no, cust_name, birth_dt, sex, mrg_sts, register, ppl_cod, cou_cert_no, cou_name, religion, educ_lev, house_typ, indv_tax_no, indv_insurs_no, have_work_yr, occup_cod, qualification_sts, employer_name, unit_char, unit_work_dt, work_no, posn, ofrn, titl, mn_inco, econ_resur, oth_econ_resur, depend_cnt, language_pre, aff_instn_no, cust_mngr_cod, cust_sts, emp_flg, pot_vip_flg, spec_vip_flg, indv_cust_accum_trn_lmt, cred_crd_guar_cnt, fami_avg_mn_inco, fami_capi, fami_debt, fami_mn_inco, grad_dt, child_flg, industry_typ, fami_guar_totl, plan_cptl_cert_no, study_inst, study_spec, resi_yr, cert_typ, cert_no, prim_nat, rsdnt_nat, conc_cust_flg, best_cont_tm, best_cont_sty)
values ('GD000010                        ', '����                            ', to_date('28-08-1993', 'dd-mm-yyyy'), '1 ', '20', '��������  ', '01', '456325915645236203 ', '������      ', null, '20', '�߲�סլ  ', '232459456231985452       ', '0213565122               ', '2019', '�����Ա  ', '��������ʸ�        ', '����                                    ', '������ҵ  ', to_date('23-10-2020', 'dd-mm-yyyy'), '016               ', '3         ', '����    ', '0004      ', '10k', '����                ', '����                                          ', 1, '����      ', null, '005698      ', '009 ', '0', '0         ', '0         ', 50000, 0, 9000, 300000, 0, 21000, '201507', '1', 'I         ', 0, '543568765423                    ', '��ҵ���ѧԺ                                                                    ', '��е���רҵ                                                                    ', 90, '02 ', '345678765432345678  ', 'CHN', 'CHN', '0252442636', '0755      ', '02        ');
commit;
prompt 10 records loaded
prompt Loading CI_CIPH_HIGH_INDV_LEV_INFO...
insert into CI_CIPH_HIGH_INDV_LEV_INFO (ecif_cust_no, indv_lev_typ, eval_instn, eval_dt, indv_lev_cod, crlmt, cred_lotp, eval_val, eval_desc, bank_id, ext_sys_cust_no, ext_sys_no)
values ('GD000001             ', 'һ��      ', '������Ϲ��������������޹�˾            ', to_date('05-01-2021', 'dd-mm-yyyy'), 'AAA       ', 200000, 21154, 90, 'sdfsa                                                                                                                                                                                                   ', '010      ', '7895485                         ', '86258962  ');
insert into CI_CIPH_HIGH_INDV_LEV_INFO (ecif_cust_no, indv_lev_typ, eval_instn, eval_dt, indv_lev_cod, crlmt, cred_lotp, eval_val, eval_desc, bank_id, ext_sys_cust_no, ext_sys_no)
values ('GD000001             ', '����      ', '�Ϻ���������������Ͷ�ʷ������޹�˾      ', to_date('04-05-2021', 'dd-mm-yyyy'), 'BBB       ', 250000, 12545, 88, 'dsafd                                                                                                                                                                                                   ', '020      ', '486252                          ', '56215625  ');
insert into CI_CIPH_HIGH_INDV_LEV_INFO (ecif_cust_no, indv_lev_typ, eval_instn, eval_dt, indv_lev_cod, crlmt, cred_lotp, eval_val, eval_desc, bank_id, ext_sys_cust_no, ext_sys_no)
values ('GD000002             ', 'һ��      ', '�󹫹��������������޹�˾                ', to_date('19-01-2021', 'dd-mm-yyyy'), 'A         ', 300000, 56456, 87, 'dsfsasg                                                                                                                                                                                                 ', '0531     ', '52562786                        ', '562145621 ');
insert into CI_CIPH_HIGH_INDV_LEV_INFO (ecif_cust_no, indv_lev_typ, eval_instn, eval_dt, indv_lev_cod, crlmt, cred_lotp, eval_val, eval_desc, bank_id, ext_sys_cust_no, ext_sys_no)
values ('GD000003             ', '����      ', '�Ϻ���������������Ͷ�ʷ������޹�˾      ', to_date('09-02-2021', 'dd-mm-yyyy'), 'BB        ', 340000, 52562, 91, 'rtr                                                                                                                                                                                                     ', '0532     ', '5256248                         ', '5214521   ');
insert into CI_CIPH_HIGH_INDV_LEV_INFO (ecif_cust_no, indv_lev_typ, eval_instn, eval_dt, indv_lev_cod, crlmt, cred_lotp, eval_val, eval_desc, bank_id, ext_sys_cust_no, ext_sys_no)
values ('GD000004             ', '����      ', '������Ϲ��������������޹�˾            ', to_date('20-01-2021', 'dd-mm-yyyy'), 'B         ', 230000, 78621, 89, 'ertreq                                                                                                                                                                                                  ', '0531     ', '85225520                        ', '5252567852');
insert into CI_CIPH_HIGH_INDV_LEV_INFO (ecif_cust_no, indv_lev_typ, eval_instn, eval_dt, indv_lev_cod, crlmt, cred_lotp, eval_val, eval_desc, bank_id, ext_sys_cust_no, ext_sys_no)
values ('GD000005             ', 'һ��      ', '�Ϻ���������������Ͷ�ʷ������޹�˾      ', to_date('15-02-2021', 'dd-mm-yyyy'), 'AA        ', 340000, 25621, 88, 'asdf                                                                                                                                                                                                    ', '0532     ', '5625208                         ', '52563256  ');
insert into CI_CIPH_HIGH_INDV_LEV_INFO (ecif_cust_no, indv_lev_typ, eval_instn, eval_dt, indv_lev_cod, crlmt, cred_lotp, eval_val, eval_desc, bank_id, ext_sys_cust_no, ext_sys_no)
values ('GD000006             ', '����      ', '�󹫹��������������޹�˾                ', to_date('25-02-2021', 'dd-mm-yyyy'), 'CCC       ', 450000, 56255, 77, 'xczvbx                                                                                                                                                                                                  ', '0532     ', '52527862                        ', '5625632562');
insert into CI_CIPH_HIGH_INDV_LEV_INFO (ecif_cust_no, indv_lev_typ, eval_instn, eval_dt, indv_lev_cod, crlmt, cred_lotp, eval_val, eval_desc, bank_id, ext_sys_cust_no, ext_sys_no)
values ('GD000007             ', '����      ', '������Ϲ��������������޹�˾            ', to_date('08-03-2021', 'dd-mm-yyyy'), 'CC        ', 430000, 25142, 86, 'cvzcxv                                                                                                                                                                                                  ', '010      ', '8256345                         ', '85214552  ');
insert into CI_CIPH_HIGH_INDV_LEV_INFO (ecif_cust_no, indv_lev_typ, eval_instn, eval_dt, indv_lev_cod, crlmt, cred_lotp, eval_val, eval_desc, bank_id, ext_sys_cust_no, ext_sys_no)
values ('GD000008             ', '����      ', '�Ϻ���������������Ͷ�ʷ������޹�˾      ', to_date('10-02-2021', 'dd-mm-yyyy'), 'CCC       ', 230000, 52524, 88, 'werty                                                                                                                                                                                                   ', '010      ', '525656                          ', '586214541 ');
insert into CI_CIPH_HIGH_INDV_LEV_INFO (ecif_cust_no, indv_lev_typ, eval_instn, eval_dt, indv_lev_cod, crlmt, cred_lotp, eval_val, eval_desc, bank_id, ext_sys_cust_no, ext_sys_no)
values ('GD000009             ', '����      ', '�Ϻ���������������Ͷ�ʷ������޹�˾      ', to_date('09-02-2021', 'dd-mm-yyyy'), 'C         ', 340000, 51454, 89, 'fgdsgf                                                                                                                                                                                                  ', '0531     ', '52252025                        ', '7820852052');
insert into CI_CIPH_HIGH_INDV_LEV_INFO (ecif_cust_no, indv_lev_typ, eval_instn, eval_dt, indv_lev_cod, crlmt, cred_lotp, eval_val, eval_desc, bank_id, ext_sys_cust_no, ext_sys_no)
values ('GD000010             ', '����      ', '������Ϲ��������������޹�˾            ', to_date('22-04-2021', 'dd-mm-yyyy'), 'CC        ', 400000, 24578, 78, 'gffewr                                                                                                                                                                                                  ', '0531     ', '78962584                        ', '584526985 ');
commit;
prompt 11 records loaded
prompt Loading CI_CIPH_HIGH_PTY_ADDR_RELA...
insert into CI_CIPH_HIGH_PTY_ADDR_RELA (ecif_cust_no, pty_addr_rela_typ, addr_id)
values ('GD000001                        ', '����      ', '�Ϻ����ֶ�����18��                                ');
insert into CI_CIPH_HIGH_PTY_ADDR_RELA (ecif_cust_no, pty_addr_rela_typ, addr_id)
values ('GD000002                        ', '����      ', '�����г�����22��                                  ');
insert into CI_CIPH_HIGH_PTY_ADDR_RELA (ecif_cust_no, pty_addr_rela_typ, addr_id)
values ('GD000003                        ', '����      ', 'ɽ��ʡ�ൺ���б���8��                             ');
insert into CI_CIPH_HIGH_PTY_ADDR_RELA (ecif_cust_no, pty_addr_rela_typ, addr_id)
values ('GD000004                        ', '����      ', '�����г�����3��                                   ');
insert into CI_CIPH_HIGH_PTY_ADDR_RELA (ecif_cust_no, pty_addr_rela_typ, addr_id)
values ('GD000005                        ', '����      ', '����ʡ�Ͼ���������4��                             ');
insert into CI_CIPH_HIGH_PTY_ADDR_RELA (ecif_cust_no, pty_addr_rela_typ, addr_id)
values ('GD000006                        ', '����      ', '�㽭ʡ������������12��                            ');
insert into CI_CIPH_HIGH_PTY_ADDR_RELA (ecif_cust_no, pty_addr_rela_typ, addr_id)
values ('GD000007                        ', '����      ', 'ɽ��ʡ������������23��                            ');
insert into CI_CIPH_HIGH_PTY_ADDR_RELA (ecif_cust_no, pty_addr_rela_typ, addr_id)
values ('GD000008                        ', '����      ', 'ɽ��ʡ�ൺ��������34��                            ');
insert into CI_CIPH_HIGH_PTY_ADDR_RELA (ecif_cust_no, pty_addr_rela_typ, addr_id)
values ('GD000009                        ', '����      ', '�Ϻ��������7��                                   ');
insert into CI_CIPH_HIGH_PTY_ADDR_RELA (ecif_cust_no, pty_addr_rela_typ, addr_id)
values ('GD000010                        ', '����      ', '�����к�����36��                                  ');
commit;
prompt 10 records loaded
prompt Loading CI_CIPL_LOW_CUST_INFO...
insert into CI_CIPL_LOW_CUST_INFO (ecif_cust_no, indv_id, seq_no, birth_dt, sex, mrg_sts, register, ppl_cod, cou_cert_no, cou_name, religion, educ_lev, house_typ, indv_tax_no, indv_insurs_no, have_work_yr, occup_cod, qualification_sts, employer_name, unit_char, unit_work_dt, work_no, posn, ofrn, titl, mn_inco, econ_resur, oth_econ_resur, depend_cnt, language_pre, aff_instn_no, std_opun_cod, cust_mngr_cod, cust_sts, emp_flg, pot_vip_flg, spec_vip_flg, indv_cust_accum_trn_lmt, cred_crd_guar_cnt, fami_avg_mn_inco, fami_capi, fami_debt, fami_mn_inco, grad_dt, child_flg, industry_typ, fami_guar_totl, plan_cptl_cert_no, study_inst, study_spec, resi_yr, cert_typ, cert_no, prim_nat, rsdnt_nat, cust_lev, conc_cust_flg, best_cont_tm, best_cont_sty, upd_tlr, upd_instn)
values ('DD000001                        ', '0012568             ', 23, to_date('10-07-1990', 'dd-mm-yyyy'), '1 ', '10', '����      ', '01', '23456789765234563  ', '����        ', '3 ', '21', '�߲�סլ  ', '754698213021596452       ', '4565889546               ', '2015', '��������            ', '��������ʦ          ', '������ɷ����޹�˾                      ', '��Ӫ��λ  ', to_date('10-05-2021', 'dd-mm-yyyy'), '001245            ', '3       ', '0004    ', '����      ', '8k ', '����                ', '����                                          ', 0, '����      ', '010      ', '345674321', '786212225   ', '009 ', '0', '0         ', '0         ', 100000, 0, 7000, 200000, 0, 15000, '2014  ', '0', 'C         ', 0, '1234598707645321                ', '�������ѧԺ                                                                    ', '�������רҵ                                                                    ', 201602, '02 ', '236548120315698741  ', 'CHN', 'CHN', '04        ', '78521296  ', '0830      ', '03        ', '��ѩ        ', '0532     ');
insert into CI_CIPL_LOW_CUST_INFO (ecif_cust_no, indv_id, seq_no, birth_dt, sex, mrg_sts, register, ppl_cod, cou_cert_no, cou_name, religion, educ_lev, house_typ, indv_tax_no, indv_insurs_no, have_work_yr, occup_cod, qualification_sts, employer_name, unit_char, unit_work_dt, work_no, posn, ofrn, titl, mn_inco, econ_resur, oth_econ_resur, depend_cnt, language_pre, aff_instn_no, std_opun_cod, cust_mngr_cod, cust_sts, emp_flg, pot_vip_flg, spec_vip_flg, indv_cust_accum_trn_lmt, cred_crd_guar_cnt, fami_avg_mn_inco, fami_capi, fami_debt, fami_mn_inco, grad_dt, child_flg, industry_typ, fami_guar_totl, plan_cptl_cert_no, study_inst, study_spec, resi_yr, cert_typ, cert_no, prim_nat, rsdnt_nat, cust_lev, conc_cust_flg, best_cont_tm, best_cont_sty, upd_tlr, upd_instn)
values ('DD000002                        ', '0054621             ', 45, to_date('16-02-1989', 'dd-mm-yyyy'), '2 ', '19', '�Ϻ�      ', '01', '784652310256489745 ', '���Ӱ�      ', '1 ', '10', '���סլ  ', '789556258412520266       ', '4562574185               ', '2014', '���                ', '�м����ʦ�ʸ�      ', '���������������                        ', '��Ӫ��λ  ', to_date('13-04-2021', 'dd-mm-yyyy'), '01236894          ', '2       ', '0003    ', '������    ', '12k', '����                ', null, 2, '����      ', '010      ', '324576453', '52205202    ', '009 ', '0', '1         ', '0         ', 150000, 0, 10000, 250000, 0, 20000, '2013  ', '1', 'J         ', 0, '234576890764532                 ', '���ù���ѧԺ                                                                    ', '���ѧרҵ                                                                      ', 201511, '02 ', '751296352085241252  ', 'CHN', 'CHN', '03        ', '55245697  ', '1020      ', '02        ', '�±���      ', '0531     ');
insert into CI_CIPL_LOW_CUST_INFO (ecif_cust_no, indv_id, seq_no, birth_dt, sex, mrg_sts, register, ppl_cod, cou_cert_no, cou_name, religion, educ_lev, house_typ, indv_tax_no, indv_insurs_no, have_work_yr, occup_cod, qualification_sts, employer_name, unit_char, unit_work_dt, work_no, posn, ofrn, titl, mn_inco, econ_resur, oth_econ_resur, depend_cnt, language_pre, aff_instn_no, std_opun_cod, cust_mngr_cod, cust_sts, emp_flg, pot_vip_flg, spec_vip_flg, indv_cust_accum_trn_lmt, cred_crd_guar_cnt, fami_avg_mn_inco, fami_capi, fami_debt, fami_mn_inco, grad_dt, child_flg, industry_typ, fami_guar_totl, plan_cptl_cert_no, study_inst, study_spec, resi_yr, cert_typ, cert_no, prim_nat, rsdnt_nat, cust_lev, conc_cust_flg, best_cont_tm, best_cont_sty, upd_tlr, upd_instn)
values ('DD000003                        ', '0022155             ', 21, to_date('23-05-1991', 'dd-mm-yyyy'), '1 ', '10', '����      ', '01', '23456765432145634  ', '����        ', '4 ', '21', '�߲�סլ  ', '456325898562056320       ', '1236456857               ', '2014', '����ʦ              ', 'һ�������ʸ�        ', '�й�����һ�����޹�˾                    ', '����λ  ', to_date('20-04-2021', 'dd-mm-yyyy'), '054897            ', '3       ', '0004    ', '����      ', '7k ', '����                ', '����                                          ', 0, '����      ', '010      ', '234567865', '634285253   ', '009 ', '0', '0         ', '0         ', 100000, 0, 7000, 180000, 0, 13000, '2015  ', '0', 'E         ', 0, '2345768965423456                ', '��������ѧԺ                                                                    ', '��ľ����רҵ                                                                    ', 201406, '02 ', '079803275266822584  ', 'CHN', 'CHN', '04        ', '52152456  ', '1830      ', '02        ', '�´�÷      ', '010      ');
commit;
prompt 3 records loaded
prompt Loading CI_MABIAO...
insert into CI_MABIAO (code, name, mazhi)
values ('0', 'δ֪���Ա�', 'DEM0100005');
insert into CI_MABIAO (code, name, mazhi)
values ('1', '��', 'DEM0100005');
insert into CI_MABIAO (code, name, mazhi)
values ('2', 'Ů', 'DEM0100005');
insert into CI_MABIAO (code, name, mazhi)
values ('5', 'Ů�Ըģ��䣩Ϊ����', 'DEM0100005');
insert into CI_MABIAO (code, name, mazhi)
values ('6', '���Ըģ��䣩ΪŮ��', 'DEM0100005');
insert into CI_MABIAO (code, name, mazhi)
values ('9', 'δ˵�����Ա�', 'DEM0100005');
insert into CI_MABIAO (code, name, mazhi)
values ('10', 'δ��', 'DEM0100003');
insert into CI_MABIAO (code, name, mazhi)
values ('19', '�ѻ�', 'DEM0100003');
insert into CI_MABIAO (code, name, mazhi)
values ('20', '�ѻ�����Ů', 'DEM0100003');
insert into CI_MABIAO (code, name, mazhi)
values ('21', '�ѻ�����Ů', 'DEM0100003');
insert into CI_MABIAO (code, name, mazhi)
values ('22', '����', 'DEM0100003');
insert into CI_MABIAO (code, name, mazhi)
values ('23', '�ٻ�', 'DEM0100003');
insert into CI_MABIAO (code, name, mazhi)
values ('24', '����', 'DEM0100003');
insert into CI_MABIAO (code, name, mazhi)
values ('30', 'ɥż', 'DEM0100003');
insert into CI_MABIAO (code, name, mazhi)
values ('39', '���', 'DEM0100003');
insert into CI_MABIAO (code, name, mazhi)
values ('40', '�������Ů', 'DEM0100003');
insert into CI_MABIAO (code, name, mazhi)
values ('41', '�������Ů', 'DEM0100003');
insert into CI_MABIAO (code, name, mazhi)
values ('90', 'δ˵���Ļ���״��', 'DEM0100003');
insert into CI_MABIAO (code, name, mazhi)
values ('01', '���� ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('02', '�ɹ��� ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('03', '���� ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('04', '���� ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('05', 'ά����� ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('06', '���� ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('07', '���� ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('08', '׳�� ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('09', '������ ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('10', '������ ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('11', '���� ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('12', '���� ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('13', '���� ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('14', '���� ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('15', '������ ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('16', '������ ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('17', '�������� ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('18', '���� ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('19', '���� ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('20', '������ ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('21', '���� ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('22', '��� ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('23', '��ɽ�� ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('24', '������ ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('25', 'ˮ�� ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('26', '������ ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('27', '������ ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('28', '������ ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('29', '�¶������� ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('30', '���� ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('31', '���Ӷ��� ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('32', '������ ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('33', 'Ǽ�� ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('34', '������ ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('35', '������ ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('36', 'ë���� ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('37', '������ ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('38', '������ ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('39', '������ ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('40', '������ ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('41', '�������� ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('42', 'ŭ�� ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('43', '���α���� ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('44', '����˹�� ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('45', '���¿��� ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('46', '������ ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('47', '������ ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('48', 'ԣ���� ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('49', '���� ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('50', '�������� ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('51', '������ ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('52', '���״��� ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('53', '������ ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('54', '�Ű��� ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('55', '����� ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('56', '��ŵ�� ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('57', '����', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('97', 'δ�ṩ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('98', '���Ѫͳ ', 'DEM0100001');
insert into CI_MABIAO (code, name, mazhi)
values ('01', '��ʿ', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('02', '��ʿ��', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('10', '�о���', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('11', '�о�����ҵ', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('19', '�о�����ҵ', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('20', '��ѧ����(��ơ���ѧ��)', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('21', '��ѧ��ҵ', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('28', '�൱��ѧ��ҵ', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('29', '��ѧ��ҵ', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('30', '��ѧר�ƺ�ר��ѧУ(��ơ���ר��)', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('31', 'ר�Ʊ�ҵ', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('38', '�൱ר�Ʊ�ҵ', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('39', 'ר����ҵ', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('40', '�е�רҵѧУ���еȼ���ѧУ', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('41', '��ר��ҵ', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('42', '�м���ҵ', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('48', '�൱��ר���м���ҵ', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('49', '��ר���м���ҵ', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('50', '����ѧУ', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('51', '����ѧУ��ҵ', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('59', '����ѧУ��ҵ', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('60', '����', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('61', '���б�ҵ', 'DEM0100007');
commit;
prompt 100 records committed...
insert into CI_MABIAO (code, name, mazhi)
values ('62', 'ְҵ���б�ҵ', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('63', 'ũҵ���б�ҵ', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('68', '�൱���б�ҵ', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('69', '������ҵ', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('70', '����', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('71', '���б�ҵ', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('72', 'ְҵ���б�ҵ', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('73', 'ũҵ���б�ҵ', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('78', '�൱���б�ҵ', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('79', '������ҵ', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('80', 'Сѧ', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('81', 'Сѧ��ҵ', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('88', '�൱Сѧ��ҵ', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('89', 'Сѧ��ҵ', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('90', '��ä�����ä', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('99', 'δ֪', 'DEM0100007');
insert into CI_MABIAO (code, name, mazhi)
values ('01', '���һ��ء���Ⱥ��֯����ҵ����ҵ��λ������', 'PAR0400044');
insert into CI_MABIAO (code, name, mazhi)
values ('02', '������Ա���й���Ա', 'PAR0400044');
insert into CI_MABIAO (code, name, mazhi)
values ('03', 'רҵ������Ա', 'PAR0400044');
insert into CI_MABIAO (code, name, mazhi)
values ('04', '��ҵ������ҵ��Ա', 'PAR0400044');
insert into CI_MABIAO (code, name, mazhi)
values ('05', 'ũ���֡������桢ˮ��ҵ������Ա', 'PAR0400044');
insert into CI_MABIAO (code, name, mazhi)
values ('06', '�����������豸������Ա���й���Ա', 'PAR0400044');
insert into CI_MABIAO (code, name, mazhi)
values ('07', '����', 'PAR0400044');
insert into CI_MABIAO (code, name, mazhi)
values ('08', '��������������ҵ��Ա', 'PAR0400044');
insert into CI_MABIAO (code, name, mazhi)
values ('99', 'δ�ṩ', 'PAR0400044');
insert into CI_MABIAO (code, name, mazhi)
values ('09', '��������ӹ���', 'PAR0400044');
insert into CI_MABIAO (code, name, mazhi)
values ('10', '����', 'PAR0400044');
insert into CI_MABIAO (code, name, mazhi)
values ('11', '�����Ա', 'PAR0400044');
insert into CI_MABIAO (code, name, mazhi)
values ('12', '��ũ', 'PAR0400044');
insert into CI_MABIAO (code, name, mazhi)
values ('13', '˽Ӫҵ��', 'PAR0400044');
insert into CI_MABIAO (code, name, mazhi)
values ('14', '����', 'PAR0400044');
insert into CI_MABIAO (code, name, mazhi)
values ('15', '��ʦ', 'PAR0400044');
insert into CI_MABIAO (code, name, mazhi)
values ('16', 'ҽ��', 'PAR0400044');
insert into CI_MABIAO (code, name, mazhi)
values ('17', '����Ա', 'PAR0400044');
insert into CI_MABIAO (code, name, mazhi)
values ('18', '��������', 'PAR0400044');
insert into CI_MABIAO (code, name, mazhi)
values ('19', '��ѧ�����', 'PAR0400044');
insert into CI_MABIAO (code, name, mazhi)
values ('20', '����', 'PAR0400044');
insert into CI_MABIAO (code, name, mazhi)
values ('1', '�߼��쵼(��������ּ����ּ������쵼���˾�߼�������Ա)', null);
insert into CI_MABIAO (code, name, mazhi)
values ('2', '�м��쵼(��������ּ������쵼���˾�м�������Ա)', null);
insert into CI_MABIAO (code, name, mazhi)
values ('3', 'һ��Ա��', null);
insert into CI_MABIAO (code, name, mazhi)
values ('4', '����', null);
insert into CI_MABIAO (code, name, mazhi)
values ('9', 'δ֪', null);
insert into CI_MABIAO (code, name, mazhi)
values ('0001', '��   ', null);
insert into CI_MABIAO (code, name, mazhi)
values ('0002', '�߼� ', null);
insert into CI_MABIAO (code, name, mazhi)
values ('0003', '�м� ', null);
insert into CI_MABIAO (code, name, mazhi)
values ('0004', '���� ', null);
insert into CI_MABIAO (code, name, mazhi)
values ('9999', 'δ֪', null);
insert into CI_MABIAO (code, name, mazhi)
values ('A', 'ũ���֡�������ҵ', '100084');
insert into CI_MABIAO (code, name, mazhi)
values ('B', '�ɿ�ҵ', '100084');
insert into CI_MABIAO (code, name, mazhi)
values ('C', '����ҵ', '100084');
insert into CI_MABIAO (code, name, mazhi)
values ('D', '������������ȼ����ˮ�����͹�Ӧҵ', '100084');
insert into CI_MABIAO (code, name, mazhi)
values ('E', '����ҵ', '100084');
insert into CI_MABIAO (code, name, mazhi)
values ('F', '����������ҵ', '100084');
insert into CI_MABIAO (code, name, mazhi)
values ('G', '��ͨ���䡢�ִ�������ҵ', '100084');
insert into CI_MABIAO (code, name, mazhi)
values ('H', 'ס�޺Ͳ���ҵ', '100084');
insert into CI_MABIAO (code, name, mazhi)
values ('I', '��Ϣ���䡢�������Ϣ��������ҵ', '100084');
insert into CI_MABIAO (code, name, mazhi)
values ('J', '����ҵ', '100084');
insert into CI_MABIAO (code, name, mazhi)
values ('K', '���ز�ҵ', '100084');
insert into CI_MABIAO (code, name, mazhi)
values ('L', '���޺��������ҵ', '100084');
insert into CI_MABIAO (code, name, mazhi)
values ('M', '��ѧ�о��ͼ�������ҵ', '100084');
insert into CI_MABIAO (code, name, mazhi)
values ('N', 'ˮ���������͹�����ʩ����ҵ', '100084');
insert into CI_MABIAO (code, name, mazhi)
values ('O', '��������������������ҵ', '100084');
insert into CI_MABIAO (code, name, mazhi)
values ('P', '����', '100084');
insert into CI_MABIAO (code, name, mazhi)
values ('Q', '��������Ṥ��', '100084');
insert into CI_MABIAO (code, name, mazhi)
values ('R', '�Ļ�������������ҵ', '100084');
insert into CI_MABIAO (code, name, mazhi)
values ('S', '����������ᱣ�Ϻ������֯', '100084');
insert into CI_MABIAO (code, name, mazhi)
values ('T', '������֯', '100084');
insert into CI_MABIAO (code, name, mazhi)
values ('Z', 'δ֪', '100084');
insert into CI_MABIAO (code, name, mazhi)
values ('X', 'δ�ṩ', '100084');
insert into CI_MABIAO (code, name, mazhi)
values ('0', '���֤', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('01', '��һ�����֤', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('02', '�ڶ������֤', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('1', '���ڲ�', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('2', '����', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('21', '�й�����', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('22', '�������', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('3', '����֤', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('31', '����֤', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('32', '��������֤', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('33', '����ѧԺ֤', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('4', 'ʿ��֤', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('5', '�۰ľ��������ڵ�ͨ��֤', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('51', '���ͨ��֤', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('52', '����ͨ��֤', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('6', '̨��ͬ�������ڵ�ͨ��֤', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('7', '��ʱ���֤', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('8', '����˾���֤', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('81', '��������þ�ס֤', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('82', '������뾳ͨ��֤', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('9', '����֤', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('101', '����ίԱ��֤��', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('102', 'ѧ��֤', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('103', '���ݸɲ�����֤', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('104', '��ְ�ɲ�����֤', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('X', '����֤��', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('2001', 'Ӫҵִ�պ�', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('2002', '��ҵ��������', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('2003', '������', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('2004', '˰��Ǽ�֤', 'PAA0100006');
insert into CI_MABIAO (code, name, mazhi)
values ('ABW', '��³��', 'DEM0100011');
commit;
prompt 200 records committed...
insert into CI_MABIAO (code, name, mazhi)
values ('AFG', '������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('AGO', '������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('AIA', '������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('ALB', '����������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('AND', '������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('ANT', '����������˹', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('ARE', '������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('ARG', '����͢', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('ARM', '��������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('ASM', '������Ħ��', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('ATA', '�ϼ���', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('ATF', '�����ϲ�����', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('ATG', '����ϺͰͲ���', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('AUS', '�Ĵ�����', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('AUT', '�µ���', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('AZE', '�����ݽ�', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('BDI', '��¡��', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('BEL', '����ʱ', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('BEN', '����', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('BFA', '�����ɷ���', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('BGD', '�ϼ�����', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('BGR', '��������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('BHR', '����', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('BHS', '�͹���', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('BIH', '��˹���Ǻͺ�����ά��', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('BLR', '�׶���˹', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('BLZ', '������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('BMU', '��Ľ��', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('BOL', '����ά��', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('BRA', '����', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('BRB', '�ͰͶ�˹', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('BRN', '����', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('BTN', '����', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('BVT', '��ά��', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('BWA', '��������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('CAF', '�з�', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('CAN', '���ô�', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('CCK', '�ƿ�˹(����)Ⱥ��', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('CHE', '��ʿ', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('CHL', '����', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('CHN', '�й�', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('CIV', '���ص���', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('CMR', '����¡', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('COD', '�չ�����Congo,', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('COG', '�չ�������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('COK', '���Ⱥ��', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('COL ', '���ױ���', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('COM', '��Ħ��', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('CPV', '��ý�', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('CRI', '��˹�����', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('CUB', '�Ű�', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('CXR', 'ʥ����', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('CYM', '����Ⱥ��', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('CYP', '����·˹', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('CZE', '�ݿ�', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('DEU', '�¹�', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('DJI', '������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('DMA', '�������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('DNK', '����', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('DOM', '������ӹ��͹�', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('DZA', '����������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('ECU', '��϶��', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('EGY', '����', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('ERI', '����������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('ESH', '��������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('ESP', '������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('EST', '��ɳ����', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('ETH', '���������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('FIN', '����', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('FJI', '쳼�', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('FLK', '���ά��˹Ⱥ��(������Ⱥ��)', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('FRA', '����', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('FRO', '����Ⱥ��', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('FSM', '�ܿ���������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('GAB', '����', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('GBR', 'Ӣ��', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('GEO', '��³����', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('GHA', '����', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('GIB', 'ֱ������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('GIN', '������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('GLP', '�ϵ�����', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('GMB', '�Ա���Gambia', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('GNB', '�����Ǳ���', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('GNQ', '���������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('GRC', 'ϣ��', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('GRD', '�����ɴ�', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('GRL', '������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('GTM', 'Σ������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('GUF', '����������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('GUM', '�ص�', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('GUY', '������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('HKG', '���', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('HMD', '�յµ���������ɵ�', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('HND', '�鶼��˹', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('HRV', '���޵���', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('HTI', '����', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('HUN', '������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('IDN', 'ӡ��������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('IND ', 'ӡ��', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('IOT', 'Ӣ��ӡ��������', 'DEM0100011');
commit;
prompt 300 records committed...
insert into CI_MABIAO (code, name, mazhi)
values ('IRL', '������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('IRN', '����', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('IRQ', '������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('ISL', '����', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('ISR', '��ɫ��', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('ITA', '�����', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('JAM', '�����', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('JOR', 'Լ��', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('JPN', '�ձ�', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('KAZ', '������˹̹', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('KEN', '������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('KGZ', '������˹˹̹', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('KHM', '����կ', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('KIR', '�����˹', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('KNA', 'ʥ���ĺ���ά˹', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('KOR', '����', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('KWT', '������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('LAO', '����', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('LBN', '�����', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('LBR', '��������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('LBY', '������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('LCA', 'ʥ¬����', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('LIE', '��֧��ʿ��', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('LKA', '˹������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('LSO', '������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('LTU', '������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('LUX', '¬ɭ��', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('LVA', '����ά��', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('MAC', '����', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('MAR', 'Ħ���', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('MCO', 'Ħ�ɸ�', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('MDA', 'Ħ������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('MDG', '����˹��', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('MDV', '�������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('MEX', 'ī����', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('MHL', '���ܶ�Ⱥ��', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('MKD', '��˹��', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('MLI', '����', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('MLT', '�����', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('MMR', '���', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('MNE', '��ɽMontenegro ', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('MNG', '�ɹ�', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('MNP', '����������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('MOZ', 'Īɣ�ȿ�', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('MRT', 'ë��������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('MSR', '����������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('MTQ', '�������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('MUS', 'ë����˹', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('MWI', '����ά', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('MYS', '��������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('MYT', '��Լ��', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('NAM', '���ױ���', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('NCL', '�¿��������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('NER', '���ն�', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('NFK', 'ŵ���˵�', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('NGA', '��������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('NIC', '�������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('NIU', 'Ŧ��', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('NLD', '����', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('NOR', 'Ų��', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('NPL', '�Ჴ��', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('NRU', '�³', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('NZL', '������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('OMN', '����', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('PAK', '�ͻ�˹̹', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('PAN', '������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('PCN', 'Ƥ�ؿ���Ⱥ��', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('PER', '��³', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('PHL', '���ɱ�', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('PLW', '����', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('PNG', '�Ͳ����¼�����', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('POL', '����', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('PRI', '�������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('PRK', '����', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('PRT', '������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('PRY', '������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('PSE', '����˹̹', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('PYF', '��������������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('QAT', '������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('REU', '������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('ROM', '��������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('RUS', '����˹', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('RWA', '¬����', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('SAU', 'ɳ�ذ�����', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('"SCGͣ��"', '"����ά�Ǻͺ�ɽͣ��"', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('SDN', '�յ�', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('SEN', '���ڼӶ�', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('SGP', '�¼���', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('SGS', '�������ǵ�����ɣ��Τ�浺', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('SHN', 'ʥ������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('SJM', '˹�߶���Ⱥ��������Ⱥ��', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('SLB', '������Ⱥ��', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('SLE', '��������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('SLV', '�����߶�', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('SMR', 'ʥ����ŵ', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('SOM', '������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('SPM', 'ʥƤ�������ܿ�¡', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('SRB', '����ά��Serbia', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('STP', 'ʥ��������������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('SUR', '������', 'DEM0100011');
commit;
prompt 400 records committed...
insert into CI_MABIAO (code, name, mazhi)
values ('SVK', '˹�工��', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('SVN', '˹��������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('SWE', '���', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('SWZ', '˹��ʿ��', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('SYC', '�����', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('SYR', '������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('TCA', '�ؿ�˹�Ϳ���˹Ⱥ��', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('TCD', 'է��', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('TGO', '���', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('THA', '̩��', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('TJK', '������˹̹', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('TKL', '�п���', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('TKM', '������˹̹', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('TMP', '������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('TON', '����', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('TTO', '�������Ͷ�͸�', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('TUN', 'ͻ��˹', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('TUR', '������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('TUV', 'ͼ��¬', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('TWN ', '�й�̨��', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('TZA', '̹ɣ����', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('UGA', '�ڸɴ�', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('UKR', '�ڿ���', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('UMI', '����������С����', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('URY', '������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('USA', '����', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('UZB', '���ȱ��˹̹', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('VAT', '��ٸ�', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('VCT', 'ʥ��ɭ�غ͸����ɶ�˹', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('VEN', 'ί������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('VGB', 'Ӣ��ά����Ⱥ��', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('VIR', '����ά����Ⱥ��', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('VNM', 'Խ��', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('VUT', '��Ŭ��ͼ', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('WLF', '����˹�͸�ͼ��Ⱥ��', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('WSM', '����Ħ��', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('YEM', 'Ҳ��', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('Z01', '��˰��', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('Z02', '�ӹ���', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('Z03', '��ʯ������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('ZAF', '�Ϸ�', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('ZAR', '������', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('ZMB', '�ޱ���', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('ZWE', '��Ͳ�Τ', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('YUG', '��˹����', 'DEM0100011');
insert into CI_MABIAO (code, name, mazhi)
values ('01', '�ż�', '100067');
insert into CI_MABIAO (code, name, mazhi)
values ('02', '�ֻ�', '100067');
insert into CI_MABIAO (code, name, mazhi)
values ('03', '�����ʼ�', '100067');
insert into CI_MABIAO (code, name, mazhi)
values ('04', '��ҳ', '100067');
insert into CI_MABIAO (code, name, mazhi)
values ('05', '��ʱͨѶ', '100067');
insert into CI_MABIAO (code, name, mazhi)
values ('01', 'AAA��', '100115');
insert into CI_MABIAO (code, name, mazhi)
values ('02', 'AA��', '100115');
insert into CI_MABIAO (code, name, mazhi)
values ('03', 'A��', '100115');
insert into CI_MABIAO (code, name, mazhi)
values ('04', 'BBB��', '100115');
insert into CI_MABIAO (code, name, mazhi)
values ('05', 'BB��', '100115');
insert into CI_MABIAO (code, name, mazhi)
values ('06', 'B��', '100115');
insert into CI_MABIAO (code, name, mazhi)
values ('07', 'F��', '100115');
insert into CI_MABIAO (code, name, mazhi)
values ('08', 'δͨ��', '100115');
insert into CI_MABIAO (code, name, mazhi)
values ('09', '����', '100115');
insert into CI_MABIAO (code, name, mazhi)
values ('00', 'δ�ṩ˵�������õȼ�', '100115');
insert into CI_MABIAO (code, name, mazhi)
values ('X', 'δ�ṩ', '100115');
insert into CI_MABIAO (code, name, mazhi)
values ('A001', '����������ҵ��λ', 'PAA2100001');
insert into CI_MABIAO (code, name, mazhi)
values ('A002', '�ƽ�����', 'PAA2100001');
insert into CI_MABIAO (code, name, mazhi)
values ('A003', '�ʵ�ͨ��', 'PAA2100001');
insert into CI_MABIAO (code, name, mazhi)
values ('A004', '����', 'PAA2100001');
insert into CI_MABIAO (code, name, mazhi)
values ('A005', 'IT���硢�����', 'PAA2100001');
insert into CI_MABIAO (code, name, mazhi)
values ('A006', '��ҵ��ó��', 'PAA2100001');
insert into CI_MABIAO (code, name, mazhi)
values ('A007', '���ڻ���', 'PAA2100001');
insert into CI_MABIAO (code, name, mazhi)
values ('A008', '���ز�����', 'PAA2100001');
insert into CI_MABIAO (code, name, mazhi)
values ('A009', '���վ��͡��н�', 'PAA2100001');
insert into CI_MABIAO (code, name, mazhi)
values ('A010', '���Ρ����ꡢ����', 'PAA2100001');
insert into CI_MABIAO (code, name, mazhi)
values ('A011', '����ҵ���������', 'PAA2100001');
insert into CI_MABIAO (code, name, mazhi)
values ('A012', '���', 'PAA2100001');
insert into CI_MABIAO (code, name, mazhi)
values ('A013', 'ũ��������', 'PAA2100001');
insert into CI_MABIAO (code, name, mazhi)
values ('A014', '����ҵ���ӹ�ҵ', 'PAA2100001');
insert into CI_MABIAO (code, name, mazhi)
values ('A015', '����ҵ', 'PAA2100001');
insert into CI_MABIAO (code, name, mazhi)
values ('A016', 'װ��', 'PAA2100001');
insert into CI_MABIAO (code, name, mazhi)
values ('A017', '��ʦ�����ʦ', 'PAA2100001');
insert into CI_MABIAO (code, name, mazhi)
values ('A018', '����', 'PAA2100001');
insert into CI_MABIAO (code, name, mazhi)
values ('A', '���пعɾ���', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('A01', '���пع�', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('A0101', '������Կع�', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('A0102', '���о��Կع�', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('A02', '����ع�', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('A0201', '������Կع�', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('A0202', '������Կع�', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('B', '�ǹ��пعɾ���', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('B01', '˽�˿ع�', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('B0101', '˽����Կع�', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('B0102', '˽�˾��Կع�', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('B02', '�۰�̨�ع�', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('B0201', '�۰�̨��Կع�', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('B0202', '�۰�̨���Կع�', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('B03', '���̿ع�', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('B0301', '������Կع�', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('B0302', '���̾��Կع�', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('C06', 'ũ����幤�̻�', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('C07', 'ũ��', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('C08', '��ͨ����', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('C09', 'ũ��רҵ������', '100061');
commit;
prompt 500 records committed...
insert into CI_MABIAO (code, name, mazhi)
values ('C10', '����ũ�徭����֯', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('C11', 'ũ��������ҵ', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('C12', '������ҵ', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('C13', '����ҵ��ҵ', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('C14', '���ز�', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('C15', '������ʩ', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('C16', '������ҵ', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('C17', '������λ', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('C18', 'ҽ�Ƶ�λ', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('C19', '��ҵ��λ', '100061');
insert into CI_MABIAO (code, name, mazhi)
values ('AFA', '��������', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('ALL', '�п�', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('DZD', '���������ǵ��ɶ�', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('ADP', '������������', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('AON', '�¿��߲�', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('AZM', '�����ݽ�������', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('ARS', '����͢����', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('AUD', '�Ĵ�����Ԫ', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('ATS', '����', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('BSD', '�͹���Ԫ', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('BHD', '���ֵ��ɶ�', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('BDT', '����', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('AMD', '�������Ǵ�ķ', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('BBD', '�ͰͶ�˹Ԫ', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('BEF', '����ʱ����', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('BMD', '��Ľ��Ԫ', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('BTN', 'Ŭ����³ķ', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('BOB', '����ά�Ǳ���', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('BWP', '����', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('BZD', '������Ԫ', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('SBD', '������Ⱥ��Ԫ', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('BND', '����Ԫ', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('BGL', '�и�', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('MMK', '��Ԫ', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('BIF', '��¡�Ϸ���', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('BYB', '�׶���˹¬��', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('KHR', '���', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('CAD', '���ô�Ԫ', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('CVE', '��ýǰ�˹���', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('KYD', '����Ⱥ��Ԫ', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('LKR', '˹������¬��', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('CLP', '��������', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('CNY', '�����Ԫ', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('COP', '���ױ��Ǳ���', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('KMF', '��Ħ�޷���', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('ZRN', '��������', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('CRC', '��˹����ӿ���', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('HRK', '���޵��ǿ���', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('CUP', '�Űͱ���', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('CYP', '����·˹��', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('CZK', '�ݿ˿���', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('DKK', '�������', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('DOP', '������ӱ���', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('ECS', '�տ���', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('SVC', '�����߶����', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('ETB', '��������Ǳȶ�', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('EEK', '����ķ', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('FKP', '������Ⱥ����', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('FJD', '쳼�Ԫ', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('FIM', '���', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('FRF', '��������', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('DJF', '�����ᷨ��', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('GMD', '������', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('DEM', '�¹����', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('GHC', '����', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('GIP', 'ֱ�����Ӱ�', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('GRD', '��������', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('GTQ', '����', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('GNF', '�����Ƿ���', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('GYD', '������Ԫ', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('HTG', '�ŵ�', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('HNL', '��Ƥ��', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('HKD', '���Ԫ', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('HUF', '����', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('ISK', '��������', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('INR', 'ӡ��¬��', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('IDR', '¬��', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('IRR', '�������Ƕ�', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('IQD', '�����˵��ɶ�', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('IEP', '��������', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('ILS', '���˶�', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('ITL', '���������', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('JMD', '�����Ԫ', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('JPY', '��Ԫ', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('KZT', '���', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('JOD', 'Լ�����ɶ�', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('KES', '����������', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('KPW', '������Ԫ', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('KRW', 'Բ', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('KWD', '�����ص��ɶ�', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('KGS', '��ķ', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('LAK', '����', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('LBP', '����۰�', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('LSL', '����', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('LVL', '����ά������', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('LRD', '��������Ԫ', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('LYD', '�����ǵ��ɶ�', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('LTL', '������', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('LUF', '¬ɭ������', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('MOP', '����Ԫ', 'ACC1300012');
commit;
prompt 600 records committed...
insert into CI_MABIAO (code, name, mazhi)
values ('MGF', '�����ʲ����', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('MWK', '���߲�', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('MYR', '���������ּ���', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('MVR', '¬����', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('MTL', '���������', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('MRO', '�ڼ���', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('MUR', 'ë����˹¬��', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('MXN', 'ī�������', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('MNT', 'ͼ�����', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('MDL', 'Ħ����������', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('MAD', 'Ħ������ķ', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('MZM', '���ݿ���', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('OMR', '�������Ƕ�', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('NAD', '���ױ���Ԫ', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('NPR', '�Ჴ��¬��', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('NLG', '������', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('ANG', '����������˹��', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('AWG', '��³�Ͷ�', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('VUV', '��ͼ', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('NZD', '������Ԫ', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('NIO', '��ƶ��', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('NGN', '����', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('NOK', 'Ų������', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('PKR', '�ͻ�˹̹¬��', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('PAB', '�Ͳ���', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('PGK', '����', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('PYG', '������', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('PEN', '����', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('PHP', '���ɱ�����', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('PLZ', '������', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('PTE', '��������˹���', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('GWP', '�����Ǳ��ܱ���', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('TPE', '���ۺ���˹���', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('QAR', '���������Ƕ�', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('ROL', '����', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('RWF', '¬���﷨��', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('SHP', 'ʥ�����ð�', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('STD', '�಼��', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('SAR', 'ɳ�����Ƕ�', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('SCR', '�����¬��', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('SLL', '����', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('SGD', '�¼���Ԫ', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('SKK', '˹�工�˿���', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('VND', '��', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('SIT', '������', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('SOS', '����������', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('ZAR', '����', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('ZWD', '��Ͳ�ΤԪ', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('ESP', '������������', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('SDD', '�յ����ɶ�', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('SRG', '�����϶�', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('SZL', '��������', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('SEK', '������', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('CHF', '��ʿ����', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('SYP', '�����ǰ�', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('TJR', '������¬��', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('THB', '��', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('TOP', '���', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('TTD', '�������Ͷ�͸�Ԫ', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('AED', 'UAE����ķ', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('TND', 'ͻ��˹���ɶ�', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('TRL', '����������', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('TMM', '������', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('UGX', '�ڸɴ�����', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('UAK', '���', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('MKD', '���ɶ�', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('RUR', '����˹¬��', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('EGP', '������', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('GBP', 'Ӣ��', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('TZS', '̹ɣ��������', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('USD', '��Ԫ', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('UYU', '���������', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('UZS', '���ȱ��˹̹��ķ', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('VEB', '������', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('WST', '����', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('YER', 'Ҳ�����Ƕ�', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('YUN', '��˹������ɶ�', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('ZMK', '���߲�', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('TWD', '��̨��Ԫ', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('XAF', 'CRA���� BEAC', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('XCD', '�����ձ�Ԫ', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('XOF', 'CFA����BCEAO', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('XPF', 'CFP����', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('XEU', 'ŷ�޻��ҵ�λ��E.C.U.)', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('XBA', 'ŷ�޻�ϵ�λ��EUR-CO)', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('XBB', 'ŷ�޻��ҵ�λ��E.M.U.-6)', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('XBC', 'ŷ���˻�����λ��E.U.A.-9)', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('XB5', 'ŷ���˻�������λ��E.U.A.-17)', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('XAU', '�ƽ�', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('XDR', '�ر����Ȩ', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('XAG', '��', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('XPT', '���׽�', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('XTS', 'Ϊ�����ر����Ĵ���', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('XPD', '��', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('EUR', 'ŷԪ��EUR��', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('ECV', 'UVC', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('BOV', 'M������', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('PLN', '������', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('BRL', '�������', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('CLF', '��չ��λ', 'ACC1300012');
commit;
prompt 700 records committed...
insert into CI_MABIAO (code, name, mazhi)
values ('ZAL', '���������أ�', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('USN', '�����գ�', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('USS', '��ͬ�գ�', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('XXX', 'δ�����Ľ��׻��Ҵ���', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('E01', '�����ŷԪ', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('R01', '����������', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('T01', '����Һϼ�', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('U01', '�������Ԫ', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('X01', '�ƽ�����ҼƼۣ�', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('X02', '�ƽ���Ԫ�Ƽۣ�', 'ACC1300012');
insert into CI_MABIAO (code, name, mazhi)
values ('CS01', '����', 'DEM0200004');
insert into CI_MABIAO (code, name, mazhi)
values ('CS02', '����', 'DEM0200004');
insert into CI_MABIAO (code, name, mazhi)
values ('CS03', 'С��', 'DEM0200004');
insert into CI_MABIAO (code, name, mazhi)
values ('CS04', '΢��', 'DEM0200004');
insert into CI_MABIAO (code, name, mazhi)
values ('CS05', '����', 'DEM0200004');
insert into CI_MABIAO (code, name, mazhi)
values ('X', 'δ�ṩ', 'DEM0200004');
insert into CI_MABIAO (code, name, mazhi)
values ('01', '���Ҽ�', 'DEM0200003');
insert into CI_MABIAO (code, name, mazhi)
values ('02', 'ʡ��', 'DEM0200003');
insert into CI_MABIAO (code, name, mazhi)
values ('03', '�м�', 'DEM0200003');
insert into CI_MABIAO (code, name, mazhi)
values ('04', '�ؼ�', 'DEM0200003');
insert into CI_MABIAO (code, name, mazhi)
values ('05', '��', 'DEM0200003');
insert into CI_MABIAO (code, name, mazhi)
values ('00', 'δ�ṩ˵��������', 'DEM0200005');
insert into CI_MABIAO (code, name, mazhi)
values ('01', 'һ��', 'DEM0200005');
insert into CI_MABIAO (code, name, mazhi)
values ('02', '����', 'DEM0200005');
insert into CI_MABIAO (code, name, mazhi)
values ('03', '����', 'DEM0200005');
insert into CI_MABIAO (code, name, mazhi)
values ('04', 'δͨ��', 'DEM0200005');
insert into CI_MABIAO (code, name, mazhi)
values ('05', '����', 'DEM0200005');
insert into CI_MABIAO (code, name, mazhi)
values ('06', 'һ����Ա', 'DEM0200005');
insert into CI_MABIAO (code, name, mazhi)
values ('07', '��һ��', 'DEM0200005');
insert into CI_MABIAO (code, name, mazhi)
values ('X', 'δ�ṩ', 'DEM0200005');
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
