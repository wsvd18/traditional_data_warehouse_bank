prompt PL/SQL Developer Export User Objects for user BI_F@SCOTT
prompt Created by Minqi on 2024��8��7��
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
  is '��˾�ͻ���Ϣ��';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.ecif_cust_no
  is '�ͻ����';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.corp_cust_info_id
  is 'organisationId';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.seq_no
  is 'sequenceNumber';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.org_instn_cod
  is '��֯��������';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.govn_cert_no
  is 'Ӫҵִ�պ�';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.govn_expd_dt
  is 'Ӫҵִ����Ч��';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.ln_crd_no
  is '�����';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.opac_perm_no
  is '�������֤��';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.industry_typ
  is '��ҵ���';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.ccb_industry_typ
  is '�����Ŵ����ߵ���ҵ����';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.belong_sys
  is '����ϵͳ';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.ofc_pic_dept
  is '�ϼ����ܲ���';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.cptl_pic_dept
  is '�ʽ����ܲ���';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.entp_unit_char
  is '��ҵ��λ����';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.entp_unit_econ_typ
  is '��ҵ��λ��������';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.entp_unit_deal_org_typ
  is '��ҵ��λ��Ӫ��֯��ʽС��';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.econ_char
  is '��������';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.exist_dt
  is '��������';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.reg_dt
  is 'ע������';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.reg_cptl_curr_cod
  is 'ע���ʱ��ұ�';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.reg_cptl
  is 'ע���ʱ�';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.fact_rcv_cptl
  is 'ʵ���ʱ�';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.deal_prd
  is '��Ӫ����';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.entp_size
  is '��ҵ��ģ';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.entp_lev_cod
  is '��ҵ�������';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.tax_reg_no
  is '˰��ǼǱ��';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.tax_condit
  is '��˰���';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.tax_reg_sts
  is '˰��Ǽ�״̬';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.taxr_scal
  is '��˰�˹�ģ';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.deal_typ
  is '��Ӫ����';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.cust_main_busn
  is '�ͻ���Ӫҵ��';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.cust_oth_busn
  is '�ͻ���Ӫҵ��';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.lead_prod
  is '������Ʒ';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.emp_cnt
  is 'Ա������';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.emp_mn_avg_inco
  is 'Ա����ƽ������';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.consign_corp_leader_name
  is 'ί�з�������';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.consign_corp_leader_cert_no
  is 'ί�з���֤������';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.consign_corp_leader_eff_bgn_dt
  is 'ί�з�����Ч������';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.consign_corp_leader_eff_end_dt
  is 'ί�з�����Ч������';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.fin_contr
  is '������ϵ��';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.deal_liab_pr
  is '��Ӫ��������';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.deal_post_liab_pr
  is '��Ӫ��λ������';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.list_entp_flg
  is '�Ƿ�������ҵ';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.dbt_shar_cust_flg
  is '�Ƿ�ծ��ת�ɿͻ�';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.deb_into_shar_bank
  is 'ծת����ҵ����';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.strp_bad_asst_cust_flg
  is '�Ƿ���벻���ʲ��ͻ�';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.strp_bad_asst_offb
  is '���벻���ʲ�����ҵ����';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.high_tec_reg_flg
  is '�Ƿ��ڸ��¿�����ע��';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.cust_rela_mana_dept
  is '�ͻ���ϵ������';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.aff_instn_no
  is '��������';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.std_opun_cod
  is '���߻�������';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.cust_mngr_cod
  is '�ͻ��������';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.ccb_cret_cust_flg
  is '���ж�����ſͻ���־';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.ccb_ipmrk_cust_flg
  is '�����ص�Ӫ���ͻ���־';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.inter_ctl_cust_flg
  is '�ڿ������ͻ���־';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.ccb_rela_entp_flg
  is '�Ƿ��й�����ҵ';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.ccb_entit_flg
  is '�Ƿ����԰�ʵ��';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.ccb_coper_agr_cust_flg
  is '�Ƿ��뽨��ǩ���������Э��';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.main_bank
  is '��������';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.reg_shop_flg
  is 'ע���̻���־';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.reg_mang_bank
  is 'ע���̻���Ͻ��';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.base_dep_acct_no
  is '��������˻��˺�';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.pena_sts
  is 'ΥԼ״̬';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.entp_cred_lev
  is '��ҵ���õȼ�';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.entp_apti_lev
  is '��ҵ���ʵȼ�';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.fcurr_bal_lmt
  is '����������';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.ccb_cust_flg
  is '���пͻ���־';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.asset_save_typ
  is '�ʲ���ȫ����';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.base_acct_awbk
  is '�����˻�������';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.cert_typ
  is '֤������';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.cert_no
  is '֤������';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.prim_nat
  is '���ڹ�';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.rsdnt_nat
  is '��ס��';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.cust_lev
  is '�ͻ��ȼ�';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.conc_cust_flg
  is '��ע�ͻ���־';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.best_cont_tm
  is '�����ϵʱ��';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.best_cont_sty
  is '�����ϵ��ʽ';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.upd_tlr
  is '���¹�Ա';
comment on column BI_F.CI_CIE_CORP_CUST_INFO.upd_instn
  is '���»���';


prompt Done
spool off
set define on
