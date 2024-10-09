传统数仓银行bi小项目
技术架构:oracle,kettle

--项目前准备 --准备用户
数仓中一层就是一个数据库(mysql)数据库管理数据库，oracle只有一个大的数据库，却有很多用户--用不同用户来模拟数仓层

1.准备4个用户 bi_oltp,bi_dos,bi_f,bi_m

切换到sys 123456 sysdba
create user bi_oltp identified by 123456;
create user bi_ods identified by 123456;
create user bi_f identified by 123456;
create user bi_m identified by 123456;

授权
grant dba to bi_oltp;
grant dba to bi_ods;
grant dba to bi_f;
grant dba to bi_m;

2.转到不同用户分别操作
2.1
OLTP--导入ECIF 数据源
OLTP--导出 bi_oltp--导出类型记得选SQL file
--------------------------------------------------------------------------------------------------------------------------------------------------------
2.2
ODS:
确认要修改的地方
把修改后的表结构操作到 bi_dos用户
可在txt里编辑更新或使用sql语句, 
--更新表结构
--1
alter table CI_CIE_CORP_CUST_INFO add ODS_1ST_LEV_BR_NO	CHAR(3);
alter table CI_CIE_CORP_CUST_INFO add ODS_SRC_DT          CHAR(23);
alter table CI_CIE_CORP_CUST_INFO add ODS_SRC_SYS_NO      CHAR(10);
alter table CI_CIE_CORP_CUST_INFO add ODS_LOAD_DT         CHAR(23);
--2
alter table ci_ciph_high_black_list_info add ODS_1ST_LEV_BR_NO	CHAR(3);
alter table ci_ciph_high_black_list_info add ODS_SRC_DT          CHAR(23);
alter table ci_ciph_high_black_list_info add ODS_SRC_SYS_NO      CHAR(10);
alter table ci_ciph_high_black_list_info add ODS_LOAD_DT         CHAR(23);
--3
alter table ci_ciph_high_cust_info add ODS_1ST_LEV_BR_NO	CHAR(3);
alter table ci_ciph_high_cust_info add ODS_SRC_DT          CHAR(23);
alter table ci_ciph_high_cust_info add ODS_SRC_SYS_NO      CHAR(10);
alter table ci_ciph_high_cust_info add ODS_LOAD_DT         CHAR(23);
--4.
alter table ci_ciph_high_indv_lev_info  add ODS_1ST_LEV_BR_NO	CHAR(3);
alter table ci_ciph_high_indv_lev_info  add ODS_SRC_DT          CHAR(23);
alter table ci_ciph_high_indv_lev_info  add ODS_SRC_SYS_NO      CHAR(10);
alter table ci_ciph_high_indv_lev_info  add ODS_LOAD_DT         CHAR(23);
--5.
alter table ci_ciph_high_pty_addr_rela  add ODS_1ST_LEV_BR_NO	CHAR(3);
alter table ci_ciph_high_pty_addr_rela  add ODS_SRC_DT          CHAR(23);
alter table ci_ciph_high_pty_addr_rela  add ODS_SRC_SYS_NO      CHAR(10);
alter table ci_ciph_high_pty_addr_rela  add ODS_LOAD_DT         CHAR(23);
--6.
alter table ci_cipl_low_cust_info  add ODS_1ST_LEV_BR_NO	CHAR(3);
alter table ci_cipl_low_cust_info  add ODS_SRC_DT          CHAR(23);
alter table ci_cipl_low_cust_info  add ODS_SRC_SYS_NO      CHAR(10);
alter table ci_cipl_low_cust_info  add ODS_LOAD_DT         CHAR(23);
--7.
alter table ci_mabiao  add ODS_1ST_LEV_BR_NO	CHAR(3);
alter table ci_mabiao  add ODS_SRC_DT          CHAR(23);
alter table ci_mabiao   add ODS_SRC_SYS_NO      CHAR(10);
alter table ci_mabiao  add ODS_LOAD_DT         CHAR(23);
--8.
alter table ln_lnp_acct_amwkpl06  add ODS_1ST_LEV_BR_NO	CHAR(3);
alter table ln_lnp_acct_amwkpl06  add ODS_SRC_DT          CHAR(23);
alter table ln_lnp_acct_amwkpl06  add ODS_SRC_SYS_NO      CHAR(10);
alter table ln_lnp_acct_amwkpl06  add ODS_LOAD_DT         CHAR(23);
--9.
alter table ln_lnp_acct_amwkpl07  add ODS_1ST_LEV_BR_NO	CHAR(3);
alter table ln_lnp_acct_amwkpl07  add ODS_SRC_DT          CHAR(23);
alter table ln_lnp_acct_amwkpl07  add ODS_SRC_SYS_NO      CHAR(10);
alter table ln_lnp_acct_amwkpl07  add ODS_LOAD_DT         CHAR(23);
--10.
alter table ln_lnp_ctrt_cbapp  add ODS_1ST_LEV_BR_NO	CHAR(3);
alter table ln_lnp_ctrt_cbapp  add ODS_SRC_DT          CHAR(23);
alter table ln_lnp_ctrt_cbapp  add ODS_SRC_SYS_NO      CHAR(10);
alter table ln_lnp_ctrt_cbapp  add ODS_LOAD_DT         CHAR(23);
--11.
alter table ln_lnp_cust_cbcredcust  add ODS_1ST_LEV_BR_NO	CHAR(3);
alter table ln_lnp_cust_cbcredcust  add ODS_SRC_DT          CHAR(23);
alter table ln_lnp_cust_cbcredcust  add ODS_SRC_SYS_NO      CHAR(10);
alter table ln_lnp_cust_cbcredcust  add ODS_LOAD_DT         CHAR(23);
--12.
alter table ln_mabiao  add ODS_1ST_LEV_BR_NO	CHAR(3);
alter table ln_mabiao  add ODS_SRC_DT          CHAR(23);
alter table ln_mabiao  add ODS_SRC_SYS_NO      CHAR(10);
alter table ln_mabiao  add ODS_LOAD_DT         CHAR(23);

select * from ci_cie_corp_cust_info;
select * from ci_ciph_high_black_list_info;
select * from ci_ciph_high_cust_info;
select * from ci_ciph_high_indv_lev_info; 
select * from ci_ciph_high_pty_addr_rela; 
select * from ci_cipl_low_cust_info;
select * from ci_mabiao;
select * from ln_lnp_acct_amwkpl06; 
select * from ln_lnp_acct_amwkpl07; 
select * from ln_lnp_ctrt_cbapp;
select * from ln_lnp_cust_cbcredcust; 
select * from ln_mabiao;

如果OLTP里的数据更新，应确保ODS里的数据也在更新
--在kettle里，oltp表如果没有更新列字段，在表输入SQL语句里需要添加ods修改过的列，配上单位，以确保oltp层数据库/用户 与 ods(表输出）层数据库/用户 表列能匹配上
'000' ODS_1ST_LEV_BR_NO
,TO_CHAR(sysdate-1, 'yyyy-mm-dd hh24:mi:ss') ODS_SRC_DT
,'OCRM' ODS_SRC_SYS_NO
,TO_CHAR(sysdate, 'yyyy-mm-dd hh24:mi:ss') ODS_LOAD_DT

--------------------------------------------------------------------------------------------------------------------------------------------------------
2.3
bi_f--实现公司客户宽表 F-corp_cust_info,规定表结构与数据 与 ods 层 的ci_cie-corp_cust_info（第一张表一摸一样的）
2.3.1:创建表结构
从ods账户导出用户导出第一张表-修改txt BI_ODS 替换全部 BI_F-切换到BG_F用户-导入表
rename CI_CIE_CORP_CUST_INFO to F_CORP_CUST_INFO

2.3.2 用存储过程实现数据导入(全量更新)
--创建日志表与存储过程--
-- Creating a table to store process logs
create table my_log(
    sp_bi_f_sp_name varchar2(4000),   -- Store the name of the procedure
    starttime date,          -- Store the procedure start time
    endtime   date,          -- Store the procedure end time
    sql_code  varchar2(10),  -- Error code in case of an exception
    sql_errms varchar2(200), -- Error message in case of an exception
    status    varchar2(10)   -- Status of the procedure call
);

-- Creating or replacing the procedure to log information into my_log table
create or replace procedure sp_f_mylog(
    sp_name varchar2,        -- Store the name of the procedure
    starttime date,          -- Store the procedure start time
    endtime   date,          -- Store the procedure end time
    sql_code  varchar2,      -- Error code in case of an exception
    sql_errms varchar2,      -- Error message in case of an exception
    status    varchar2       -- Status of the procedure call
) is
begin
  -- Insert values into the my_log table
  insert into my_log values(
    sp_name,
    starttime, 
    endtime, 
    sql_code, 
    sql_errms, 
    status);
  
  -- Commit the transaction to save the log entry
  commit;  
end;


--创建插入数据存储过程（源表到目标表与日志）--
create or replace procedure sp_bi_f is
/*****************************************************************************
     Procedure Name: SP_bi_f
     Function Description: Corporate Customer Wide Table
     Input Parameters: 
     Output Parameters: 
     Return Value: 
     Target Table: f_corp_cust_info
     Source Table: bi_ods.ci_cie_corp_cust_info   -- Corporate Customer Information Table
     Created By: Cheng
     Creation Date: 20240808 10:21
     Modified Date:
     Modified By:
     Reason for Modification:
  ******************************************************************************/

sp_name varchar2(4000); -- Store the procedure name
starttime date;         -- Store the procedure start execution time
endtime   date;         -- Store the procedure end execution time
sql_code  varchar2(10);  -- Error code in case of an exception
sql_errms varchar2(200); -- Error message in case of an exception
status    varchar2(10); -- Status of the procedure call

begin
  sp_name :='sp_bi_f_corp_cust_info';
  starttime :=sysdate;
  
  -- Truncate the target table before inserting new data
  execute immediate 'truncate table F_corp_cust_info';
  
  -- Insert data into the target table from the source table
  insert into F_corp_cust_info
  select
     ECIF_CUST_NO,
     CORP_CUST_INFO_ID,
     SEQ_NO,
     ORG_INSTN_COD,
     GOVN_CERT_NO,
     GOVN_EXPD_DT,
     LN_CRD_NO,
     OPAC_PERM_NO,
     INDUSTRY_TYP,
     CCB_INDUSTRY_TYP,
     BELONG_SYS,
     OFC_PIC_DEPT,
     CPTL_PIC_DEPT,
     ENTP_UNIT_CHAR,
     ENTP_UNIT_ECON_TYP,
     ENTP_UNIT_DEAL_ORG_TYP,
     ECON_CHAR,
     EXIST_DT,
     REG_DT,
     REG_CPTL_CURR_COD,
     REG_CPTL,
     FACT_RCV_CPTL,
     DEAL_PRD,
     ENTP_SIZE,
     ENTP_LEV_COD,
     TAX_REG_NO,
     TAX_CONDIT,
     TAX_REG_STS,
     TAXR_SCAL,
     DEAL_TYP,
     CUST_MAIN_BUSN,
     CUST_OTH_BUSN,
     LEAD_PROD,
     EMP_CNT,
     EMP_MN_AVG_INCO,
     CONSIGN_CORP_LEADER_NAME,
     CONSIGN_CORP_LEADER_CERT_NO,
     CONSIGN_CORP_LEADER_EFF_BGN_DT,
     CONSIGN_CORP_LEADER_EFF_END_DT,
     FIN_CONTR,
     DEAL_LIAB_PR,
     DEAL_POST_LIAB_PR,
     LIST_ENTP_FLG,
     DBT_SHAR_CUST_FLG,
     DEB_INTO_SHAR_BANK,
     STRP_BAD_ASST_CUST_FLG,
     STRP_BAD_ASST_OFFB,
     HIGH_TEC_REG_FLG,
     CUST_RELA_MANA_DEPT,
     AFF_INSTN_NO,
     STD_OPUN_COD,
     CUST_MNGR_COD,
     CCB_CRET_CUST_FLG,
     CCB_IPMRK_CUST_FLG,
     INTER_CTL_CUST_FLG,
     CCB_RELA_ENTP_FLG,
     CCB_ENTIT_FLG,
     CCB_COPER_AGR_CUST_FLG,
     MAIN_BANK,
     REG_SHOP_FLG,
     REG_MANG_BANK,
     BASE_DEP_ACCT_NO,
     PENA_STS,
     ENTP_CRED_LEV,
     ENTP_APTI_LEV,
     FCURR_BAL_LMT,
     CCB_CUST_FLG,
     ASSET_SAVE_TYP,
     BASE_ACCT_AWBK,
     CERT_TYP,
     CERT_NO,
     PRIM_NAT,
     RSDNT_NAT,
     CUST_LEV,
     CONC_CUST_FLG,
     BEST_CONT_TM,
     BEST_CONT_STY,
     UPD_TLR,
     UPD_INSTN,
     ODS_1ST_LEV_BR_NO,
     ODS_SRC_DT,
     ODS_SRC_SYS_NO,
     ODS_LOAD_DT
  from bi_ods.ci_cie_corp_cust_info;
  
  -- Commit the transaction
  commit;

  -- Log success details
  endtime :=sysdate;
  status :='Success';
  
  -- Store success log
  sp_f_mylog(
    sp_name,
    starttime, 
    endtime, 
    sql_code, 
    sql_errms, 
    status
  );

-- Exception handling
exception when others then
  -- If an error occurs, capture the error code and message
  endtime :=sysdate;
  sql_code :=SQLCODE;
  sql_errms :=SQLERRM;
  status :='Failure';
  
  -- Store failure log
  sp_f_mylog(
    sp_name,
    starttime, 
    endtime, 
    sql_code, 
    sql_errms, 
    status
  );

end;


--如果报错--
切换到超管用户,执行下面语句
grant select any table to bi_f;
grant select any table to bi_m; 


--调用存储过程--
begin
  sp_bi_f;
end;

--查看结果--
select * from f_corp_cust_info;
select * from my_log;



2.3.3 创建F-客户宽表与存储过程(看f_mapping)
2.3.3.1 导入表
select * from F_ECIF_CUST_INFO;

2.3.3.2 看 f-mapping 看看有哪些列字段在哪些表里，然后做多表关联
--高端表（所有列都能匹配到）
select * from bi_ods.CI_CIPH_HIGH_CUST_INFO;
select * from bi_ods.CI_CIPH_HIGH_BLACK_LIST_INFO;
select * from bi_ods.CI_CIPH_HIGH_INDV_LEV_INFO;
select * from bi_ods.CI_CIPH_HIGH_PTY_ADDR_RELA;

--多表连接条件（等值主键) --高端
select  --选择高端连接的列字段
   ecif_cust_no, 
    cust_name, 
    birth_dt, 
    miao_sex, 
    miao_mrg_sts, 
    register, 
    ppl_cod, 
    cou_cert_no, 
    cou_name, 
    religion, 
    educ_lev, 
    house_typ, 
    indv_tax_no, 
    indv_insurs_no, 
    have_work_yr, 
    occup_cod, 
    qualification_sts, 
    employer_name, 
    unit_char, 
    unit_work_dt, 
    work_no, 
    posn, 
    ofrn, 
    titl, 
    mn_inco, 
    econ_resur, 
    oth_econ_resur, 
    depend_cnt, 
    language_pre, 
    aff_instn_no, 
    cust_mngr_cod, 
    cust_sts, 
    emp_flg, 
    pot_vip_flg, 
    spec_vip_flg, 
    indv_cust_accum_trn_lmt, 
    cred_crd_guar_cnt, 
    fami_avg_mn_inco, 
    fami_capi, 
    fami_debt, 
    fami_mn_inco, 
    grad_dt, 
    child_flg, 
    industry_typ, 
    fami_guar_totl, 
    plan_cptl_cert_no, 
    study_inst, 
    study_spec, 
    resi_yr, 
    cert_typ, 
    cert_no, 
    prim_nat, 
    rsdnt_nat, 
    conc_cust_flg, 
    best_cont_tm, 
    best_cont_sty, 
    nvl2(if_high_balck,if_high_balck,'否'),
    INDV_LEV_TYP,
    INDV_LEV_COD,
    CRLMT,
    CRED_LOTP,
    ADDR_ID
from
(select * from  --4张表join完
(select * from  --第一张表开始
(select * from bi_ods.CI_CIPH_HIGH_CUST_INFO s
left join
(SELECT code code1,name miao_mrg_sts FROM bi_ods.ci_mabiao where mazhi='DEM0100003') mrg
on s.mrg_sts=mrg.code1
left join
(SELECT code code2,name miao_sex FROM bi_ods.ci_mabiao where mazhi='DEM0100005') sexy
on to_number(s.sex) = to_number(sexy.code2)) sm) ms --第一张表join了二次（sex,mrg)
left join
(select ECIF_CUST_NO ECIF_CUST_NO2,'是' IF_HIGH_BALCK from bi_ods.CI_CIPH_HIGH_BLACK_LIST_INFO) HIGH_BLACK_LIST
on ms.ECIF_CUST_NO=HIGH_BLACK_LIST.ECIF_CUST_NO2 --第二张表join了第一张表
left join
(select ecif_cust_no ecif_cust_no3,indv_lev_typ,indv_lev_cod,crlmt,cred_lotp from 
(select ecif_cust_no,indv_lev_typ,indv_lev_cod,crlmt,cred_lotp,eval_dt,
row_number() over(partition by ecif_cust_no order by eval_dt desc) row_num
from bi_ods.CI_CIPH_HIGH_INDV_LEV_INFO) dj where row_num=1) high_credit
on ms.ECIF_CUST_NO=high_credit.ECIF_CUST_NO3 --第三张表join了第一张表
left join
(select ecif_cust_no ecif_cust_no4,ADDR_ID from bi_ods.CI_CIPH_HIGH_PTY_ADDR_RELA) high_address
on ms.ECIF_CUST_NO=high_address.ECIF_CUST_NO4) hello --第四张表join了第一张表

union

--低端表--
select
ecif_cust_no, 
null cust_name,
birth_dt,
miao2_sex, 
miao2_mrg_sts, 
register, 
ppl_cod, 
cou_cert_no, 
cou_name, 
religion, 
educ_lev, 
house_typ, 
indv_tax_no, 
indv_insurs_no, 
have_work_yr, 
occup_cod, 
qualification_sts, 
employer_name, 
unit_char, 
unit_work_dt, 
work_no, 
posn, 
ofrn, 
titl, 
mn_inco, 
econ_resur, 
oth_econ_resur, 
depend_cnt, 
language_pre, 
aff_instn_no, 
cust_mngr_cod, 
cust_sts, 
emp_flg, 
pot_vip_flg, 
spec_vip_flg, 
indv_cust_accum_trn_lmt, 
cred_crd_guar_cnt, 
fami_avg_mn_inco, 
fami_capi, 
fami_debt, 
fami_mn_inco, 
grad_dt, 
child_flg, 
industry_typ, 
fami_guar_totl, 
plan_cptl_cert_no, 
study_inst, 
study_spec, 
resi_yr, 
cert_typ, 
cert_no, 
prim_nat, 
rsdnt_nat, 
conc_cust_flg, 
best_cont_tm, 
best_cont_sty, 
null if_high_balck,
null INDV_LEV_TYP,
null INDV_LEV_COD,
null CRLMT,
null CRED_LOTP,
null ADDR_ID
from
(select * from bi_ods.CI_CIPL_LOW_CUST_INFO y
left join
(select code code4,name miao2_mrg_sts from bi_ods.ci_mabiao where mazhi='DEM0100003') x
on y.mrg_sts=x.code4
left join
(select code code3,name miao2_sex from bi_ods.ci_mabiao where mazhi='DEM0100005') z
on to_number(y.sex)=to_number(z.code3)) tp



2.3.3.3 创建更新存储过程，调用
create or replace procedure sp_bi_f_ECIF_CUST_INFO is
/*****************************************************************************
     Program Name: SP_bi_f_ECIF_CUST_INFO
     Function Description: Customer wide table
     Input Parameters: 
     Output Parameters: 
     Return Value:
     Target Table: f_ecif_cust_info 
     Source Table: bi_ods.CI_CIPH_HIGH_CUST_INFO;
     
     select * from bi_ods.CI_CIPH_HIGH_BLACK_LIST_INFO;
     select * from bi_ods.CI_CIPH_HIGH_INDV_LEV_INFO;
     select * from bi_ods.CI_CIPH_HIGH_PTY_ADDR_RELA;
     
     Created by: Chen
     Creation Date: 2024-08-08 11:17
     Modified Date:
     Modified by:
     Modification Reason:
  ******************************************************************************/

sp_name varchar2(4000); -- Store the procedure name
starttime date;         -- Store the start time of the procedure execution
endtime   date;         -- Store the end time of the procedure execution
sql_code  varchar2(10);  -- Exception error code
sql_errms varchar2(200); -- Exception error message
status    varchar2(10); -- Execution status

begin
 sp_name :='sp_bi_f_ECIF_CUST_INFO';
 starttime :=sysdate;

-- Truncate the table F_ECIF_CUST_INFO before inserting new data
execute immediate 'truncate table F_ECIF_CUST_INFO';

-- Insert new data into F_ECIF_CUST_INFO
insert into F_ECIF_CUST_INFO
select  -- Select columns for the data insertion
   ecif_cust_no, 
    cust_name, 
    birth_dt, 
    miao_sex,  -- Or directly query here, but make sure to handle encoding properly
    miao_mrg_sts,  -- Or directly query here, but make sure to handle encoding properly
    register, 
    ppl_cod, 
    cou_cert_no, 
    cou_name, 
    religion, 
    educ_lev, 
    house_typ, 
    indv_tax_no, 
    indv_insurs_no, 
    have_work_yr, 
    occup_cod, 
    qualification_sts, 
    employer_name, 
    unit_char, 
    unit_work_dt, 
    work_no, 
    posn, 
    ofrn, 
    titl, 
    mn_inco, 
    econ_resur, 
    oth_econ_resur, 
    depend_cnt, 
    language_pre, 
    aff_instn_no, 
    cust_mngr_cod, 
    cust_sts, 
    emp_flg, 
    pot_vip_flg, 
    spec_vip_flg, 
    indv_cust_accum_trn_lmt, 
    cred_crd_guar_cnt, 
    fami_avg_mn_inco, 
    fami_capi, 
    fami_debt, 
    fami_mn_inco, 
    grad_dt, 
    child_flg, 
    industry_typ, 
    fami_guar_totl, 
    plan_cptl_cert_no, 
    study_inst, 
    study_spec, 
    resi_yr, 
    cert_typ, 
    cert_no, 
    prim_nat, 
    rsdnt_nat, 
    conc_cust_flg, 
    best_cont_tm, 
    best_cont_sty, 
    nvl2(if_high_black,if_high_black,'No'),  -- Or use case when(select count(1) from blacklist where custno=target_table.custno)=1 then 'Yes' else 'No' end as xxx
    INDV_LEV_TYP,
    INDV_LEV_COD,
    CRLMT,
    CRED_LOTP,
    ADDR_ID
from
(select * from  -- Join four tables
(select * from  -- First table start
(select * from bi_ods.CI_CIPH_HIGH_CUST_INFO s
left join
(SELECT code code1, name miao_mrg_sts FROM bi_ods.ci_mabiao where mazhi='DEM0100003') mrg
on s.mrg_sts=mrg.code1
left join
(SELECT code code2, name miao_sex FROM bi_ods.ci_mabiao where mazhi='DEM0100005') sexy
on to_number(s.sex) = to_number(sexy.code2)) sm) ms -- Joined first table with two fields (sex, mrg), note the data type matching (encoding conversion)
left join
(select ECIF_CUST_NO ECIF_CUST_NO2, 'Yes' IF_HIGH_BLACK from bi_ods.CI_CIPH_HIGH_BLACK_LIST_INFO) HIGH_BLACK_LIST
on ms.ECIF_CUST_NO=HIGH_BLACK_LIST.ECIF_CUST_NO2 -- Second table joined with the first table
left join
(select ecif_cust_no ecif_cust_no3, indv_lev_typ, indv_lev_cod, crlmt, cred_lotp from 
(select ecif_cust_no, indv_lev_typ, indv_lev_cod, crlmt, cred_lotp, eval_dt,
row_number() over(partition by ecif_cust_no order by eval_dt desc) row_num
from bi_ods.CI_CIPH_HIGH_INDV_LEV_INFO) dj where row_num=1) high_credit
on ms.ECIF_CUST_NO=high_credit.ECIF_CUST_NO3 -- Third table joined with the first table
left join
(select ecif_cust_no ecif_cust_no4, ADDR_ID from bi_ods.CI_CIPH_HIGH_PTY_ADDR_RELA) high_address
on ms.ECIF_CUST_NO=high_address.ECIF_CUST_NO4) hello -- Fourth table joined with the first table

union

-- Low-end table data
select
ecif_cust_no, 
null cust_name,
birth_dt,
miao2_sex,  -- Or directly query here, but make sure to handle encoding properly
miao2_mrg_sts, -- Or directly query here, but make sure to handle encoding properly
register, 
ppl_cod, 
cou_cert_no, 
cou_name, 
religion, 
educ_lev, 
house_typ, 
indv_tax_no, 
indv_insurs_no, 
have_work_yr, 
occup_cod, 
qualification_sts, 
employer_name, 
unit_char, 
unit_work_dt, 
work_no, 
posn, 
ofrn, 
titl, 
mn_inco, 
econ_resur, 
oth_econ_resur, 
depend_cnt, 
language_pre, 
aff_instn_no, 
cust_mngr_cod, 
cust_sts, 
emp_flg, 
pot_vip_flg, 
spec_vip_flg, 
indv_cust_accum_trn_lmt, 
cred_crd_guar_cnt, 
fami_avg_mn_inco, 
fami_capi, 
fami_debt, 
fami_mn_inco, 
grad_dt, 
child_flg, 
industry_typ, 
fami_guar_totl, 
plan_cptl_cert_no, 
study_inst, 
study_spec, 
resi_yr, 
cert_typ, 
cert_no, 
prim_nat, 
rsdnt_nat, 
conc_cust_flg, 
best_cont_tm, 
best_cont_sty, 
null if_high_black,
null INDV_LEV_TYP,
null INDV_LEV_COD,
null CRLMT,
null CRED_LOTP,
null ADDR_ID
from
(select * from bi_ods.CI_CIPL_LOW_CUST_INFO y
left join
(select code code4, name miao2_mrg_sts from bi_ods.ci_mabiao where mazhi='DEM0100003') x
on y.mrg_sts=x.code4
left join
(select code code3, name miao2_sex from bi_ods.ci_mabiao where mazhi='DEM0100005') z
on to_number(y.sex)=to_number(z.code3)) tp;

commit;

-- Record execution success log
endtime :=sysdate;
status :='Success';
sp_f_mylog(sp_name, starttime, endtime, sql_code, sql_errms, status);

exception when others
then
  endtime :=sysdate;
  sql_code :=SQLCODE;
  sql_errms :=SQLERRM;
  status :='Failed';
  -- Record execution failure log
  sp_f_mylog(sp_name, starttime, endtime, sql_code, sql_errms, status);
end;


--调用--
begin
  sp_bi_f_ECIF_CUST_INFO;
end;

select * from F_ECIF_CUST_INFO;
select * from my_log;




2.3.4.1创建贷款宽表与看mapping关联表
select * from f_ln_lion_info --目标表
select * from bi_ods.LN_LNP_CTRT_CBAPP; --主源表 t1
select * from F_ECIF_CUST_INFO;  --关联条件ECIF_CUST_NO t2
select * from bi_ods.LN_LNP_ACCT_AMWKPL06; --关联条件LOANACNO,RT_cust_num,记得sum t3
select * from bi_ods.LN_LNP_ACCT_AMWKPL07; --关联条件LOANACNO,RT_ACCT_NUM,记得sum t4
select * from bi_ods.LN_LNP_CUST_CBCREDCUST; --关联条件ECIF_CUST_NO,记得row_number t5

2.3.4.2 多表关联+存储过程
create or replace procedure sp_f_ln_lion_info is
/*****************************************************************************
     Program Name: SP_bi_f_ln_lion_info
     Function Description: Loan wide table
     Input Parameters: 
     Output Parameters: 
     Return Value:
     Target Table: f_ln_lion_info
     Source Tables:
     - select * from F_ECIF_CUST_INFO;  -- Join condition ECIF_CUST_NO t2
     - select * from bi_ods.LN_LNP_ACCT_AMWKPL06; -- Join condition LOANACNO, RT_CUST_NUM, calculate sum t3
     - select * from bi_ods.LN_LNP_ACCT_AMWKPL07; -- Join condition LOANACNO, RT_ACCT_NUM, calculate sum t4
     - select * from bi_ods.LN_LNP_CUST_CBCREDCUST; -- Join condition ECIF_CUST_NO, calculate row_number t5
     Created by: Chen
     Creation Date: 2024-08-08 13:50
     Last Modified Date:
     Last Modified By:
     Modification Reason:
  ******************************************************************************/

sp_name varchar2(4000); -- Store the procedure name
starttime date;         -- Store the start time of the procedure execution
endtime   date;         -- Store the end time of the procedure execution
sql_code  varchar2(10);  -- Exception error code
sql_errms varchar2(200); -- Exception error message
status    varchar2(10); -- Execution status

begin
 sp_name :='sp_f_ln_lion_info';
 starttime :=sysdate;

-- Truncate the table f_ln_lion_info before inserting new data
execute immediate 'truncate table f_ln_lion_info';

-- Insert new data into f_ln_lion_info
insert into f_ln_lion_info
select
t1.LOANACNO,
t1.ECIF_CUST_NO,
t1.CUSTNAME,
t2.MRG_STS,
t1.CURRSIGN,
t1.LOANKIND,
t1.LOANTYPE,
t1.FIRSTORDER,
t1.PAYPERC,
t1.FUNDSOUR,
t1.LOANUSE,
t1.ASSUKIND,
t1.CONTDATE,
t1.CREDCAPI,
t1.CYCFLAG,
t3.SUM_TRAN_AMT,
t4.SUM_PAY_AMT,
sum(t3.sum_tran_amt-t4.LN_BALANCE1) over(partition by t1.ecif_cust_no) LN_BALANCE,
t1.TCAPI,
t1.THISTCAPI,
t5.CREDAMT,
t5.ASSUAMT,
t5.IMPAAMT,
t5.MORTAMT,
t5.CREDTOTALAMT,
t1.TERMFREQ,
t1.TTERM,
t1.RETUTYPE,
t1.TROTHDUEDAY,
t1.FIXRATETERM,
t1.FIRSTDUEDATE,
t1.SUBSFLAG,
t1.ISENOUSUBS,
t1.FIRSTPAYAMT,
t1.FIRSTPAYPERC,
t1.RELEWAY,
t1.PAYEEACNO,
t1.PAYEEACNAME,
t1.PAYEEBANKNAME,
t1.INTECALCKIND,
t1.INTEMETH,
t1.INTEBASE,
t1.AHEADDAYS,
t1.BASICINTERATE,
t1.INTERATE,
t1.BEGINDATE,
t1.ENDDATE,
t1.APPRNAME,
t1.APPRTABNO,
t1.APPRDATE,
t1.APPRFLAG,
t1.APPRSTATE,
t1.LOANSTATE
from bi_ods.LN_LNP_CTRT_CBAPP t1
left join
F_ECIF_CUST_INFO t2
on 
t1.ECIF_CUST_NO=t2.ECIF_CUST_NO
left join
(select RT_CUST_NUM, SUM(TR_TRAN_AMT) sum_tran_amt from bi_ods.LN_LNP_ACCT_AMWKPL06 group by RT_CUST_NUM) t3
on
t1.loanacno=t3.RT_CUST_NUM
left join
(select RT_acct_NUM, SUM(PRIN_PAY_AMT + INT_PAY_AMT) sum_pay_amt, sum(PRIN_PAY_AMT) LN_BALANCE1 from bi_ods.LN_LNP_ACCT_AMWKPL07 group by RT_acct_NUM) t4
on
t1.loanacno=t4.RT_acct_NUM
left join
(select * from(
select ECIF_CUST_NO, begindate, CREDAMT, ASSUAMT, IMPAAMT, MORTAMT, CREDTOTALAMT,
row_number() over(partition by ECIF_CUST_NO order by begindate desc) row_num
from bi_ods.LN_LNP_CUST_CBCREDCUST) gg where row_num=1) t5
on
t1.ECIF_CUST_NO=t5.ECIF_CUST_NO;

-- After joining, check the number of rows processed and check for duplicates or missing data
commit;

  -- Log success
  endtime :=sysdate;
  status :='Success';
  sp_f_mylog(
  sp_name,
   starttime, 
   endtime, 
   sql_code, 
   sql_errms, 
   status  
  );

-- Exception handling
exception when others then
  endtime :=sysdate;
  sql_code :=SQLCODE;
  sql_errms :=SQLERRM;
  status :='Failed';
  -- Log failure
  sp_f_mylog(
  sp_name,
   starttime, 
   endtime, 
   sql_code, 
   sql_errms, 
   status  
  );

end;


--调用--
begin
  sp_f_ln_lion_info;
end;

--查看--
select * from f_ln_lion_info;
select * from my_log;

--------------------------------------------------------------------------------------------------------------------------------------------------------


2.4. m层（最后一层数据库/用户)

切换到超管用户授权存储过程：
grant execute any procedure to bi_m;
--创建日志与存储过程--
-- Create a table to log procedure execution details
create table my_log_m(
sp_bi_f_sp_name varchar2(4000),   -- Store procedure name
starttime date,          -- Store procedure start execution time
endtime   date,          -- Store procedure end execution time
sql_code  varchar2(10),  -- Exception error code
sql_errms varchar2(200), -- Exception error message
status    varchar2(10)   -- Execution status
);

-- Create or replace a procedure to log execution details into my_log_m
create or replace procedure sp_f_mylog_m(
sp_name varchar2,
starttime date,          -- Store procedure start execution time
endtime   date,          -- Store procedure end execution time
sql_code  varchar2,      -- Exception error code
sql_errms varchar2,      -- Exception error message
status    varchar2       -- Execution status
) is
begin
  -- Insert the logged details into my_log_m table
  insert into my_log_m values(
  sp_name,
   starttime, 
   endtime, 
   sql_code, 
   sql_errms, 
   status);
   commit;  
end;



2.4.1 导入风险客户表并查看mapping,找出f层与其有关的表
select * from M_RISK_CUST_INFO; --目标表
select * from bi_f.F_ECIF_CUST_INFO; --源表

--创建存储过程--
-- Create or replace procedure for managing risk customer information
create or replace procedure sp_m_risk_cust_info is
/*****************************************************************************
     Program Name: sp_m_risk_cust_info
     Function Description: Risk Customer Table
     Input Parameters: 
     Output Parameters: 
     Return Value:
     Target Table: M_RISK_CUST_INFO
     Source Table: bi_f.F_ECIF_CUST_INFO
     Created by: Chen
     Creation Date: 2024-08-08 15:00
     Last Modified Date:
     Last Modified By:
     Modification Reason:
******************************************************************************/
sp_name varchar2(4000) :='sp_m_risk_cust_info';
starttime date;        -- Store procedure start execution time
endtime   date;        -- Store procedure end execution time
sql_code  varchar2(255);  -- Exception error code
sql_errms varchar2(255);  -- Exception error message
status    varchar2(255);

begin
-- Truncate the target table before inserting new data
execute immediate 'truncate table m_risk_cust_info';

-- Insert new data into M_RISK_CUST_INFO
insert into M_RISK_CUST_INFO
select
ECIF_CUST_NO,
CUST_NAME,
MRG_STS,
COU_CERT_NO,
COU_NAME,
INDV_TAX_NO,
INDV_INSURS_NO,
MN_INCO,
ECON_RESUR,
OTH_ECON_RESUR,
DEPEND_CNT,
AFF_INSTN_NO,
EMP_FLG,
POT_VIP_FLG,
SPEC_VIP_FLG,
INDV_CUST_ACCUM_TRN_LMT,
CRED_CRD_GUAR_CNT,
FAMI_AVG_MN_INCO,
FAMI_CAPI,
FAMI_DEBT,
FAMI_MN_INCO,
GRAD_DT,
CHILD_FLG,
INDUSTRY_TYP,
FAMI_GUAR_TOTL,
PLAN_CPTL_CERT_NO,
CERT_TYP,
CERT_NO,
PRIM_NAT,
RSDNT_NAT,
CONC_CUST_FLG,
IF_HIGH_BALCK,
INDV_LEV_COD,
CRLMT,
CRED_LOTP
from bi_f.F_ECIF_CUST_INFO
where bi_f.F_ECIF_CUST_INFO.if_high_balck='Yes' or nvl(instr(bi_f.F_ECIF_CUST_INFO.indv_lev_cod,'A'),0)='0';

commit;

-- Log successful execution
endtime :=sysdate;
status :='Success';
sp_f_mylog_M(
  sp_name,
  starttime, 
  endtime, 
  sql_code, 
  sql_errms, 
  status  
);

-- Exception handling
exception when others then
  endtime :=sysdate;
  sql_code :=SQLCODE;
  sql_errms :=SQLERRM;
  status :='Failed';
  sp_f_mylog_M(
  sp_name,
  starttime, 
  endtime, 
  sql_code, 
  sql_errms, 
  status  
);
end;

-- Procedure call to view data
begin
  sp_m_risk_cust_info;
end;

-- Query results
select * from m_risk_cust_info;
select * from my_log_m;

-----------------------------------------------------------------------------

-- Create or replace procedure for managing risk bad loan information
create or replace procedure sp_m_risk_badloan_info is
/*****************************************************************************
     Program Name: sp_m_risk_badloan_info
     Function Description: Bad Loan Table
     Input Parameters: 
     Output Parameters: 
     Return Value:
     Target Table: M_RISK_BADLOAN_INFO
     Source Table: bi_f.F_LN_Lion_INFO
     Created by: Chen
     Creation Date: 2024-08-08 15:30
     Last Modified Date:
     Last Modified By:
     Modification Reason:
******************************************************************************/
  
sp_name varchar2(4000) :='sp_m_risk_badloan_info';
starttime date;        -- Store procedure start execution time
endtime   date;        -- Store procedure end execution time
sql_code  varchar2(255);  -- Exception error code
sql_errms varchar2(255);  -- Exception error message
status    varchar2(255);

begin
-- Truncate the target table before inserting new data
execute immediate 'truncate table M_RISK_BADLOAN_INFO';

-- Insert new data into M_RISK_BADLOAN_INFO
insert into M_RISK_BADLOAN_INFO
select
LOANACNO,
ECIF_CUST_NO,
CUSTNAME,
CURRSIGN,
LOANKIND,
FUNDSOUR,
LOANUSE,
ASSUKIND,
CONTDATE,
CREDCAPI,
SUM_TRAN_AMT,
SUM_PAY_AMT,
LN_BALANCE,
TCAPI,
THISTCAPI,
CREDAMT,
ASSUAMT,
IMPAAMT,
MORTAMT,
CREDTOTALAMT,
TERMFREQ,
TTERM,
RETUTYPE,
TROTHDUEDAY,
FIXRATETERM,
FIRSTDUEDATE,
SUBSFLAG,
RELEWAY,
LOANSTATE
from bi_f.F_LN_Lion_INFO a
where exists (select 1 from m_risk_cust_info b where a.ecif_cust_no=b.ecif_cust_no)
or credtotalamt > sum_tran_amt
or exists (select 1 from bi_f.f_ecif_cust_info d 
           where d.ecif_cust_no = a.ecif_cust_no
           and d.indv_lev_typ = 'Third Level');

commit;

-- Log successful execution
endtime :=sysdate;
status :='Success';
sp_f_mylog_M(
  sp_name,
  starttime, 
  endtime, 
  sql_code, 
  sql_errms, 
  status  
);

-- Exception handling
exception when others then
  endtime :=sysdate;
  sql_code :=SQLCODE;
  sql_errms :=SQLERRM;
  status :='Failed';
  sp_f_mylog_M(
  sp_name,
  starttime, 
  endtime, 
  sql_code, 
  sql_errms, 
  status  
);
end;

--调用查看--
begin
  sp_m_risk_badloan_info;
end;

select * from M_RISK_BADLOAN_INFO;
select * from my_log_m;


