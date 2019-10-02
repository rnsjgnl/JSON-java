-- 生成されたソースは元のソースとは完全に一致しない場合があります。

--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_BNRIHOJO_SHI_BNRI
create table MDBHSM01.TM_BNRIHOJO_SHI_BNRI (
  SHI_BNRI_CD CHAR(1) not null
  , SHI_BNRI_NM VARCHAR2(200)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SHI_BNRI_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_BNRIHOJO_SNRY_BNY_DAI
create table MDBHSM01.TM_BNRIHOJO_SNRY_BNY_DAI (
  SHI_BNRI_CD CHAR(1) not null
  , SNRY_BNY_DAI_CD CHAR(1) not null
  , SNRY_BNY_DAI_NM VARCHAR2(200)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SHI_BNRI_CD,SNRY_BNY_DAI_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_BNRIHOJO_SNRY_BNY_SHO
create table MDBHSM01.TM_BNRIHOJO_SNRY_BNY_SHO (
  SHI_BNRI_CD CHAR(1) not null
  , SNRY_BNY_BNRI_CD CHAR(3) not null
  , SNRY_BNY_DAI_CD CHAR(1)
  , SNRY_BNY_SHO_CD CHAR(2)
  , SNRY_BNY_SHO_NM VARCHAR2(200)
  , SNRY_BNY_BNRI_NM VARCHAR2(200)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SHI_BNRI_CD,SNRY_BNY_BNRI_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_BYOIN_SBT
create table MDBHSM01.TM_BYOIN_SBT (
  BYOIN_SBT_CD CHAR(1) not null
  , BYOIN_SBT_NM VARCHAR2(80)
  , BYOIN_SBT_NM_KANA VARCHAR2(60)
  , BIKO VARCHAR2(400)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (BYOIN_SBT_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_CALENDAR
create table MDBHSM01.TM_CALENDAR (
  YMD CHAR(8) not null
  , EIGYBI_FLG CHAR(1)
  , SHU_SHIMEBI_FLG CHAR(1)
  , NAKA_SHIMEBI_FLG CHAR(1)
  , MATSU_SHIMEBI_FLG CHAR(1)
  , RNSKNS_BYOIN_FLG CHAR(1)
  , KGF_FLG CHAR(1)
  , MACHIAZA_FLG CHAR(1)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (YMD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_CAREMIXTO_KBN
create table MDBHSM01.TM_CAREMIXTO_KBN (
  CAREMIXTO_KBN_CD CHAR(1) not null
  , CAREMIXTO_KBN_NM VARCHAR2(80)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (CAREMIXTO_KBN_CD)
);
/

create index TM_CAREMIXTO_KBN_IX01
  on MDBHSM01.TM_CAREMIXTO_KBN(UPD_EIGY_YMD)
/

create index TM_CAREMIXTO_KBN_IX02
  on MDBHSM01.TM_CAREMIXTO_KBN(CAREMIXTO_KBN_CD,UPD_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_CHAIN_HONBU_SBT
create table MDBHSM01.TM_CHAIN_HONBU_SBT (
  CHAIN_HONBU_SBT_CD CHAR(1) not null
  , CHAIN_HONBU_SBT_NM VARCHAR2(80)
  , CHAIN_HONBU_SBT_RN VARCHAR2(16)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (CHAIN_HONBU_SBT_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_CHIKRENKEIPATH
create table MDBHSM01.TM_CHIKRENKEIPATH (
  CHIKRENKEIPATH_CD CHAR(2) not null
  , CHIKRENKEIPATH_NM VARCHAR2(200)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (CHIKRENKEIPATH_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_CHOHYO_SHTRYKSK_KOTEI
create table MDBHSM01.TM_CHOHYO_SHTRYKSK_KOTEI (
  CHOHYO_ID CHAR(12) not null
  , CHOHYO_NM VARCHAR2(400)
  , SHUTSURYOKU_KEISHIKI_KBN CHAR(1)
  , SHUTSURYOKU_PRINTER_PATH VARCHAR2(800)
  , SHUTSURYOKU_FILE_NM VARCHAR2(800)
  , SHUTSURYOKU_FOLDER_PATH VARCHAR2(800)
  , COPY_FOLDER_PATH VARCHAR2(2000)
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (CHOHYO_ID)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_DEL_YOTEI_RIYU
create table MDBHSM01.TM_DEL_YOTEI_RIYU (
  REC_ID CHAR(2) not null
  , DEL_YOTEI_RIYU_CD CHAR(1) not null
  , DEL_YOTEI_RIYU VARCHAR2(200)
  , BIKO VARCHAR2(400)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (REC_ID,DEL_YOTEI_RIYU_CD)
);
/

create index TM_DEL_YOTEI_RIYU_IX01
  on MDBHSM01.TM_DEL_YOTEI_RIYU(UPD_EIGY_YMD)
/

create index TM_DEL_YOTEI_RIYU_IX02
  on MDBHSM01.TM_DEL_YOTEI_RIYU(DEL_YOTEI_RIYU_CD,UPD_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_FAX_ATESAKI
create table MDBHSM01.TM_FAX_ATESAKI (
  FAX_ATESAKI_CD CHAR(2) not null
  , FAX_ATESAKI_NM VARCHAR2(60)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (FAX_ATESAKI_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_FB_FMT_HNKN
create table MDBHSM01.TM_FB_FMT_HNKN (
  FB_USER_CD CHAR(3) not null
  , FB_SHIKIBETSU_CD CHAR(1) not null
  , KIYK_KEITAI_KBN CHAR(1)
  , SHI_UKETORI_FMT_HNKN_PRMT VARCHAR2(15)
  , KJN_UKETORI_FMT_HNKN_PRMT VARCHAR2(15)
  , SHI_HENKYAKU_FMT_HNKN_PRMT VARCHAR2(15)
  , KJN_HENKYAKU_FMT_HNKN_PRMT VARCHAR2(15)
  , SORT_FLG CHAR(1)
  , UKETORI_KBN CHAR(1)
  , FB_LAYOUT_SHIN_KYU_KBN CHAR(1)
  , VAN_SHI_UKETORI_KIGY_JOHO_KBN CHAR(1)
  , VAN_SHI_UKETORI_KIGY_KGR_ICHI VARCHAR2(5)
  , VAN_KJN_UKETORI_KIGY_JOHO_KBN CHAR(1)
  , VAN_KJN_UKETORI_KIGY_KGR_ICHI VARCHAR2(5)
  , VAN_SHI_HENKYAKU_KIGYMAE_RECC VARCHAR2(5)
  , VAN_SHI_HENKYAKU_KTCUMMJI16SN CHAR(2)
  , VAN_KJN_HENKYAKU_KIGYMAE_RECC VARCHAR2(5)
  , VAN_KJN_HENKYAKU_KTCUMMJI16SN CHAR(2)
  , UKETORI_BATCH_SETTEI_FILE_NM VARCHAR2(200)
  , VAN_SHI_UKETORI_FILE_NM VARCHAR2(200)
  , VAN_KJN_UKETORI_FILE_NM VARCHAR2(200)
  , HENKYAKU_BATCH_SETTEI_FILE_NM VARCHAR2(200)
  , VAN_SHI_HENKYAKU_FILE_NM VARCHAR2(200)
  , VAN_KJN_HENKYAKU_FILE_NM VARCHAR2(200)
  , VAN_ID CHAR(8)
  , VAN_UKETORI_DATA_SBT_NM_SHI VARCHAR2(10)
  , VAN_UKETORI_DATA_SBT_NM_KJN VARCHAR2(10)
  , VAN_HENKYAKU_DATA_SBT_NM_SHI VARCHAR2(10)
  , VAN_HENKYAKU_DATA_SBT_NM_KJN VARCHAR2(10)
  , HYOJIYO_FB_KAIIN_WNM VARCHAR2(200)
  , ASSHUKU_FLG CHAR(1)
  , ANGOKA_FLG CHAR(1)
  , DRM_KAIIN_ID CHAR(7)
  , ASSHUKU_HOSHIKI VARCHAR2(10)
  , EXCEL_TXT_HENKAN_FLG CHAR(1)
  , EXCEL_TXT_HENKAN_PRMT VARCHAR2(15)
  , FILE_PASSWD VARCHAR2(15)
  , HENKYAKU_ASSHUKU_FILE_NM VARCHAR2(200)
  , HENKYAKU_ANGOKA_FILE_NM VARCHAR2(200)
  , SHI_FILE_NM_HANDAN_MOJI VARCHAR2(200)
  , KJN_FILE_NM_HANDAN_MOJI VARCHAR2(200)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (FB_USER_CD,FB_SHIKIBETSU_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_FB_FMT_HNKN_RRK
create table MDBHSM01.TM_FB_FMT_HNKN_RRK (
  SETTEI_RRK_RENBAN NUMBER(6, 0) not null
  , FB_USER_CD CHAR(3) not null
  , FB_SHIKIBETSU_CD CHAR(1) not null
  , KIYK_KEITAI_KBN CHAR(1)
  , SHI_UKETORI_FMT_HNKN_PRMT VARCHAR2(15)
  , KJN_UKETORI_FMT_HNKN_PRMT VARCHAR2(15)
  , SHI_HENKYAKU_FMT_HNKN_PRMT VARCHAR2(15)
  , KJN_HENKYAKU_FMT_HNKN_PRMT VARCHAR2(15)
  , SORT_FLG CHAR(1)
  , UKETORI_KBN CHAR(1)
  , FB_LAYOUT_SHIN_KYU_KBN CHAR(1)
  , VAN_SHI_UKETORI_KIGY_JOHO_KBN CHAR(1)
  , VAN_SHI_UKETORI_KIGY_KGR_ICHI VARCHAR2(5)
  , VAN_KJN_UKETORI_KIGY_JOHO_KBN CHAR(1)
  , VAN_KJN_UKETORI_KIGY_KGR_ICHI VARCHAR2(5)
  , VAN_SHI_HENKYAKU_KIGYMAE_RECC VARCHAR2(5)
  , VAN_SHI_HENKYAKU_KTCUMMJI16SN CHAR(2)
  , VAN_KJN_HENKYAKU_KIGYMAE_RECC VARCHAR2(5)
  , VAN_KJN_HENKYAKU_KTCUMMJI16SN CHAR(2)
  , UKETORI_BATCH_SETTEI_FILE_NM VARCHAR2(200)
  , VAN_SHI_UKETORI_FILE_NM VARCHAR2(200)
  , VAN_KJN_UKETORI_FILE_NM VARCHAR2(200)
  , HENKYAKU_BATCH_SETTEI_FILE_NM VARCHAR2(200)
  , VAN_SHI_HENKYAKU_FILE_NM VARCHAR2(200)
  , VAN_KJN_HENKYAKU_FILE_NM VARCHAR2(200)
  , VAN_ID CHAR(8)
  , VAN_UKETORI_DATA_SBT_NM_SHI VARCHAR2(10)
  , VAN_UKETORI_DATA_SBT_NM_KJN VARCHAR2(10)
  , VAN_HENKYAKU_DATA_SBT_NM_SHI VARCHAR2(10)
  , VAN_HENKYAKU_DATA_SBT_NM_KJN VARCHAR2(10)
  , HYOJIYO_FB_KAIIN_WNM VARCHAR2(200)
  , ASSHUKU_FLG CHAR(1)
  , ANGOKA_FLG CHAR(1)
  , DRM_KAIIN_ID CHAR(7)
  , ASSHUKU_HOSHIKI VARCHAR2(10)
  , EXCEL_TXT_HENKAN_FLG CHAR(1)
  , EXCEL_TXT_HENKAN_PRMT VARCHAR2(15)
  , FILE_PASSWD VARCHAR2(15)
  , HENKYAKU_ASSHUKU_FILE_NM VARCHAR2(200)
  , HENKYAKU_ANGOKA_FILE_NM VARCHAR2(200)
  , SHI_FILE_NM_HANDAN_MOJI VARCHAR2(200)
  , KJN_FILE_NM_HANDAN_MOJI VARCHAR2(200)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SETTEI_RRK_RENBAN,FB_USER_CD,FB_SHIKIBETSU_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_FB_KAIIN
create table MDBHSM01.TM_FB_KAIIN (
  FB_USER_CD CHAR(3) not null
  , FB_SHIKIBETSU_CD CHAR(1) not null
  , JIDOKA_KBN CHAR(1)
  , FB_SHORI_KBN_SHIYOU_KBN CHAR(1)
  , FB_SHIKIBETSU_NM VARCHAR2(10)
  , FB_SHIKIBETSU_KAISHA_NM VARCHAR2(200)
  , NAIBU_EMAIL_TO VARCHAR2(2000)
  , NAIBU_EMAIL_CC VARCHAR2(2000)
  , HENKYAKU_EMAIL_TO VARCHAR2(2000)
  , HENKYAKU_EMAIL_CC VARCHAR2(2000)
  , FB_HENKYAKU_KAISHA_NM VARCHAR2(200)
  , FB_HENKYAKU_BUSHOMEI VARCHAR2(200)
  , FB_HENKYAKU_TANTOSHA_NM VARCHAR2(2000)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (FB_USER_CD,FB_SHIKIBETSU_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_FB_KAIIN_RRK
create table MDBHSM01.TM_FB_KAIIN_RRK (
  SETTEI_RRK_RENBAN NUMBER(6, 0) not null
  , FB_USER_CD CHAR(3) not null
  , FB_SHIKIBETSU_CD CHAR(1) not null
  , JIDOKA_KBN CHAR(1)
  , FB_SHORI_KBN_SHIYOU_KBN CHAR(1)
  , FB_SHIKIBETSU_NM VARCHAR2(10)
  , FB_SHIKIBETSU_KAISHA_NM VARCHAR2(200)
  , NAIBU_EMAIL_TO VARCHAR2(2000)
  , NAIBU_EMAIL_CC VARCHAR2(2000)
  , HENKYAKU_EMAIL_TO VARCHAR2(2000)
  , HENKYAKU_EMAIL_CC VARCHAR2(2000)
  , FB_HENKYAKU_KAISHA_NM VARCHAR2(200)
  , FB_HENKYAKU_BUSHOMEI VARCHAR2(200)
  , FB_HENKYAKU_TANTOSHA_NM VARCHAR2(2000)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SETTEI_RRK_RENBAN,FB_USER_CD,FB_SHIKIBETSU_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_FB_SENDER_MAIL
create table MDBHSM01.TM_FB_SENDER_MAIL (
  MAIL_KBN CHAR(1) not null
  , SENDER_EMAIL VARCHAR2(500)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (MAIL_KBN)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_FB_SENDER_MAIL_RRK
create table MDBHSM01.TM_FB_SENDER_MAIL_RRK (
  SETTEI_RRK_RENBAN NUMBER(6, 0) not null
  , MAIL_KBN CHAR(1) not null
  , SENDER_EMAIL VARCHAR2(500)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SETTEI_RRK_RENBAN,MAIL_KBN)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_FB_TEIKEIBUN
create table MDBHSM01.TM_FB_TEIKEIBUN (
  TEIKEIBUN_CD CHAR(4) not null
  , TEIKEIBUN_BNRI_CD CHAR(2)
  , TEIKEIBUN VARCHAR2(400)
  , DCF_SHI_FLG CHAR(1)
  , DCF_KJN_FLG CHAR(1)
  , PCF_YAKUZAISHI_FLG CHAR(1)
  , DSF_YAKKYOKU_FLG CHAR(1)
  , DNF_SHI_FLG CHAR(1)
  , DNF_KJN_FLG CHAR(1)
  , ECF_SHI_FLG CHAR(1)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (TEIKEIBUN_CD)
);
/

create index TM_FB_TEIKEIBUN_IX01
  on MDBHSM01.TM_FB_TEIKEIBUN(UPD_EIGY_YMD)
/

create index TM_FB_TEIKEIBUN_IX02
  on MDBHSM01.TM_FB_TEIKEIBUN(TEIKEIBUN_CD,UPD_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_FB_TEIKEIBUN_BNRI
create table MDBHSM01.TM_FB_TEIKEIBUN_BNRI (
  TEIKEIBUN_BNRI_CD CHAR(2) not null
  , TEIKEIBUN_BNRI_NM VARCHAR2(40)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (TEIKEIBUN_BNRI_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_GAIJI_LIST_KEY_JOHO
create table MDBHSM01.TM_GAIJI_LIST_KEY_JOHO (
  FILE_SBT_CD CHAR(3) not null
  , LAYOUT_SHIN_KYU_KBN CHAR(1) not null
  , KEY_S_ICHI NUMBER(5, 0)
  , KOMOKU_SU NUMBER(5, 0)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (FILE_SBT_CD,LAYOUT_SHIN_KYU_KBN)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_GAKKAI
create table MDBHSM01.TM_GAKKAI (
  GAKKAI_CD CHAR(3) not null
  , GAKKAI_NM VARCHAR2(80)
  , GAKKAI_RN VARCHAR2(80)
  , GAKKAI_NM_KANA VARCHAR2(60)
  , KAIIN_SU NUMBER(8, 0)
  , TORIKOMI_YM CHAR(6)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (GAKKAI_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_GENGO
create table MDBHSM01.TM_GENGO (
  GENGO_CD CHAR(1) not null
  , GENGO_ID CHAR(1)
  , GENGO_NM VARCHAR2(20)
  , S_YMD CHAR(8)
  , E_YMD CHAR(8)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (GENGO_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_GETSUJI_LIST_JOGAI_CHK
create table MDBHSM01.TM_GETSUJI_LIST_JOGAI_CHK (
  SHI_KJN_KBN CHAR(1) not null
  , CHK_CD CHAR(2) not null
  , CHK_NM VARCHAR2(400)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SHI_KJN_KBN,CHK_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_HIF_BYOIN_SBT
create table MDBHSM01.TM_HIF_BYOIN_SBT (
  BYOIN_SBT_CD CHAR(1) not null
  , BYOIN_SBT_NM VARCHAR2(80)
  , BYOIN_SBT_NM_KANA VARCHAR2(60)
  , BIKO VARCHAR2(400)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (BYOIN_SBT_CD)
);
/

create index TM_HIF_BYOIN_SBT_IX01
  on MDBHSM01.TM_HIF_BYOIN_SBT(UPD_EIGY_YMD)
/

create index TM_HIF_BYOIN_SBT_IX02
  on MDBHSM01.TM_HIF_BYOIN_SBT(BYOIN_SBT_CD,UPD_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_HIF_CHIKRENKEIPATH
create table MDBHSM01.TM_HIF_CHIKRENKEIPATH (
  CHIKRENKEIPATH_CD CHAR(2) not null
  , CHIKRENKEIPATH_NM VARCHAR2(200)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (CHIKRENKEIPATH_CD)
);
/

create index TM_HIF_CHIKRENKEIPATH_IX01
  on MDBHSM01.TM_HIF_CHIKRENKEIPATH(UPD_EIGY_YMD)
/

create index TM_HIF_CHIKRENKEIPATH_IX02
  on MDBHSM01.TM_HIF_CHIKRENKEIPATH(CHIKRENKEIPATH_CD,UPD_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_HIF_GAKKAI
create table MDBHSM01.TM_HIF_GAKKAI (
  GAKKAI_CD CHAR(3) not null
  , GAKKAI_NM VARCHAR2(80)
  , GAKKAI_RN VARCHAR2(80)
  , GAKKAI_NM_KANA VARCHAR2(60)
  , KAIIN_SU NUMBER(8, 0)
  , TORIKOMI_YM CHAR(6)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (GAKKAI_CD)
);
/

create index TM_HIF_GAKKAI_IX01
  on MDBHSM01.TM_HIF_GAKKAI(UPD_EIGY_YMD)
/

create index TM_HIF_GAKKAI_IX02
  on MDBHSM01.TM_HIF_GAKKAI(GAKKAI_CD,UPD_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_HIF_IRYHYOKA
create table MDBHSM01.TM_HIF_IRYHYOKA (
  IRYHYOKA_CD CHAR(2) not null
  , IRYHYOKA_NM VARCHAR2(200)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (IRYHYOKA_CD)
);
/

create index TM_HIF_IRYHYOKA_IX01
  on MDBHSM01.TM_HIF_IRYHYOKA(UPD_EIGY_YMD)
/

create index TM_HIF_IRYHYOKA_IX02
  on MDBHSM01.TM_HIF_IRYHYOKA(IRYHYOKA_CD,UPD_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_HIF_KEIEITAI
create table MDBHSM01.TM_HIF_KEIEITAI (
  KEIEITAI_CD CHAR(3) not null
  , KEIEITAI_NM VARCHAR2(80)
  , KEIEITAI_RN VARCHAR2(20)
  , DCF_FLG CHAR(1)
  , DSF_FLG CHAR(1)
  , DNF_FLG CHAR(1)
  , ECF_FLG CHAR(1)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (KEIEITAI_CD)
);
/

create index TM_HIF_KEIEITAI_IX01
  on MDBHSM01.TM_HIF_KEIEITAI(UPD_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_HIF_KEN_NM
create table MDBHSM01.TM_HIF_KEN_NM (
  RIDAI_CD CHAR(2) not null
  , KEN_CD CHAR(2)
  , KEN_NM VARCHAR2(20)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (RIDAI_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_HIF_KNG_SBT
create table MDBHSM01.TM_HIF_KNG_SBT (
  KNG_SBT_CD CHAR(4) not null
  , KNG_SBT_NM VARCHAR2(200)
  , KNG_SBT_RN VARCHAR2(40)
  , KNG_SBT_NM_LIST VARCHAR2(32)
  , IPPAN_FLG CHAR(1)
  , SEISHIN_FLG CHAR(1)
  , KEKKAKU_FLG CHAR(1)
  , RYOYO_IRY_FLG CHAR(1)
  , RYOYO_KIG_FLG CHAR(1)
  , ROJIN_IRY_FLG CHAR(1)
  , ROJIN_KIG_FLG CHAR(1)
  , SONOTA_FLG CHAR(1)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (KNG_SBT_CD)
);
/

create index TM_HIF_KNG_SBT_IX01
  on MDBHSM01.TM_HIF_KNG_SBT(UPD_EIGY_YMD)
/

create index TM_HIF_KNG_SBT_IX02
  on MDBHSM01.TM_HIF_KNG_SBT(KNG_SBT_CD,UPD_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_HIF_SEISAKUIRY_BNY
create table MDBHSM01.TM_HIF_SEISAKUIRY_BNY (
  SEISAKUIRY_BNY_CD CHAR(2) not null
  , SEISAKUIRY_BNY_NM VARCHAR2(200)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEISAKUIRY_BNY_CD)
);
/

create index TM_HIF_SEISAKUIRY_BNY_IX01
  on MDBHSM01.TM_HIF_SEISAKUIRY_BNY(UPD_EIGY_YMD)
/

create index TM_HIF_SEISAKUIRY_BNY_IX02
  on MDBHSM01.TM_HIF_SEISAKUIRY_BNY(SEISAKUIRY_BNY_CD,UPD_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_HIF_SENMONI
create table MDBHSM01.TM_HIF_SENMONI (
  SENMONI_CD CHAR(4) not null
  , SENMONI_SHIKAKU_NM VARCHAR2(100)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SENMONI_CD)
);
/

create index TM_HIF_SENMONI_IX01
  on MDBHSM01.TM_HIF_SENMONI(UPD_EIGY_YMD)
/

create index TM_HIF_SENMONI_IX02
  on MDBHSM01.TM_HIF_SENMONI(SENMONI_CD,UPD_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_HIF_SENSHIN
create table MDBHSM01.TM_HIF_SENSHIN (
  SENSHIN_CD CHAR(3) not null
  , SENSHIN_JOGAI_KBN CHAR(1)
  , SENSHIN_NM VARCHAR2(200)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SENSHIN_CD)
);
/

create index TM_HIF_SENSHIN_IX01
  on MDBHSM01.TM_HIF_SENSHIN(UPD_EIGY_YMD)
/

create index TM_HIF_SENSHIN_IX02
  on MDBHSM01.TM_HIF_SENSHIN(SENSHIN_CD,SENSHIN_JOGAI_KBN,UPD_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_HIF_SHIKKANBETSUREHA
create table MDBHSM01.TM_HIF_SHIKKANBETSUREHA (
  SHIKKANBETSUREHA_CD CHAR(2) not null
  , SHIKKANBETSUREHA_NM VARCHAR2(200)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SHIKKANBETSUREHA_CD)
);
/

create index TM_HIF_SHIKKANBETSUREHA_IX01
  on MDBHSM01.TM_HIF_SHIKKANBETSUREHA(UPD_EIGY_YMD)
/

create index TM_HIF_SHIKKANBETSUREHA_IX02
  on MDBHSM01.TM_HIF_SHIKKANBETSUREHA(SHIKKANBETSUREHA_CD,UPD_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_HIF_SHI_KBN
create table MDBHSM01.TM_HIF_SHI_KBN (
  SHI_KBN_CD CHAR(2) not null
  , SHI_KBN_NM VARCHAR2(100)
  , DCF_FLG CHAR(1)
  , DSF_FLG CHAR(1)
  , DNF_FLG CHAR(1)
  , ECF_FLG CHAR(1)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SHI_KBN_CD)
);
/

create index TM_HIF_SHI_KBN_IX01
  on MDBHSM01.TM_HIF_SHI_KBN(UPD_EIGY_YMD)
/

create index TM_HIF_SHI_KBN_IX02
  on MDBHSM01.TM_HIF_SHI_KBN(SHI_KBN_CD,UPD_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_HIF_SHUSSHINKO_GAKUBU
create table MDBHSM01.TM_HIF_SHUSSHINKO_GAKUBU (
  SHUSSHINKO_CD CHAR(3) not null
  , GAKUBU_SHIKIBETSU_KBN CHAR(1) not null
  , SORITSUNEN_GENGO_CD CHAR(1)
  , SORITSUNEN_WY CHAR(2)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SHUSSHINKO_CD,GAKUBU_SHIKIBETSU_KBN)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_HIF_SHUSSHINKO_NM
create table MDBHSM01.TM_HIF_SHUSSHINKO_NM (
  SHUSSHINKO_CD CHAR(3) not null
  , SHUSSHINKO_NM VARCHAR2(80)
  , SHUSSHINKO_RN VARCHAR2(12)
  , KYU_SHUSSHINKO_NM VARCHAR2(80)
  , SHUSSHINKO_NM_KANA VARCHAR2(60)
  , JOSHIDAI_FLG CHAR(1)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SHUSSHINKO_CD)
);
/

create index TM_HIF_SHUSSHINKO_NM_IX01
  on MDBHSM01.TM_HIF_SHUSSHINKO_NM(UPD_EIGY_YMD)
/

create index TM_HIF_SHUSSHINKO_NM_IX02
  on MDBHSM01.TM_HIF_SHUSSHINKO_NM(SHUSSHINKO_CD,UPD_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_HIF_SNRYKMK
create table MDBHSM01.TM_HIF_SNRYKMK (
  SNRYKMK_CD CHAR(3) not null
  , SNRYKMK_NM VARCHAR2(80)
  , SNRYKMK_RN VARCHAR2(16)
  , SNRYKMK_NM_KANA VARCHAR2(60)
  , KIHON_SNRY_FLG CHAR(1)
  , DCF_FLG CHAR(1)
  , DNF_FLG CHAR(1)
  , PCF_FLG CHAR(1)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SNRYKMK_CD)
);
/

create index TM_HIF_SNRYKMK_IX01
  on MDBHSM01.TM_HIF_SNRYKMK(UPD_EIGY_YMD)
/

create index TM_HIF_SNRYKMK_IX02
  on MDBHSM01.TM_HIF_SNRYKMK(SNRYKMK_CD,UPD_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_HIF_SNTNIRY
create table MDBHSM01.TM_HIF_SNTNIRY (
  SNTNIRY_CD CHAR(2) not null
  , SNTNIRY_NM VARCHAR2(200)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SNTNIRY_CD)
);
/

create index TM_HIF_SNTNIRY_IX01
  on MDBHSM01.TM_HIF_SNTNIRY(UPD_EIGY_YMD)
/

create index TM_HIF_SNTNIRY_IX02
  on MDBHSM01.TM_HIF_SNTNIRY(SNTNIRY_CD,UPD_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_HIF_SZKBUKA
create table MDBHSM01.TM_HIF_SZKBUKA (
  SZKBUKA_CD CHAR(4) not null
  , SZKBUKA_NM VARCHAR2(100)
  , KENSAKU_SZKBUKA_NM VARCHAR2(100)
  , SZKBUKA_NM_KANA VARCHAR2(90)
  , DCF_FLG CHAR(1)
  , DNF_FLG CHAR(1)
  , PCF_FLG CHAR(1)
  , BNRIHOJO_SHI_BNRI_CD CHAR(1)
  , BNRIHOJO_SNRY_BNY_BNRI_CD CHAR(3)
  , BNRIHOJO_SORTKEY CHAR(3)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SZKBUKA_CD)
);
/

create index TM_HIF_SZKBUKA_IX01
  on MDBHSM01.TM_HIF_SZKBUKA(UPD_EIGY_YMD)
/

create index TM_HIF_SZKBUKA_IX02
  on MDBHSM01.TM_HIF_SZKBUKA(SZKBUKA_CD,UPD_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_HIF_YAKUSHOKU
create table MDBHSM01.TM_HIF_YAKUSHOKU (
  YAKUSHOKU_CD CHAR(3) not null
  , YAKUSHOKU_NM VARCHAR2(80)
  , YAKUSHOKU_RN VARCHAR2(40)
  , YAKUSHOKU_NM_KANA VARCHAR2(60)
  , SHOKUI_FLG CHAR(1)
  , DCF_FLG CHAR(1)
  , PCF_FLG CHAR(1)
  , DNF_FLG CHAR(1)
  , TANDOKU_YAKUSHOKU_FLG CHAR(1)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (YAKUSHOKU_CD)
);
/

create index TM_HIF_YAKUSHOKU_IX01
  on MDBHSM01.TM_HIF_YAKUSHOKU(UPD_EIGY_YMD)
/

create index TM_HIF_YAKUSHOKU_IX02
  on MDBHSM01.TM_HIF_YAKUSHOKU(YAKUSHOKU_CD,UPD_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_HKNJOTODOKE_KBN
create table MDBHSM01.TM_HKNJOTODOKE_KBN (
  HKNJOTODOKE_KBN CHAR(1) not null
  , HKNJOTODOKE_KBN_NM VARCHAR2(80)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (HKNJOTODOKE_KBN)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_IKJ_SHIKKAN_CHRY_DAI
create table MDBHSM01.TM_IKJ_SHIKKAN_CHRY_DAI (
  SHIKKAN_CHRY_DAI_CD CHAR(2) not null
  , SHIKKAN_CHRY_DAI_NM VARCHAR2(200)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SHIKKAN_CHRY_DAI_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_IKJ_SHIKKAN_CHRY_SHO
create table MDBHSM01.TM_IKJ_SHIKKAN_CHRY_SHO (
  SHIKKAN_CHRY_DAI_CD CHAR(2) not null
  , SHIKKAN_CHRY_SHO_CD CHAR(2) not null
  , SHIKKAN_CHRY_SHO_NM VARCHAR2(200)
  , SHIKKAN_CHRY_SHO_BETSUMEI VARCHAR2(200)
  , HYOJI_NO VARCHAR2(20)
  , KENSU_YUKO_FLG CHAR(1)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SHIKKAN_CHRY_DAI_CD,SHIKKAN_CHRY_SHO_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_IKJ_SMG_BNRIHOJO
create table MDBHSM01.TM_IKJ_SMG_BNRIHOJO (
  BNRIHOJO_CD CHAR(3) not null
  , BNRIHOJO_NM VARCHAR2(200)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (BNRIHOJO_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_IKJ_STB
create table MDBHSM01.TM_IKJ_STB (
  STB_CD CHAR(3) not null
  , STB_NM VARCHAR2(200)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (STB_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_IKJ_TNK_TIZI_SJT
create table MDBHSM01.TM_IKJ_TNK_TIZI_SJT (
  TNK_TIZI_SJT_CD CHAR(3) not null
  , TNK_TIZI_SJT_NM VARCHAR2(200)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (TNK_TIZI_SJT_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_INPUT_JOKYO_KOMOKU
create table MDBHSM01.TM_INPUT_JOKYO_KOMOKU (
  REC_ID CHAR(2) not null
  , KOMOKU_CD CHAR(4) not null
  , KOMOKU_NM VARCHAR2(80)
  , SORTKEY NUMBER(4, 0)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (REC_ID,KOMOKU_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_IRYHYOKA
create table MDBHSM01.TM_IRYHYOKA (
  IRYHYOKA_CD CHAR(2) not null
  , IRYHYOKA_NM VARCHAR2(200)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (IRYHYOKA_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_JOSU
create table MDBHSM01.TM_JOSU (
  JOSU_DAI_CD VARCHAR2(3) not null
  , JOSU_SHO_CD VARCHAR2(3) not null
  , JOSU_DAI_NM VARCHAR2(120)
  , JOSU_SHO_NM VARCHAR2(120)
  , HANYO_KOMOKU_TYPE_KBN CHAR(1)
  , HANYO_KOMOKU VARCHAR2(400)
  , BIKO VARCHAR2(400)
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (JOSU_DAI_CD,JOSU_SHO_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_JUSHO
create table MDBHSM01.TM_JUSHO (
  KEN_CD CHAR(2) not null
  , SHIKU_CD CHAR(3) not null
  , OAZA_CD CHAR(3) not null
  , AZA_CD CHAR(3) not null
  , SHIN_KEN_CD CHAR(2)
  , SHIN_SHIKU_CD CHAR(3)
  , SHIN_OAZA_CD CHAR(3)
  , SHIN_AZA_CD CHAR(3)
  , SHIN_ZIP CHAR(7)
  , BARCODE_JOHO CHAR(13)
  , BARCODE_MOJI_SU CHAR(2)
  , SHIN_ZIP_KANREN_JOHO_1_EX CHAR(1)
  , SHIN_ZIP_KANREN_JOHO_2_EX CHAR(1)
  , OYAKO_KANKEI_SHIKIBETSU_FLG_EX CHAR(1)
  , OYAKO_KANKEI_TAIO_CD CHAR(11)
  , KEN_NM_FUYO_CD_EX CHAR(1)
  , KEN_NM VARCHAR2(40)
  , SHIKU_NM VARCHAR2(60)
  , OAZA_NM VARCHAR2(80)
  , AZA_NM VARCHAR2(60)
  , KENSAKU_KEN_NM VARCHAR2(40)
  , KENSAKU_SHIKU_NM VARCHAR2(60)
  , KENSAKU_OAZA_NM VARCHAR2(80)
  , KENSAKU_AZA_NM VARCHAR2(60)
  , KEN_NM_KANA VARCHAR2(30)
  , SHIKU_NM_KANA VARCHAR2(90)
  , OAZA_NM_KANA VARCHAR2(120)
  , AZA_NM_KANA VARCHAR2(90)
  , JISHU_KBN_KEN_NM CHAR(1)
  , JISHU_KBN_SHIKU_NM_1 CHAR(1)
  , JISHU_KBN_SHIKU_NM_2 CHAR(1)
  , JISHU_KBN_OAZA_NM_1 CHAR(1)
  , JISHU_KBN_OAZA_NM_2 CHAR(1)
  , JISHU_KBN_AZA_NM_1 CHAR(1)
  , JISHU_KBN_AZA_NM_2 CHAR(1)
  , OAZA_AZA_FLG_EX CHAR(1)
  , AZA_KOAZA_FLG_EX CHAR(1)
  , TORINA_SHIKIBETSU_EX CHAR(1)
  , TSUSHO_FLG_EX CHAR(1)
  , SHIKO_YM CHAR(6)
  , HAISHI_YM CHAR(6)
  , SHIN_MACHIAZA_CD_YM CHAR(6)
  , KOSHO_HENKO_YM CHAR(6)
  , SHIN_ZIP_HENKO_YM CHAR(6)
  , BARCODE_HENKO_YM CHAR(6)
  , OYAKO_KANKEI_HENKO_YM CHAR(6)
  , TSUSHO_KBN_HENKO_YM CHAR(6)
  , CHIBAN_HENKO_YM CHAR(6)
  , ZIP5 CHAR(5)
  , CHIKTKTI_KBN CHAR(1)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (KEN_CD,SHIKU_CD,OAZA_CD,AZA_CD)
);
/

create index TM_JUSHO_IX01
  on MDBHSM01.TM_JUSHO(SHIN_ZIP,CHIKTKTI_KBN,KEN_NM,SHIKU_NM,OAZA_NM,AZA_NM)
/

create index TM_JUSHO_IX02
  on MDBHSM01.TM_JUSHO(SHIKU_NM,OAZA_CD,AZA_CD)
/

create index TM_JUSHO_IX03
  on MDBHSM01.TM_JUSHO(KENSAKU_KEN_NM,KENSAKU_SHIKU_NM,KENSAKU_OAZA_NM,KENSAKU_AZA_NM)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_JUSHOFUMEI
create table MDBHSM01.TM_JUSHOFUMEI (
  REC_ID CHAR(2) not null
  , JUSHOFUMEI_CD CHAR(1) not null
  , JUSHOFUMEI_NAIYO VARCHAR2(200)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (REC_ID,JUSHOFUMEI_CD)
);
/

create index TM_JUSHOFUMEI_IX01
  on MDBHSM01.TM_JUSHOFUMEI(UPD_EIGY_YMD)
/

create index TM_JUSHOFUMEI_IX02
  on MDBHSM01.TM_JUSHOFUMEI(REC_ID,JUSHOFUMEI_CD,UPD_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_JUSHO_13_0620
create table MDBHSM01.TM_JUSHO_13_0620 (
  KEN_CD CHAR(2) not null
  , SHIKU_CD CHAR(3) not null
  , OAZA_CD CHAR(3) not null
  , AZA_CD CHAR(3) not null
  , KEN_NM VARCHAR2(40)
  , SHIKU_NM VARCHAR2(60)
  , OAZA_NM VARCHAR2(80)
  , AZA_NM VARCHAR2(60)
  , KEN_NM_KANA VARCHAR2(30)
  , SHIKU_NM_KANA VARCHAR2(90)
  , OAZA_NM_KANA VARCHAR2(120)
  , AZA_NM_KANA VARCHAR2(90)
  , KOSHO_HENKO_YM CHAR(6)
  , UPD_EIGY_YMD CHAR(8) not null
  , UPD_DATE DATE not null
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_JUSHO_SGIKYOKUBAN_TAIO
create table MDBHSM01.TM_JUSHO_SGIKYOKUBAN_TAIO (
  KEN_CD CHAR(2) not null
  , SHIKU_CD CHAR(3) not null
  , SGIKYOKUBAN VARCHAR2(15) not null
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (KEN_CD,SHIKU_CD,SGIKYOKUBAN)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_KANZENIKOGATA_KBN
create table MDBHSM01.TM_KANZENIKOGATA_KBN (
  KANZENIKOGATA_KBN_CD CHAR(1) not null
  , KANZENIKOGATA_KBN_NM VARCHAR2(80)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (KANZENIKOGATA_KBN_CD)
);
/

create index TM_KANZENIKOGATA_KBN_IX01
  on MDBHSM01.TM_KANZENIKOGATA_KBN(UPD_EIGY_YMD)
/

create index TM_KANZENIKOGATA_KBN_IX02
  on MDBHSM01.TM_KANZENIKOGATA_KBN(KANZENIKOGATA_KBN_CD,UPD_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_KBNCHI
create table MDBHSM01.TM_KBNCHI (
  KBN_SHURUI_CD CHAR(3) not null
  , KBNCHI VARCHAR2(20) not null
  , KBN_NAIYO VARCHAR2(400)
  , KBN_COMMENTS VARCHAR2(2000)
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (KBN_SHURUI_CD,KBNCHI)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_KBN_SHURUI
create table MDBHSM01.TM_KBN_SHURUI (
  KBN_SHURUI_CD CHAR(3) not null
  , KBN_SHURUI_NM VARCHAR2(400)
  , NAIYO VARCHAR2(800)
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (KBN_SHURUI_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_KEIEITAI
create table MDBHSM01.TM_KEIEITAI (
  KEIEITAI_CD CHAR(3) not null
  , KEIEITAI_NM VARCHAR2(80)
  , KEIEITAI_RN VARCHAR2(20)
  , DCF_FLG CHAR(1)
  , DSF_FLG CHAR(1)
  , DNF_FLG CHAR(1)
  , ECF_FLG CHAR(1)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (KEIEITAI_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_KENGEN
create table MDBHSM01.TM_KENGEN (
  OPE_CD VARCHAR2(10) not null
  , KENGEN_SBT_CD CHAR(2) not null
  , SHORI_KENGEN_KBN CHAR(1)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (OPE_CD,KENGEN_SBT_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_KENGEN_SBT
create table MDBHSM01.TM_KENGEN_SBT (
  KENGEN_SBT_CD CHAR(2) not null
  , KENGEN_SBT_NM VARCHAR2(200)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , NAIBU_COMMENTS VARCHAR2(200)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (KENGEN_SBT_CD)
);
/

create index TM_KENGEN_SBT_IX01
  on MDBHSM01.TM_KENGEN_SBT(UPD_EIGY_YMD)
/

create index TM_KENGEN_SBT_IX02
  on MDBHSM01.TM_KENGEN_SBT(KENGEN_SBT_CD,UPD_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_KEN_NM
create table MDBHSM01.TM_KEN_NM (
  RIDAI_CD CHAR(2) not null
  , KEN_CD CHAR(2)
  , KEN_NM VARCHAR2(20)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (RIDAI_CD)
);
/

create index TM_KEN_NM_IX01
  on MDBHSM01.TM_KEN_NM(KEN_CD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_KINSOKU_MOJI_HENKAN
create table MDBHSM01.TM_KINSOKU_MOJI_HENKAN (
  HENKAN_MOTO VARCHAR2(4) not null
  , HENKAN_GO VARCHAR2(4) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (HENKAN_MOTO)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_KNG_SBT
create table MDBHSM01.TM_KNG_SBT (
  KNG_SBT_CD CHAR(4) not null
  , KNG_SBT_NM VARCHAR2(200)
  , KNG_SBT_RN VARCHAR2(40)
  , KNG_SBT_NM_LIST VARCHAR2(32)
  , IPPAN_FLG CHAR(1)
  , SEISHIN_FLG CHAR(1)
  , KEKKAKU_FLG CHAR(1)
  , RYOYO_IRY_FLG CHAR(1)
  , RYOYO_KIG_FLG CHAR(1)
  , ROJIN_IRY_FLG CHAR(1)
  , ROJIN_KIG_FLG CHAR(1)
  , SONOTA_FLG CHAR(1)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (KNG_SBT_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_KOROSHOSITE_SHOGO_KBN
create table MDBHSM01.TM_KOROSHOSITE_SHOGO_KBN (
  KOROSHOSITE_SHOGO_KBN_CD CHAR(1) not null
  , KOROSHOSITE_SHOGO_KBN_NM VARCHAR2(80)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (KOROSHOSITE_SHOGO_KBN_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_MAILNHN_MAIL
create table MDBHSM01.TM_MAILNHN_MAIL (
  EMAIL_RENBAN NUMBER(6, 0) not null
  , EMAIL VARCHAR2(500) not null
  , USER_CD CHAR(3) not null
  , SOFUSAKI_KAISHA_NM VARCHAR2(200)
  , SOFUSAKI_SZK_NM VARCHAR2(320)
  , SOFUSAKI_YAKUSHOKU_NM VARCHAR2(100)
  , SOFUSAKI_NM VARCHAR2(80) not null
  , DRM_KAIIN_ID CHAR(7)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (EMAIL_RENBAN)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_MAILNHN_MAIL_NAIYO
create table MDBHSM01.TM_MAILNHN_MAIL_NAIYO (
  EMAIL_RENBAN NUMBER(6, 0) not null
  , SOFU_SBT_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (EMAIL_RENBAN,SOFU_SBT_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_MAILNHN_MAIL_NAIYO_RRK
create table MDBHSM01.TM_MAILNHN_MAIL_NAIYO_RRK (
  SETTEI_RRK_RENBAN NUMBER(6, 0) not null
  , EMAIL_RENBAN NUMBER(6, 0) not null
  , SOFU_SBT_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SETTEI_RRK_RENBAN,EMAIL_RENBAN,SOFU_SBT_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_MAILNHN_MAIL_RRK
create table MDBHSM01.TM_MAILNHN_MAIL_RRK (
  SETTEI_RRK_RENBAN NUMBER(6, 0) not null
  , EMAIL_RENBAN NUMBER(6, 0) not null
  , EMAIL VARCHAR2(500) not null
  , USER_CD CHAR(3) not null
  , SOFUSAKI_KAISHA_NM VARCHAR2(200)
  , SOFUSAKI_SZK_NM VARCHAR2(320)
  , SOFUSAKI_YAKUSHOKU_NM VARCHAR2(100)
  , SOFUSAKI_NM VARCHAR2(80) not null
  , DRM_KAIIN_ID CHAR(7)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SETTEI_RRK_RENBAN,EMAIL_RENBAN)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_MAIL_KIYK_SBT
create table MDBHSM01.TM_MAIL_KIYK_SBT (
  USER_CD CHAR(3) not null
  , REC_ID CHAR(2) not null
  , KEN_CD CHAR(2) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (USER_CD,REC_ID,KEN_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_MAIL_KIYK_SBT_RRK
create table MDBHSM01.TM_MAIL_KIYK_SBT_RRK (
  SETTEI_RRK_RENBAN NUMBER(6, 0) not null
  , USER_CD CHAR(3) not null
  , REC_ID CHAR(2) not null
  , KEN_CD CHAR(2) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SETTEI_RRK_RENBAN,USER_CD,REC_ID,KEN_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_NOHIN_CD_SHIME_KBN
create table MDBHSM01.TM_NOHIN_CD_SHIME_KBN (
  NOHIN_CD CHAR(5) not null
  , SHIME_KBN CHAR(1)
  , RNSKNS_BYOIN_NOHIN_FLG CHAR(1)
  , KGF_NOHIN_FLG CHAR(1)
  , ASSHUKU_FLG CHAR(1)
  , ANGOKA_FLG CHAR(1)
  , DRM_KAIIN_ID CHAR(7)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (NOHIN_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_NOHIN_CD_SHIME_KBN_RRK
create table MDBHSM01.TM_NOHIN_CD_SHIME_KBN_RRK (
  SETTEI_RRK_RENBAN NUMBER(6, 0) not null
  , NOHIN_CD CHAR(5) not null
  , SHIME_KBN CHAR(1)
  , RNSKNS_BYOIN_NOHIN_FLG CHAR(1)
  , KGF_NOHIN_FLG CHAR(1)
  , ASSHUKU_FLG CHAR(1)
  , ANGOKA_FLG CHAR(1)
  , DRM_KAIIN_ID CHAR(7)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SETTEI_RRK_RENBAN,NOHIN_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_OPE
create table MDBHSM01.TM_OPE (
  OPE_CD VARCHAR2(10) not null
  , PASSWD VARCHAR2(10)
  , OPE_NM VARCHAR2(80)
  , SZK_NM VARCHAR2(200)
  , PASSWD_YUKO_KIGEN_YMD CHAR(8)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (OPE_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_RIYOTEISHI_KBN
create table MDBHSM01.TM_RIYOTEISHI_KBN (
  RIYOTEISHI_KBN_CD CHAR(2) not null
  , RIYOTEISHI_KBN_NAIYO VARCHAR2(200)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (RIYOTEISHI_KBN_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_RIYOTEISHI_RIYU
create table MDBHSM01.TM_RIYOTEISHI_RIYU (
  RIYOTEISHI_RIYU_CD CHAR(3) not null
  , RIYOTEISHI_RIYU_NAIYO VARCHAR2(200)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (RIYOTEISHI_RIYU_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_SAIGAIKYOTEN_KBN
create table MDBHSM01.TM_SAIGAIKYOTEN_KBN (
  SAIGAIKYOTEN_KBN_CD CHAR(1) not null
  , SAIGAIKYOTEN_KBN_NM VARCHAR2(80)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SAIGAIKYOTEN_KBN_CD)
);
/

create index TM_SAIGAIKYOTEN_KBN_IX01
  on MDBHSM01.TM_SAIGAIKYOTEN_KBN(UPD_EIGY_YMD)
/

create index TM_SAIGAIKYOTEN_KBN_IX02
  on MDBHSM01.TM_SAIGAIKYOTEN_KBN(SAIGAIKYOTEN_KBN_CD,UPD_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_SAISHINSA_KBN
create table MDBHSM01.TM_SAISHINSA_KBN (
  SAISHINSA_KBN_CD CHAR(1) not null
  , SAISHINSA_KBN_CD_HYOJI CHAR(1)
  , KANJI_HYOJI VARCHAR2(20)
  , SAISHINSA_KBN_NAIYO VARCHAR2(2000)
  , BIKO VARCHAR2(400)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SAISHINSA_KBN_CD)
);
/

create index TM_SAISHINSA_KBN_IX01
  on MDBHSM01.TM_SAISHINSA_KBN(UPD_EIGY_YMD)
/

create index TM_SAISHINSA_KBN_IX02
  on MDBHSM01.TM_SAISHINSA_KBN(SAISHINSA_KBN_CD,UPD_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_SEISAKUIRY_BNY
create table MDBHSM01.TM_SEISAKUIRY_BNY (
  SEISAKUIRY_BNY_CD CHAR(2) not null
  , SEISAKUIRY_BNY_NM VARCHAR2(200)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEISAKUIRY_BNY_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_SEISAKUIRY_KBN
create table MDBHSM01.TM_SEISAKUIRY_KBN (
  SEISAKUIRY_KBN_CD CHAR(1) not null
  , SEISAKUIRY_KBN_NM VARCHAR2(200)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEISAKUIRY_KBN_CD)
);
/

create index TM_SEISAKUIRY_KBN_IX01
  on MDBHSM01.TM_SEISAKUIRY_KBN(UPD_EIGY_YMD)
/

create index TM_SEISAKUIRY_KBN_IX02
  on MDBHSM01.TM_SEISAKUIRY_KBN(SEISAKUIRY_KBN_CD,UPD_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_SENMONI
create table MDBHSM01.TM_SENMONI (
  SENMONI_CD CHAR(4) not null
  , SENMONI_SHIKAKU_NM VARCHAR2(100)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SENMONI_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_SENSHIN
create table MDBHSM01.TM_SENSHIN (
  SENSHIN_CD CHAR(3) not null
  , SENSHIN_JOGAI_KBN CHAR(1)
  , SENSHIN_NM VARCHAR2(200)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SENSHIN_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_SHIKKANBETSUREHA
create table MDBHSM01.TM_SHIKKANBETSUREHA (
  SHIKKANBETSUREHA_CD CHAR(2) not null
  , SHIKKANBETSUREHA_NM VARCHAR2(200)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SHIKKANBETSUREHA_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_SHI_KBN
create table MDBHSM01.TM_SHI_KBN (
  SHI_KBN_CD CHAR(2) not null
  , SHI_KBN_NM VARCHAR2(100)
  , DCF_FLG CHAR(1)
  , DSF_FLG CHAR(1)
  , DNF_FLG CHAR(1)
  , ECF_FLG CHAR(1)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SHI_KBN_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_SHKI
create table MDBHSM01.TM_SHKI (
  SHKI_CD CHAR(5) not null
  , SHKI_NM VARCHAR2(200) not null
  , KENSAKU_SHKI_NM VARCHAR2(200)
  , SHKI_SBT_NM VARCHAR2(40)
  , TANTO_BUSHOMEI VARCHAR2(200)
  , NAISEN_NO VARCHAR2(15)
  , TEL VARCHAR2(15)
  , FAX VARCHAR2(15)
  , YAKKYOKU_FLG CHAR(1)
  , YAKUSHU_HANBAI_FLG CHAR(1)
  , IPPAN_HANBAI_FLG CHAR(1)
  , OROSHI_HANBAI_FLG CHAR(1)
  , TOKUREI_HANBAI_FLG CHAR(1)
  , HAICHI_HANBAI_FLG CHAR(1)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SHKI_CD)
);
/

create index TM_SHKI_IX01
  on MDBHSM01.TM_SHKI(SHKI_CD,KENSAKU_SHKI_NM)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_SHKI_KANKATSU
create table MDBHSM01.TM_SHKI_KANKATSU (
  SHKI_CD CHAR(5) not null
  , KEN_CD CHAR(2) not null
  , SHIKU_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SHKI_CD,KEN_CD,SHIKU_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_SHOKAIGAIRAI_KBN
create table MDBHSM01.TM_SHOKAIGAIRAI_KBN (
  SHOKAIGAIRAI_KBN_CD CHAR(1) not null
  , SHOKAIGAIRAI_KBN_NM VARCHAR2(80)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SHOKAIGAIRAI_KBN_CD)
);
/

create index TM_SHOKAIGAIRAI_KBN_IX01
  on MDBHSM01.TM_SHOKAIGAIRAI_KBN(UPD_EIGY_YMD)
/

create index TM_SHOKAIGAIRAI_KBN_IX02
  on MDBHSM01.TM_SHOKAIGAIRAI_KBN(SHOKAIGAIRAI_KBN_CD,UPD_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_SHOKUSHU_BNRI
create table MDBHSM01.TM_SHOKUSHU_BNRI (
  SHOKUSHU_BNRI_CD CHAR(1) not null
  , SHOKUSHU_BNRI_NM VARCHAR2(80)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SHOKUSHU_BNRI_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_SHUSSHINKO_GAKUBU
create table MDBHSM01.TM_SHUSSHINKO_GAKUBU (
  SHUSSHINKO_CD CHAR(3) not null
  , GAKUBU_SHIKIBETSU_KBN CHAR(1) not null
  , SORITSUNEN_GENGO_CD CHAR(1)
  , SORITSUNEN_WY CHAR(2)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SHUSSHINKO_CD,GAKUBU_SHIKIBETSU_KBN)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_SHUSSHINKO_NM
create table MDBHSM01.TM_SHUSSHINKO_NM (
  SHUSSHINKO_CD CHAR(3) not null
  , SHUSSHINKO_NM VARCHAR2(80)
  , SHUSSHINKO_RN VARCHAR2(12)
  , KYU_SHUSSHINKO_NM VARCHAR2(80)
  , SHUSSHINKO_NM_KANA VARCHAR2(60)
  , JOSHIDAI_FLG CHAR(1)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SHUSSHINKO_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_SNRYKMK
create table MDBHSM01.TM_SNRYKMK (
  SNRYKMK_CD CHAR(3) not null
  , SNRYKMK_NM VARCHAR2(80)
  , SNRYKMK_RN VARCHAR2(16)
  , SNRYKMK_NM_KANA VARCHAR2(60)
  , KIHON_SNRY_FLG CHAR(1)
  , DCF_FLG CHAR(1)
  , DNF_FLG CHAR(1)
  , PCF_FLG CHAR(1)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SNRYKMK_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_SNTNIRY
create table MDBHSM01.TM_SNTNIRY (
  SNTNIRY_CD CHAR(2) not null
  , SNTNIRY_NM VARCHAR2(200)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SNTNIRY_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_SZI_FILE_NM
create table MDBHSM01.TM_SZI_FILE_NM (
  FILE_SBT_CD CHAR(3) not null
  , ZENKEN_SABUN_KBN CHAR(1) not null
  , LAYOUT_SHIN_KYU_KBN CHAR(1) not null
  , BAITAI_VAN_KBN CHAR(1) not null
  , TOKUSHU_CD CHAR(6) not null
  , NOHIN_CD CHAR(5) not null
  , SZI_FILE_NM VARCHAR2(40)
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (FILE_SBT_CD,ZENKEN_SABUN_KBN,LAYOUT_SHIN_KYU_KBN,BAITAI_VAN_KBN,TOKUSHU_CD,NOHIN_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_SZKBUKA
create table MDBHSM01.TM_SZKBUKA (
  SZKBUKA_CD CHAR(4) not null
  , SZKBUKA_NM VARCHAR2(100)
  , KENSAKU_SZKBUKA_NM VARCHAR2(100)
  , SZKBUKA_NM_KANA VARCHAR2(90)
  , DCF_FLG CHAR(1)
  , DNF_FLG CHAR(1)
  , PCF_FLG CHAR(1)
  , BNRIHOJO_SHI_BNRI_CD CHAR(1)
  , BNRIHOJO_SNRY_BNY_BNRI_CD CHAR(3)
  , BNRIHOJO_SORTKEY CHAR(3)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SZKBUKA_CD)
);
/

create index TM_SZKBUKA_IX01
  on MDBHSM01.TM_SZKBUKA(KENSAKU_SZKBUKA_NM)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_SZKBUKA_YMKE
create table MDBHSM01.TM_SZKBUKA_YMKE (
  REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , SZKBUKA_CD_YMKE_SAKI CHAR(4) not null
  , SZKBUKA_CD_YMKE_MOTO CHAR(4) not null
  , COMMENTS VARCHAR2(2000)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (REC_ID,SHI_CD,SZKBUKA_CD_YMKE_SAKI,SZKBUKA_CD_YMKE_MOTO)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_SZKBUKA_YMKE_SHI_OYAKO
create table MDBHSM01.TM_SZKBUKA_YMKE_SHI_OYAKO (
  REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , OYA_REC_ID CHAR(2)
  , OYA_SHI_CD CHAR(7)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (REC_ID,SHI_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_TIRI_KHN_NHN_OP
create table MDBHSM01.TM_TIRI_KHN_NHN_OP (
  NOHIN_CD CHAR(5) not null
  , FILE_SBT_CD CHAR(3) not null
  , ZENKEN_SABUN_KBN CHAR(1) not null
  , LAYOUT_SHIN_KYU_KBN CHAR(1) not null
  , NOHIN_FILE_NM VARCHAR2(160)
  , DATA_KEISHIKI_KBN CHAR(1)
  , KAIGYO_CD_KBN CHAR(1)
  , TAIO_TBL VARCHAR2(25)
  , MOJI_CD_KBN VARCHAR2(12)
  , GAIJI_PADDING VARCHAR2(8)
  , GAIJI_LIST_KBN CHAR(1)
  , SHIFT_CD_FLG CHAR(1)
  , CHUSHUTSU_SBT CHAR(6)
  , CHUSHUTSU_JOHO VARCHAR2(500)
  , TIKY_S_YMD CHAR(8)
  , TIKY_E_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (NOHIN_CD,FILE_SBT_CD,ZENKEN_SABUN_KBN,LAYOUT_SHIN_KYU_KBN)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_TIRI_KHN_NHN_OP_RRK
create table MDBHSM01.TM_TIRI_KHN_NHN_OP_RRK (
  SETTEI_RRK_RENBAN NUMBER(6, 0) not null
  , NOHIN_CD CHAR(5) not null
  , FILE_SBT_CD CHAR(3) not null
  , ZENKEN_SABUN_KBN CHAR(1) not null
  , LAYOUT_SHIN_KYU_KBN CHAR(1) not null
  , NOHIN_FILE_NM VARCHAR2(160)
  , DATA_KEISHIKI_KBN CHAR(1)
  , KAIGYO_CD_KBN CHAR(1)
  , TAIO_TBL VARCHAR2(25)
  , MOJI_CD_KBN VARCHAR2(12)
  , GAIJI_PADDING VARCHAR2(8)
  , GAIJI_LIST_KBN CHAR(1)
  , SHIFT_CD_FLG CHAR(1)
  , CHUSHUTSU_SBT CHAR(6)
  , CHUSHUTSU_JOHO VARCHAR2(500)
  , TIKY_S_YMD CHAR(8)
  , TIKY_E_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SETTEI_RRK_RENBAN,NOHIN_CD,FILE_SBT_CD,ZENKEN_SABUN_KBN,LAYOUT_SHIN_KYU_KBN)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_TIRI_TKS_NHN_OP
create table MDBHSM01.TM_TIRI_TKS_NHN_OP (
  NOHIN_CD CHAR(5) not null
  , TOKUSHU_CD CHAR(6) not null
  , FILE_SBT_CD CHAR(3) not null
  , ZENKEN_SABUN_KBN CHAR(1) not null
  , LAYOUT_SHIN_KYU_KBN CHAR(1) not null
  , TIRI_TKS_BATCH_ID VARCHAR2(40)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (NOHIN_CD,TOKUSHU_CD,FILE_SBT_CD,ZENKEN_SABUN_KBN,LAYOUT_SHIN_KYU_KBN)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_TIRI_TKS_NHN_OP_RRK
create table MDBHSM01.TM_TIRI_TKS_NHN_OP_RRK (
  SETTEI_RRK_RENBAN NUMBER(6, 0) not null
  , NOHIN_CD CHAR(5) not null
  , TOKUSHU_CD CHAR(6) not null
  , FILE_SBT_CD CHAR(3) not null
  , ZENKEN_SABUN_KBN CHAR(1) not null
  , LAYOUT_SHIN_KYU_KBN CHAR(1) not null
  , TIRI_TKS_BATCH_ID VARCHAR2(40)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SETTEI_RRK_RENBAN,NOHIN_CD,TOKUSHU_CD,FILE_SBT_CD,ZENKEN_SABUN_KBN,LAYOUT_SHIN_KYU_KBN)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_ULT_DRM_ID
create table MDBHSM01.TM_ULT_DRM_ID (
  PK CHAR(1) not null
  , DRM_ID CHAR(7) not null
  , DRM_PW VARCHAR2(100) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (PK)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_ULT_DRM_ID_RRK
create table MDBHSM01.TM_ULT_DRM_ID_RRK (
  SETTEI_RRK_RENBAN NUMBER(6, 0) not null
  , PK CHAR(1) not null
  , DRM_ID CHAR(7) not null
  , DRM_PW VARCHAR2(100) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SETTEI_RRK_RENBAN,PK)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_USER
create table MDBHSM01.TM_USER (
  USER_CD CHAR(3) not null
  , USER_NM VARCHAR2(80)
  , USER_NM_KANA VARCHAR2(60)
  , DCF_SHI_FLG CHAR(1)
  , DCF_KJN_FLG CHAR(1)
  , PCF_YAKUZAISHI_FLG CHAR(1)
  , DSF_YAKKYOKU_FLG CHAR(1)
  , DNF_SHI_FLG CHAR(1)
  , DNF_KJN_FLG CHAR(1)
  , ECF_SHI_FLG CHAR(1)
  , SEF_SHI_FLG CHAR(1)
  , DCF_SHI_FAX_FLG CHAR(1)
  , DSF_YAKKYOKU_FAX_FLG CHAR(1)
  , DNF_SHI_FAX_FLG CHAR(1)
  , ECF_SHI_FAX_FLG CHAR(1)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (USER_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_VAN_FILE_NM
create table MDBHSM01.TM_VAN_FILE_NM (
  FILE_SBT_CD CHAR(3) not null
  , VAN_ZENKEN_SABUN_KBN CHAR(1) not null
  , VAN_LAYOUT_SHIN_KYU_KBN CHAR(1) not null
  , VAN_MOJI_CD_KBN CHAR(2) not null
  , VAN_FILE_PNM VARCHAR2(30)
  , VAN_FILE_LNM VARCHAR2(160)
  , SORT NUMBER(3, 0)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (FILE_SBT_CD,VAN_ZENKEN_SABUN_KBN,VAN_LAYOUT_SHIN_KYU_KBN,VAN_MOJI_CD_KBN)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TM_YAKUSHOKU
create table MDBHSM01.TM_YAKUSHOKU (
  YAKUSHOKU_CD CHAR(3) not null
  , YAKUSHOKU_NM VARCHAR2(80)
  , YAKUSHOKU_RN VARCHAR2(40)
  , YAKUSHOKU_NM_KANA VARCHAR2(60)
  , SHOKUI_FLG CHAR(1)
  , DCF_FLG CHAR(1)
  , PCF_FLG CHAR(1)
  , DNF_FLG CHAR(1)
  , TANDOKU_YAKUSHOKU_FLG CHAR(1)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (YAKUSHOKU_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_BATCH_KEKKA_RRK_SAIBAN
create table MDBHSM01.TT_BATCH_KEKKA_RRK_SAIBAN (
  PK CHAR(1) not null
  , KEKKA_RRK_RENBAN NUMBER(38, 0) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (PK)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_BATCH_LOCK
create table MDBHSM01.TT_BATCH_LOCK (
  PK CHAR(1) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (PK)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_CHK_RNSKNS_SHI
create table MDBHSM01.TT_CHK_RNSKNS_SHI (
  REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (REC_ID,SHI_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_DEL_TAISHO
create table MDBHSM01.TT_DEL_TAISHO (
  TBL_NM VARCHAR2(30) not null
  , TBL_NM_LNM VARCHAR2(200) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (TBL_NM)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_EIGY_YMD_KANRI
create table MDBHSM01.TT_EIGY_YMD_KANRI (
  PK CHAR(1) not null
  , GENZAI_EIGY_YMD CHAR(8)
  , MAE_EIGY_YMD CHAR(8)
  , EIGY_NENDO CHAR(4)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (PK)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_FBHRYLT_HNKYKZM_KJNKNR
create table MDBHSM01.TT_FBHRYLT_HNKYKZM_KJNKNR (
  FB_USER_CD CHAR(3) not null
  , FB_SHIKIBETSU_CD CHAR(1) not null
  , FB_LOT_NO CHAR(12) not null
  , EDABAN CHAR(4) not null
  , FB_HENKYAKU_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (FB_USER_CD,FB_SHIKIBETSU_CD,FB_LOT_NO,EDABAN)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_FBHRYLT_HNKYKZM_SHIKNR
create table MDBHSM01.TT_FBHRYLT_HNKYKZM_SHIKNR (
  FB_USER_CD CHAR(3) not null
  , FB_SHIKIBETSU_CD CHAR(1) not null
  , FB_LOT_NO CHAR(12) not null
  , EDABAN CHAR(4) not null
  , FB_HENKYAKU_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (FB_USER_CD,FB_SHIKIBETSU_CD,FB_LOT_NO,EDABAN)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_FBHRYLT_KJNKNR
create table MDBHSM01.TT_FBHRYLT_KJNKNR (
  FB_USER_CD CHAR(3) not null
  , FB_SHIKIBETSU_CD CHAR(1) not null
  , COPY_MOTO_FB_LOT_NO CHAR(12) not null
  , COPY_MOTO_EDABAN CHAR(4) not null
  , COPY_SAKI_EDABAN CHAR(4) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (FB_USER_CD,FB_SHIKIBETSU_CD,COPY_MOTO_FB_LOT_NO,COPY_MOTO_EDABAN)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_FBHRYLT_SHIKNR
create table MDBHSM01.TT_FBHRYLT_SHIKNR (
  FB_USER_CD CHAR(3) not null
  , FB_SHIKIBETSU_CD CHAR(1) not null
  , COPY_MOTO_FB_LOT_NO CHAR(12) not null
  , COPY_MOTO_EDABAN CHAR(4) not null
  , COPY_SAKI_EDABAN CHAR(4) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (FB_USER_CD,FB_SHIKIBETSU_CD,COPY_MOTO_FB_LOT_NO,COPY_MOTO_EDABAN)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_FB_BATCH_SRKNR
create table MDBHSM01.TT_FB_BATCH_SRKNR (
  EIGY_YMD CHAR(8) not null
  , FB_USER_CD CHAR(3) not null
  , FB_SHIKIBETSU_CD CHAR(1) not null
  , JIDOKA_KBN CHAR(1) not null
  , VAN_JUSHIN_STATUS CHAR(1)
  , FB_LOAD_STATUS CHAR(1)
  , FB_KOUKAI_STATUS CHAR(1)
  , FB_HENKYAKU_STATUS CHAR(1)
  , VAN_SOSHIN_STATUS CHAR(1)
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (EIGY_YMD,FB_USER_CD,FB_SHIKIBETSU_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_FB_KKIGO_KJNKNR
create table MDBHSM01.TT_FB_KKIGO_KJNKNR (
  FB_USER_CD CHAR(3) not null
  , FB_SHIKIBETSU_CD CHAR(1) not null
  , FB_LOT_NO CHAR(12) not null
  , EDABAN CHAR(4) not null
  , SAISHINSEI_UKETSUKE_CD CHAR(20)
  , SAISHINSEI_HAIFU_CD CHAR(20)
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , KANRI_NO VARCHAR2(36)
  , CHOSA_YMD CHAR(8)
  , YOBI VARCHAR2(800)
  , IRAI_KBN CHAR(1)
  , DATA_KBN CHAR(1)
  , UPD_KBN CHAR(1)
  , JOKYO_KBN CHAR(1)
  , FB_SHORI_KBN CHAR(1)
  , OPE_CD VARCHAR2(10)
  , TAIO_EIGY_YMD CHAR(8)
  , KENSHO_OPE_CD VARCHAR2(10)
  , KENSHO_KANRYO_EIGY_YMD CHAR(8)
  , UKETSUKE_REC_ID CHAR(2)
  , REC_ID CHAR(2)
  , KJN_CD CHAR(6)
  , KJN_NM_FB VARCHAR2(80)
  , KENSAKU_KJN_NM_FB VARCHAR2(80)
  , KJN_NM_KANA_FB VARCHAR2(120)
  , FB_BIKO VARCHAR2(800)
  , HORYU_MOTO_JOHO VARCHAR2(2023)
  , HORYU_JISSHI_OPE_CD VARCHAR2(10)
  , HORYU_JISSHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (FB_USER_CD,FB_SHIKIBETSU_CD,FB_LOT_NO,EDABAN)
);
/

create index TT_FB_KKIGO_KJNKNR_IX01
  on MDBHSM01.TT_FB_KKIGO_KJNKNR(KENSAKU_KJN_NM_FB)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_FB_KKIGO_KJN_LOT
create table MDBHSM01.TT_FB_KKIGO_KJN_LOT (
  FB_USER_CD CHAR(3) not null
  , FB_SHIKIBETSU_CD CHAR(1) not null
  , FB_LOT_NO CHAR(12) not null
  , JOHO_KBN CHAR(1)
  , CYCLE_KBN CHAR(1)
  , MENTE_SHIME_YMD CHAR(8)
  , FB_LOAD_EIGY_YMD CHAR(8)
  , FB_KANRYO_EIGY_YMD CHAR(8)
  , FB_HENKYAKU_EIGY_YMD CHAR(8)
  , SO_KENSU NUMBER(6, 0)
  , SHORIZUMI_KENSU NUMBER(6, 0)
  , SHINKI_KENSU NUMBER(6, 0)
  , SHINKI_YOUKKNN_KENSU NUMBER(6, 0)
  , DEL_KENSU NUMBER(6, 0)
  , UPD_KENSU NUMBER(6, 0)
  , HENKO_YOUKKNN_KENSU NUMBER(6, 0)
  , HENKYAKU_KENSU NUMBER(6, 0)
  , JOGAI_KENSU NUMBER(6, 0)
  , HORYU_KENSU NUMBER(6, 0)
  , HENKYAKU_YOUKKNN_KENSU NUMBER(6, 0)
  , YOKUJITSU_KENSU NUMBER(6, 0)
  , FB_KOUKAI_EIGY_YMD CHAR(8)
  , KOUKAI_FUKA_FLG CHAR(1)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (FB_USER_CD,FB_SHIKIBETSU_CD,FB_LOT_NO)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_FB_KKIGO_KJN_MEISAI
create table MDBHSM01.TT_FB_KKIGO_KJN_MEISAI (
  FB_USER_CD CHAR(3) not null
  , FB_SHIKIBETSU_CD CHAR(1) not null
  , FB_LOT_NO CHAR(12) not null
  , EDABAN CHAR(4) not null
  , FB_KOMOKU_NO CHAR(4) not null
  , HENKO_MAE VARCHAR2(1000)
  , HENKO_GO VARCHAR2(1000)
  , TAIO_KBN CHAR(1)
  , COMMENTS VARCHAR2(2000)
  , JIZEN_CHKZUMI_FLG CHAR(1)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (FB_USER_CD,FB_SHIKIBETSU_CD,FB_LOT_NO,EDABAN,FB_KOMOKU_NO)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_FB_KKIGO_SHIKNR
create table MDBHSM01.TT_FB_KKIGO_SHIKNR (
  FB_USER_CD CHAR(3) not null
  , FB_SHIKIBETSU_CD CHAR(1) not null
  , FB_LOT_NO CHAR(12) not null
  , EDABAN CHAR(4) not null
  , SAISHINSEI_UKETSUKE_CD CHAR(20)
  , SAISHINSEI_HAIFU_CD CHAR(20)
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , KANRI_NO VARCHAR2(36)
  , CHOSA_YMD CHAR(8)
  , YOBI VARCHAR2(800)
  , IRAI_KBN CHAR(1)
  , DATA_KBN CHAR(1)
  , UPD_KBN CHAR(1)
  , JOKYO_KBN CHAR(1)
  , FB_SHORI_KBN CHAR(1)
  , OPE_CD VARCHAR2(10)
  , TAIO_EIGY_YMD CHAR(8)
  , KENSHO_OPE_CD VARCHAR2(10)
  , KENSHO_KANRYO_EIGY_YMD CHAR(8)
  , UKETSUKE_REC_ID CHAR(2)
  , REC_ID CHAR(2)
  , SHI_CD CHAR(7)
  , SHI_NM_FB VARCHAR2(200)
  , KENSAKU_SHI_NM_FB VARCHAR2(200)
  , SHI_NM_KANA_FB VARCHAR2(300)
  , FB_BIKO VARCHAR2(800)
  , HORYU_MOTO_JOHO VARCHAR2(2023)
  , HORYU_JISSHI_OPE_CD VARCHAR2(10)
  , HORYU_JISSHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (FB_USER_CD,FB_SHIKIBETSU_CD,FB_LOT_NO,EDABAN)
);
/

create index TT_FB_KKIGO_SHIKNR_IX01
  on MDBHSM01.TT_FB_KKIGO_SHIKNR(KENSAKU_SHI_NM_FB)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_FB_KKIGO_SHI_LOT
create table MDBHSM01.TT_FB_KKIGO_SHI_LOT (
  FB_USER_CD CHAR(3) not null
  , FB_SHIKIBETSU_CD CHAR(1) not null
  , FB_LOT_NO CHAR(12) not null
  , JOHO_KBN CHAR(1)
  , CYCLE_KBN CHAR(1)
  , MENTE_SHIME_YMD CHAR(8)
  , FB_LOAD_EIGY_YMD CHAR(8)
  , FB_KANRYO_EIGY_YMD CHAR(8)
  , FB_HENKYAKU_EIGY_YMD CHAR(8)
  , SO_KENSU NUMBER(6, 0)
  , SHORIZUMI_KENSU NUMBER(6, 0)
  , SHINKI_KENSU NUMBER(6, 0)
  , SHINKI_YOUKKNN_KENSU NUMBER(6, 0)
  , DEL_KENSU NUMBER(6, 0)
  , UPD_KENSU NUMBER(6, 0)
  , HENKO_YOUKKNN_KENSU NUMBER(6, 0)
  , HENKYAKU_KENSU NUMBER(6, 0)
  , JOGAI_KENSU NUMBER(6, 0)
  , HORYU_KENSU NUMBER(6, 0)
  , HENKYAKU_YOUKKNN_KENSU NUMBER(6, 0)
  , YOKUJITSU_KENSU NUMBER(6, 0)
  , FB_KOUKAI_EIGY_YMD CHAR(8)
  , KOUKAI_FUKA_FLG CHAR(1)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (FB_USER_CD,FB_SHIKIBETSU_CD,FB_LOT_NO)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_FB_KKIGO_SHI_MEISAI
create table MDBHSM01.TT_FB_KKIGO_SHI_MEISAI (
  FB_USER_CD CHAR(3) not null
  , FB_SHIKIBETSU_CD CHAR(1) not null
  , FB_LOT_NO CHAR(12) not null
  , EDABAN CHAR(4) not null
  , FB_KOMOKU_NO CHAR(4) not null
  , HENKO_MAE CLOB
  , HENKO_GO CLOB
  , TAIO_KBN CHAR(1)
  , COMMENTS VARCHAR2(2000)
  , JIZEN_CHKZUMI_FLG CHAR(1)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (FB_USER_CD,FB_SHIKIBETSU_CD,FB_LOT_NO,EDABAN,FB_KOMOKU_NO)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_FB_KKIMAE_KJNKNR
create table MDBHSM01.TT_FB_KKIMAE_KJNKNR (
  FB_USER_CD CHAR(3) not null
  , FB_SHIKIBETSU_CD CHAR(1) not null
  , FB_LOT_NO CHAR(12) not null
  , EDABAN CHAR(4) not null
  , SAISHINSEI_UKETSUKE_CD CHAR(20)
  , SAISHINSEI_HAIFU_CD CHAR(20)
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , KANRI_NO VARCHAR2(36)
  , CHOSA_YMD CHAR(8)
  , YOBI VARCHAR2(800)
  , IRAI_KBN CHAR(1)
  , DATA_KBN CHAR(1)
  , UPD_KBN CHAR(1)
  , JOKYO_KBN CHAR(1)
  , FB_SHORI_KBN CHAR(1)
  , OPE_CD VARCHAR2(10)
  , TAIO_EIGY_YMD CHAR(8)
  , KENSHO_OPE_CD VARCHAR2(10)
  , KENSHO_KANRYO_EIGY_YMD CHAR(8)
  , UKETSUKE_REC_ID CHAR(2)
  , REC_ID CHAR(2)
  , KJN_CD CHAR(6)
  , KJN_NM_FB VARCHAR2(80)
  , KENSAKU_KJN_NM_FB VARCHAR2(80)
  , KJN_NM_KANA_FB VARCHAR2(120)
  , FB_BIKO VARCHAR2(800)
  , HORYU_MOTO_JOHO VARCHAR2(2023)
  , HORYU_JISSHI_OPE_CD VARCHAR2(10)
  , HORYU_JISSHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (FB_USER_CD,FB_SHIKIBETSU_CD,FB_LOT_NO,EDABAN)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_FB_KKIMAE_KJN_LOT
create table MDBHSM01.TT_FB_KKIMAE_KJN_LOT (
  FB_USER_CD CHAR(3) not null
  , FB_SHIKIBETSU_CD CHAR(1) not null
  , FB_LOT_NO CHAR(12) not null
  , JOHO_KBN CHAR(1)
  , CYCLE_KBN CHAR(1)
  , MENTE_SHIME_YMD CHAR(8)
  , FB_LOAD_EIGY_YMD CHAR(8)
  , FB_KANRYO_EIGY_YMD CHAR(8)
  , FB_HENKYAKU_EIGY_YMD CHAR(8)
  , SO_KENSU NUMBER(6, 0)
  , SHORIZUMI_KENSU NUMBER(6, 0)
  , SHINKI_KENSU NUMBER(6, 0)
  , SHINKI_YOUKKNN_KENSU NUMBER(6, 0)
  , DEL_KENSU NUMBER(6, 0)
  , UPD_KENSU NUMBER(6, 0)
  , HENKO_YOUKKNN_KENSU NUMBER(6, 0)
  , HENKYAKU_KENSU NUMBER(6, 0)
  , JOGAI_KENSU NUMBER(6, 0)
  , HORYU_KENSU NUMBER(6, 0)
  , HENKYAKU_YOUKKNN_KENSU NUMBER(6, 0)
  , YOKUJITSU_KENSU NUMBER(6, 0)
  , FB_KOUKAI_EIGY_YMD CHAR(8)
  , KOUKAI_FUKA_FLG CHAR(1)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (FB_USER_CD,FB_SHIKIBETSU_CD,FB_LOT_NO)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_FB_KKIMAE_KJN_MEISAI
create table MDBHSM01.TT_FB_KKIMAE_KJN_MEISAI (
  FB_USER_CD CHAR(3) not null
  , FB_SHIKIBETSU_CD CHAR(1) not null
  , FB_LOT_NO CHAR(12) not null
  , EDABAN CHAR(4) not null
  , FB_KOMOKU_NO CHAR(4) not null
  , HENKO_MAE VARCHAR2(1000)
  , HENKO_GO VARCHAR2(1000)
  , TAIO_KBN CHAR(1)
  , COMMENTS VARCHAR2(2000)
  , JIZEN_CHKZUMI_FLG CHAR(1)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (FB_USER_CD,FB_SHIKIBETSU_CD,FB_LOT_NO,EDABAN,FB_KOMOKU_NO)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_FB_KKIMAE_SHIKNR
create table MDBHSM01.TT_FB_KKIMAE_SHIKNR (
  FB_USER_CD CHAR(3) not null
  , FB_SHIKIBETSU_CD CHAR(1) not null
  , FB_LOT_NO CHAR(12) not null
  , EDABAN CHAR(4) not null
  , SAISHINSEI_UKETSUKE_CD CHAR(20)
  , SAISHINSEI_HAIFU_CD CHAR(20)
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , KANRI_NO VARCHAR2(36)
  , CHOSA_YMD CHAR(8)
  , YOBI VARCHAR2(800)
  , IRAI_KBN CHAR(1)
  , DATA_KBN CHAR(1)
  , UPD_KBN CHAR(1)
  , JOKYO_KBN CHAR(1)
  , FB_SHORI_KBN CHAR(1)
  , OPE_CD VARCHAR2(10)
  , TAIO_EIGY_YMD CHAR(8)
  , KENSHO_OPE_CD VARCHAR2(10)
  , KENSHO_KANRYO_EIGY_YMD CHAR(8)
  , UKETSUKE_REC_ID CHAR(2)
  , REC_ID CHAR(2)
  , SHI_CD CHAR(7)
  , SHI_NM_FB VARCHAR2(200)
  , KENSAKU_SHI_NM_FB VARCHAR2(200)
  , SHI_NM_KANA_FB VARCHAR2(300)
  , FB_BIKO VARCHAR2(800)
  , HORYU_MOTO_JOHO VARCHAR2(2023)
  , HORYU_JISSHI_OPE_CD VARCHAR2(10)
  , HORYU_JISSHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (FB_USER_CD,FB_SHIKIBETSU_CD,FB_LOT_NO,EDABAN)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_FB_KKIMAE_SHI_LOT
create table MDBHSM01.TT_FB_KKIMAE_SHI_LOT (
  FB_USER_CD CHAR(3) not null
  , FB_SHIKIBETSU_CD CHAR(1) not null
  , FB_LOT_NO CHAR(12) not null
  , JOHO_KBN CHAR(1)
  , CYCLE_KBN CHAR(1)
  , MENTE_SHIME_YMD CHAR(8)
  , FB_LOAD_EIGY_YMD CHAR(8)
  , FB_KANRYO_EIGY_YMD CHAR(8)
  , FB_HENKYAKU_EIGY_YMD CHAR(8)
  , SO_KENSU NUMBER(6, 0)
  , SHORIZUMI_KENSU NUMBER(6, 0)
  , SHINKI_KENSU NUMBER(6, 0)
  , SHINKI_YOUKKNN_KENSU NUMBER(6, 0)
  , DEL_KENSU NUMBER(6, 0)
  , UPD_KENSU NUMBER(6, 0)
  , HENKO_YOUKKNN_KENSU NUMBER(6, 0)
  , HENKYAKU_KENSU NUMBER(6, 0)
  , JOGAI_KENSU NUMBER(6, 0)
  , HORYU_KENSU NUMBER(6, 0)
  , HENKYAKU_YOUKKNN_KENSU NUMBER(6, 0)
  , YOKUJITSU_KENSU NUMBER(6, 0)
  , FB_KOUKAI_EIGY_YMD CHAR(8)
  , KOUKAI_FUKA_FLG CHAR(1)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (FB_USER_CD,FB_SHIKIBETSU_CD,FB_LOT_NO)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_FB_KKIMAE_SHI_MEISAI
create table MDBHSM01.TT_FB_KKIMAE_SHI_MEISAI (
  FB_USER_CD CHAR(3) not null
  , FB_SHIKIBETSU_CD CHAR(1) not null
  , FB_LOT_NO CHAR(12) not null
  , EDABAN CHAR(4) not null
  , FB_KOMOKU_NO CHAR(4) not null
  , HENKO_MAE CLOB
  , HENKO_GO CLOB
  , TAIO_KBN CHAR(1)
  , COMMENTS VARCHAR2(2000)
  , JIZEN_CHKZUMI_FLG CHAR(1)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (FB_USER_CD,FB_SHIKIBETSU_CD,FB_LOT_NO,EDABAN,FB_KOMOKU_NO)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_FB_LOCK
create table MDBHSM01.TT_FB_LOCK (
  FB_SBT CHAR(1) not null
  , LOCK_STATUS CHAR(1) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (FB_SBT)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_FUNCTION_LOCK
create table MDBHSM01.TT_FUNCTION_LOCK (
  TBL_NM VARCHAR2(30) not null
  , LOCK_OPE_CD VARCHAR2(10)
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (TBL_NM)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_GETSUJI_LIST_JOGAI_KJN
create table MDBHSM01.TT_GETSUJI_LIST_JOGAI_KJN (
  REC_ID CHAR(2) not null
  , KJN_CD CHAR(6) not null
  , CHK_CD CHAR(2) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (REC_ID,KJN_CD,CHK_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_GETSUJI_LIST_JOGAI_SHI
create table MDBHSM01.TT_GETSUJI_LIST_JOGAI_SHI (
  REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , CHK_CD CHAR(2) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (REC_ID,SHI_CD,CHK_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_HIF_MASTER_KANRI
create table MDBHSM01.TT_HIF_MASTER_KANRI (
  MASTER_SBT_CD CHAR(3) not null
  , MASTER_ID CHAR(1)
  , MASTER_NM VARCHAR2(80)
  , MASTER_UPD_DATE DATE
  , HONBAN_MASTER_MAKE_DATE DATE
  , REC_KENSU NUMBER(6, 0)
  , MASTER_UPD_OPE_CD VARCHAR2(10)
  , HONBAN_MASTER_MAKE_OPE_CD VARCHAR2(10)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (MASTER_SBT_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_INPUT_JOKYO_KJN
create table MDBHSM01.TT_INPUT_JOKYO_KJN (
  SEQ NUMBER(38, 0) not null
  , SHORI_EIGY_YMD CHAR(8)
  , REC_ID CHAR(2)
  , USER_CD CHAR(3)
  , MOD_KBN CHAR(1)
  , KOMOKU_CD CHAR(4)
  , KJN_CD CHAR(6)
  , OPE_CD VARCHAR2(10)
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_INPUT_JOKYO_SHI
create table MDBHSM01.TT_INPUT_JOKYO_SHI (
  SEQ NUMBER(38, 0) not null
  , SHORI_EIGY_YMD CHAR(8)
  , REC_ID CHAR(2)
  , USER_CD CHAR(3)
  , MOD_KBN CHAR(1)
  , KOMOKU_CD CHAR(4)
  , SHI_CD CHAR(7)
  , OPE_CD VARCHAR2(10)
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_JOKYOHYO_GETSUJI_SHKI
create table MDBHSM01.TT_JOKYOHYO_GETSUJI_SHKI (
  SEQ NUMBER(38, 0) not null
  , SHORI_YM CHAR(6)
  , REC_ID CHAR(2)
  , USER_CD CHAR(3)
  , MOD_KBN CHAR(1)
  , KOMOKU_CD CHAR(4)
  , INPUT_KENSU NUMBER(8, 0)
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_JOKYOHYO_GETSUJI_SHKI_1127
create table MDBHSM01.TT_JOKYOHYO_GETSUJI_SHKI_1127 (
  SEQ NUMBER(38, 0) not null
  , SHORI_YM CHAR(6)
  , REC_ID CHAR(2)
  , USER_CD CHAR(3)
  , MOD_KBN CHAR(1)
  , KOMOKU_CD CHAR(4)
  , INPUT_KENSU NUMBER(8, 0)
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_JUSHO_BANCHI
create table MDBHSM01.TT_JUSHO_BANCHI (
  KEN_CD CHAR(2) not null
  , SHIKU_CD CHAR(3) not null
  , OAZA_CD CHAR(3) not null
  , AZA_CD CHAR(3) not null
  , ZIP CHAR(7)
  , BANCHI VARCHAR2(1200)
  , MOJI_SU NUMBER(3, 0)
  , OYAKO_KANKEI_SHIKIBETSU_FLG_EX CHAR(1)
  , OYAKO_KANKEI_TAIO_CD CHAR(11)
  , MAKE_YM CHAR(6)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (KEN_CD,SHIKU_CD,OAZA_CD,AZA_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_KJN_SAIBAN
create table MDBHSM01.TT_KJN_SAIBAN (
  REC_ID CHAR(2) not null
  , MAX_CD CHAR(6)
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (REC_ID)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_KNG_SEQ_JOHO
create table MDBHSM01.TT_KNG_SEQ_JOHO (
  KEN_CD CHAR(2) not null
  , REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , KNG_SEQ_NO NUMBER(3, 0)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (KEN_CD,REC_ID,SHI_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_KO_PROCESS_KANRI
create table MDBHSM01.TT_KO_PROCESS_KANRI (
  KO_PROCESS_NAME CHAR(40) not null
  , KO_PROCESS_ID NUMBER(8, 0) not null
  , OYA_PROCESS_NAME CHAR(40) not null
  , OYA_PROCESS_ID NUMBER(8, 0) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (KO_PROCESS_NAME,KO_PROCESS_ID)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_LOGIN_KANRI
create table MDBHSM01.TT_LOGIN_KANRI (
  LOGIN_OPE_CD VARCHAR2(10) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (LOGIN_OPE_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_MACHIAZA_SRKK
create table MDBHSM01.TT_MACHIAZA_SRKK (
  SEQ NUMBER(38, 0) not null
  , EIGY_YMD CHAR(8)
  , SHIME_YM CHAR(6)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_MDNET_SHI_OYAKO
create table MDBHSM01.TT_MDNET_SHI_OYAKO (
  REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , OYA_REC_ID CHAR(2) not null
  , OYA_SHI_CD CHAR(7) not null
  , OYAKO_KAIJO_FLG CHAR(1)
  , KAIJO_EIGY_YMD CHAR(8)
  , KAIJO_OPE_CD VARCHAR2(10)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (REC_ID,SHI_CD,OYA_REC_ID,OYA_SHI_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_NSK_KGF_KNG
create table MDBHSM01.TT_NSK_KGF_KNG (
  KEN_CD CHAR(2) not null
  , REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , KGF_LOT_NO CHAR(2) not null
  , DEL_FLG CHAR(1)
  , DEL_EIGY_YMD CHAR(8)
  , COMMENTS VARCHAR2(2000)
  , IPPAN_1_KNG_SBT_CD CHAR(4)
  , IPPAN_1_BED_SU CHAR(4)
  , IPPAN_1_KIFKK_IPPAN_RYOYO_KBN CHAR(1)
  , IPPAN_1_SHONIN_YMD CHAR(8)
  , IPPAN_1_MOD_EIGY_YMD CHAR(8)
  , IPPAN_2_KNG_SBT_CD CHAR(4)
  , IPPAN_2_BED_SU CHAR(4)
  , IPPAN_2_KIFKK_IPPAN_RYOYO_KBN CHAR(1)
  , IPPAN_2_SHONIN_YMD CHAR(8)
  , IPPAN_2_MOD_EIGY_YMD CHAR(8)
  , IPPAN_3_KNG_SBT_CD CHAR(4)
  , IPPAN_3_BED_SU CHAR(4)
  , IPPAN_3_KIFKK_IPPAN_RYOYO_KBN CHAR(1)
  , IPPAN_3_SHONIN_YMD CHAR(8)
  , IPPAN_3_MOD_EIGY_YMD CHAR(8)
  , IPPAN_4_KNG_SBT_CD CHAR(4)
  , IPPAN_4_BED_SU CHAR(4)
  , IPPAN_4_KIFKK_IPPAN_RYOYO_KBN CHAR(1)
  , IPPAN_4_SHONIN_YMD CHAR(8)
  , IPPAN_4_MOD_EIGY_YMD CHAR(8)
  , IPPAN_5_KNG_SBT_CD CHAR(4)
  , IPPAN_5_BED_SU CHAR(4)
  , IPPAN_5_KIFKK_IPPAN_RYOYO_KBN CHAR(1)
  , IPPAN_5_SHONIN_YMD CHAR(8)
  , IPPAN_5_MOD_EIGY_YMD CHAR(8)
  , IPPAN_6_KNG_SBT_CD CHAR(4)
  , IPPAN_6_BED_SU CHAR(4)
  , IPPAN_6_KIFKK_IPPAN_RYOYO_KBN CHAR(1)
  , IPPAN_6_SHONIN_YMD CHAR(8)
  , IPPAN_6_MOD_EIGY_YMD CHAR(8)
  , IPPANKEI_KNG_SBT_SU CHAR(1)
  , IPPANKEI_BED_SU CHAR(4)
  , SEISHIN_1_KNG_SBT_CD CHAR(4)
  , SEISHIN_1_BED_SU CHAR(4)
  , SEISHIN_1_SHONIN_YMD CHAR(8)
  , SEISHIN_1_MOD_EIGY_YMD CHAR(8)
  , SEISHIN_2_KNG_SBT_CD CHAR(4)
  , SEISHIN_2_BED_SU CHAR(4)
  , SEISHIN_2_SHONIN_YMD CHAR(8)
  , SEISHIN_2_MOD_EIGY_YMD CHAR(8)
  , SEISHIN_3_KNG_SBT_CD CHAR(4)
  , SEISHIN_3_BED_SU CHAR(4)
  , SEISHIN_3_SHONIN_YMD CHAR(8)
  , SEISHIN_3_MOD_EIGY_YMD CHAR(8)
  , SEISHIN_4_KNG_SBT_CD CHAR(4)
  , SEISHIN_4_BED_SU CHAR(4)
  , SEISHIN_4_SHONIN_YMD CHAR(8)
  , SEISHIN_4_MOD_EIGY_YMD CHAR(8)
  , SEISHIN_5_KNG_SBT_CD CHAR(4)
  , SEISHIN_5_BED_SU CHAR(4)
  , SEISHIN_5_SHONIN_YMD CHAR(8)
  , SEISHIN_5_MOD_EIGY_YMD CHAR(8)
  , SEISHIN_6_KNG_SBT_CD CHAR(4)
  , SEISHIN_6_BED_SU CHAR(4)
  , SEISHIN_6_SHONIN_YMD CHAR(8)
  , SEISHIN_6_MOD_EIGY_YMD CHAR(8)
  , SEISHINKEI_KNG_SBT_SU CHAR(1)
  , SEISHINKEI_BED_SU CHAR(4)
  , KEKKAKU_1_KNG_SBT_CD CHAR(4)
  , KEKKAKU_1_BED_SU CHAR(4)
  , KEKKAKU_1_SHONIN_YMD CHAR(8)
  , KEKKAKU_1_MOD_EIGY_YMD CHAR(8)
  , KEKKAKU_2_KNG_SBT_CD CHAR(4)
  , KEKKAKU_2_BED_SU CHAR(4)
  , KEKKAKU_2_SHONIN_YMD CHAR(8)
  , KEKKAKU_2_MOD_EIGY_YMD CHAR(8)
  , KEKKAKU_3_KNG_SBT_CD CHAR(4)
  , KEKKAKU_3_BED_SU CHAR(4)
  , KEKKAKU_3_SHONIN_YMD CHAR(8)
  , KEKKAKU_3_MOD_EIGY_YMD CHAR(8)
  , KEKKAKU_4_KNG_SBT_CD CHAR(4)
  , KEKKAKU_4_BED_SU CHAR(4)
  , KEKKAKU_4_SHONIN_YMD CHAR(8)
  , KEKKAKU_4_MOD_EIGY_YMD CHAR(8)
  , KEKKAKUKEI_KNG_SBT_SU CHAR(1)
  , KEKKAKUKEI_BED_SU CHAR(4)
  , SONOTA_1_KNG_SBT_CD CHAR(4)
  , SONOTA_1_KBN_1 CHAR(1)
  , SONOTA_1_KBN_2 CHAR(1)
  , SONOTA_1_BED_SU CHAR(4)
  , SONOTA_1_KIFKK_IPPAN_RYOYO_KBN CHAR(1)
  , SONOTA_1_MOD_EIGY_YMD CHAR(8)
  , SONOTA_2_KNG_SBT_CD CHAR(4)
  , SONOTA_2_KBN_1 CHAR(1)
  , SONOTA_2_KBN_2 CHAR(1)
  , SONOTA_2_BED_SU CHAR(4)
  , SONOTA_2_KIFKK_IPPAN_RYOYO_KBN CHAR(1)
  , SONOTA_2_MOD_EIGY_YMD CHAR(8)
  , SONOTA_3_KNG_SBT_CD CHAR(4)
  , SONOTA_3_KBN_1 CHAR(1)
  , SONOTA_3_KBN_2 CHAR(1)
  , SONOTA_3_BED_SU CHAR(4)
  , SONOTA_3_KIFKK_IPPAN_RYOYO_KBN CHAR(1)
  , SONOTA_3_MOD_EIGY_YMD CHAR(8)
  , SONOTA_4_KNG_SBT_CD CHAR(4)
  , SONOTA_4_KBN_1 CHAR(1)
  , SONOTA_4_KBN_2 CHAR(1)
  , SONOTA_4_BED_SU CHAR(4)
  , SONOTA_4_KIFKK_IPPAN_RYOYO_KBN CHAR(1)
  , SONOTA_4_MOD_EIGY_YMD CHAR(8)
  , SONOTA_5_KNG_SBT_CD CHAR(4)
  , SONOTA_5_KBN_1 CHAR(1)
  , SONOTA_5_KBN_2 CHAR(1)
  , SONOTA_5_BED_SU CHAR(4)
  , SONOTA_5_KIFKK_IPPAN_RYOYO_KBN CHAR(1)
  , SONOTA_5_MOD_EIGY_YMD CHAR(8)
  , SONOTA_6_KNG_SBT_CD CHAR(4)
  , SONOTA_6_KBN_1 CHAR(1)
  , SONOTA_6_KBN_2 CHAR(1)
  , SONOTA_6_BED_SU CHAR(4)
  , SONOTA_6_KIFKK_IPPAN_RYOYO_KBN CHAR(1)
  , SONOTA_6_MOD_EIGY_YMD CHAR(8)
  , SONOTA_7_KNG_SBT_CD CHAR(4)
  , SONOTA_7_KBN_1 CHAR(1)
  , SONOTA_7_KBN_2 CHAR(1)
  , SONOTA_7_BED_SU CHAR(4)
  , SONOTA_7_KIFKK_IPPAN_RYOYO_KBN CHAR(1)
  , SONOTA_7_MOD_EIGY_YMD CHAR(8)
  , SONOTA_8_KNG_SBT_CD CHAR(4)
  , SONOTA_8_KBN_1 CHAR(1)
  , SONOTA_8_KBN_2 CHAR(1)
  , SONOTA_8_BED_SU CHAR(4)
  , SONOTA_8_KIFKK_IPPAN_RYOYO_KBN CHAR(1)
  , SONOTA_8_MOD_EIGY_YMD CHAR(8)
  , RYOYO_BED_SU CHAR(4)
  , RYOYO_MOD_EIGY_YMD CHAR(8)
  , KANSEN_BED_SU CHAR(4)
  , KANSEN_MOD_EIGY_YMD CHAR(8)
  , HANSEN_BED_SU CHAR(4)
  , HANSEN_MOD_EIGY_YMD CHAR(8)
  , NOHIN_JOKYO_KBN CHAR(1) default '0' not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (KEN_CD,REC_ID,SHI_CD,KGF_LOT_NO)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_NSK_KGF_LOT
create table MDBHSM01.TT_NSK_KGF_LOT (
  KEN_CD CHAR(2) not null
  , KGF_LOT_NO CHAR(2) not null
  , LIST_CHAKU_YMD CHAR(8)
  , ZENKAI_JOHO_YMD CHAR(8)
  , ZENKAI_CHOSA_YMD CHAR(8)
  , JOHO_YMD CHAR(8)
  , CHOSA_YMD CHAR(8)
  , KANRYO_YMD CHAR(8)
  , CHK VARCHAR2(20)
  , COMMENTS VARCHAR2(2000)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (KEN_CD,KGF_LOT_NO)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_ONLINE_LOCK
create table MDBHSM01.TT_ONLINE_LOCK (
  PK CHAR(1) not null
  , ONLINE_LOCK_KBN CHAR(1)
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (PK)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RNSKNS_BYOIN_SHNND
create table MDBHSM01.TT_RNSKNS_BYOIN_SHNND (
  PK CHAR(1) not null
  , SHONIN_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (PK)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RNSKNS_BYOIN_SHNND_RRK
create table MDBHSM01.TT_RNSKNS_BYOIN_SHNND_RRK (
  SETTEI_RRK_RENBAN NUMBER(6, 0) not null
  , PK CHAR(1) not null
  , SHONIN_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SETTEI_RRK_RENBAN,PK)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_ROW_LOCK
create table MDBHSM01.TT_ROW_LOCK (
  TBL_NM VARCHAR2(30) not null
  , HANYO_KEY_1 VARCHAR2(20) not null
  , HANYO_KEY_2 VARCHAR2(20) not null
  , HANYO_KEY_3 VARCHAR2(20) not null
  , HANYO_KEY_4 VARCHAR2(20) not null
  , HANYO_KEY_5 VARCHAR2(20) not null
  , LOCK_OPE_CD VARCHAR2(10)
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (TBL_NM,HANYO_KEY_1,HANYO_KEY_2,HANYO_KEY_3,HANYO_KEY_4,HANYO_KEY_5)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_IKJ_KIHON
create table MDBHSM01.TT_RRK_IKJ_KIHON (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , DEL_FLG CHAR(1)
  , DEL_EIGY_YMD CHAR(8)
  , JOHO_YMD CHAR(8)
  , ANNAIYO_URL VARCHAR2(200)
  , ANNAIYO_URL_ORG VARCHAR2(200)
  , INNAI_SHOHO_FLG CHAR(1)
  , INGAI_SHOHO_FLG CHAR(1)
  , CHIKENJISSHI_FLG CHAR(1)
  , CHIKENJISSHI_S_YMD VARCHAR2(8)
  , CHIKENJISSHI_E_YMD VARCHAR2(8)
  , CHIKENJISSHI_KIYK_KENSU NUMBER(4, 0)
  , CHIKRENKEI_MADOGUCHI_FLG CHAR(1)
  , CHIKRENKEIPATH_FLG_IKJ CHAR(1)
  , NYUINSNRY_INNAI_RNKITISI_FLG CHAR(1)
  , ORDERINGSYSTEM_FLG CHAR(1)
  , ORDERINGSYSTEM_KENSA_FLG CHAR(1)
  , ORDERINGSYSTEM_SHOHO_FLG CHAR(1)
  , ORDERINGSYSTEM_YOYAKU_FLG CHAR(1)
  , ICD_CD_RIYO_FLG CHAR(1)
  , DENSHI_KARTE_FLG CHAR(1)
  , KARTEKANRI_SENNIN_FLG CHAR(1)
  , KARTEKANRI_SENNIN_SU NUMBER(3, 0)
  , COMMENTS VARCHAR2(2000)
  , KANJYASU_IPPAN_BED NUMBER(6, 1)
  , KANJYASU_RYOYO_BED NUMBER(6, 1)
  , KANJYASU_RYOYO_BED_IRY_HKN NUMBER(6, 1)
  , KANJYASU_RYOYO_BED_KIG_HKN NUMBER(6, 1)
  , KANJYASU_SEISHIN_BED NUMBER(6, 1)
  , KANJYASU_KEKKAKU_BED NUMBER(6, 1)
  , KANJYASU_KANSEN NUMBER(6, 1)
  , KANJYASU_ZENTAI_BED NUMBER(6, 1)
  , KANJYASU_BED_SBT_S_YMD VARCHAR2(8)
  , KANJYASU_BED_SBT_E_YMD VARCHAR2(8)
  , KANJYASU_GAIRAI NUMBER(6, 1)
  , KANJYASU_GAIRAI_S_YMD VARCHAR2(8)
  , KANJYASU_GAIRAI_E_YMD VARCHAR2(8)
  , KANJYASU_ZAITAKU NUMBER(6, 1)
  , KANJYASU_ZAITAKU_S_YMD VARCHAR2(8)
  , KANJYASU_ZAITAKU_E_YMD VARCHAR2(8)
  , KANJYANSU_IPPAN_BED NUMBER(6, 0)
  , KANJYANSU_RYOYO_BED NUMBER(6, 0)
  , KANJYANSU_RYOYO_BED_IRY_HKN NUMBER(6, 0)
  , KANJYANSU_RYOYO_BED_KIG_HKN NUMBER(6, 0)
  , KANJYANSU_SEISHIN_BED NUMBER(6, 0)
  , KANJYANSU_KEKKAKU_BED NUMBER(6, 0)
  , KANJYANSU_KANSEN NUMBER(6, 0)
  , KANJYANSU_ZENTAI_BED NUMBER(6, 0)
  , KANJYANSU_BED_SBT_S_YMD VARCHAR2(8)
  , KANJYANSU_BED_SBT_E_YMD VARCHAR2(8)
  , KANJYANSU_GAIRAI NUMBER(6, 0)
  , KANJYANSU_GAIRAI_S_YMD VARCHAR2(8)
  , KANJYANSU_GAIRAI_E_YMD VARCHAR2(8)
  , KANJYANSU_ZAITAKU NUMBER(6, 0)
  , KANJYANSU_ZAITAKU_S_YMD VARCHAR2(8)
  , KANJYANSU_ZAITAKU_E_YMD VARCHAR2(8)
  , AVGNISSU_IPPAN_BED NUMBER(6, 1)
  , AVGNISSU_RYOYO_BED NUMBER(6, 1)
  , AVGNISSU_RYOYO_BED_IRY_HKN NUMBER(6, 1)
  , AVGNISSU_RYOYO_BED_KIG_HKN NUMBER(6, 1)
  , AVGNISSU_SEISHIN_BED NUMBER(6, 1)
  , AVGNISSU_KEKKAKU_BED NUMBER(6, 1)
  , AVGNISSU_KANSEN NUMBER(6, 1)
  , AVGNISSU_ZENTAI_BED NUMBER(6, 1)
  , AVGNISSU_S_YMD VARCHAR2(8)
  , AVGNISSU_E_YMD VARCHAR2(8)
  , STB_FLG CHAR(1)
  , SHIKKAN_CHRY_FLG CHAR(1)
  , TNK_TIZI_SJT_FLG CHAR(1)
  , SMG_FLG CHAR(1)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_IKJ_KIHON_IX01
  on MDBHSM01.TT_RRK_IKJ_KIHON(REC_ID,SHI_CD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_IKJ_SHIKKAN_CHRY
create table MDBHSM01.TT_RRK_IKJ_SHIKKAN_CHRY (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , SHIKKAN_CHRY_DAI_CD CHAR(2) not null
  , SHIKKAN_CHRY_SHO_CD CHAR(2) not null
  , ZENNEN_KENSU NUMBER(6, 0)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_FKT_EIGY_YMD CHAR(8) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_IKJ_SHIKKAN_CHRY_IX01
  on MDBHSM01.TT_RRK_IKJ_SHIKKAN_CHRY(REC_ID,SHI_CD,SHIKKAN_CHRY_DAI_CD,SHIKKAN_CHRY_SHO_CD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_IKJ_SMG_NM
create table MDBHSM01.TT_RRK_IKJ_SMG_NM (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , SMG_NM VARCHAR2(200) not null
  , SMG_SORTKEY NUMBER(4, 0)
  , SMG_SORTKEY_NOHIN NUMBER(4, 0)
  , BNRIHOJO_CD CHAR(3)
  , BNRIHOJO_CD_CHKZUMI_FLG CHAR(1)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_FKT_EIGY_YMD CHAR(8) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_IKJ_SMG_NM_IX01
  on MDBHSM01.TT_RRK_IKJ_SMG_NM(REC_ID,SHI_CD,SMG_NM)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_IKJ_STB
create table MDBHSM01.TT_RRK_IKJ_STB (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , STB_CD CHAR(3) not null
  , STB_BED_SU NUMBER(5, 0)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_FKT_EIGY_YMD CHAR(8) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_IKJ_STB_IX01
  on MDBHSM01.TT_RRK_IKJ_STB(REC_ID,SHI_CD,STB_CD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_IKJ_TNK_TIZI_SJT
create table MDBHSM01.TT_RRK_IKJ_TNK_TIZI_SJT (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , TNK_TIZI_SJT_CD CHAR(3) not null
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_FKT_EIGY_YMD CHAR(8) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_IKJ_TNK_TIZI_SJT_IX01
  on MDBHSM01.TT_RRK_IKJ_TNK_TIZI_SJT(REC_ID,SHI_CD,TNK_TIZI_SJT_CD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_IRK_2JI_KANRI
create table MDBHSM01.TT_RRK_IRK_2JI_KANRI (
  SEQ NUMBER(38, 0) not null
  , RRK_RENBAN NUMBER(38, 0) not null
  , KEN_CD CHAR(2) not null
  , IRK_2JI_CD CHAR(4) not null
  , IRK_3JI_CD CHAR(1)
  , IRK_2JI_NM VARCHAR2(80)
  , SORTKEY NUMBER(4, 0)
  , IPPAN_KIJUN_BED_SU NUMBER(6, 0)
  , IPPAN_KIZON_BED_SU NUMBER(6, 0)
  , IPPAN_KAFUSOKU_BED_SU NUMBER(6, 0)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_IRK_2JI_KANRI_IX01
  on MDBHSM01.TT_RRK_IRK_2JI_KANRI(RRK_RENBAN,KEN_CD,IRK_2JI_CD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_IRK_3JI_KANRI
create table MDBHSM01.TT_RRK_IRK_3JI_KANRI (
  SEQ NUMBER(38, 0) not null
  , RRK_RENBAN NUMBER(38, 0) not null
  , KEN_CD CHAR(2) not null
  , IRK_3JI_CD CHAR(1) not null
  , IRK_3JI_NM VARCHAR2(80)
  , SORTKEY NUMBER(4, 0)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_IRK_3JI_KANRI_IX01
  on MDBHSM01.TT_RRK_IRK_3JI_KANRI(RRK_RENBAN,KEN_CD,IRK_3JI_CD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_IRK_KANKATSU
create table MDBHSM01.TT_RRK_IRK_KANKATSU (
  SEQ NUMBER(38, 0) not null
  , RRK_RENBAN NUMBER(38, 0) not null
  , KEN_CD CHAR(2) not null
  , IRK_2JI_CD CHAR(4) not null
  , SHIKU_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_IRK_KANKATSU_IX01
  on MDBHSM01.TT_RRK_IRK_KANKATSU(RRK_RENBAN,KEN_CD,IRK_2JI_CD,SHIKU_CD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_IRK_KANRI
create table MDBHSM01.TT_RRK_IRK_KANRI (
  SEQ NUMBER(38, 0) not null
  , RRK_RENBAN NUMBER(38, 0) not null
  , KEN_CD CHAR(2) not null
  , KOJI_YMD CHAR(8)
  , MOD_YMD CHAR(8)
  , COMMENTS VARCHAR2(2000)
  , IPPAN_KIJUN_BED_SU_GOKEI NUMBER(6, 0)
  , IPPAN_KIZON_BED_SU_GOKEI NUMBER(6, 0)
  , IPPAN_KIZON_YMD CHAR(8)
  , IPPAN_KAFUSOKU_BED_SU_GOKEI NUMBER(6, 0)
  , SEISHIN_KIJUN_BED_SU_GOKEI NUMBER(6, 0)
  , SEISHIN_KIZON_BED_SU_GOKEI NUMBER(6, 0)
  , SEISHIN_KIZON_YMD CHAR(8)
  , SEISHIN_KAFUSOKU_BED_SU_GOKEI NUMBER(6, 0)
  , KEKKAKU_KIJUN_BED_SU_GOKEI NUMBER(6, 0)
  , KEKKAKU_KIZON_BED_SU_GOKEI NUMBER(6, 0)
  , KEKKAKU_KIZON_YMD CHAR(8)
  , KEKKAKU_KAFUSOKU_BED_SU_GOKEI NUMBER(6, 0)
  , KANSEN_KIJUN_BED_SU_GOKEI NUMBER(6, 0)
  , KANSEN_KIZON_BED_SU_GOKEI NUMBER(6, 0)
  , KANSEN_KIZON_YMD CHAR(8)
  , KANSEN_KAFUSOKU_BED_SU_GOKEI NUMBER(6, 0)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_IRK_KANRI_IX01
  on MDBHSM01.TT_RRK_IRK_KANRI(RRK_RENBAN,KEN_CD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_KJN_BIRTH
create table MDBHSM01.TT_RRK_KJN_BIRTH (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , KJN_CD CHAR(6) not null
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , CHOSA_YMD CHAR(8)
  , BIRTH_GENGO_CD CHAR(1)
  , BIRTH_WY CHAR(2)
  , BIRTH_SY CHAR(4)
  , BIRTH_M CHAR(2)
  , BIRTH_D CHAR(2)
  , GOMENTE_FLG CHAR(1)
  , GOMENTE_CHK_OPE_CD VARCHAR2(10)
  , GOMENTE_CHK_USER_CD CHAR(3)
  , GOMENTE_CHK_EIGY_YMD CHAR(8)
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_KJN_BIRTH_IX01
  on MDBHSM01.TT_RRK_KJN_BIRTH(REC_ID,KJN_CD)
/

create index TT_RRK_KJN_BIRTH_IX02
  on MDBHSM01.TT_RRK_KJN_BIRTH(REC_ID,KJN_CD,TRK_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_KJN_COMMENTS
create table MDBHSM01.TT_RRK_KJN_COMMENTS (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , KJN_CD CHAR(6) not null
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , CHOSA_YMD CHAR(8)
  , COMMENTS VARCHAR2(2000)
  , GOMENTE_FLG CHAR(1)
  , GOMENTE_CHK_OPE_CD VARCHAR2(10)
  , GOMENTE_CHK_USER_CD CHAR(3)
  , GOMENTE_CHK_EIGY_YMD CHAR(8)
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_KJN_COMMENTS_IX01
  on MDBHSM01.TT_RRK_KJN_COMMENTS(REC_ID,KJN_CD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_KJN_DCFCHOFUKU
create table MDBHSM01.TT_RRK_KJN_DCFCHOFUKU (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , KJN_CD CHAR(6) not null
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , CHOSA_YMD CHAR(8)
  , DCFCHOFUKU_REC_ID CHAR(2)
  , DCFCHOFUKU_KJN_CD CHAR(6)
  , GOMENTE_FLG CHAR(1)
  , GOMENTE_CHK_OPE_CD VARCHAR2(10)
  , GOMENTE_CHK_USER_CD CHAR(3)
  , GOMENTE_CHK_EIGY_YMD CHAR(8)
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_KJN_DCFCHOFUKU_IX01
  on MDBHSM01.TT_RRK_KJN_DCFCHOFUKU(REC_ID,KJN_CD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_KJN_DEL_YOTEI
create table MDBHSM01.TT_RRK_KJN_DEL_YOTEI (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , KJN_CD CHAR(6) not null
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , CHOSA_YMD CHAR(8)
  , DEL_YOTEI_RIYU_CD CHAR(1)
  , DEL_NYURYOKU_YM CHAR(6)
  , DEL_NYURYOKU_USER_CD CHAR(3)
  , DEL_NYURYOKU_OPE_CD VARCHAR2(10)
  , DEL_YM CHAR(6)
  , CHOFUKU_AITSK_REC_ID CHAR(2)
  , CHOFUKU_AITSK_KJN_CD CHAR(6)
  , GOMENTE_FLG CHAR(1)
  , GOMENTE_CHK_OPE_CD VARCHAR2(10)
  , GOMENTE_CHK_USER_CD CHAR(3)
  , GOMENTE_CHK_EIGY_YMD CHAR(8)
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_KJN_DEL_YOTEI_IX01
  on MDBHSM01.TT_RRK_KJN_DEL_YOTEI(REC_ID,KJN_CD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_KJN_GAKKAI
create table MDBHSM01.TT_RRK_KJN_GAKKAI (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , KJN_CD CHAR(6) not null
  , GAKKAI_CD CHAR(3) not null
  , GAKKAI_NENDO CHAR(4) not null
  , DEL_FLG CHAR(1)
  , DEL_EIGY_YMD CHAR(8)
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , CHOSA_YMD CHAR(8)
  , TRK_YM CHAR(6)
  , GOMENTE_FLG CHAR(1)
  , GOMENTE_CHK_OPE_CD VARCHAR2(10)
  , GOMENTE_CHK_USER_CD CHAR(3)
  , GOMENTE_CHK_EIGY_YMD CHAR(8)
  , TRK_FKT_EIGY_YMD CHAR(8) not null
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_KJN_GAKKAI_IX01
  on MDBHSM01.TT_RRK_KJN_GAKKAI(REC_ID,KJN_CD,GAKKAI_CD,GAKKAI_NENDO)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_KJN_HKNI_TRK
create table MDBHSM01.TT_RRK_KJN_HKNI_TRK (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , KJN_CD CHAR(6) not null
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , CHOSA_YMD CHAR(8)
  , HKNI_TRK_RIDAI_CD CHAR(2)
  , GOMENTE_FLG CHAR(1)
  , GOMENTE_CHK_OPE_CD VARCHAR2(10)
  , GOMENTE_CHK_USER_CD CHAR(3)
  , GOMENTE_CHK_EIGY_YMD CHAR(8)
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_KJN_HKNI_TRK_IX01
  on MDBHSM01.TT_RRK_KJN_HKNI_TRK(REC_ID,KJN_CD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_KJN_JUSHO
create table MDBHSM01.TT_RRK_KJN_JUSHO (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , KJN_CD CHAR(6) not null
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , CHOSA_YMD CHAR(8)
  , KEN_CD CHAR(2)
  , SHIKU_CD CHAR(3)
  , OAZA_CD CHAR(3)
  , AZA_CD CHAR(3)
  , ZIP CHAR(7)
  , JUSHO_KANJI_KEN_NM VARCHAR2(40)
  , JUSHO_KANJI_SHIKU_NM VARCHAR2(60)
  , JUSHO_KANJI_OAZA_NM VARCHAR2(80)
  , JUSHO_KANJI_AZA_NM VARCHAR2(60)
  , JUSHO_KANJI_TENYURYOKU VARCHAR2(400)
  , JUSHO_KANJI_RENKETSU VARCHAR2(640)
  , JUSHO_KANA_KEN_NM VARCHAR2(30)
  , JUSHO_KANA_SHIKU_NM VARCHAR2(90)
  , JUSHO_KANA_OAZA_NM VARCHAR2(120)
  , JUSHO_KANA_AZA_NM VARCHAR2(90)
  , JUSHO_KANA_TENYURYOKU VARCHAR2(300)
  , JUSHO_KANA_RENKETSU VARCHAR2(630)
  , HYPHEN_NASHI_FLG CHAR(1)
  , TENYURYOKU_NASHI_FLG CHAR(1)
  , KEN_NM_KANJI_MOJI_SU NUMBER(2, 0)
  , SHIKU_NM_KANJI_MOJI_SU NUMBER(2, 0)
  , OAZA_NM_KANJI_MOJI_SU NUMBER(2, 0)
  , AZA_NM_KANJI_MOJI_SU NUMBER(2, 0)
  , KEN_NM_KANA_MOJI_SU NUMBER(2, 0)
  , SHIKU_NM_KANA_MOJI_SU NUMBER(2, 0)
  , OAZA_NM_KANA_MOJI_SU NUMBER(2, 0)
  , AZA_NM_KANA_MOJI_SU NUMBER(2, 0)
  , JUSHO_HYOJI_NO VARCHAR2(13)
  , JUSHOFUMEI_CD CHAR(1)
  , JUSHO_UPD_EIGY_YMD CHAR(8)
  , GOMENTE_FLG CHAR(1)
  , GOMENTE_CHK_OPE_CD VARCHAR2(10)
  , GOMENTE_CHK_USER_CD CHAR(3)
  , GOMENTE_CHK_EIGY_YMD CHAR(8)
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_KJN_JUSHO_IX01
  on MDBHSM01.TT_RRK_KJN_JUSHO(REC_ID,KJN_CD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_KJN_KAIKIN
create table MDBHSM01.TT_RRK_KJN_KAIKIN (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , KJN_CD CHAR(6) not null
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , CHOSA_YMD CHAR(8)
  , KAIKIN_KBN CHAR(1)
  , KAIGYONEN_GENGO_CD CHAR(1)
  , KAIGYONEN_WY CHAR(2)
  , KAIGYONEN_SY CHAR(4)
  , GOMENTE_FLG CHAR(1)
  , GOMENTE_CHK_OPE_CD VARCHAR2(10)
  , GOMENTE_CHK_USER_CD CHAR(3)
  , GOMENTE_CHK_EIGY_YMD CHAR(8)
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_KJN_KAIKIN_IX01
  on MDBHSM01.TT_RRK_KJN_KAIKIN(REC_ID,KJN_CD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_KJN_KANYU_ISHIKAI
create table MDBHSM01.TT_RRK_KJN_KANYU_ISHIKAI (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , KJN_CD CHAR(6) not null
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , CHOSA_YMD CHAR(8)
  , KANYU_ISHIKAI_RIDAI_CD CHAR(2)
  , GOMENTE_FLG CHAR(1)
  , GOMENTE_CHK_OPE_CD VARCHAR2(10)
  , GOMENTE_CHK_USER_CD CHAR(3)
  , GOMENTE_CHK_EIGY_YMD CHAR(8)
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_KJN_KANYU_ISHIKAI_IX01
  on MDBHSM01.TT_RRK_KJN_KANYU_ISHIKAI(REC_ID,KJN_CD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_KJN_KEIJIBAN
create table MDBHSM01.TT_RRK_KJN_KEIJIBAN (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , KJN_CD CHAR(6) not null
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , CHOSA_YMD CHAR(8)
  , KEIJI_NAIYO CLOB
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_KJN_KEIJIBAN_IX01
  on MDBHSM01.TT_RRK_KJN_KEIJIBAN(REC_ID,KJN_CD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_KJN_KINMUSAKI
create table MDBHSM01.TT_RRK_KJN_KINMUSAKI (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , KJN_CD CHAR(6) not null
  , KINMUSAKI_REC_ID CHAR(2) not null
  , KINMUSAKI_SHI_CD CHAR(7) not null
  , TAISHOKU_FLG CHAR(1)
  , TAISHOKU_EIGY_YMD CHAR(8)
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , CHOSA_YMD CHAR(8)
  , DAIHYO_FLG CHAR(1)
  , SZKBUKA_CD CHAR(4)
  , NYURYOKU_SZKBUKA_NM VARCHAR2(60)
  , NYURYOKU_SZKBUKA_NM_KANA VARCHAR2(60)
  , YAKUSHOKU_CD CHAR(3)
  , SHOKUI_CD CHAR(3)
  , KINMUSAKI_DM_FUKA_FLG CHAR(1)
  , KINMUSAKI_KKNN_YMD CHAR(8)
  , KINMUSAKI_KKNN_USER_CD CHAR(3)
  , KINMUSAKI_KKNN_OPE_CD VARCHAR2(10)
  , JOHO_YMD CHAR(8)
  , GOMENTE_FLG CHAR(1)
  , GOMENTE_CHK_OPE_CD VARCHAR2(10)
  , GOMENTE_CHK_USER_CD CHAR(3)
  , GOMENTE_CHK_EIGY_YMD CHAR(8)
  , TRK_FKT_EIGY_YMD CHAR(8) not null
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_KJN_KINMUSAKI_IX01
  on MDBHSM01.TT_RRK_KJN_KINMUSAKI(REC_ID,KJN_CD,KINMUSAKI_REC_ID,KINMUSAKI_SHI_CD)
/

create index TT_RRK_KJN_KINMUSAKI_IX02
  on MDBHSM01.TT_RRK_KJN_KINMUSAKI(REC_ID,KJN_CD,TRK_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_KJN_NM
create table MDBHSM01.TT_RRK_KJN_NM (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , KJN_CD CHAR(6) not null
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , CHOSA_YMD CHAR(8)
  , KJN_NM VARCHAR2(80)
  , KENSAKU_KJN_NM VARCHAR2(80)
  , KENSAKU_KJN_SEI VARCHAR2(80)
  , KENSAKU_KJN_NAMAE VARCHAR2(80)
  , KJN_NM_KANA VARCHAR2(60)
  , KENSAKU_KJN_NM_KANA VARCHAR2(60)
  , KENSAKU_KJN_SEI_KANA VARCHAR2(60)
  , KENSAKU_KJN_NAMAE_KANA VARCHAR2(60)
  , KJN_NM_UPD_EIGY_YMD CHAR(8)
  , KJN_NM_KKNN_EIGY_YMD CHAR(8)
  , KJN_NM_KKNN_USER_CD CHAR(3)
  , KJN_NM_KKNN_OPE_CD VARCHAR2(10)
  , GOMENTE_FLG CHAR(1)
  , GOMENTE_CHK_OPE_CD VARCHAR2(10)
  , GOMENTE_CHK_USER_CD CHAR(3)
  , GOMENTE_CHK_EIGY_YMD CHAR(8)
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_KJN_NM_IX01
  on MDBHSM01.TT_RRK_KJN_NM(REC_ID,KJN_CD)
/

create index TT_RRK_KJN_NM_IX02
  on MDBHSM01.TT_RRK_KJN_NM(REC_ID,KJN_CD,TRK_EIGY_YMD)
/

create index TT_RRK_KJN_NM_IX03
  on MDBHSM01.TT_RRK_KJN_NM(KENSAKU_KJN_NAMAE)
/

create index TT_RRK_KJN_NM_IX04
  on MDBHSM01.TT_RRK_KJN_NM(KENSAKU_KJN_NAMAE_KANA)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_KJN_RIYOTEISHI
create table MDBHSM01.TT_RRK_KJN_RIYOTEISHI (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , KJN_CD CHAR(6) not null
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , CHOSA_YMD CHAR(8)
  , RIYOTEISHI_KBN_CD CHAR(2)
  , RIYOTEISHI_RIYU_CD CHAR(3)
  , RIYOTEISHI_TRK_YMD CHAR(8)
  , RIYOTEISHI_KAIJO_YMD CHAR(8)
  , GOMENTE_FLG CHAR(1)
  , GOMENTE_CHK_OPE_CD VARCHAR2(10)
  , GOMENTE_CHK_USER_CD CHAR(3)
  , GOMENTE_CHK_EIGY_YMD CHAR(8)
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_KJN_RIYOTEISHI_IX01
  on MDBHSM01.TT_RRK_KJN_RIYOTEISHI(REC_ID,KJN_CD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_KJN_SEIBETSU
create table MDBHSM01.TT_RRK_KJN_SEIBETSU (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , KJN_CD CHAR(6) not null
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , CHOSA_YMD CHAR(8)
  , SEIBETSU_KBN CHAR(1)
  , SEIBETSU_KKNN_EIGY_YMD CHAR(8)
  , SEIBETSU_KKNN_USER_CD CHAR(3)
  , SEIBETSU_KKNN_OPE_CD VARCHAR2(10)
  , GOMENTE_FLG CHAR(1)
  , GOMENTE_CHK_OPE_CD VARCHAR2(10)
  , GOMENTE_CHK_USER_CD CHAR(3)
  , GOMENTE_CHK_EIGY_YMD CHAR(8)
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_KJN_SEIBETSU_IX01
  on MDBHSM01.TT_RRK_KJN_SEIBETSU(REC_ID,KJN_CD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_KJN_SENMONI
create table MDBHSM01.TT_RRK_KJN_SENMONI (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , KJN_CD CHAR(6) not null
  , SENMONI_CD CHAR(4) not null
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , CHOSA_YMD CHAR(8)
  , SENMONI_FLG CHAR(1)
  , SENMONI_KEISAI_YMD VARCHAR2(8)
  , NINTEII_FLG CHAR(1)
  , NINTEII_KEISAI_YMD VARCHAR2(8)
  , SHIDOI_FLG CHAR(1)
  , SHIDOI_KEISAI_YMD VARCHAR2(8)
  , SOSHITSU_FLG CHAR(1)
  , SOSHITSU_YMD VARCHAR2(8)
  , GOMENTE_FLG CHAR(1)
  , GOMENTE_CHK_OPE_CD VARCHAR2(10)
  , GOMENTE_CHK_USER_CD CHAR(3)
  , GOMENTE_CHK_EIGY_YMD CHAR(8)
  , TRK_FKT_EIGY_YMD CHAR(8) not null
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_KJN_SENMONI_IX01
  on MDBHSM01.TT_RRK_KJN_SENMONI(REC_ID,KJN_CD,SENMONI_CD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_KJN_SHOKUSHU_BNRI
create table MDBHSM01.TT_RRK_KJN_SHOKUSHU_BNRI (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , KJN_CD CHAR(6) not null
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , CHOSA_YMD CHAR(8)
  , SHOKUSHU_BNRI_CD CHAR(1)
  , GOMENTE_FLG CHAR(1)
  , GOMENTE_CHK_OPE_CD VARCHAR2(10)
  , GOMENTE_CHK_USER_CD CHAR(3)
  , GOMENTE_CHK_EIGY_YMD CHAR(8)
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_KJN_SHOKUSHU_BNRI_IX01
  on MDBHSM01.TT_RRK_KJN_SHOKUSHU_BNRI(REC_ID,KJN_CD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_KJN_SHUSSHINCHI
create table MDBHSM01.TT_RRK_KJN_SHUSSHINCHI (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , KJN_CD CHAR(6) not null
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , CHOSA_YMD CHAR(8)
  , SHUSSHINCHI_RIDAI_CD CHAR(2)
  , GOMENTE_FLG CHAR(1)
  , GOMENTE_CHK_OPE_CD VARCHAR2(10)
  , GOMENTE_CHK_USER_CD CHAR(3)
  , GOMENTE_CHK_EIGY_YMD CHAR(8)
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_KJN_SHUSSHINCHI_IX01
  on MDBHSM01.TT_RRK_KJN_SHUSSHINCHI(REC_ID,KJN_CD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_KJN_SNRYKMK
create table MDBHSM01.TT_RRK_KJN_SNRYKMK (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , KJN_CD CHAR(6) not null
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , CHOSA_YMD CHAR(8)
  , SNRYKMK_CD_1 CHAR(3)
  , SNRYKMK_CD_2 CHAR(3)
  , SNRYKMK_CD_3 CHAR(3)
  , SNRYKMK_CD_4 CHAR(3)
  , SNRYKMK_CD_5 CHAR(3)
  , GOMENTE_FLG CHAR(1)
  , GOMENTE_CHK_OPE_CD VARCHAR2(10)
  , GOMENTE_CHK_USER_CD CHAR(3)
  , GOMENTE_CHK_EIGY_YMD CHAR(8)
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_KJN_SNRYKMK_IX01
  on MDBHSM01.TT_RRK_KJN_SNRYKMK(REC_ID,KJN_CD)
/

create index TT_RRK_KJN_SNRYKMK_IX02
  on MDBHSM01.TT_RRK_KJN_SNRYKMK(REC_ID,KJN_CD,TRK_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_KJN_STNEN_SHUSSHIN
create table MDBHSM01.TT_RRK_KJN_STNEN_SHUSSHIN (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , KJN_CD CHAR(6) not null
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , CHOSA_YMD CHAR(8)
  , SHUSSHINKO_CD CHAR(3)
  , GAKUBU_SHIKIBETSU_KBN CHAR(1)
  , SHUSSHINKO_KKNN_EIGY_YMD CHAR(8)
  , SHUSSHINKO_KKNN_USER_CD CHAR(3)
  , SHUSSHINKO_KKNN_OPE_CD VARCHAR2(10)
  , STNEN_GENGO_CD CHAR(1)
  , STNEN_WY CHAR(2)
  , STNEN_SY CHAR(4)
  , STNEN_KKNN_EIGY_YMD CHAR(8)
  , STNEN_KKNN_USER_CD CHAR(3)
  , STNEN_KKNN_OPE_CD VARCHAR2(10)
  , GOMENTE_FLG CHAR(1)
  , GOMENTE_CHK_OPE_CD VARCHAR2(10)
  , GOMENTE_CHK_USER_CD CHAR(3)
  , GOMENTE_CHK_EIGY_YMD CHAR(8)
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_KJN_STNEN_SHUSSHIN_IX01
  on MDBHSM01.TT_RRK_KJN_STNEN_SHUSSHIN(REC_ID,KJN_CD)
/

create index TT_RRK_KJN_STNEN_SHUSSHIN_IX02
  on MDBHSM01.TT_RRK_KJN_STNEN_SHUSSHIN(REC_ID,KJN_CD,TRK_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_KJN_TEL
create table MDBHSM01.TT_RRK_KJN_TEL (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , KJN_CD CHAR(6) not null
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , CHOSA_YMD CHAR(8)
  , TEL VARCHAR2(15)
  , GOMENTE_FLG CHAR(1)
  , GOMENTE_CHK_OPE_CD VARCHAR2(10)
  , GOMENTE_CHK_USER_CD CHAR(3)
  , GOMENTE_CHK_EIGY_YMD CHAR(8)
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_KJN_TEL_IX01
  on MDBHSM01.TT_RRK_KJN_TEL(REC_ID,KJN_CD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_KJN_TRKNEN
create table MDBHSM01.TT_RRK_KJN_TRKNEN (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , KJN_CD CHAR(6) not null
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , CHOSA_YMD CHAR(8)
  , TRKNEN_GENGO_CD CHAR(1)
  , TRKNEN_WY CHAR(2)
  , TRKNEN_SY CHAR(4)
  , TRKNEN_KKNN_EIGY_YMD CHAR(8)
  , TRKNEN_KKNN_USER_CD CHAR(3)
  , TRKNEN_KKNN_OPE_CD VARCHAR2(10)
  , KOROSHOSITE_SHOGO_KBN_CD CHAR(1)
  , KOROSHOSITE_SHOGO_YMD CHAR(8)
  , GOMENTE_FLG CHAR(1)
  , GOMENTE_CHK_OPE_CD VARCHAR2(10)
  , GOMENTE_CHK_USER_CD CHAR(3)
  , GOMENTE_CHK_EIGY_YMD CHAR(8)
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_KJN_TRKNEN_IX01
  on MDBHSM01.TT_RRK_KJN_TRKNEN(REC_ID,KJN_CD)
/

create index TT_RRK_KJN_TRKNEN_IX02
  on MDBHSM01.TT_RRK_KJN_TRKNEN(REC_ID,KJN_CD,TRK_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_SAIBAN
create table MDBHSM01.TT_RRK_SAIBAN (
  FUNCTION_ID CHAR(8) not null
  , RRK_RENBAN NUMBER(38, 0) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (FUNCTION_ID)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_SHI_BED_SU
create table MDBHSM01.TT_RRK_SHI_BED_SU (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , CHOSA_YMD CHAR(8)
  , SHI_BED_SU NUMBER(4, 0)
  , ZENKAI_BED_SU NUMBER(4, 0)
  , GOMENTE_FLG CHAR(1)
  , GOMENTE_CHK_OPE_CD VARCHAR2(10)
  , GOMENTE_CHK_USER_CD CHAR(3)
  , GOMENTE_CHK_EIGY_YMD CHAR(8)
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_SHI_BED_SU_IX01
  on MDBHSM01.TT_RRK_SHI_BED_SU(REC_ID,SHI_CD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_SHI_BYOIN_SBT
create table MDBHSM01.TT_RRK_SHI_BYOIN_SBT (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , CHOSA_YMD CHAR(8)
  , BYOIN_SBT_CD CHAR(1)
  , GOMENTE_FLG CHAR(1)
  , GOMENTE_CHK_OPE_CD VARCHAR2(10)
  , GOMENTE_CHK_USER_CD CHAR(3)
  , GOMENTE_CHK_EIGY_YMD CHAR(8)
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_SHI_BYOIN_SBT_IX01
  on MDBHSM01.TT_RRK_SHI_BYOIN_SBT(REC_ID,SHI_CD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_SHI_BYOTO_HEISA
create table MDBHSM01.TT_RRK_SHI_BYOTO_HEISA (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , CHOSA_YMD CHAR(8)
  , BYOTO_HEISA_KBN CHAR(1)
  , GOMENTE_FLG CHAR(1)
  , GOMENTE_CHK_OPE_CD VARCHAR2(10)
  , GOMENTE_CHK_USER_CD CHAR(3)
  , GOMENTE_CHK_EIGY_YMD CHAR(8)
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_SHI_BYOTO_HEISA_IX01
  on MDBHSM01.TT_RRK_SHI_BYOTO_HEISA(REC_ID,SHI_CD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_SHI_CHAIN_HONBU
create table MDBHSM01.TT_RRK_SHI_CHAIN_HONBU (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , CHOSA_YMD CHAR(8)
  , CHAIN_HONBU_SBT_CD CHAR(1)
  , CHAIN_HONBU_REC_ID CHAR(2)
  , CHAIN_HONBU_SHI_CD CHAR(7)
  , GOMENTE_FLG CHAR(1)
  , GOMENTE_CHK_OPE_CD VARCHAR2(10)
  , GOMENTE_CHK_USER_CD CHAR(3)
  , GOMENTE_CHK_EIGY_YMD CHAR(8)
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_SHI_CHAIN_HONBU_IX01
  on MDBHSM01.TT_RRK_SHI_CHAIN_HONBU(REC_ID,SHI_CD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_SHI_COMMENTS
create table MDBHSM01.TT_RRK_SHI_COMMENTS (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , CHOSA_YMD CHAR(8)
  , COMMENTS VARCHAR2(2000)
  , GOMENTE_FLG CHAR(1)
  , GOMENTE_CHK_OPE_CD VARCHAR2(10)
  , GOMENTE_CHK_USER_CD CHAR(3)
  , GOMENTE_CHK_EIGY_YMD CHAR(8)
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_SHI_COMMENTS_IX01
  on MDBHSM01.TT_RRK_SHI_COMMENTS(REC_ID,SHI_CD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_SHI_DAIHYO
create table MDBHSM01.TT_RRK_SHI_DAIHYO (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , CHOSA_YMD CHAR(8)
  , DAIHYO_REC_ID CHAR(2)
  , DAIHYO_KJN_CD CHAR(6)
  , DAIHYO_NM VARCHAR2(80)
  , DAIHYO_NM_KANA VARCHAR2(60)
  , DAIHYO_YAKUSHOKU_CD CHAR(3)
  , DAIHYO_SHOKUI_CD CHAR(3)
  , GOMENTE_FLG CHAR(1)
  , GOMENTE_CHK_OPE_CD VARCHAR2(10)
  , GOMENTE_CHK_USER_CD CHAR(3)
  , GOMENTE_CHK_EIGY_YMD CHAR(8)
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_SHI_DAIHYO_IX01
  on MDBHSM01.TT_RRK_SHI_DAIHYO(REC_ID,SHI_CD)
/

create index TT_RRK_SHI_DAIHYO_IX02
  on MDBHSM01.TT_RRK_SHI_DAIHYO(REC_ID,SHI_CD,TRK_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_SHI_DCFCHOFUKU
create table MDBHSM01.TT_RRK_SHI_DCFCHOFUKU (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , CHOSA_YMD CHAR(8)
  , DCFCHOFUKU_REC_ID CHAR(2)
  , DCFCHOFUKU_SHI_CD CHAR(7)
  , GOMENTE_FLG CHAR(1)
  , GOMENTE_CHK_OPE_CD VARCHAR2(10)
  , GOMENTE_CHK_USER_CD CHAR(3)
  , GOMENTE_CHK_EIGY_YMD CHAR(8)
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_SHI_DCFCHOFUKU_IX01
  on MDBHSM01.TT_RRK_SHI_DCFCHOFUKU(REC_ID,SHI_CD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_SHI_DEL_YOTEI
create table MDBHSM01.TT_RRK_SHI_DEL_YOTEI (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , CHOSA_YMD CHAR(8)
  , DEL_YOTEI_RIYU_CD CHAR(1)
  , DEL_NYURYOKU_YM CHAR(6)
  , DEL_NYURYOKU_USER_CD CHAR(3)
  , DEL_NYURYOKU_OPE_CD VARCHAR2(10)
  , DEL_YM CHAR(6)
  , CHOFUKU_AITSK_REC_ID CHAR(2)
  , CHOFUKU_AITSK_SHI_CD CHAR(7)
  , GOMENTE_FLG CHAR(1)
  , GOMENTE_CHK_OPE_CD VARCHAR2(10)
  , GOMENTE_CHK_USER_CD CHAR(3)
  , GOMENTE_CHK_EIGY_YMD CHAR(8)
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_SHI_DEL_YOTEI_IX01
  on MDBHSM01.TT_RRK_SHI_DEL_YOTEI(REC_ID,SHI_CD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_SHI_DM_UKETORI_KYH
create table MDBHSM01.TT_RRK_SHI_DM_UKETORI_KYH (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , CHOSA_YMD CHAR(8)
  , DM_UKETORI_KYH_FLG CHAR(1)
  , GOMENTE_FLG CHAR(1)
  , GOMENTE_CHK_OPE_CD VARCHAR2(10)
  , GOMENTE_CHK_USER_CD CHAR(3)
  , GOMENTE_CHK_EIGY_YMD CHAR(8)
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_SHI_DM_UKETORI_KYH_IX01
  on MDBHSM01.TT_RRK_SHI_DM_UKETORI_KYH(REC_ID,SHI_CD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_SHI_FAX
create table MDBHSM01.TT_RRK_SHI_FAX (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , FAX VARCHAR2(15) not null
  , DEL_FLG CHAR(1)
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , CHOSA_YMD CHAR(8)
  , DAIHYO_FAX_FLG CHAR(1)
  , UKETORI_KYH_KBN CHAR(1)
  , TEL_KENYO_FLG CHAR(1)
  , BIKO VARCHAR2(400)
  , FAX_ATESAKI_CD CHAR(2)
  , GOMENTE_FLG CHAR(1)
  , GOMENTE_CHK_OPE_CD VARCHAR2(10)
  , GOMENTE_CHK_USER_CD CHAR(3)
  , GOMENTE_CHK_EIGY_YMD CHAR(8)
  , TRK_FKT_EIGY_YMD CHAR(8) not null
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_SHI_FAX_IX01
  on MDBHSM01.TT_RRK_SHI_FAX(REC_ID,SHI_CD,FAX)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_SHI_HKNJOTODOKE
create table MDBHSM01.TT_RRK_SHI_HKNJOTODOKE (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , CHOSA_YMD CHAR(8)
  , HKNJOTODOKE_KKNN_YMD CHAR(8)
  , HKNJOTODOKE_KKNN_USER_CD CHAR(3)
  , HKNJOTODOKE_KKNN_OPE_CD VARCHAR2(10)
  , HKNJOTODOKE_KBN CHAR(1)
  , HAIIN_HORYU_FLG CHAR(1)
  , HKNJOTODOKE_BIKO VARCHAR2(2000)
  , GOMENTE_FLG CHAR(1)
  , GOMENTE_CHK_OPE_CD VARCHAR2(10)
  , GOMENTE_CHK_USER_CD CHAR(3)
  , GOMENTE_CHK_EIGY_YMD CHAR(8)
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_SHI_HKNJOTODOKE_IX01
  on MDBHSM01.TT_RRK_SHI_HKNJOTODOKE(REC_ID,SHI_CD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_SHI_HOMEPAGE
create table MDBHSM01.TT_RRK_SHI_HOMEPAGE (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , HOMEPAGE_URL VARCHAR2(500) not null
  , DEL_FLG CHAR(1)
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , CHOSA_YMD CHAR(8)
  , HOMEPAGE_NM VARCHAR2(200)
  , GOMENTE_FLG CHAR(1)
  , GOMENTE_CHK_OPE_CD VARCHAR2(10)
  , GOMENTE_CHK_USER_CD CHAR(3)
  , GOMENTE_CHK_EIGY_YMD CHAR(8)
  , TRK_FKT_EIGY_YMD CHAR(8) not null
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_SHI_HOMEPAGE_IX01
  on MDBHSM01.TT_RRK_SHI_HOMEPAGE(REC_ID,SHI_CD,HOMEPAGE_URL)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_SHI_JUSHO
create table MDBHSM01.TT_RRK_SHI_JUSHO (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , CHOSA_YMD CHAR(8)
  , KEN_CD CHAR(2)
  , SHIKU_CD CHAR(3)
  , OAZA_CD CHAR(3)
  , AZA_CD CHAR(3)
  , ZIP CHAR(7)
  , JUSHO_KANJI_KEN_NM VARCHAR2(40)
  , JUSHO_KANJI_SHIKU_NM VARCHAR2(60)
  , JUSHO_KANJI_OAZA_NM VARCHAR2(80)
  , JUSHO_KANJI_AZA_NM VARCHAR2(60)
  , JUSHO_KANJI_TENYURYOKU VARCHAR2(400)
  , JUSHO_KANJI_RENKETSU VARCHAR2(640)
  , KENSAKU_JUSHO_KANJI VARCHAR2(640)
  , JUSHO_KANA_KEN_NM VARCHAR2(30)
  , JUSHO_KANA_SHIKU_NM VARCHAR2(90)
  , JUSHO_KANA_OAZA_NM VARCHAR2(120)
  , JUSHO_KANA_AZA_NM VARCHAR2(90)
  , JUSHO_KANA_TENYURYOKU VARCHAR2(300)
  , JUSHO_KANA_RENKETSU VARCHAR2(630)
  , HYPHEN_NASHI_FLG CHAR(1)
  , TENYURYOKU_NASHI_FLG CHAR(1)
  , KEN_NM_KANJI_MOJI_SU NUMBER(2, 0)
  , SHIKU_NM_KANJI_MOJI_SU NUMBER(2, 0)
  , OAZA_NM_KANJI_MOJI_SU NUMBER(2, 0)
  , AZA_NM_KANJI_MOJI_SU NUMBER(2, 0)
  , KEN_NM_KANA_MOJI_SU NUMBER(2, 0)
  , SHIKU_NM_KANA_MOJI_SU NUMBER(2, 0)
  , OAZA_NM_KANA_MOJI_SU NUMBER(2, 0)
  , AZA_NM_KANA_MOJI_SU NUMBER(2, 0)
  , JUSHO_HYOJI_NO VARCHAR2(13)
  , JUSHOFUMEI_CD CHAR(1)
  , JUSHO_UPD_EIGY_YMD CHAR(8)
  , JUSHO_KKNN_EIGY_YMD CHAR(8)
  , JUSHO_KKNN_USER_CD CHAR(3)
  , JUSHO_KKNN_OPE_CD VARCHAR2(10)
  , GOMENTE_FLG CHAR(1)
  , GOMENTE_CHK_OPE_CD VARCHAR2(10)
  , GOMENTE_CHK_USER_CD CHAR(3)
  , GOMENTE_CHK_EIGY_YMD CHAR(8)
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_SHI_JUSHO_IX01
  on MDBHSM01.TT_RRK_SHI_JUSHO(REC_ID,SHI_CD)
/

create index TT_RRK_SHI_JUSHO_IX02
  on MDBHSM01.TT_RRK_SHI_JUSHO(REC_ID,SHI_CD,TRK_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_SHI_KAIGYO_YOTEI
create table MDBHSM01.TT_RRK_SHI_KAIGYO_YOTEI (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , CHOSA_YMD CHAR(8)
  , KAIGYO_YOTEI_FLG CHAR(1)
  , KAIGYO_YOTEI_YM CHAR(6)
  , GOMENTE_FLG CHAR(1)
  , GOMENTE_CHK_OPE_CD VARCHAR2(10)
  , GOMENTE_CHK_USER_CD CHAR(3)
  , GOMENTE_CHK_EIGY_YMD CHAR(8)
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_SHI_KAIGYO_YOTEI_IX01
  on MDBHSM01.TT_RRK_SHI_KAIGYO_YOTEI(REC_ID,SHI_CD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_SHI_KAISETSU
create table MDBHSM01.TT_RRK_SHI_KAISETSU (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , CHOSA_YMD CHAR(8)
  , KAISETSU_HOJIN_NM VARCHAR2(200)
  , KAISETSU_HOJIN_NM_KANA VARCHAR2(240)
  , KAISETSU_KJN_YAKUSHOKU_NM VARCHAR2(80)
  , KAISETSU_KJN_NM VARCHAR2(80)
  , KAISETSU_KJN_NM_KANA VARCHAR2(60)
  , KAISETSU_KKNN_EIGY_YMD CHAR(8)
  , KAISETSU_KKNN_USER_CD CHAR(3)
  , KAISETSU_KKNN_OPE_CD VARCHAR2(10)
  , GOMENTE_FLG CHAR(1)
  , GOMENTE_CHK_OPE_CD VARCHAR2(10)
  , GOMENTE_CHK_USER_CD CHAR(3)
  , GOMENTE_CHK_EIGY_YMD CHAR(8)
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_SHI_KAISETSU_IX01
  on MDBHSM01.TT_RRK_SHI_KAISETSU(REC_ID,SHI_CD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_SHI_KANREN_DAIGAKU
create table MDBHSM01.TT_RRK_SHI_KANREN_DAIGAKU (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , CHOSA_YMD CHAR(8)
  , KANREN_DAIGAKU_OYA_REC_ID CHAR(2)
  , KANREN_DAIGAKU_OYA_SHI_CD CHAR(7)
  , GOMENTE_FLG CHAR(1)
  , GOMENTE_CHK_OPE_CD VARCHAR2(10)
  , GOMENTE_CHK_USER_CD CHAR(3)
  , GOMENTE_CHK_EIGY_YMD CHAR(8)
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_SHI_KANREN_DAIGAKU_IX01
  on MDBHSM01.TT_RRK_SHI_KANREN_DAIGAKU(REC_ID,SHI_CD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_SHI_KEIEITAI
create table MDBHSM01.TT_RRK_SHI_KEIEITAI (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , CHOSA_YMD CHAR(8)
  , KEIEITAI_CD CHAR(3)
  , SHI_KBN_CD CHAR(2)
  , OTC_FLG CHAR(1)
  , GOMENTE_FLG CHAR(1)
  , GOMENTE_CHK_OPE_CD VARCHAR2(10)
  , GOMENTE_CHK_USER_CD CHAR(3)
  , GOMENTE_CHK_EIGY_YMD CHAR(8)
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_SHI_KEIEITAI_IX01
  on MDBHSM01.TT_RRK_SHI_KEIEITAI(REC_ID,SHI_CD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_SHI_KEIJIBAN
create table MDBHSM01.TT_RRK_SHI_KEIJIBAN (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , CHOSA_YMD CHAR(8)
  , KEIJI_NAIYO CLOB
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_SHI_KEIJIBAN_IX01
  on MDBHSM01.TT_RRK_SHI_KEIJIBAN(REC_ID,SHI_CD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_SHI_KENSAKOMOKU
create table MDBHSM01.TT_RRK_SHI_KENSAKOMOKU (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , CHOSA_YMD CHAR(8)
  , KENSAKOMOKU_BISEIBUTSU_FLG CHAR(1)
  , KENSAKOMOKU_KESSEI_FLG CHAR(1)
  , KENSAKOMOKU_KETSUEKI_FLG CHAR(1)
  , KENSAKOMOKU_BYORI_FLG CHAR(1)
  , KENSAKOMOKU_KISEICHU_FLG CHAR(1)
  , KENSAKOMOKU_SEIKA_FLG CHAR(1)
  , KENSAKOMOKU_RI_FLG CHAR(1)
  , GOMENTE_FLG CHAR(1)
  , GOMENTE_CHK_OPE_CD VARCHAR2(10)
  , GOMENTE_CHK_USER_CD CHAR(3)
  , GOMENTE_CHK_EIGY_YMD CHAR(8)
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_SHI_KENSAKOMOKU_IX01
  on MDBHSM01.TT_RRK_SHI_KENSAKOMOKU(REC_ID,SHI_CD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_SHI_KOHO
create table MDBHSM01.TT_RRK_SHI_KOHO (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , CHOSA_YMD CHAR(8)
  , HKNIRYKKN_CD CHAR(7)
  , SHINSEI_YMD CHAR(8)
  , GOMENTE_FLG CHAR(1)
  , GOMENTE_CHK_OPE_CD VARCHAR2(10)
  , GOMENTE_CHK_USER_CD CHAR(3)
  , GOMENTE_CHK_EIGY_YMD CHAR(8)
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_SHI_KOHO_IX01
  on MDBHSM01.TT_RRK_SHI_KOHO(REC_ID,SHI_CD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_SHI_KYOKA_BED_SU
create table MDBHSM01.TT_RRK_SHI_KYOKA_BED_SU (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , CHOSA_YMD CHAR(8)
  , JOHOGEN_YMD CHAR(8)
  , KYOKA_BED_SU_SONOTA NUMBER(4, 0)
  , KYOKA_BED_SU_SEISHIN NUMBER(4, 0)
  , KYOKA_BED_SU_KEKKAKU NUMBER(4, 0)
  , KYOKA_BED_SU_KANSEN NUMBER(4, 0)
  , KYOKA_BED_SU_GOKEI NUMBER(4, 0)
  , KYOKA_BED_SU_IPPAN NUMBER(4, 0)
  , KYOKA_BED_SU_RYOYO NUMBER(4, 0)
  , BED_SU_KKNN_EIGY_YMD CHAR(8)
  , BED_SU_KKNN_USER_CD CHAR(3)
  , BED_SU_KKNN_OPE_CD VARCHAR2(10)
  , GOMENTE_FLG CHAR(1)
  , GOMENTE_CHK_OPE_CD VARCHAR2(10)
  , GOMENTE_CHK_USER_CD CHAR(3)
  , GOMENTE_CHK_EIGY_YMD CHAR(8)
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_SHI_KYOKA_BED_SU_IX01
  on MDBHSM01.TT_RRK_SHI_KYOKA_BED_SU(REC_ID,SHI_CD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_SHI_KYUIN
create table MDBHSM01.TT_RRK_SHI_KYUIN (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , CHOSA_YMD CHAR(8)
  , KYUIN_FLG CHAR(1)
  , KYUIN_S_YM CHAR(6)
  , GOMENTE_FLG CHAR(1)
  , GOMENTE_CHK_OPE_CD VARCHAR2(10)
  , GOMENTE_CHK_USER_CD CHAR(3)
  , GOMENTE_CHK_EIGY_YMD CHAR(8)
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_SHI_KYUIN_IX01
  on MDBHSM01.TT_RRK_SHI_KYUIN(REC_ID,SHI_CD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_SHI_MIKAKUNIN
create table MDBHSM01.TT_RRK_SHI_MIKAKUNIN (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , CHOSA_YMD CHAR(8)
  , MIKAKUNIN_FLG CHAR(1)
  , GOMENTE_FLG CHAR(1)
  , GOMENTE_CHK_OPE_CD VARCHAR2(10)
  , GOMENTE_CHK_USER_CD CHAR(3)
  , GOMENTE_CHK_EIGY_YMD CHAR(8)
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_SHI_MIKAKUNIN_IX01
  on MDBHSM01.TT_RRK_SHI_MIKAKUNIN(REC_ID,SHI_CD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_SHI_RN
create table MDBHSM01.TT_RRK_SHI_RN (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , CHOSA_YMD CHAR(8)
  , SHI_RN VARCHAR2(60)
  , SHI_RN_KANA VARCHAR2(120)
  , GOMENTE_FLG CHAR(1)
  , GOMENTE_CHK_OPE_CD VARCHAR2(10)
  , GOMENTE_CHK_USER_CD CHAR(3)
  , GOMENTE_CHK_EIGY_YMD CHAR(8)
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_SHI_RN_IX01
  on MDBHSM01.TT_RRK_SHI_RN(REC_ID,SHI_CD)
/

create index TT_RRK_SHI_RN_IX02
  on MDBHSM01.TT_RRK_SHI_RN(REC_ID,SHI_CD,TRK_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_SHI_SAISHINSA_KBN
create table MDBHSM01.TT_RRK_SHI_SAISHINSA_KBN (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , CHOSA_YMD CHAR(8)
  , SAISHINSA_KBN_CD CHAR(1)
  , GOMENTE_FLG CHAR(1)
  , GOMENTE_CHK_OPE_CD VARCHAR2(10)
  , GOMENTE_CHK_USER_CD CHAR(3)
  , GOMENTE_CHK_EIGY_YMD CHAR(8)
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_SHI_SAISHINSA_KBN_IX01
  on MDBHSM01.TT_RRK_SHI_SAISHINSA_KBN(REC_ID,SHI_CD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_SHI_SEISHIKI_NM
create table MDBHSM01.TT_RRK_SHI_SEISHIKI_NM (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , CHOSA_YMD CHAR(8)
  , SEISHIKI_SHI_NM VARCHAR2(200)
  , KENSAKU_SEISHIKI_SHI_NM VARCHAR2(200)
  , KENSAKU_SEISHIKI_SHI_NM_DISP VARCHAR2(200)
  , SEISHIKI_SHI_NM30 VARCHAR2(120)
  , SEISHIKI_SHI_NM_KANA VARCHAR2(240)
  , KENSAKU_SEISHIKI_SHI_NM_KANA VARCHAR2(240)
  , SEISHIKI_SHI_NM_KANA40 VARCHAR2(120)
  , SEISHIKI_SHI_NM_UPD_EIGY_YMD CHAR(8)
  , SEISHIKI_SHI_NM_KKNN_EIGY_YMD CHAR(8)
  , SEISHIKI_SHI_NM_KKNN_USER_CD CHAR(3)
  , SEISHIKI_SHI_NM_KKNN_OPE_CD VARCHAR2(10)
  , GOMENTE_FLG CHAR(1)
  , GOMENTE_CHK_OPE_CD VARCHAR2(10)
  , GOMENTE_CHK_USER_CD CHAR(3)
  , GOMENTE_CHK_EIGY_YMD CHAR(8)
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_SHI_SEISHIKI_NM_IX01
  on MDBHSM01.TT_RRK_SHI_SEISHIKI_NM(REC_ID,SHI_CD)
/

create index TT_RRK_SHI_SEISHIKI_NM_IX02
  on MDBHSM01.TT_RRK_SHI_SEISHIKI_NM(REC_ID,SHI_CD,TRK_EIGY_YMD)
/

create index TT_RRK_SHI_SEISHIKI_NM_IX03
  on MDBHSM01.TT_RRK_SHI_SEISHIKI_NM(KENSAKU_SEISHIKI_SHI_NM_DISP)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_SHI_SNRYKMK
create table MDBHSM01.TT_RRK_SHI_SNRYKMK (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , CHOSA_YMD CHAR(8)
  , SNRYKMK_CD_01 CHAR(3)
  , SNRYKMK_CD_02 CHAR(3)
  , SNRYKMK_CD_03 CHAR(3)
  , SNRYKMK_CD_04 CHAR(3)
  , SNRYKMK_CD_05 CHAR(3)
  , SNRYKMK_CD_06 CHAR(3)
  , SNRYKMK_CD_07 CHAR(3)
  , SNRYKMK_CD_08 CHAR(3)
  , SNRYKMK_CD_09 CHAR(3)
  , SNRYKMK_CD_10 CHAR(3)
  , SNRYKMK_CD_11 CHAR(3)
  , SNRYKMK_CD_12 CHAR(3)
  , SNRYKMK_CD_13 CHAR(3)
  , SNRYKMK_CD_14 CHAR(3)
  , SNRYKMK_CD_15 CHAR(3)
  , SNRYKMK_CD_16 CHAR(3)
  , SNRYKMK_CD_17 CHAR(3)
  , SNRYKMK_CD_18 CHAR(3)
  , SNRYKMK_CD_19 CHAR(3)
  , SNRYKMK_CD_20 CHAR(3)
  , SNRYKMK_CD_21 CHAR(3)
  , SNRYKMK_CD_22 CHAR(3)
  , SNRYKMK_CD_23 CHAR(3)
  , SNRYKMK_CD_24 CHAR(3)
  , SNRYKMK_CD_25 CHAR(3)
  , SNRYKMK_CD_26 CHAR(3)
  , SNRYKMK_CD_27 CHAR(3)
  , SNRYKMK_CD_28 CHAR(3)
  , SNRYKMK_CD_29 CHAR(3)
  , SNRYKMK_CD_30 CHAR(3)
  , SNRYKMK_CD_31 CHAR(3)
  , SNRYKMK_CD_32 CHAR(3)
  , SNRYKMK_CD_33 CHAR(3)
  , SNRYKMK_CD_34 CHAR(3)
  , SNRYKMK_CD_35 CHAR(3)
  , SNRYKMK_CD_36 CHAR(3)
  , SNRYKMK_CD_37 CHAR(3)
  , SNRYKMK_CD_38 CHAR(3)
  , SNRYKMK_CD_39 CHAR(3)
  , SNRYKMK_CD_40 CHAR(3)
  , SNRYKMK_CD_41 CHAR(3)
  , SNRYKMK_CD_42 CHAR(3)
  , SNRYKMK_CD_43 CHAR(3)
  , SNRYKMK_CD_44 CHAR(3)
  , SNRYKMK_CD_45 CHAR(3)
  , SNRYKMK_CD_46 CHAR(3)
  , SNRYKMK_CD_47 CHAR(3)
  , SNRYKMK_CD_48 CHAR(3)
  , SNRYKMK_CD_49 CHAR(3)
  , SNRYKMK_CD_50 CHAR(3)
  , SNRYKMK_CD_51 CHAR(3)
  , SNRYKMK_CD_52 CHAR(3)
  , SNRYKMK_CD_53 CHAR(3)
  , SNRYKMK_CD_54 CHAR(3)
  , SNRYKMK_CD_55 CHAR(3)
  , SNRYKMK_CD_56 CHAR(3)
  , SNRYKMK_CD_57 CHAR(3)
  , SNRYKMK_CD_58 CHAR(3)
  , SNRYKMK_CD_59 CHAR(3)
  , SNRYKMK_CD_60 CHAR(3)
  , SNRYKMK_KKNN_EIGY_YMD CHAR(8)
  , SNRYKMK_KKNN_USER_CD CHAR(3)
  , SNRYKMK_KKNN_OPE_CD VARCHAR2(10)
  , GOMENTE_FLG CHAR(1)
  , GOMENTE_CHK_OPE_CD VARCHAR2(10)
  , GOMENTE_CHK_USER_CD CHAR(3)
  , GOMENTE_CHK_EIGY_YMD CHAR(8)
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_SHI_SNRYKMK_IX01
  on MDBHSM01.TT_RRK_SHI_SNRYKMK(REC_ID,SHI_CD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_SHI_TEL
create table MDBHSM01.TT_RRK_SHI_TEL (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , CHOSA_YMD CHAR(8)
  , TEL VARCHAR2(15)
  , KENSAKU_TEL VARCHAR2(15)
  , DAI2_TEL VARCHAR2(15)
  , DAI2_TEL_NM VARCHAR2(80)
  , KENSAKU_DAI2_TEL VARCHAR2(15)
  , TEL_NASHI_FLG CHAR(1)
  , TEL_KKNN_EIGY_YMD CHAR(8)
  , TEL_KKNN_USER_CD CHAR(3)
  , TEL_KKNN_OPE_CD VARCHAR2(10)
  , GOMENTE_FLG CHAR(1)
  , GOMENTE_CHK_OPE_CD VARCHAR2(10)
  , GOMENTE_CHK_USER_CD CHAR(3)
  , GOMENTE_CHK_EIGY_YMD CHAR(8)
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_SHI_TEL_IX01
  on MDBHSM01.TT_RRK_SHI_TEL(REC_ID,SHI_CD)
/

create index TT_RRK_SHI_TEL_IX02
  on MDBHSM01.TT_RRK_SHI_TEL(REC_ID,SHI_CD,TRK_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_SHI_TIAWS_NAIYO
create table MDBHSM01.TT_RRK_SHI_TIAWS_NAIYO (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , NAIYO CLOB
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_SHI_TIAWS_NAIYO_IX01
  on MDBHSM01.TT_RRK_SHI_TIAWS_NAIYO(REC_ID,SHI_CD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_SHI_TOKUI_TAIO
create table MDBHSM01.TT_RRK_SHI_TOKUI_TAIO (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , CHOSA_YMD CHAR(8)
  , IMUSHITSU_REC_ID CHAR(2)
  , IMUSHITSU_SHI_CD CHAR(7)
  , GOMENTE_FLG CHAR(1)
  , GOMENTE_CHK_OPE_CD VARCHAR2(10)
  , GOMENTE_CHK_USER_CD CHAR(3)
  , GOMENTE_CHK_EIGY_YMD CHAR(8)
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_SHI_TOKUI_TAIO_IX01
  on MDBHSM01.TT_RRK_SHI_TOKUI_TAIO(REC_ID,SHI_CD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_SHI_YAKUZAISHI
create table MDBHSM01.TT_RRK_SHI_YAKUZAISHI (
  SEQ NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , SHITEN_EIGYOSHO_NM VARCHAR2(160)
  , MR_NM VARCHAR2(160)
  , CHOSA_YMD CHAR(8)
  , YAKUZAISHI_NM VARCHAR2(80)
  , YAKUZAISHI_NM_KANA VARCHAR2(60)
  , GOMENTE_FLG CHAR(1)
  , GOMENTE_CHK_OPE_CD VARCHAR2(10)
  , GOMENTE_CHK_USER_CD CHAR(3)
  , GOMENTE_CHK_EIGY_YMD CHAR(8)
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_SHI_YAKUZAISHI_IX01
  on MDBHSM01.TT_RRK_SHI_YAKUZAISHI(REC_ID,SHI_CD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_SHKI_TIAWS_NAIYO
create table MDBHSM01.TT_RRK_SHKI_TIAWS_NAIYO (
  SEQ NUMBER(38, 0) not null
  , SHKI_CD CHAR(5) not null
  , NAIYO CLOB
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_SHKI_TIAWS_NAIYO_IX01
  on MDBHSM01.TT_RRK_SHKI_TIAWS_NAIYO(SHKI_CD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_TSUIKAITEM
create table MDBHSM01.TT_RRK_TSUIKAITEM (
  SEQ NUMBER(38, 0) not null
  , RRK_RENBAN NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , DEL_FLG CHAR(1)
  , DEL_EIGY_YMD CHAR(8)
  , DPC_FLG CHAR(1)
  , DPC_SHITEI_YMD CHAR(8)
  , DPC_CANCEL_YMD CHAR(8)
  , DPC_CHOSEI_KEISU NUMBER(5, 4)
  , DPC_IHYO_KEISU NUMBER(5, 4)
  , DPC_MOD_EIGY_YMD CHAR(8)
  , DPCJUNBI_FLG CHAR(1)
  , DPCJUNBI_SHONIN_Y CHAR(4)
  , DPCJUNBI_CANCEL_YMD CHAR(8)
  , DPCJUNBI_MOD_EIGY_YMD CHAR(8)
  , GANKYOTEN_FLG CHAR(1)
  , GANKYOTEN_SHITEI_YMD CHAR(8)
  , GANKYOTEN_CANCEL_YMD CHAR(8)
  , GANKYOTEN_KBN CHAR(1)
  , GANKYOTEN_MOD_EIGY_YMD CHAR(8)
  , TOKUTEIKINO_FLG CHAR(1)
  , TOKUTEIKINO_SHONIN_YMD CHAR(8)
  , TOKUTEIKINO_CANCEL_YMD CHAR(8)
  , TOKUTEIKINO_MOD_EIGY_YMD CHAR(8)
  , CHIKIRY_FLG CHAR(1)
  , CHIKIRY_SHOKAIRITSU CHAR(4)
  , CHIKIRY_SHONIN_YMD CHAR(8)
  , CHIKIRY_CANCEL_YMD CHAR(8)
  , CHIKIRY_MOD_EIGY_YMD CHAR(8)
  , CHOKYUNOSOCCHU_FLG CHAR(1)
  , CHOKYUNOSOCCHU_SHONIN_YMD CHAR(8)
  , CHOKYUNOSOCCHU_CANCEL_YMD CHAR(8)
  , CHOKYUNOSOCCHU_MOD_EIGY_YMD CHAR(8)
  , SOGONYUIN_FLG CHAR(1)
  , SOGONYUIN_SHONIN_YMD CHAR(8)
  , SOGONYUIN_CANCEL_YMD CHAR(8)
  , SOGONYUIN_MOD_EIGY_YMD CHAR(8)
  , ISHIHOJO_FLG CHAR(1)
  , ISHIHOJO_SHONIN_YMD CHAR(8)
  , ISHIHOJO_CANCEL_YMD CHAR(8)
  , ISHIHOJO_MOD_EIGY_YMD CHAR(8)
  , KARTE_FLG CHAR(1)
  , KARTE_SHONIN_YMD CHAR(8)
  , KARTE_CANCEL_YMD CHAR(8)
  , KARTE_MOD_EIGY_YMD CHAR(8)
  , IRYANZEN_FLG CHAR(1)
  , IRYANZEN_SHONIN_YMD CHAR(8)
  , IRYANZEN_CANCEL_YMD CHAR(8)
  , IRYANZEN_MOD_EIGY_YMD CHAR(8)
  , JOKUSOCARE_FLG CHAR(1)
  , JOKUSOCARE_SHONIN_YMD CHAR(8)
  , JOKUSOCARE_CANCEL_YMD CHAR(8)
  , JOKUSOCARE_MOD_EIGY_YMD CHAR(8)
  , SHONIYAKAN_FLG CHAR(1)
  , SHONIYAKAN_SHONIN_YMD CHAR(8)
  , SHONIYAKAN_CANCEL_YMD CHAR(8)
  , SHONIYAKAN_MOD_EIGY_YMD CHAR(8)
  , KAIHOGATA_FLG CHAR(1)
  , KAIHOGATA_SHONIN_YMD CHAR(8)
  , KAIHOGATA_CANCEL_YMD CHAR(8)
  , KAIHOGATA_MOD_EIGY_YMD CHAR(8)
  , CHIKRENKEIPATH_FLG CHAR(1)
  , CHIKRENKEIPATH_CD_01 CHAR(2)
  , CHIKRENKEIPATH_CD_02 CHAR(2)
  , CHIKRENKEIPATH_CD_03 CHAR(2)
  , CHIKRENKEIPATH_CD_04 CHAR(2)
  , CHIKRENKEIPATH_CD_05 CHAR(2)
  , CHIKRENKEIPATH_CD_06 CHAR(2)
  , CHIKRENKEIPATH_CD_07 CHAR(2)
  , CHIKRENKEIPATH_CD_08 CHAR(2)
  , CHIKRENKEIPATH_CD_09 CHAR(2)
  , CHIKRENKEIPATH_CD_10 CHAR(2)
  , CHIKRENKEIPATH_CD_11 CHAR(2)
  , CHIKRENKEIPATH_CD_12 CHAR(2)
  , CHIKRENKEIPATH_CD_13 CHAR(2)
  , CHIKRENKEIPATH_CD_14 CHAR(2)
  , CHIKRENKEIPATH_CD_15 CHAR(2)
  , CHIKRENKEIPATH_CD_16 CHAR(2)
  , CHIKRENKEIPATH_CD_17 CHAR(2)
  , CHIKRENKEIPATH_CD_18 CHAR(2)
  , CHIKRENKEIPATH_CD_19 CHAR(2)
  , CHIKRENKEIPATH_CD_20 CHAR(2)
  , CHIKRENKEIPATH_MOD_EIGY_YMD CHAR(8)
  , YAKUZAIKANRI_FLG CHAR(1)
  , YAKUZAIKANRI_SHONIN_YMD CHAR(8)
  , YAKUZAIKANRI_CANCEL_YMD CHAR(8)
  , YAKUZAIKANRI_MOD_EIGY_YMD CHAR(8)
  , GAZOSHINDAN_FLG CHAR(1)
  , GAZOSHINDAN_SHONIN_YMD CHAR(8)
  , GAZOSHINDAN_CANCEL_YMD CHAR(8)
  , GAZOSHINDAN_MOD_EIGY_YMD CHAR(8)
  , GIRIKGK_FLG CHAR(1)
  , GIRIKGK_SHONIN_YMD CHAR(8)
  , GIRIKGK_CANCEL_YMD CHAR(8)
  , GIRIKGK_MOD_EIGY_YMD CHAR(8)
  , SHIKKANBETSUREHA_FLG CHAR(1)
  , SHIKKANBETSUREHA_CD_01 CHAR(2)
  , SHIKKANBETSUREHA_CD_02 CHAR(2)
  , SHIKKANBETSUREHA_CD_03 CHAR(2)
  , SHIKKANBETSUREHA_CD_04 CHAR(2)
  , SHIKKANBETSUREHA_CD_05 CHAR(2)
  , SHIKKANBETSUREHA_CD_06 CHAR(2)
  , SHIKKANBETSUREHA_CD_07 CHAR(2)
  , SHIKKANBETSUREHA_CD_08 CHAR(2)
  , SHIKKANBETSUREHA_CD_09 CHAR(2)
  , SHIKKANBETSUREHA_CD_10 CHAR(2)
  , SHIKKANBETSUREHA_MOD_EIGY_YMD CHAR(8)
  , MASUIKANRI_FLG CHAR(1)
  , MASUIKANRI_SHONIN_YMD CHAR(8)
  , MASUIKANRI_CANCEL_YMD CHAR(8)
  , MASUIKANRI_MOD_EIGY_YMD CHAR(8)
  , ZAITAKUSHIEN_FLG CHAR(1)
  , ZAITAKUSHIEN_SHONIN_YMD CHAR(8)
  , ZAITAKUSHIEN_CANCEL_YMD CHAR(8)
  , ZAITAKUSHIEN_MOD_EIGY_YMD CHAR(8)
  , ZAIISOKAN_FLG CHAR(1)
  , ZAIISOKAN_SHONIN_YMD CHAR(8)
  , ZAIISOKAN_CANCEL_YMD CHAR(8)
  , ZAIISOKAN_MOD_EIGY_YMD CHAR(8)
  , ZAITAKUMAKKI_FLG CHAR(1)
  , ZAITAKUMAKKI_SHONIN_YMD CHAR(8)
  , ZAITAKUMAKKI_CANCEL_YMD CHAR(8)
  , ZAITAKUMAKKI_MOD_EIGY_YMD CHAR(8)
  , CAREMIXTO_KBN_CD CHAR(1)
  , CAREMIXTO_MOD_EIGY_YMD CHAR(8)
  , RYOYO_KANI_KBN_CD CHAR(1)
  , RYOYO_KANI_KBN_CD_MOD_EIGY_YMD CHAR(8)
  , RYOYO_FLG CHAR(1)
  , RYOYO_IRY_KNG_SBT_CD CHAR(4)
  , RYOYO_IRY_BED_SU NUMBER(4, 0)
  , RYOYO_IRY_SHONIN_YMD CHAR(8)
  , RYOYO_IRY_CANCEL_YMD CHAR(8)
  , RYOYO_IRY_MOD_EIGY_YMD CHAR(8)
  , RYOYO_KIG_KNG_SBT_CD CHAR(4)
  , RYOYO_KIG_BED_SU NUMBER(4, 0)
  , RYOYO_KIG_SHONIN_YMD CHAR(8)
  , RYOYO_KIG_CANCEL_YMD CHAR(8)
  , RYOYO_KIG_MOD_EIGY_YMD CHAR(8)
  , RYOYO_GOKEI_BED_SU NUMBER(4, 0)
  , IPPAN_FLG CHAR(1)
  , IPPAN_KNG_SBT_CD CHAR(4)
  , IPPAN_BED_SU NUMBER(4, 0)
  , IPPAN_GOKEI_BED_SU NUMBER(4, 0)
  , IPPAN_MOD_EIGY_YMD CHAR(8)
  , SEISHIN_FLG CHAR(1)
  , SEISHIN_KNG_SBT_CD CHAR(4)
  , SEISHIN_BED_SU NUMBER(4, 0)
  , SEISHIN_GOKEI_BED_SU NUMBER(4, 0)
  , SEISHIN_MOD_EIGY_YMD CHAR(8)
  , KEKKAKU_FLG CHAR(1)
  , KEKKAKU_KNG_SBT_CD CHAR(4)
  , KEKKAKU_BED_SU NUMBER(4, 0)
  , KEKKAKU_MOD_EIGY_YMD CHAR(8)
  , KANSEN_TOKUTEI_FLG CHAR(1)
  , KANSEN_TOKUTEI_MOD_EIGY_YMD CHAR(8)
  , KANSEN_1SHU_FLG CHAR(1)
  , KANSEN_1SHU_MOD_EIGY_YMD CHAR(8)
  , KANSEN_2SHU_FLG CHAR(1)
  , KANSEN_2SHU_MOD_EIGY_YMD CHAR(8)
  , KANSEN_FLG CHAR(1)
  , KANSEN_BED_SU NUMBER(4, 0)
  , KANSEN_MOD_EIGY_YMD CHAR(8)
  , KANWACARE_FLG CHAR(1)
  , KANWACARE_BED_SU NUMBER(4, 0)
  , KANWACARE_SHONIN_YMD CHAR(8)
  , KANWACARE_CANCEL_YMD CHAR(8)
  , KANWACARE_MOD_EIGY_YMD CHAR(8)
  , IRYHYOKA_FLG CHAR(1)
  , IRYHYOKA_CD CHAR(2)
  , IRYHYOKA_SHONIN_YMD CHAR(8)
  , IRYHYOKA_CANCEL_YMD CHAR(8)
  , IRYHYOKA_MOD_EIGY_YMD CHAR(8)
  , RNSKNS_KKN1_FLG CHAR(1)
  , RNSKNS_KKN1_SHONIN_YMD CHAR(8)
  , RNSKNS_KKN1_CANCEL_YMD CHAR(8)
  , RNSKNS_KKN2_FLG CHAR(1)
  , RNSKNS_KKN2_SHONIN_YMD CHAR(8)
  , RNSKNS_KKN2_CANCEL_YMD CHAR(8)
  , RNSKNS_KYRYK_FLG CHAR(1)
  , RNSKNS_KYRYK_SHONIN_YMD CHAR(8)
  , RNSKNS_KYRYK_CANCEL_YMD CHAR(8)
  , RNSKNS_KYRYK_MOD_EIGY_YMD CHAR(8)
  , SAIGAIKYOTEN_FLG CHAR(1)
  , SAIGAIKYOTEN_KBN_CD CHAR(1)
  , SAIGAIKYOTEN_MOD_EIGY_YMD CHAR(8)
  , KYUKYU_IRY_KKJ_FLG CHAR(1)
  , KYUKYU_IRY_KKJ_MOD_EIGY_YMD CHAR(8)
  , KYUKYU_IRY_2JI_FLG CHAR(1)
  , KYUKYU_IRY_2JI_MOD_EIGY_YMD CHAR(8)
  , KYUKYU_IRY_3JI_FLG CHAR(1)
  , KYUKYU_IRY_3JI_MOD_EIGY_YMD CHAR(8)
  , KYUKYUKOKUJI_FLG CHAR(1)
  , KYUKYUKOKUJI_MOD_EIGY_YMD CHAR(8)
  , CHIKENCHUKAKU_FLG CHAR(1)
  , CHIKENCHUKAKU_SHONIN_YMD CHAR(8)
  , CHIKENCHUKAKU_CANCEL_YMD CHAR(8)
  , CHIKENCHUKAKU_KBN CHAR(1)
  , CHIKENCHUKAKU_MOD_EIGY_YMD CHAR(8)
  , NINCHISHOIRY_FLG CHAR(1)
  , NINCHISHOIRY_SHONIN_YMD CHAR(8)
  , NINCHISHOIRY_CANCEL_YMD CHAR(8)
  , NINCHISHOIRY_MOD_EIGY_YMD CHAR(8)
  , TOKUTEIKENSHIN_FLG CHAR(1)
  , TOKUTEIKENSHIN_MOD_EIGY_YMD CHAR(8)
  , TOKUTEISHIDO_FLG CHAR(1)
  , TOKUTEISHIDO_MOD_EIGY_YMD CHAR(8)
  , SENSHIN_1_40_FLG CHAR(1)
  , SENSHIN_1_20_FLG CHAR(1)
  , SENSHIN_21_40_FLG CHAR(1)
  , SENSHIN_CD_01 CHAR(4)
  , SENSHIN_CD_02 CHAR(4)
  , SENSHIN_CD_03 CHAR(4)
  , SENSHIN_CD_04 CHAR(4)
  , SENSHIN_CD_05 CHAR(4)
  , SENSHIN_CD_06 CHAR(4)
  , SENSHIN_CD_07 CHAR(4)
  , SENSHIN_CD_08 CHAR(4)
  , SENSHIN_CD_09 CHAR(4)
  , SENSHIN_CD_10 CHAR(4)
  , SENSHIN_CD_11 CHAR(4)
  , SENSHIN_CD_12 CHAR(4)
  , SENSHIN_CD_13 CHAR(4)
  , SENSHIN_CD_14 CHAR(4)
  , SENSHIN_CD_15 CHAR(4)
  , SENSHIN_CD_16 CHAR(4)
  , SENSHIN_CD_17 CHAR(4)
  , SENSHIN_CD_18 CHAR(4)
  , SENSHIN_CD_19 CHAR(4)
  , SENSHIN_CD_20 CHAR(4)
  , SENSHIN_CD_21 CHAR(4)
  , SENSHIN_CD_22 CHAR(4)
  , SENSHIN_CD_23 CHAR(4)
  , SENSHIN_CD_24 CHAR(4)
  , SENSHIN_CD_25 CHAR(4)
  , SENSHIN_CD_26 CHAR(4)
  , SENSHIN_CD_27 CHAR(4)
  , SENSHIN_CD_28 CHAR(4)
  , SENSHIN_CD_29 CHAR(4)
  , SENSHIN_CD_30 CHAR(4)
  , SENSHIN_CD_31 CHAR(4)
  , SENSHIN_CD_32 CHAR(4)
  , SENSHIN_CD_33 CHAR(4)
  , SENSHIN_CD_34 CHAR(4)
  , SENSHIN_CD_35 CHAR(4)
  , SENSHIN_CD_36 CHAR(4)
  , SENSHIN_CD_37 CHAR(4)
  , SENSHIN_CD_38 CHAR(4)
  , SENSHIN_CD_39 CHAR(4)
  , SENSHIN_CD_40 CHAR(4)
  , SENSHIN_MOD_EIGY_YMD CHAR(8)
  , SNTNIRY_FLG CHAR(1)
  , SNTNIRY_CD_01 CHAR(2)
  , SNTNIRY_CD_02 CHAR(2)
  , SNTNIRY_CD_03 CHAR(2)
  , SNTNIRY_CD_04 CHAR(2)
  , SNTNIRY_CD_05 CHAR(2)
  , SNTNIRY_CD_06 CHAR(2)
  , SNTNIRY_CD_07 CHAR(2)
  , SNTNIRY_CD_08 CHAR(2)
  , SNTNIRY_CD_09 CHAR(2)
  , SNTNIRY_CD_10 CHAR(2)
  , SNTNIRY_CD_11 CHAR(2)
  , SNTNIRY_CD_12 CHAR(2)
  , SNTNIRY_CD_13 CHAR(2)
  , SNTNIRY_CD_14 CHAR(2)
  , SNTNIRY_CD_15 CHAR(2)
  , SNTNIRY_CD_16 CHAR(2)
  , SNTNIRY_CD_17 CHAR(2)
  , SNTNIRY_CD_18 CHAR(2)
  , SNTNIRY_CD_19 CHAR(2)
  , SNTNIRY_CD_20 CHAR(2)
  , SNTNIRY_MOD_EIGY_YMD CHAR(8)
  , SEISAKUIRY_FLG CHAR(1)
  , SEISAKUIRY_BNY_CD_01 CHAR(2)
  , SEISAKUIRY_BNY_CD_02 CHAR(2)
  , SEISAKUIRY_BNY_CD_03 CHAR(2)
  , SEISAKUIRY_BNY_CD_04 CHAR(2)
  , SEISAKUIRY_BNY_CD_05 CHAR(2)
  , SEISAKUIRY_BNY_CD_06 CHAR(2)
  , SEISAKUIRY_BNY_CD_07 CHAR(2)
  , SEISAKUIRY_BNY_CD_08 CHAR(2)
  , SEISAKUIRY_BNY_CD_09 CHAR(2)
  , SEISAKUIRY_BNY_CD_10 CHAR(2)
  , SEISAKUIRY_BNY_CD_11 CHAR(2)
  , SEISAKUIRY_BNY_CD_12 CHAR(2)
  , SEISAKUIRY_BNY_CD_13 CHAR(2)
  , SEISAKUIRY_BNY_CD_14 CHAR(2)
  , SEISAKUIRY_BNY_CD_15 CHAR(2)
  , SEISAKUIRY_BNY_CD_16 CHAR(2)
  , SEISAKUIRY_BNY_CD_17 CHAR(2)
  , SEISAKUIRY_BNY_CD_18 CHAR(2)
  , SEISAKUIRY_BNY_CD_19 CHAR(2)
  , SEISAKUIRY_BNY_CD_20 CHAR(2)
  , SEISAKUIRY_KBN_CD_01 CHAR(1)
  , SEISAKUIRY_KBN_CD_02 CHAR(1)
  , SEISAKUIRY_KBN_CD_03 CHAR(1)
  , SEISAKUIRY_KBN_CD_04 CHAR(1)
  , SEISAKUIRY_KBN_CD_05 CHAR(1)
  , SEISAKUIRY_KBN_CD_06 CHAR(1)
  , SEISAKUIRY_KBN_CD_07 CHAR(1)
  , SEISAKUIRY_KBN_CD_08 CHAR(1)
  , SEISAKUIRY_KBN_CD_09 CHAR(1)
  , SEISAKUIRY_KBN_CD_10 CHAR(1)
  , SEISAKUIRY_KBN_CD_11 CHAR(1)
  , SEISAKUIRY_KBN_CD_12 CHAR(1)
  , SEISAKUIRY_KBN_CD_13 CHAR(1)
  , SEISAKUIRY_KBN_CD_14 CHAR(1)
  , SEISAKUIRY_KBN_CD_15 CHAR(1)
  , SEISAKUIRY_KBN_CD_16 CHAR(1)
  , SEISAKUIRY_KBN_CD_17 CHAR(1)
  , SEISAKUIRY_KBN_CD_18 CHAR(1)
  , SEISAKUIRY_KBN_CD_19 CHAR(1)
  , SEISAKUIRY_KBN_CD_20 CHAR(1)
  , SEISAKUIRY_MOD_EIGY_YMD CHAR(8)
  , HMNKNG_FLG CHAR(1)
  , HMNKNG_REC_ID CHAR(2)
  , HMNKNG_SHI_CD CHAR(7)
  , HMNKNG_MOD_EIGY_YMD CHAR(8)
  , ITEM_1_MOD_EIGY_YMD CHAR(8)
  , ITEM_2_MOD_EIGY_YMD CHAR(8)
  , ITEM_3_MOD_EIGY_YMD CHAR(8)
  , KAISETSU_FLG CHAR(1)
  , KAISETSU_YM VARCHAR2(6)
  , KAISETSU_MOD_EIGY_YMD CHAR(8)
  , COMMENTS VARCHAR2(2000)
  , SOGO_BYOIN_FLG CHAR(1)
  , SHOKAIGAIRAI_KBN_CD CHAR(1)
  , KYU_TOKUTEI_FLG CHAR(1)
  , KYU_TOKUTEI_SHONIN_YMD CHAR(8)
  , KYU_TOKUTEI_CANCEL_YMD CHAR(8)
  , KYU_TOKUTEI_MOD_EIGY_YMD CHAR(8)
  , KYU_NYUIN_FLG CHAR(1)
  , KYU_NYUIN_SHONIN_YMD CHAR(8)
  , KYU_NYUIN_CANCEL_YMD CHAR(8)
  , KYU_NYUIN_MOD_EIGY_YMD CHAR(8)
  , TRKJI_TRKNENDO CHAR(4)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_TSUIKAITEM_IX01
  on MDBHSM01.TT_RRK_TSUIKAITEM(RRK_RENBAN,REC_ID,SHI_CD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_RRK_TSUIKAITEM_RNSKNS
create table MDBHSM01.TT_RRK_TSUIKAITEM_RNSKNS (
  SEQ NUMBER(38, 0) not null
  , RRK_RENBAN NUMBER(38, 0) not null
  , REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , KYRYK_REC_ID CHAR(2) not null
  , KYRYK_SHI_CD CHAR(7) not null
  , S_NENDO CHAR(4) not null
  , SORTKEY NUMBER(4, 0)
  , SORTKEY_NOHIN NUMBER(3, 0)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/

create index TT_RRK_TSUIKAITEM_RNSKNS_IX01
  on MDBHSM01.TT_RRK_TSUIKAITEM_RNSKNS(RRK_RENBAN,REC_ID,SHI_CD,KYRYK_REC_ID,KYRYK_SHI_CD,S_NENDO)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_SHIME_SRKK
create table MDBHSM01.TT_SHIME_SRKK (
  SEQ NUMBER(38, 0) not null
  , EIGY_YMD CHAR(8)
  , SHIME_KBN CHAR(1)
  , SRKK_KBN CHAR(1)
  , SHORI_E_DATE DATE
  , SHIME_YM CHAR(6)
  , SHIMEBI_FROM CHAR(8)
  , SHIMEBI_TO CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_SHI_SAIBAN
create table MDBHSM01.TT_SHI_SAIBAN (
  REC_ID CHAR(2) not null
  , KEN_CD CHAR(2) not null
  , MAX_CD CHAR(7)
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (REC_ID,KEN_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_SHKI_TIAWS_KEKKA
create table MDBHSM01.TT_SHKI_TIAWS_KEKKA (
  SHKI_CD CHAR(5) not null
  , SHKI_DATE DATE not null
  , TANTO_BUSHOMEI VARCHAR2(200)
  , SAGYO_REC_ID CHAR(2)
  , KEKKA_KBN CHAR(1)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SHKI_CD,SHKI_DATE)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_SISN_IKJ_KIHON
create table MDBHSM01.TT_SISN_IKJ_KIHON (
  REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , DEL_FLG CHAR(1)
  , DEL_EIGY_YMD CHAR(8)
  , JOHO_YMD CHAR(8)
  , ANNAIYO_URL VARCHAR2(200)
  , ANNAIYO_URL_ORG VARCHAR2(200)
  , INNAI_SHOHO_FLG CHAR(1)
  , INGAI_SHOHO_FLG CHAR(1)
  , CHIKENJISSHI_FLG CHAR(1)
  , CHIKENJISSHI_S_YMD VARCHAR2(8)
  , CHIKENJISSHI_E_YMD VARCHAR2(8)
  , CHIKENJISSHI_KIYK_KENSU NUMBER(4, 0)
  , CHIKRENKEI_MADOGUCHI_FLG CHAR(1)
  , CHIKRENKEIPATH_FLG_IKJ CHAR(1)
  , NYUINSNRY_INNAI_RNKITISI_FLG CHAR(1)
  , ORDERINGSYSTEM_FLG CHAR(1)
  , ORDERINGSYSTEM_KENSA_FLG CHAR(1)
  , ORDERINGSYSTEM_SHOHO_FLG CHAR(1)
  , ORDERINGSYSTEM_YOYAKU_FLG CHAR(1)
  , ICD_CD_RIYO_FLG CHAR(1)
  , DENSHI_KARTE_FLG CHAR(1)
  , KARTEKANRI_SENNIN_FLG CHAR(1)
  , KARTEKANRI_SENNIN_SU NUMBER(3, 0)
  , COMMENTS VARCHAR2(2000)
  , KANJYASU_IPPAN_BED NUMBER(6, 1)
  , KANJYASU_RYOYO_BED NUMBER(6, 1)
  , KANJYASU_RYOYO_BED_IRY_HKN NUMBER(6, 1)
  , KANJYASU_RYOYO_BED_KIG_HKN NUMBER(6, 1)
  , KANJYASU_SEISHIN_BED NUMBER(6, 1)
  , KANJYASU_KEKKAKU_BED NUMBER(6, 1)
  , KANJYASU_KANSEN NUMBER(6, 1)
  , KANJYASU_ZENTAI_BED NUMBER(6, 1)
  , KANJYASU_BED_SBT_S_YMD VARCHAR2(8)
  , KANJYASU_BED_SBT_E_YMD VARCHAR2(8)
  , KANJYASU_GAIRAI NUMBER(6, 1)
  , KANJYASU_GAIRAI_S_YMD VARCHAR2(8)
  , KANJYASU_GAIRAI_E_YMD VARCHAR2(8)
  , KANJYASU_ZAITAKU NUMBER(6, 1)
  , KANJYASU_ZAITAKU_S_YMD VARCHAR2(8)
  , KANJYASU_ZAITAKU_E_YMD VARCHAR2(8)
  , KANJYANSU_IPPAN_BED NUMBER(6, 0)
  , KANJYANSU_RYOYO_BED NUMBER(6, 0)
  , KANJYANSU_RYOYO_BED_IRY_HKN NUMBER(6, 0)
  , KANJYANSU_RYOYO_BED_KIG_HKN NUMBER(6, 0)
  , KANJYANSU_SEISHIN_BED NUMBER(6, 0)
  , KANJYANSU_KEKKAKU_BED NUMBER(6, 0)
  , KANJYANSU_KANSEN NUMBER(6, 0)
  , KANJYANSU_ZENTAI_BED NUMBER(6, 0)
  , KANJYANSU_BED_SBT_S_YMD VARCHAR2(8)
  , KANJYANSU_BED_SBT_E_YMD VARCHAR2(8)
  , KANJYANSU_GAIRAI NUMBER(6, 0)
  , KANJYANSU_GAIRAI_S_YMD VARCHAR2(8)
  , KANJYANSU_GAIRAI_E_YMD VARCHAR2(8)
  , KANJYANSU_ZAITAKU NUMBER(6, 0)
  , KANJYANSU_ZAITAKU_S_YMD VARCHAR2(8)
  , KANJYANSU_ZAITAKU_E_YMD VARCHAR2(8)
  , AVGNISSU_IPPAN_BED NUMBER(6, 1)
  , AVGNISSU_RYOYO_BED NUMBER(6, 1)
  , AVGNISSU_RYOYO_BED_IRY_HKN NUMBER(6, 1)
  , AVGNISSU_RYOYO_BED_KIG_HKN NUMBER(6, 1)
  , AVGNISSU_SEISHIN_BED NUMBER(6, 1)
  , AVGNISSU_KEKKAKU_BED NUMBER(6, 1)
  , AVGNISSU_KANSEN NUMBER(6, 1)
  , AVGNISSU_ZENTAI_BED NUMBER(6, 1)
  , AVGNISSU_S_YMD VARCHAR2(8)
  , AVGNISSU_E_YMD VARCHAR2(8)
  , STB_FLG CHAR(1)
  , SHIKKAN_CHRY_FLG CHAR(1)
  , TNK_TIZI_SJT_FLG CHAR(1)
  , SMG_FLG CHAR(1)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (REC_ID,SHI_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_SISN_IKJ_SHIKKAN_CHRY
create table MDBHSM01.TT_SISN_IKJ_SHIKKAN_CHRY (
  REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , SHIKKAN_CHRY_DAI_CD CHAR(2) not null
  , SHIKKAN_CHRY_SHO_CD CHAR(2) not null
  , ZENNEN_KENSU NUMBER(6, 0)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_FKT_EIGY_YMD CHAR(8) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (REC_ID,SHI_CD,SHIKKAN_CHRY_DAI_CD,SHIKKAN_CHRY_SHO_CD)
);
/

create index TT_SISN_IKJ_SHIKKAN_CHRY_IX01
  on MDBHSM01.TT_SISN_IKJ_SHIKKAN_CHRY(SHIKKAN_CHRY_DAI_CD,SHIKKAN_CHRY_SHO_CD,REC_ID,SHI_CD,HAISHI_FLG)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_SISN_IKJ_SMG_NM
create table MDBHSM01.TT_SISN_IKJ_SMG_NM (
  REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , SMG_NM VARCHAR2(200) not null
  , SMG_SORTKEY NUMBER(4, 0)
  , SMG_SORTKEY_NOHIN NUMBER(4, 0)
  , BNRIHOJO_CD CHAR(3)
  , BNRIHOJO_CD_CHKZUMI_FLG CHAR(1)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_FKT_EIGY_YMD CHAR(8) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (REC_ID,SHI_CD,SMG_NM)
);
/

create index TT_SISN_IKJ_SMG_NM_IX01
  on MDBHSM01.TT_SISN_IKJ_SMG_NM(BNRIHOJO_CD,HAISHI_FLG,REC_ID,SHI_CD)
/

create index TT_SISN_IKJ_SMG_NM_IX02
  on MDBHSM01.TT_SISN_IKJ_SMG_NM(UPD_EIGY_YMD)
/

create index TT_SISN_IKJ_SMG_NM_IX03
  on MDBHSM01.TT_SISN_IKJ_SMG_NM(REC_ID,SHI_CD,SMG_NM,UPD_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_SISN_IKJ_STB
create table MDBHSM01.TT_SISN_IKJ_STB (
  REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , STB_CD CHAR(3) not null
  , STB_BED_SU NUMBER(5, 0)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_FKT_EIGY_YMD CHAR(8) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (REC_ID,SHI_CD,STB_CD)
);
/

create index TT_SISN_IKJ_STB_IX01
  on MDBHSM01.TT_SISN_IKJ_STB(REC_ID,SHI_CD,STB_CD,HAISHI_FLG)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_SISN_IKJ_TNK_TIZI_SJT
create table MDBHSM01.TT_SISN_IKJ_TNK_TIZI_SJT (
  REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , TNK_TIZI_SJT_CD CHAR(3) not null
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_FKT_EIGY_YMD CHAR(8) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (REC_ID,SHI_CD,TNK_TIZI_SJT_CD)
);
/

create index TT_SISN_IKJ_TNK_TIZI_SJT_IX01
  on MDBHSM01.TT_SISN_IKJ_TNK_TIZI_SJT(TNK_TIZI_SJT_CD,REC_ID,SHI_CD,HAISHI_FLG)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_SISN_IRK_2JI_KANRI
create table MDBHSM01.TT_SISN_IRK_2JI_KANRI (
  KEN_CD CHAR(2) not null
  , IRK_2JI_CD CHAR(4) not null
  , IRK_3JI_CD CHAR(1)
  , IRK_2JI_NM VARCHAR2(80)
  , SORTKEY NUMBER(4, 0)
  , IPPAN_KIJUN_BED_SU NUMBER(6, 0)
  , IPPAN_KIZON_BED_SU NUMBER(6, 0)
  , IPPAN_KAFUSOKU_BED_SU NUMBER(6, 0)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (KEN_CD,IRK_2JI_CD)
);
/

create index TT_SISN_IRK_2JI_KANRI_IX01
  on MDBHSM01.TT_SISN_IRK_2JI_KANRI(UPD_EIGY_YMD)
/

create index TT_SISN_IRK_2JI_KANRI_IX02
  on MDBHSM01.TT_SISN_IRK_2JI_KANRI(KEN_CD,IRK_2JI_CD,UPD_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_SISN_IRK_3JI_KANRI
create table MDBHSM01.TT_SISN_IRK_3JI_KANRI (
  KEN_CD CHAR(2) not null
  , IRK_3JI_CD CHAR(1) not null
  , IRK_3JI_NM VARCHAR2(80)
  , SORTKEY NUMBER(4, 0)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (KEN_CD,IRK_3JI_CD)
);
/

create index TT_SISN_IRK_3JI_KANRI_IX01
  on MDBHSM01.TT_SISN_IRK_3JI_KANRI(UPD_EIGY_YMD)
/

create index TT_SISN_IRK_3JI_KANRI_IX02
  on MDBHSM01.TT_SISN_IRK_3JI_KANRI(KEN_CD,IRK_3JI_CD,UPD_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_SISN_IRK_KANKATSU
create table MDBHSM01.TT_SISN_IRK_KANKATSU (
  KEN_CD CHAR(2) not null
  , IRK_2JI_CD CHAR(4) not null
  , SHIKU_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (KEN_CD,IRK_2JI_CD,SHIKU_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_SISN_IRK_KANRI
create table MDBHSM01.TT_SISN_IRK_KANRI (
  KEN_CD CHAR(2) not null
  , KOJI_YMD CHAR(8)
  , MOD_YMD CHAR(8)
  , COMMENTS VARCHAR2(2000)
  , IPPAN_KIJUN_BED_SU_GOKEI NUMBER(6, 0)
  , IPPAN_KIZON_BED_SU_GOKEI NUMBER(6, 0)
  , IPPAN_KIZON_YMD CHAR(8)
  , IPPAN_KAFUSOKU_BED_SU_GOKEI NUMBER(6, 0)
  , SEISHIN_KIJUN_BED_SU_GOKEI NUMBER(6, 0)
  , SEISHIN_KIZON_BED_SU_GOKEI NUMBER(6, 0)
  , SEISHIN_KIZON_YMD CHAR(8)
  , SEISHIN_KAFUSOKU_BED_SU_GOKEI NUMBER(6, 0)
  , KEKKAKU_KIJUN_BED_SU_GOKEI NUMBER(6, 0)
  , KEKKAKU_KIZON_BED_SU_GOKEI NUMBER(6, 0)
  , KEKKAKU_KIZON_YMD CHAR(8)
  , KEKKAKU_KAFUSOKU_BED_SU_GOKEI NUMBER(6, 0)
  , KANSEN_KIJUN_BED_SU_GOKEI NUMBER(6, 0)
  , KANSEN_KIZON_BED_SU_GOKEI NUMBER(6, 0)
  , KANSEN_KIZON_YMD CHAR(8)
  , KANSEN_KAFUSOKU_BED_SU_GOKEI NUMBER(6, 0)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (KEN_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_SISN_KGF_KNG
create table MDBHSM01.TT_SISN_KGF_KNG (
  KEN_CD CHAR(2) not null
  , REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , KGF_LOT_NO CHAR(2)
  , DEL_FLG CHAR(1)
  , DEL_EIGY_YMD CHAR(8)
  , COMMENTS VARCHAR2(2000)
  , IPPAN_1_KNG_SBT_CD CHAR(4)
  , IPPAN_1_BED_SU CHAR(4)
  , IPPAN_1_KIFKK_IPPAN_RYOYO_KBN CHAR(1)
  , IPPAN_1_SHONIN_YMD CHAR(8)
  , IPPAN_1_MOD_EIGY_YMD CHAR(8)
  , IPPAN_2_KNG_SBT_CD CHAR(4)
  , IPPAN_2_BED_SU CHAR(4)
  , IPPAN_2_KIFKK_IPPAN_RYOYO_KBN CHAR(1)
  , IPPAN_2_SHONIN_YMD CHAR(8)
  , IPPAN_2_MOD_EIGY_YMD CHAR(8)
  , IPPAN_3_KNG_SBT_CD CHAR(4)
  , IPPAN_3_BED_SU CHAR(4)
  , IPPAN_3_KIFKK_IPPAN_RYOYO_KBN CHAR(1)
  , IPPAN_3_SHONIN_YMD CHAR(8)
  , IPPAN_3_MOD_EIGY_YMD CHAR(8)
  , IPPAN_4_KNG_SBT_CD CHAR(4)
  , IPPAN_4_BED_SU CHAR(4)
  , IPPAN_4_KIFKK_IPPAN_RYOYO_KBN CHAR(1)
  , IPPAN_4_SHONIN_YMD CHAR(8)
  , IPPAN_4_MOD_EIGY_YMD CHAR(8)
  , IPPAN_5_KNG_SBT_CD CHAR(4)
  , IPPAN_5_BED_SU CHAR(4)
  , IPPAN_5_KIFKK_IPPAN_RYOYO_KBN CHAR(1)
  , IPPAN_5_SHONIN_YMD CHAR(8)
  , IPPAN_5_MOD_EIGY_YMD CHAR(8)
  , IPPAN_6_KNG_SBT_CD CHAR(4)
  , IPPAN_6_BED_SU CHAR(4)
  , IPPAN_6_KIFKK_IPPAN_RYOYO_KBN CHAR(1)
  , IPPAN_6_SHONIN_YMD CHAR(8)
  , IPPAN_6_MOD_EIGY_YMD CHAR(8)
  , IPPANKEI_KNG_SBT_SU CHAR(1)
  , IPPANKEI_BED_SU CHAR(4)
  , SEISHIN_1_KNG_SBT_CD CHAR(4)
  , SEISHIN_1_BED_SU CHAR(4)
  , SEISHIN_1_SHONIN_YMD CHAR(8)
  , SEISHIN_1_MOD_EIGY_YMD CHAR(8)
  , SEISHIN_2_KNG_SBT_CD CHAR(4)
  , SEISHIN_2_BED_SU CHAR(4)
  , SEISHIN_2_SHONIN_YMD CHAR(8)
  , SEISHIN_2_MOD_EIGY_YMD CHAR(8)
  , SEISHIN_3_KNG_SBT_CD CHAR(4)
  , SEISHIN_3_BED_SU CHAR(4)
  , SEISHIN_3_SHONIN_YMD CHAR(8)
  , SEISHIN_3_MOD_EIGY_YMD CHAR(8)
  , SEISHIN_4_KNG_SBT_CD CHAR(4)
  , SEISHIN_4_BED_SU CHAR(4)
  , SEISHIN_4_SHONIN_YMD CHAR(8)
  , SEISHIN_4_MOD_EIGY_YMD CHAR(8)
  , SEISHIN_5_KNG_SBT_CD CHAR(4)
  , SEISHIN_5_BED_SU CHAR(4)
  , SEISHIN_5_SHONIN_YMD CHAR(8)
  , SEISHIN_5_MOD_EIGY_YMD CHAR(8)
  , SEISHIN_6_KNG_SBT_CD CHAR(4)
  , SEISHIN_6_BED_SU CHAR(4)
  , SEISHIN_6_SHONIN_YMD CHAR(8)
  , SEISHIN_6_MOD_EIGY_YMD CHAR(8)
  , SEISHINKEI_KNG_SBT_SU CHAR(1)
  , SEISHINKEI_BED_SU CHAR(4)
  , KEKKAKU_1_KNG_SBT_CD CHAR(4)
  , KEKKAKU_1_BED_SU CHAR(4)
  , KEKKAKU_1_SHONIN_YMD CHAR(8)
  , KEKKAKU_1_MOD_EIGY_YMD CHAR(8)
  , KEKKAKU_2_KNG_SBT_CD CHAR(4)
  , KEKKAKU_2_BED_SU CHAR(4)
  , KEKKAKU_2_SHONIN_YMD CHAR(8)
  , KEKKAKU_2_MOD_EIGY_YMD CHAR(8)
  , KEKKAKU_3_KNG_SBT_CD CHAR(4)
  , KEKKAKU_3_BED_SU CHAR(4)
  , KEKKAKU_3_SHONIN_YMD CHAR(8)
  , KEKKAKU_3_MOD_EIGY_YMD CHAR(8)
  , KEKKAKU_4_KNG_SBT_CD CHAR(4)
  , KEKKAKU_4_BED_SU CHAR(4)
  , KEKKAKU_4_SHONIN_YMD CHAR(8)
  , KEKKAKU_4_MOD_EIGY_YMD CHAR(8)
  , KEKKAKUKEI_KNG_SBT_SU CHAR(1)
  , KEKKAKUKEI_BED_SU CHAR(4)
  , SONOTA_1_KNG_SBT_CD CHAR(4)
  , SONOTA_1_KBN_1 CHAR(1)
  , SONOTA_1_KBN_2 CHAR(1)
  , SONOTA_1_BED_SU CHAR(4)
  , SONOTA_1_KIFKK_IPPAN_RYOYO_KBN CHAR(1)
  , SONOTA_1_MOD_EIGY_YMD CHAR(8)
  , SONOTA_2_KNG_SBT_CD CHAR(4)
  , SONOTA_2_KBN_1 CHAR(1)
  , SONOTA_2_KBN_2 CHAR(1)
  , SONOTA_2_BED_SU CHAR(4)
  , SONOTA_2_KIFKK_IPPAN_RYOYO_KBN CHAR(1)
  , SONOTA_2_MOD_EIGY_YMD CHAR(8)
  , SONOTA_3_KNG_SBT_CD CHAR(4)
  , SONOTA_3_KBN_1 CHAR(1)
  , SONOTA_3_KBN_2 CHAR(1)
  , SONOTA_3_BED_SU CHAR(4)
  , SONOTA_3_KIFKK_IPPAN_RYOYO_KBN CHAR(1)
  , SONOTA_3_MOD_EIGY_YMD CHAR(8)
  , SONOTA_4_KNG_SBT_CD CHAR(4)
  , SONOTA_4_KBN_1 CHAR(1)
  , SONOTA_4_KBN_2 CHAR(1)
  , SONOTA_4_BED_SU CHAR(4)
  , SONOTA_4_KIFKK_IPPAN_RYOYO_KBN CHAR(1)
  , SONOTA_4_MOD_EIGY_YMD CHAR(8)
  , SONOTA_5_KNG_SBT_CD CHAR(4)
  , SONOTA_5_KBN_1 CHAR(1)
  , SONOTA_5_KBN_2 CHAR(1)
  , SONOTA_5_BED_SU CHAR(4)
  , SONOTA_5_KIFKK_IPPAN_RYOYO_KBN CHAR(1)
  , SONOTA_5_MOD_EIGY_YMD CHAR(8)
  , SONOTA_6_KNG_SBT_CD CHAR(4)
  , SONOTA_6_KBN_1 CHAR(1)
  , SONOTA_6_KBN_2 CHAR(1)
  , SONOTA_6_BED_SU CHAR(4)
  , SONOTA_6_KIFKK_IPPAN_RYOYO_KBN CHAR(1)
  , SONOTA_6_MOD_EIGY_YMD CHAR(8)
  , SONOTA_7_KNG_SBT_CD CHAR(4)
  , SONOTA_7_KBN_1 CHAR(1)
  , SONOTA_7_KBN_2 CHAR(1)
  , SONOTA_7_BED_SU CHAR(4)
  , SONOTA_7_KIFKK_IPPAN_RYOYO_KBN CHAR(1)
  , SONOTA_7_MOD_EIGY_YMD CHAR(8)
  , SONOTA_8_KNG_SBT_CD CHAR(4)
  , SONOTA_8_KBN_1 CHAR(1)
  , SONOTA_8_KBN_2 CHAR(1)
  , SONOTA_8_BED_SU CHAR(4)
  , SONOTA_8_KIFKK_IPPAN_RYOYO_KBN CHAR(1)
  , SONOTA_8_MOD_EIGY_YMD CHAR(8)
  , RYOYO_BED_SU CHAR(4)
  , RYOYO_MOD_EIGY_YMD CHAR(8)
  , KANSEN_BED_SU CHAR(4)
  , KANSEN_MOD_EIGY_YMD CHAR(8)
  , HANSEN_BED_SU CHAR(4)
  , HANSEN_MOD_EIGY_YMD CHAR(8)
  , NOHIN_JOKYO_KBN CHAR(1) default '0' not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (KEN_CD,REC_ID,SHI_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_SISN_KGF_LOT
create table MDBHSM01.TT_SISN_KGF_LOT (
  KEN_CD CHAR(2) not null
  , KGF_LOT_NO CHAR(2) not null
  , LIST_CHAKU_YMD CHAR(8)
  , ZENKAI_JOHO_YMD CHAR(8)
  , ZENKAI_CHOSA_YMD CHAR(8)
  , JOHO_YMD CHAR(8)
  , CHOSA_YMD CHAR(8)
  , KANRYO_YMD CHAR(8)
  , CHK VARCHAR2(20)
  , COMMENTS VARCHAR2(2000)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (KEN_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_SISN_KJN
create table MDBHSM01.TT_SISN_KJN (
  REC_ID CHAR(2) not null
  , KJN_CD CHAR(6) not null
  , DEL_FLG CHAR(1)
  , DEL_EIGY_YMD CHAR(8)
  , SHOKI_TRKJI_NM VARCHAR2(80)
  , SHOKI_TRKJI_NM_KANA VARCHAR2(60)
  , DEL_YOTEI_RIYU_CD CHAR(1)
  , DEL_NYURYOKU_YM CHAR(6)
  , DEL_NYURYOKU_USER_CD CHAR(3)
  , DEL_NYURYOKU_OPE_CD VARCHAR2(10)
  , DEL_YM CHAR(6)
  , CHOFUKU_AITSK_REC_ID CHAR(2)
  , CHOFUKU_AITSK_KJN_CD CHAR(6)
  , KJN_NM VARCHAR2(80)
  , KENSAKU_KJN_NM VARCHAR2(80)
  , KENSAKU_KJN_SEI VARCHAR2(80)
  , KENSAKU_KJN_NAMAE VARCHAR2(80)
  , KJN_NM_KANA VARCHAR2(60)
  , KENSAKU_KJN_NM_KANA VARCHAR2(60)
  , KENSAKU_KJN_SEI_KANA VARCHAR2(60)
  , KENSAKU_KJN_NAMAE_KANA VARCHAR2(60)
  , KJN_NM_UPD_EIGY_YMD CHAR(8)
  , KJN_NM_KKNN_EIGY_YMD CHAR(8)
  , KJN_NM_KKNN_USER_CD CHAR(3)
  , KJN_NM_KKNN_OPE_CD VARCHAR2(10)
  , SEIBETSU_KBN CHAR(1)
  , SEIBETSU_KKNN_EIGY_YMD CHAR(8)
  , SEIBETSU_KKNN_USER_CD CHAR(3)
  , SEIBETSU_KKNN_OPE_CD VARCHAR2(10)
  , BIRTH_GENGO_CD CHAR(1)
  , BIRTH_WY CHAR(2)
  , BIRTH_SY CHAR(4)
  , BIRTH_M CHAR(2)
  , BIRTH_D CHAR(2)
  , SEINENREI NUMBER(3, 0)
  , KAIKIN_KBN CHAR(1)
  , KAIGYONEN_GENGO_CD CHAR(1)
  , KAIGYONEN_WY CHAR(2)
  , KAIGYONEN_SY CHAR(4)
  , SHUSSHINKO_CD CHAR(3)
  , KENSAKU_SHUSSHINKO_CD CHAR(3)
  , GAKUBU_SHIKIBETSU_KBN CHAR(1)
  , SHUSSHINKO_KKNN_EIGY_YMD CHAR(8)
  , SHUSSHINKO_KKNN_USER_CD CHAR(3)
  , SHUSSHINKO_KKNN_OPE_CD VARCHAR2(10)
  , STNEN_GENGO_CD CHAR(1)
  , STNEN_WY CHAR(2)
  , STNEN_SY CHAR(4)
  , STNEN_KKNN_EIGY_YMD CHAR(8)
  , STNEN_KKNN_USER_CD CHAR(3)
  , STNEN_KKNN_OPE_CD VARCHAR2(10)
  , STNENREI NUMBER(3, 0)
  , IKKATSU_TRK_FLG CHAR(1)
  , TRKNEN_GENGO_CD CHAR(1)
  , TRKNEN_WY CHAR(2)
  , TRKNEN_SY CHAR(4)
  , TRKNEN_KKNN_EIGY_YMD CHAR(8)
  , TRKNEN_KKNN_USER_CD CHAR(3)
  , TRKNEN_KKNN_OPE_CD VARCHAR2(10)
  , TONENREI NUMBER(3, 0)
  , KOROSHOSITE_SHOGO_KBN_CD CHAR(1)
  , KOROSHOSITE_SHOGO_YMD CHAR(8)
  , SNRYKMK_CD_1 CHAR(3)
  , SNRYKMK_CD_2 CHAR(3)
  , SNRYKMK_CD_3 CHAR(3)
  , SNRYKMK_CD_4 CHAR(3)
  , SNRYKMK_CD_5 CHAR(3)
  , KENSAKU_SNRYKMK_CD_RENKETSU VARCHAR2(20)
  , SHOKUSHU_BNRI_CD CHAR(1)
  , SHUSSHINCHI_RIDAI_CD CHAR(2)
  , KANYU_ISHIKAI_RIDAI_CD CHAR(2)
  , HKNI_TRK_RIDAI_CD CHAR(2)
  , KEN_CD CHAR(2)
  , SHIKU_CD CHAR(3)
  , OAZA_CD CHAR(3)
  , AZA_CD CHAR(3)
  , ZIP CHAR(7)
  , JUSHO_KANJI_KEN_NM VARCHAR2(40)
  , JUSHO_KANJI_SHIKU_NM VARCHAR2(60)
  , JUSHO_KANJI_OAZA_NM VARCHAR2(80)
  , JUSHO_KANJI_AZA_NM VARCHAR2(60)
  , JUSHO_KANJI_TENYURYOKU VARCHAR2(400)
  , JUSHO_KANJI_RENKETSU VARCHAR2(640)
  , KENSAKU_JUSHO_KANJI VARCHAR2(640)
  , JUSHO_KANA_KEN_NM VARCHAR2(30)
  , JUSHO_KANA_SHIKU_NM VARCHAR2(90)
  , JUSHO_KANA_OAZA_NM VARCHAR2(120)
  , JUSHO_KANA_AZA_NM VARCHAR2(90)
  , JUSHO_KANA_TENYURYOKU VARCHAR2(300)
  , JUSHO_KANA_RENKETSU VARCHAR2(630)
  , HYPHEN_NASHI_FLG CHAR(1)
  , TENYURYOKU_NASHI_FLG CHAR(1)
  , KEN_NM_KANJI_MOJI_SU NUMBER(2, 0)
  , SHIKU_NM_KANJI_MOJI_SU NUMBER(2, 0)
  , OAZA_NM_KANJI_MOJI_SU NUMBER(2, 0)
  , AZA_NM_KANJI_MOJI_SU NUMBER(2, 0)
  , KEN_NM_KANA_MOJI_SU NUMBER(2, 0)
  , SHIKU_NM_KANA_MOJI_SU NUMBER(2, 0)
  , OAZA_NM_KANA_MOJI_SU NUMBER(2, 0)
  , AZA_NM_KANA_MOJI_SU NUMBER(2, 0)
  , JUSHO_HYOJI_NO VARCHAR2(13)
  , JUSHOFUMEI_CD CHAR(1)
  , JUSHO_UPD_EIGY_YMD CHAR(8)
  , TEL VARCHAR2(15)
  , RIYOTEISHI_KBN_CD CHAR(2)
  , RIYOTEISHI_RIYU_CD CHAR(3)
  , RIYOTEISHI_TRK_YMD CHAR(8)
  , RIYOTEISHI_KAIJO_YMD CHAR(8)
  , DCFCHOFUKU_REC_ID CHAR(2)
  , DCFCHOFUKU_KJN_CD CHAR(6)
  , COMMENTS VARCHAR2(2000)
  , NENREI_UPD_BATCH_EIGY_YMD CHAR(8)
  , NENREI_UPD_BATCH_DATE DATE
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (REC_ID,KJN_CD)
);
/

create index TT_SISN_KJN_IX01
  on MDBHSM01.TT_SISN_KJN(CHOFUKU_AITSK_REC_ID,CHOFUKU_AITSK_KJN_CD)
/

create index TT_SISN_KJN_IX02
  on MDBHSM01.TT_SISN_KJN(DCFCHOFUKU_REC_ID,DCFCHOFUKU_KJN_CD)
/

create index TT_SISN_KJN_IX03
  on MDBHSM01.TT_SISN_KJN(TRKNEN_GENGO_CD,TRKNEN_WY)
/

create index TT_SISN_KJN_IX04
  on MDBHSM01.TT_SISN_KJN(KENSAKU_KJN_NM,KENSAKU_KJN_NM_KANA,BIRTH_GENGO_CD,BIRTH_WY,BIRTH_M,BIRTH_D,SHUSSHINKO_CD,GAKUBU_SHIKIBETSU_KBN,STNEN_GENGO_CD,STNEN_WY,TRKNEN_GENGO_CD,TRKNEN_WY,SNRYKMK_CD_1,SNRYKMK_CD_2,SNRYKMK_CD_3,SNRYKMK_CD_4,SNRYKMK_CD_5)
/

create index TT_SISN_KJN_IX05
  on MDBHSM01.TT_SISN_KJN(UPD_EIGY_YMD)
/

create index TT_SISN_KJN_IX06
  on MDBHSM01.TT_SISN_KJN(REC_ID,KJN_CD,DEL_FLG,DEL_YOTEI_RIYU_CD,KENSAKU_KJN_NM_KANA)
/

create index TT_SISN_KJN_IX07
  on MDBHSM01.TT_SISN_KJN(KEN_CD,SHIKU_CD,OAZA_CD,AZA_CD)
/

create index TT_SISN_KJN_IX08
  on MDBHSM01.TT_SISN_KJN(REC_ID,KJN_CD,UPD_EIGY_YMD)
/

create index TT_SISN_KJN_IX09
  on MDBHSM01.TT_SISN_KJN(KENSAKU_KJN_NAMAE)
/

create index TT_SISN_KJN_IX10
  on MDBHSM01.TT_SISN_KJN(KENSAKU_KJN_NAMAE_KANA)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_SISN_KJN_GAKKAI
create table MDBHSM01.TT_SISN_KJN_GAKKAI (
  REC_ID CHAR(2) not null
  , KJN_CD CHAR(6) not null
  , GAKKAI_CD CHAR(3) not null
  , GAKKAI_NENDO CHAR(4) not null
  , DEL_FLG CHAR(1)
  , DEL_EIGY_YMD CHAR(8)
  , TRK_YM CHAR(6)
  , TRK_FKT_EIGY_YMD CHAR(8) not null
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (REC_ID,KJN_CD,GAKKAI_CD,GAKKAI_NENDO)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_SISN_KJN_KEIJIBAN
create table MDBHSM01.TT_SISN_KJN_KEIJIBAN (
  REC_ID CHAR(2) not null
  , KJN_CD CHAR(6) not null
  , KEIJI_NAIYO CLOB
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (REC_ID,KJN_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_SISN_KJN_KINMUSAKI
create table MDBHSM01.TT_SISN_KJN_KINMUSAKI (
  REC_ID CHAR(2) not null
  , KJN_CD CHAR(6) not null
  , KINMUSAKI_REC_ID CHAR(2) not null
  , KINMUSAKI_SHI_CD CHAR(7) not null
  , TAISHOKU_FLG CHAR(1)
  , TAISHOKU_EIGY_YMD CHAR(8)
  , DAIHYO_FLG CHAR(1)
  , SZKBUKA_CD CHAR(4)
  , KENSAKU_SZKBUKA_BNRI_CD VARCHAR2(13)
  , NYURYOKU_SZKBUKA_NM VARCHAR2(60)
  , NYURYOKU_SZKBUKA_NM_KANA VARCHAR2(60)
  , YAKUSHOKU_CD CHAR(3)
  , SHOKUI_CD CHAR(3)
  , KINMUSAKI_DM_FUKA_FLG CHAR(1)
  , KINMUSAKI_KKNN_YMD CHAR(8)
  , KINMUSAKI_KKNN_USER_CD CHAR(3)
  , KINMUSAKI_KKNN_OPE_CD VARCHAR2(10)
  , JOHO_YMD CHAR(8)
  , TRK_FKT_EIGY_YMD CHAR(8) not null
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (REC_ID,KJN_CD,KINMUSAKI_REC_ID,KINMUSAKI_SHI_CD)
);
/

create index TT_SISN_KJN_KINMUSAKI_IX01
  on MDBHSM01.TT_SISN_KJN_KINMUSAKI(KINMUSAKI_REC_ID,KINMUSAKI_SHI_CD)
/

create index TT_SISN_KJN_KINMUSAKI_IX02
  on MDBHSM01.TT_SISN_KJN_KINMUSAKI(SZKBUKA_CD)
/

create index TT_SISN_KJN_KINMUSAKI_IX03
  on MDBHSM01.TT_SISN_KJN_KINMUSAKI(UPD_EIGY_YMD)
/

create index TT_SISN_KJN_KINMUSAKI_IX04
  on MDBHSM01.TT_SISN_KJN_KINMUSAKI(REC_ID,KJN_CD,TAISHOKU_FLG,KENSAKU_SZKBUKA_BNRI_CD)
/

create index TT_SISN_KJN_KINMUSAKI_IX05
  on MDBHSM01.TT_SISN_KJN_KINMUSAKI(REC_ID,KJN_CD,KINMUSAKI_REC_ID,KINMUSAKI_SHI_CD,UPD_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_SISN_KJN_SENMONI
create table MDBHSM01.TT_SISN_KJN_SENMONI (
  REC_ID CHAR(2) not null
  , KJN_CD CHAR(6) not null
  , SENMONI_CD CHAR(4) not null
  , SENMONI_FLG CHAR(1)
  , SENMONI_KEISAI_YMD VARCHAR2(8)
  , NINTEII_FLG CHAR(1)
  , NINTEII_KEISAI_YMD VARCHAR2(8)
  , SHIDOI_FLG CHAR(1)
  , SHIDOI_KEISAI_YMD VARCHAR2(8)
  , SOSHITSU_FLG CHAR(1)
  , SOSHITSU_YMD VARCHAR2(8)
  , TRK_FKT_EIGY_YMD CHAR(8) not null
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (REC_ID,KJN_CD,SENMONI_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_SISN_SHI
create table MDBHSM01.TT_SISN_SHI (
  REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , DEL_FLG CHAR(1)
  , DEL_EIGY_YMD CHAR(8)
  , DEL_YOTEI_RIYU_CD CHAR(1)
  , DEL_NYURYOKU_YM CHAR(6)
  , DEL_NYURYOKU_USER_CD CHAR(3)
  , DEL_NYURYOKU_OPE_CD VARCHAR2(10)
  , DEL_YM CHAR(6)
  , CHOFUKU_AITSK_REC_ID CHAR(2)
  , CHOFUKU_AITSK_SHI_CD CHAR(7)
  , DCFCHOFUKU_REC_ID CHAR(2)
  , DCFCHOFUKU_SHI_CD CHAR(7)
  , KYUIN_FLG CHAR(1)
  , KYUIN_S_YM CHAR(6)
  , KAIGYO_YOTEI_FLG CHAR(1)
  , KAIGYO_YOTEI_YM CHAR(6)
  , KANREN_DAIGAKU_OYA_REC_ID CHAR(2)
  , KANREN_DAIGAKU_OYA_SHI_CD CHAR(7)
  , SEISHIKI_SHI_NM VARCHAR2(200)
  , KENSAKU_SEISHIKI_SHI_NM VARCHAR2(200)
  , KENSAKU_SEISHIKI_SHI_NM_DISP VARCHAR2(200)
  , SEISHIKI_SHI_NM30 VARCHAR2(120)
  , SEISHIKI_SHI_NM_KANA VARCHAR2(240)
  , KENSAKU_SEISHIKI_SHI_NM_KANA VARCHAR2(240)
  , SEISHIKI_SHI_NM_KANA40 VARCHAR2(120)
  , SHI_RN VARCHAR2(60)
  , KENSAKU_SHI_RN VARCHAR2(60)
  , SHI_RN_KANA VARCHAR2(120)
  , KENSAKU_SHI_RN_KANA VARCHAR2(120)
  , SEISHIKI_SHI_NM_UPD_EIGY_YMD CHAR(8)
  , SEISHIKI_SHI_NM_KKNN_EIGY_YMD CHAR(8)
  , SEISHIKI_SHI_NM_KKNN_USER_CD CHAR(3)
  , SEISHIKI_SHI_NM_KKNN_OPE_CD VARCHAR2(10)
  , KEN_CD CHAR(2)
  , SHIKU_CD CHAR(3)
  , OAZA_CD CHAR(3)
  , AZA_CD CHAR(3)
  , KENSAKU_MACHIAZA_CD CHAR(11)
  , ZIP CHAR(7)
  , JUSHO_KANJI_KEN_NM VARCHAR2(40)
  , JUSHO_KANJI_SHIKU_NM VARCHAR2(60)
  , JUSHO_KANJI_OAZA_NM VARCHAR2(80)
  , JUSHO_KANJI_AZA_NM VARCHAR2(60)
  , JUSHO_KANJI_TENYURYOKU VARCHAR2(400)
  , JUSHO_KANJI_RENKETSU VARCHAR2(640)
  , KENSAKU_JUSHO_KANJI VARCHAR2(640)
  , JUSHO_KANA_KEN_NM VARCHAR2(30)
  , JUSHO_KANA_SHIKU_NM VARCHAR2(90)
  , JUSHO_KANA_OAZA_NM VARCHAR2(120)
  , JUSHO_KANA_AZA_NM VARCHAR2(90)
  , JUSHO_KANA_TENYURYOKU VARCHAR2(300)
  , JUSHO_KANA_RENKETSU VARCHAR2(630)
  , HYPHEN_NASHI_FLG CHAR(1)
  , TENYURYOKU_NASHI_FLG CHAR(1)
  , KEN_NM_KANJI_MOJI_SU NUMBER(2, 0)
  , SHIKU_NM_KANJI_MOJI_SU NUMBER(2, 0)
  , OAZA_NM_KANJI_MOJI_SU NUMBER(2, 0)
  , AZA_NM_KANJI_MOJI_SU NUMBER(2, 0)
  , KEN_NM_KANA_MOJI_SU NUMBER(2, 0)
  , SHIKU_NM_KANA_MOJI_SU NUMBER(2, 0)
  , OAZA_NM_KANA_MOJI_SU NUMBER(2, 0)
  , AZA_NM_KANA_MOJI_SU NUMBER(2, 0)
  , JUSHO_HYOJI_NO VARCHAR2(13)
  , JUSHOFUMEI_CD CHAR(1)
  , JUSHO_UPD_EIGY_YMD CHAR(8)
  , JUSHO_KKNN_EIGY_YMD CHAR(8)
  , JUSHO_KKNN_USER_CD CHAR(3)
  , JUSHO_KKNN_OPE_CD VARCHAR2(10)
  , TEL VARCHAR2(15)
  , KENSAKU_TEL VARCHAR2(15)
  , TEL_KKNN_EIGY_YMD CHAR(8)
  , TEL_KKNN_USER_CD CHAR(3)
  , TEL_KKNN_OPE_CD VARCHAR2(10)
  , KEIEITAI_CD CHAR(3)
  , SHI_KBN_CD CHAR(2)
  , OTC_FLG CHAR(1)
  , IMUSHITSU_REC_ID CHAR(2)
  , IMUSHITSU_SHI_CD CHAR(7)
  , DM_UKETORI_KYH_FLG CHAR(1)
  , SAISHINSA_KBN_CD CHAR(1)
  , BYOTO_HEISA_KBN CHAR(1)
  , TEL_NASHI_FLG CHAR(1)
  , MIKAKUNIN_FLG CHAR(1)
  , DAIHYO_REC_ID CHAR(2)
  , DAIHYO_KJN_CD CHAR(6)
  , DAIHYO_YAKUSHOKU_CD CHAR(3)
  , DAIHYO_SHOKUI_CD CHAR(3)
  , DAIHYO_NM VARCHAR2(80)
  , KENSAKU_DAIHYO_NM VARCHAR2(80)
  , DAIHYO_NM_KANA VARCHAR2(60)
  , YAKUZAISHI_NM VARCHAR2(80)
  , KENSAKU_YAKUZAISHI_NM VARCHAR2(80)
  , YAKUZAISHI_NM_KANA VARCHAR2(60)
  , SHI_BED_SU NUMBER(4, 0)
  , ZENKAI_BED_SU NUMBER(4, 0)
  , BYOIN_SBT_CD CHAR(1)
  , SHINSEI_YMD CHAR(8)
  , HKNIRYKKN_CD CHAR(7)
  , JOHOGEN_YMD CHAR(8)
  , KYOKA_BED_SU_SONOTA NUMBER(4, 0)
  , KYOKA_BED_SU_SEISHIN NUMBER(4, 0)
  , KYOKA_BED_SU_KEKKAKU NUMBER(4, 0)
  , KYOKA_BED_SU_KANSEN NUMBER(4, 0)
  , KYOKA_BED_SU_GOKEI NUMBER(4, 0)
  , KYOKA_BED_SU_IPPAN NUMBER(4, 0)
  , KYOKA_BED_SU_RYOYO NUMBER(4, 0)
  , BED_SU_KKNN_EIGY_YMD CHAR(8)
  , BED_SU_KKNN_USER_CD CHAR(3)
  , BED_SU_KKNN_OPE_CD VARCHAR2(10)
  , SNRYKMK_CD_01 CHAR(3)
  , SNRYKMK_CD_02 CHAR(3)
  , SNRYKMK_CD_03 CHAR(3)
  , SNRYKMK_CD_04 CHAR(3)
  , SNRYKMK_CD_05 CHAR(3)
  , SNRYKMK_CD_06 CHAR(3)
  , SNRYKMK_CD_07 CHAR(3)
  , SNRYKMK_CD_08 CHAR(3)
  , SNRYKMK_CD_09 CHAR(3)
  , SNRYKMK_CD_10 CHAR(3)
  , SNRYKMK_CD_11 CHAR(3)
  , SNRYKMK_CD_12 CHAR(3)
  , SNRYKMK_CD_13 CHAR(3)
  , SNRYKMK_CD_14 CHAR(3)
  , SNRYKMK_CD_15 CHAR(3)
  , SNRYKMK_CD_16 CHAR(3)
  , SNRYKMK_CD_17 CHAR(3)
  , SNRYKMK_CD_18 CHAR(3)
  , SNRYKMK_CD_19 CHAR(3)
  , SNRYKMK_CD_20 CHAR(3)
  , SNRYKMK_CD_21 CHAR(3)
  , SNRYKMK_CD_22 CHAR(3)
  , SNRYKMK_CD_23 CHAR(3)
  , SNRYKMK_CD_24 CHAR(3)
  , SNRYKMK_CD_25 CHAR(3)
  , SNRYKMK_CD_26 CHAR(3)
  , SNRYKMK_CD_27 CHAR(3)
  , SNRYKMK_CD_28 CHAR(3)
  , SNRYKMK_CD_29 CHAR(3)
  , SNRYKMK_CD_30 CHAR(3)
  , SNRYKMK_CD_31 CHAR(3)
  , SNRYKMK_CD_32 CHAR(3)
  , SNRYKMK_CD_33 CHAR(3)
  , SNRYKMK_CD_34 CHAR(3)
  , SNRYKMK_CD_35 CHAR(3)
  , SNRYKMK_CD_36 CHAR(3)
  , SNRYKMK_CD_37 CHAR(3)
  , SNRYKMK_CD_38 CHAR(3)
  , SNRYKMK_CD_39 CHAR(3)
  , SNRYKMK_CD_40 CHAR(3)
  , SNRYKMK_CD_41 CHAR(3)
  , SNRYKMK_CD_42 CHAR(3)
  , SNRYKMK_CD_43 CHAR(3)
  , SNRYKMK_CD_44 CHAR(3)
  , SNRYKMK_CD_45 CHAR(3)
  , SNRYKMK_CD_46 CHAR(3)
  , SNRYKMK_CD_47 CHAR(3)
  , SNRYKMK_CD_48 CHAR(3)
  , SNRYKMK_CD_49 CHAR(3)
  , SNRYKMK_CD_50 CHAR(3)
  , SNRYKMK_CD_51 CHAR(3)
  , SNRYKMK_CD_52 CHAR(3)
  , SNRYKMK_CD_53 CHAR(3)
  , SNRYKMK_CD_54 CHAR(3)
  , SNRYKMK_CD_55 CHAR(3)
  , SNRYKMK_CD_56 CHAR(3)
  , SNRYKMK_CD_57 CHAR(3)
  , SNRYKMK_CD_58 CHAR(3)
  , SNRYKMK_CD_59 CHAR(3)
  , SNRYKMK_CD_60 CHAR(3)
  , SNRYKMK_KKNN_EIGY_YMD CHAR(8)
  , SNRYKMK_KKNN_USER_CD CHAR(3)
  , SNRYKMK_KKNN_OPE_CD VARCHAR2(10)
  , KENSAKOMOKU_BISEIBUTSU_FLG CHAR(1)
  , KENSAKOMOKU_KESSEI_FLG CHAR(1)
  , KENSAKOMOKU_KETSUEKI_FLG CHAR(1)
  , KENSAKOMOKU_BYORI_FLG CHAR(1)
  , KENSAKOMOKU_KISEICHU_FLG CHAR(1)
  , KENSAKOMOKU_SEIKA_FLG CHAR(1)
  , KENSAKOMOKU_RI_FLG CHAR(1)
  , DAI2_TEL VARCHAR2(15)
  , DAI2_TEL_NM VARCHAR2(80)
  , KENSAKU_DAI2_TEL VARCHAR2(15)
  , KAISETSU_HOJIN_NM VARCHAR2(200)
  , KENSAKU_KAISETSU_HOJIN_NM VARCHAR2(200)
  , KAISETSU_HOJIN_NM_KANA VARCHAR2(240)
  , KAISETSU_KJN_YAKUSHOKU_NM VARCHAR2(80)
  , KAISETSU_KJN_NM VARCHAR2(80)
  , KAISETSU_KJN_NM_KANA VARCHAR2(60)
  , CHAIN_HONBU_REC_ID CHAR(2)
  , CHAIN_HONBU_SHI_CD CHAR(7)
  , CHAIN_HONBU_SBT_CD CHAR(1)
  , KAISETSU_KKNN_EIGY_YMD CHAR(8)
  , KAISETSU_KKNN_USER_CD CHAR(3)
  , KAISETSU_KKNN_OPE_CD VARCHAR2(10)
  , HKNJOTODOKE_KKNN_YMD CHAR(8)
  , HKNJOTODOKE_KKNN_USER_CD CHAR(3)
  , HKNJOTODOKE_KKNN_OPE_CD VARCHAR2(10)
  , HKNJOTODOKE_KBN CHAR(1)
  , HAIIN_HORYU_FLG CHAR(1)
  , HKNJOTODOKE_BIKO VARCHAR2(2000)
  , COMMENTS VARCHAR2(2000)
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (REC_ID,SHI_CD)
);
/

create index TT_SISN_SHI_IX01
  on MDBHSM01.TT_SISN_SHI(CHOFUKU_AITSK_REC_ID,CHOFUKU_AITSK_SHI_CD)
/

create index TT_SISN_SHI_IX02
  on MDBHSM01.TT_SISN_SHI(KENSAKU_SEISHIKI_SHI_NM,KENSAKU_SEISHIKI_SHI_NM_KANA,KENSAKU_TEL,KEN_CD,SHIKU_CD,OAZA_CD,AZA_CD,ZIP,KENSAKU_JUSHO_KANJI,KEIEITAI_CD,SHI_KBN_CD,KENSAKU_DAIHYO_NM,KENSAKU_YAKUZAISHI_NM,KENSAKU_KAISETSU_HOJIN_NM,HKNIRYKKN_CD)
/

create index TT_SISN_SHI_IX03
  on MDBHSM01.TT_SISN_SHI(KANREN_DAIGAKU_OYA_REC_ID,KANREN_DAIGAKU_OYA_SHI_CD)
/

create index TT_SISN_SHI_IX04
  on MDBHSM01.TT_SISN_SHI(IMUSHITSU_REC_ID,IMUSHITSU_SHI_CD)
/

create index TT_SISN_SHI_IX05
  on MDBHSM01.TT_SISN_SHI(CHAIN_HONBU_REC_ID,CHAIN_HONBU_SHI_CD)
/

create index TT_SISN_SHI_IX06
  on MDBHSM01.TT_SISN_SHI(TEL,REC_ID,SHI_CD)
/

create index TT_SISN_SHI_IX07
  on MDBHSM01.TT_SISN_SHI(REC_ID,TRK_EIGY_YMD)
/

create index TT_SISN_SHI_IX08
  on MDBHSM01.TT_SISN_SHI(DEL_FLG,SHI_KBN_CD,IMUSHITSU_REC_ID,IMUSHITSU_SHI_CD)
/

create index TT_SISN_SHI_IX09
  on MDBHSM01.TT_SISN_SHI(UPD_EIGY_YMD)
/

create index TT_SISN_SHI_IX10
  on MDBHSM01.TT_SISN_SHI(KENSAKU_TEL)
/

create index TT_SISN_SHI_IX11
  on MDBHSM01.TT_SISN_SHI(KEN_CD,SHIKU_CD,OAZA_CD,AZA_CD)
/

create index TT_SISN_SHI_IX12
  on MDBHSM01.TT_SISN_SHI(DEL_YOTEI_RIYU_CD,KENSAKU_TEL,KENSAKU_DAI2_TEL,KENSAKU_MACHIAZA_CD)
/

create index TT_SISN_SHI_IX13
  on MDBHSM01.TT_SISN_SHI(DAIHYO_REC_ID,DAIHYO_KJN_CD)
/

create index TT_SISN_SHI_IX14
  on MDBHSM01.TT_SISN_SHI(JUSHO_KANJI_RENKETSU)
/

create index TT_SISN_SHI_IX15
  on MDBHSM01.TT_SISN_SHI(REC_ID,SHI_CD,UPD_EIGY_YMD)
/

create index TT_SISN_SHI_IX16
  on MDBHSM01.TT_SISN_SHI(KEN_CD)
/

create index TT_SISN_SHI_IX17
  on MDBHSM01.TT_SISN_SHI(KENSAKU_SEISHIKI_SHI_NM_DISP)
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_SISN_SHI_FAX
create table MDBHSM01.TT_SISN_SHI_FAX (
  REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , FAX VARCHAR2(15) not null
  , DEL_FLG CHAR(1)
  , DAIHYO_FAX_FLG CHAR(1)
  , UKETORI_KYH_KBN CHAR(1)
  , TEL_KENYO_FLG CHAR(1)
  , BIKO VARCHAR2(400)
  , KENSAKU_FAX VARCHAR2(15)
  , FAX_ATESAKI_CD CHAR(2)
  , TRK_FKT_EIGY_YMD CHAR(8) not null
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (REC_ID,SHI_CD,FAX)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_SISN_SHI_HOMEPAGE
create table MDBHSM01.TT_SISN_SHI_HOMEPAGE (
  REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , HOMEPAGE_URL VARCHAR2(500) not null
  , DEL_FLG CHAR(1)
  , HOMEPAGE_NM VARCHAR2(200)
  , TRK_FKT_EIGY_YMD CHAR(8) not null
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (REC_ID,SHI_CD,HOMEPAGE_URL)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_SISN_SHI_KEIJIBAN
create table MDBHSM01.TT_SISN_SHI_KEIJIBAN (
  REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , KEIJI_NAIYO CLOB
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (REC_ID,SHI_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_SISN_SHI_TIAWS_NAIYO
create table MDBHSM01.TT_SISN_SHI_TIAWS_NAIYO (
  REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , NAIYO CLOB
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (REC_ID,SHI_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_SISN_SHKI_TIAWS_NAIYO
create table MDBHSM01.TT_SISN_SHKI_TIAWS_NAIYO (
  SHKI_CD CHAR(5) not null
  , NAIYO CLOB
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SHKI_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_SISN_TSUIKAITEM
create table MDBHSM01.TT_SISN_TSUIKAITEM (
  REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , DEL_FLG CHAR(1)
  , DEL_EIGY_YMD CHAR(8)
  , DPC_FLG CHAR(1)
  , DPC_SHITEI_YMD CHAR(8)
  , DPC_CANCEL_YMD CHAR(8)
  , DPC_CHOSEI_KEISU NUMBER(5, 4)
  , DPC_IHYO_KEISU NUMBER(5, 4)
  , DPC_MOD_EIGY_YMD CHAR(8)
  , DPCJUNBI_FLG CHAR(1)
  , DPCJUNBI_SHONIN_Y CHAR(4)
  , DPCJUNBI_CANCEL_YMD CHAR(8)
  , DPCJUNBI_MOD_EIGY_YMD CHAR(8)
  , GANKYOTEN_FLG CHAR(1)
  , GANKYOTEN_SHITEI_YMD CHAR(8)
  , GANKYOTEN_CANCEL_YMD CHAR(8)
  , GANKYOTEN_KBN CHAR(1)
  , GANKYOTEN_MOD_EIGY_YMD CHAR(8)
  , TOKUTEIKINO_FLG CHAR(1)
  , TOKUTEIKINO_SHONIN_YMD CHAR(8)
  , TOKUTEIKINO_CANCEL_YMD CHAR(8)
  , TOKUTEIKINO_MOD_EIGY_YMD CHAR(8)
  , CHIKIRY_FLG CHAR(1)
  , CHIKIRY_SHOKAIRITSU CHAR(4)
  , CHIKIRY_SHONIN_YMD CHAR(8)
  , CHIKIRY_CANCEL_YMD CHAR(8)
  , CHIKIRY_MOD_EIGY_YMD CHAR(8)
  , CHOKYUNOSOCCHU_FLG CHAR(1)
  , CHOKYUNOSOCCHU_SHONIN_YMD CHAR(8)
  , CHOKYUNOSOCCHU_CANCEL_YMD CHAR(8)
  , CHOKYUNOSOCCHU_MOD_EIGY_YMD CHAR(8)
  , SOGONYUIN_FLG CHAR(1)
  , SOGONYUIN_SHONIN_YMD CHAR(8)
  , SOGONYUIN_CANCEL_YMD CHAR(8)
  , SOGONYUIN_MOD_EIGY_YMD CHAR(8)
  , ISHIHOJO_FLG CHAR(1)
  , ISHIHOJO_SHONIN_YMD CHAR(8)
  , ISHIHOJO_CANCEL_YMD CHAR(8)
  , ISHIHOJO_MOD_EIGY_YMD CHAR(8)
  , KARTE_FLG CHAR(1)
  , KARTE_SHONIN_YMD CHAR(8)
  , KARTE_CANCEL_YMD CHAR(8)
  , KARTE_MOD_EIGY_YMD CHAR(8)
  , IRYANZEN_FLG CHAR(1)
  , IRYANZEN_SHONIN_YMD CHAR(8)
  , IRYANZEN_CANCEL_YMD CHAR(8)
  , IRYANZEN_MOD_EIGY_YMD CHAR(8)
  , JOKUSOCARE_FLG CHAR(1)
  , JOKUSOCARE_SHONIN_YMD CHAR(8)
  , JOKUSOCARE_CANCEL_YMD CHAR(8)
  , JOKUSOCARE_MOD_EIGY_YMD CHAR(8)
  , SHONIYAKAN_FLG CHAR(1)
  , SHONIYAKAN_SHONIN_YMD CHAR(8)
  , SHONIYAKAN_CANCEL_YMD CHAR(8)
  , SHONIYAKAN_MOD_EIGY_YMD CHAR(8)
  , KAIHOGATA_FLG CHAR(1)
  , KAIHOGATA_SHONIN_YMD CHAR(8)
  , KAIHOGATA_CANCEL_YMD CHAR(8)
  , KAIHOGATA_MOD_EIGY_YMD CHAR(8)
  , CHIKRENKEIPATH_FLG CHAR(1)
  , CHIKRENKEIPATH_CD_01 CHAR(2)
  , CHIKRENKEIPATH_CD_02 CHAR(2)
  , CHIKRENKEIPATH_CD_03 CHAR(2)
  , CHIKRENKEIPATH_CD_04 CHAR(2)
  , CHIKRENKEIPATH_CD_05 CHAR(2)
  , CHIKRENKEIPATH_CD_06 CHAR(2)
  , CHIKRENKEIPATH_CD_07 CHAR(2)
  , CHIKRENKEIPATH_CD_08 CHAR(2)
  , CHIKRENKEIPATH_CD_09 CHAR(2)
  , CHIKRENKEIPATH_CD_10 CHAR(2)
  , CHIKRENKEIPATH_CD_11 CHAR(2)
  , CHIKRENKEIPATH_CD_12 CHAR(2)
  , CHIKRENKEIPATH_CD_13 CHAR(2)
  , CHIKRENKEIPATH_CD_14 CHAR(2)
  , CHIKRENKEIPATH_CD_15 CHAR(2)
  , CHIKRENKEIPATH_CD_16 CHAR(2)
  , CHIKRENKEIPATH_CD_17 CHAR(2)
  , CHIKRENKEIPATH_CD_18 CHAR(2)
  , CHIKRENKEIPATH_CD_19 CHAR(2)
  , CHIKRENKEIPATH_CD_20 CHAR(2)
  , CHIKRENKEIPATH_MOD_EIGY_YMD CHAR(8)
  , YAKUZAIKANRI_FLG CHAR(1)
  , YAKUZAIKANRI_SHONIN_YMD CHAR(8)
  , YAKUZAIKANRI_CANCEL_YMD CHAR(8)
  , YAKUZAIKANRI_MOD_EIGY_YMD CHAR(8)
  , GAZOSHINDAN_FLG CHAR(1)
  , GAZOSHINDAN_SHONIN_YMD CHAR(8)
  , GAZOSHINDAN_CANCEL_YMD CHAR(8)
  , GAZOSHINDAN_MOD_EIGY_YMD CHAR(8)
  , GIRIKGK_FLG CHAR(1)
  , GIRIKGK_SHONIN_YMD CHAR(8)
  , GIRIKGK_CANCEL_YMD CHAR(8)
  , GIRIKGK_MOD_EIGY_YMD CHAR(8)
  , SHIKKANBETSUREHA_FLG CHAR(1)
  , SHIKKANBETSUREHA_CD_01 CHAR(2)
  , SHIKKANBETSUREHA_CD_02 CHAR(2)
  , SHIKKANBETSUREHA_CD_03 CHAR(2)
  , SHIKKANBETSUREHA_CD_04 CHAR(2)
  , SHIKKANBETSUREHA_CD_05 CHAR(2)
  , SHIKKANBETSUREHA_CD_06 CHAR(2)
  , SHIKKANBETSUREHA_CD_07 CHAR(2)
  , SHIKKANBETSUREHA_CD_08 CHAR(2)
  , SHIKKANBETSUREHA_CD_09 CHAR(2)
  , SHIKKANBETSUREHA_CD_10 CHAR(2)
  , SHIKKANBETSUREHA_MOD_EIGY_YMD CHAR(8)
  , MASUIKANRI_FLG CHAR(1)
  , MASUIKANRI_SHONIN_YMD CHAR(8)
  , MASUIKANRI_CANCEL_YMD CHAR(8)
  , MASUIKANRI_MOD_EIGY_YMD CHAR(8)
  , ZAITAKUSHIEN_FLG CHAR(1)
  , ZAITAKUSHIEN_SHONIN_YMD CHAR(8)
  , ZAITAKUSHIEN_CANCEL_YMD CHAR(8)
  , ZAITAKUSHIEN_MOD_EIGY_YMD CHAR(8)
  , ZAIISOKAN_FLG CHAR(1)
  , ZAIISOKAN_SHONIN_YMD CHAR(8)
  , ZAIISOKAN_CANCEL_YMD CHAR(8)
  , ZAIISOKAN_MOD_EIGY_YMD CHAR(8)
  , ZAITAKUMAKKI_FLG CHAR(1)
  , ZAITAKUMAKKI_SHONIN_YMD CHAR(8)
  , ZAITAKUMAKKI_CANCEL_YMD CHAR(8)
  , ZAITAKUMAKKI_MOD_EIGY_YMD CHAR(8)
  , CAREMIXTO_KBN_CD CHAR(1)
  , CAREMIXTO_MOD_EIGY_YMD CHAR(8)
  , RYOYO_KANI_KBN_CD CHAR(1)
  , RYOYO_KANI_KBN_CD_MOD_EIGY_YMD CHAR(8)
  , RYOYO_FLG CHAR(1)
  , RYOYO_IRY_KNG_SBT_CD CHAR(4)
  , RYOYO_IRY_BED_SU NUMBER(4, 0)
  , RYOYO_IRY_SHONIN_YMD CHAR(8)
  , RYOYO_IRY_CANCEL_YMD CHAR(8)
  , RYOYO_IRY_MOD_EIGY_YMD CHAR(8)
  , RYOYO_KIG_KNG_SBT_CD CHAR(4)
  , RYOYO_KIG_BED_SU NUMBER(4, 0)
  , RYOYO_KIG_SHONIN_YMD CHAR(8)
  , RYOYO_KIG_CANCEL_YMD CHAR(8)
  , RYOYO_KIG_MOD_EIGY_YMD CHAR(8)
  , RYOYO_GOKEI_BED_SU NUMBER(4, 0)
  , IPPAN_FLG CHAR(1)
  , IPPAN_KNG_SBT_CD CHAR(4)
  , IPPAN_BED_SU NUMBER(4, 0)
  , IPPAN_GOKEI_BED_SU NUMBER(4, 0)
  , IPPAN_MOD_EIGY_YMD CHAR(8)
  , SEISHIN_FLG CHAR(1)
  , SEISHIN_KNG_SBT_CD CHAR(4)
  , SEISHIN_BED_SU NUMBER(4, 0)
  , SEISHIN_GOKEI_BED_SU NUMBER(4, 0)
  , SEISHIN_MOD_EIGY_YMD CHAR(8)
  , KEKKAKU_FLG CHAR(1)
  , KEKKAKU_KNG_SBT_CD CHAR(4)
  , KEKKAKU_BED_SU NUMBER(4, 0)
  , KEKKAKU_MOD_EIGY_YMD CHAR(8)
  , KANSEN_TOKUTEI_FLG CHAR(1)
  , KANSEN_TOKUTEI_MOD_EIGY_YMD CHAR(8)
  , KANSEN_1SHU_FLG CHAR(1)
  , KANSEN_1SHU_MOD_EIGY_YMD CHAR(8)
  , KANSEN_2SHU_FLG CHAR(1)
  , KANSEN_2SHU_MOD_EIGY_YMD CHAR(8)
  , KANSEN_FLG CHAR(1)
  , KANSEN_BED_SU NUMBER(4, 0)
  , KANSEN_MOD_EIGY_YMD CHAR(8)
  , KANWACARE_FLG CHAR(1)
  , KANWACARE_BED_SU NUMBER(4, 0)
  , KANWACARE_SHONIN_YMD CHAR(8)
  , KANWACARE_CANCEL_YMD CHAR(8)
  , KANWACARE_MOD_EIGY_YMD CHAR(8)
  , IRYHYOKA_FLG CHAR(1)
  , IRYHYOKA_CD CHAR(2)
  , IRYHYOKA_SHONIN_YMD CHAR(8)
  , IRYHYOKA_CANCEL_YMD CHAR(8)
  , IRYHYOKA_MOD_EIGY_YMD CHAR(8)
  , RNSKNS_KKN1_FLG CHAR(1)
  , RNSKNS_KKN1_SHONIN_YMD CHAR(8)
  , RNSKNS_KKN1_CANCEL_YMD CHAR(8)
  , RNSKNS_KKN2_FLG CHAR(1)
  , RNSKNS_KKN2_SHONIN_YMD CHAR(8)
  , RNSKNS_KKN2_CANCEL_YMD CHAR(8)
  , RNSKNS_KYRYK_FLG CHAR(1)
  , RNSKNS_KYRYK_SHONIN_YMD CHAR(8)
  , RNSKNS_KYRYK_CANCEL_YMD CHAR(8)
  , RNSKNS_KYRYK_MOD_EIGY_YMD CHAR(8)
  , SAIGAIKYOTEN_FLG CHAR(1)
  , SAIGAIKYOTEN_KBN_CD CHAR(1)
  , SAIGAIKYOTEN_MOD_EIGY_YMD CHAR(8)
  , KYUKYU_IRY_KKJ_FLG CHAR(1)
  , KYUKYU_IRY_KKJ_MOD_EIGY_YMD CHAR(8)
  , KYUKYU_IRY_2JI_FLG CHAR(1)
  , KYUKYU_IRY_2JI_MOD_EIGY_YMD CHAR(8)
  , KYUKYU_IRY_3JI_FLG CHAR(1)
  , KYUKYU_IRY_3JI_MOD_EIGY_YMD CHAR(8)
  , KYUKYUKOKUJI_FLG CHAR(1)
  , KYUKYUKOKUJI_MOD_EIGY_YMD CHAR(8)
  , CHIKENCHUKAKU_FLG CHAR(1)
  , CHIKENCHUKAKU_SHONIN_YMD CHAR(8)
  , CHIKENCHUKAKU_CANCEL_YMD CHAR(8)
  , CHIKENCHUKAKU_KBN CHAR(1)
  , CHIKENCHUKAKU_MOD_EIGY_YMD CHAR(8)
  , NINCHISHOIRY_FLG CHAR(1)
  , NINCHISHOIRY_SHONIN_YMD CHAR(8)
  , NINCHISHOIRY_CANCEL_YMD CHAR(8)
  , NINCHISHOIRY_MOD_EIGY_YMD CHAR(8)
  , TOKUTEIKENSHIN_FLG CHAR(1)
  , TOKUTEIKENSHIN_MOD_EIGY_YMD CHAR(8)
  , TOKUTEISHIDO_FLG CHAR(1)
  , TOKUTEISHIDO_MOD_EIGY_YMD CHAR(8)
  , SENSHIN_1_40_FLG CHAR(1)
  , SENSHIN_1_20_FLG CHAR(1)
  , SENSHIN_21_40_FLG CHAR(1)
  , SENSHIN_CD_01 CHAR(4)
  , SENSHIN_CD_02 CHAR(4)
  , SENSHIN_CD_03 CHAR(4)
  , SENSHIN_CD_04 CHAR(4)
  , SENSHIN_CD_05 CHAR(4)
  , SENSHIN_CD_06 CHAR(4)
  , SENSHIN_CD_07 CHAR(4)
  , SENSHIN_CD_08 CHAR(4)
  , SENSHIN_CD_09 CHAR(4)
  , SENSHIN_CD_10 CHAR(4)
  , SENSHIN_CD_11 CHAR(4)
  , SENSHIN_CD_12 CHAR(4)
  , SENSHIN_CD_13 CHAR(4)
  , SENSHIN_CD_14 CHAR(4)
  , SENSHIN_CD_15 CHAR(4)
  , SENSHIN_CD_16 CHAR(4)
  , SENSHIN_CD_17 CHAR(4)
  , SENSHIN_CD_18 CHAR(4)
  , SENSHIN_CD_19 CHAR(4)
  , SENSHIN_CD_20 CHAR(4)
  , SENSHIN_CD_21 CHAR(4)
  , SENSHIN_CD_22 CHAR(4)
  , SENSHIN_CD_23 CHAR(4)
  , SENSHIN_CD_24 CHAR(4)
  , SENSHIN_CD_25 CHAR(4)
  , SENSHIN_CD_26 CHAR(4)
  , SENSHIN_CD_27 CHAR(4)
  , SENSHIN_CD_28 CHAR(4)
  , SENSHIN_CD_29 CHAR(4)
  , SENSHIN_CD_30 CHAR(4)
  , SENSHIN_CD_31 CHAR(4)
  , SENSHIN_CD_32 CHAR(4)
  , SENSHIN_CD_33 CHAR(4)
  , SENSHIN_CD_34 CHAR(4)
  , SENSHIN_CD_35 CHAR(4)
  , SENSHIN_CD_36 CHAR(4)
  , SENSHIN_CD_37 CHAR(4)
  , SENSHIN_CD_38 CHAR(4)
  , SENSHIN_CD_39 CHAR(4)
  , SENSHIN_CD_40 CHAR(4)
  , SENSHIN_MOD_EIGY_YMD CHAR(8)
  , SNTNIRY_FLG CHAR(1)
  , SNTNIRY_CD_01 CHAR(2)
  , SNTNIRY_CD_02 CHAR(2)
  , SNTNIRY_CD_03 CHAR(2)
  , SNTNIRY_CD_04 CHAR(2)
  , SNTNIRY_CD_05 CHAR(2)
  , SNTNIRY_CD_06 CHAR(2)
  , SNTNIRY_CD_07 CHAR(2)
  , SNTNIRY_CD_08 CHAR(2)
  , SNTNIRY_CD_09 CHAR(2)
  , SNTNIRY_CD_10 CHAR(2)
  , SNTNIRY_CD_11 CHAR(2)
  , SNTNIRY_CD_12 CHAR(2)
  , SNTNIRY_CD_13 CHAR(2)
  , SNTNIRY_CD_14 CHAR(2)
  , SNTNIRY_CD_15 CHAR(2)
  , SNTNIRY_CD_16 CHAR(2)
  , SNTNIRY_CD_17 CHAR(2)
  , SNTNIRY_CD_18 CHAR(2)
  , SNTNIRY_CD_19 CHAR(2)
  , SNTNIRY_CD_20 CHAR(2)
  , SNTNIRY_MOD_EIGY_YMD CHAR(8)
  , SEISAKUIRY_FLG CHAR(1)
  , SEISAKUIRY_BNY_CD_01 CHAR(2)
  , SEISAKUIRY_BNY_CD_02 CHAR(2)
  , SEISAKUIRY_BNY_CD_03 CHAR(2)
  , SEISAKUIRY_BNY_CD_04 CHAR(2)
  , SEISAKUIRY_BNY_CD_05 CHAR(2)
  , SEISAKUIRY_BNY_CD_06 CHAR(2)
  , SEISAKUIRY_BNY_CD_07 CHAR(2)
  , SEISAKUIRY_BNY_CD_08 CHAR(2)
  , SEISAKUIRY_BNY_CD_09 CHAR(2)
  , SEISAKUIRY_BNY_CD_10 CHAR(2)
  , SEISAKUIRY_BNY_CD_11 CHAR(2)
  , SEISAKUIRY_BNY_CD_12 CHAR(2)
  , SEISAKUIRY_BNY_CD_13 CHAR(2)
  , SEISAKUIRY_BNY_CD_14 CHAR(2)
  , SEISAKUIRY_BNY_CD_15 CHAR(2)
  , SEISAKUIRY_BNY_CD_16 CHAR(2)
  , SEISAKUIRY_BNY_CD_17 CHAR(2)
  , SEISAKUIRY_BNY_CD_18 CHAR(2)
  , SEISAKUIRY_BNY_CD_19 CHAR(2)
  , SEISAKUIRY_BNY_CD_20 CHAR(2)
  , SEISAKUIRY_KBN_CD_01 CHAR(1)
  , SEISAKUIRY_KBN_CD_02 CHAR(1)
  , SEISAKUIRY_KBN_CD_03 CHAR(1)
  , SEISAKUIRY_KBN_CD_04 CHAR(1)
  , SEISAKUIRY_KBN_CD_05 CHAR(1)
  , SEISAKUIRY_KBN_CD_06 CHAR(1)
  , SEISAKUIRY_KBN_CD_07 CHAR(1)
  , SEISAKUIRY_KBN_CD_08 CHAR(1)
  , SEISAKUIRY_KBN_CD_09 CHAR(1)
  , SEISAKUIRY_KBN_CD_10 CHAR(1)
  , SEISAKUIRY_KBN_CD_11 CHAR(1)
  , SEISAKUIRY_KBN_CD_12 CHAR(1)
  , SEISAKUIRY_KBN_CD_13 CHAR(1)
  , SEISAKUIRY_KBN_CD_14 CHAR(1)
  , SEISAKUIRY_KBN_CD_15 CHAR(1)
  , SEISAKUIRY_KBN_CD_16 CHAR(1)
  , SEISAKUIRY_KBN_CD_17 CHAR(1)
  , SEISAKUIRY_KBN_CD_18 CHAR(1)
  , SEISAKUIRY_KBN_CD_19 CHAR(1)
  , SEISAKUIRY_KBN_CD_20 CHAR(1)
  , SEISAKUIRY_MOD_EIGY_YMD CHAR(8)
  , HMNKNG_FLG CHAR(1)
  , HMNKNG_REC_ID CHAR(2)
  , HMNKNG_SHI_CD CHAR(7)
  , HMNKNG_MOD_EIGY_YMD CHAR(8)
  , ITEM_1_MOD_EIGY_YMD CHAR(8)
  , ITEM_2_MOD_EIGY_YMD CHAR(8)
  , ITEM_3_MOD_EIGY_YMD CHAR(8)
  , KAISETSU_FLG CHAR(1)
  , KAISETSU_YM VARCHAR2(6)
  , KAISETSU_MOD_EIGY_YMD CHAR(8)
  , COMMENTS VARCHAR2(2000)
  , SOGO_BYOIN_FLG CHAR(1)
  , SHOKAIGAIRAI_KBN_CD CHAR(1)
  , KYU_TOKUTEI_FLG CHAR(1)
  , KYU_TOKUTEI_SHONIN_YMD CHAR(8)
  , KYU_TOKUTEI_CANCEL_YMD CHAR(8)
  , KYU_TOKUTEI_MOD_EIGY_YMD CHAR(8)
  , KYU_NYUIN_FLG CHAR(1)
  , KYU_NYUIN_SHONIN_YMD CHAR(8)
  , KYU_NYUIN_CANCEL_YMD CHAR(8)
  , KYU_NYUIN_MOD_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (REC_ID,SHI_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_SISN_TSUIKAITEM_RNSKNS
create table MDBHSM01.TT_SISN_TSUIKAITEM_RNSKNS (
  REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , KYRYK_REC_ID CHAR(2) not null
  , KYRYK_SHI_CD CHAR(7) not null
  , S_NENDO CHAR(4) not null
  , SORTKEY NUMBER(4, 0)
  , SORTKEY_NOHIN NUMBER(3, 0)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (REC_ID,SHI_CD,KYRYK_REC_ID,KYRYK_SHI_CD,S_NENDO)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_SZI_DATA_SRKK
create table MDBHSM01.TT_SZI_DATA_SRKK (
  SEQ NUMBER(38, 0) not null
  , EIGY_YMD CHAR(8)
  , FILE_SBT_CD CHAR(3)
  , ZENKEN_SABUN_KBN CHAR(1)
  , LAYOUT_KBN CHAR(1)
  , TOKUSHU_CD CHAR(6)
  , SRKK_KBN CHAR(1)
  , SHUTSURYOKU_KENSU NUMBER(10, 0)
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_TIRI_KHN_BAITAI_STATUS
create table MDBHSM01.TT_TIRI_KHN_BAITAI_STATUS (
  NOHIN_CD CHAR(5) not null
  , SHIME_KBN CHAR(1)
  , RNSKNS_BYOIN_NOHIN_FLG CHAR(1)
  , KGF_NOHIN_FLG CHAR(1)
  , FILE_CREATE_STATUS CHAR(1)
  , SHORI_TIME_MSEC NUMBER(9, 0)
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (NOHIN_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_TIRI_KHN_NHN_SRKK
create table MDBHSM01.TT_TIRI_KHN_NHN_SRKK (
  SEQ NUMBER(38, 0) not null
  , EIGY_YMD CHAR(8)
  , NOHIN_CD CHAR(5)
  , FILE_SBT_CD CHAR(3)
  , ZENKEN_SABUN_KBN CHAR(1)
  , LAYOUT_SHIN_KYU_KBN CHAR(1)
  , SRKK_KBN CHAR(1)
  , NOHIN_FILE_NM VARCHAR2(160)
  , SHUTSURYOKU_KENSU NUMBER(10, 0)
  , FILE_SIZE NUMBER(20, 0)
  , GAIJI_UMU_FLG CHAR(1)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_TIRI_KHN_NHN_SRKK_RRK
create table MDBHSM01.TT_TIRI_KHN_NHN_SRKK_RRK (
  SEQ NUMBER(38, 0) not null
  , KEKKA_RRK_RENBAN NUMBER(38, 0)
  , EIGY_YMD CHAR(8)
  , NOHIN_CD CHAR(5)
  , FILE_SBT_CD CHAR(3)
  , ZENKEN_SABUN_KBN CHAR(1)
  , LAYOUT_SHIN_KYU_KBN CHAR(1)
  , SRKK_KBN CHAR(1)
  , NOHIN_FILE_NM VARCHAR2(160)
  , SHUTSURYOKU_KENSU NUMBER(10, 0)
  , FILE_SIZE NUMBER(20, 0)
  , GAIJI_UMU_FLG CHAR(1)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_TIRI_KHN_VAN_STATUS
create table MDBHSM01.TT_TIRI_KHN_VAN_STATUS (
  FILE_SBT_CD CHAR(3) not null
  , VAN_ZENKEN_SABUN_KBN CHAR(1) not null
  , VAN_LAYOUT_SHIN_KYU_KBN CHAR(1) not null
  , VAN_MOJI_CD_KBN CHAR(2) not null
  , VAN_FILE_PNM VARCHAR2(30)
  , VAN_FILE_LNM VARCHAR2(160)
  , FILE_CREATE_STATUS CHAR(1)
  , SHORI_TIME_MSEC NUMBER(9, 0)
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (FILE_SBT_CD,VAN_ZENKEN_SABUN_KBN,VAN_LAYOUT_SHIN_KYU_KBN,VAN_MOJI_CD_KBN)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_TIRI_TKS_NHN_SRKK
create table MDBHSM01.TT_TIRI_TKS_NHN_SRKK (
  SEQ NUMBER(38, 0) not null
  , EIGY_YMD CHAR(8)
  , NOHIN_CD CHAR(5)
  , FILE_SBT_CD CHAR(3)
  , ZENKEN_SABUN_KBN CHAR(2)
  , LAYOUT_SHIN_KYU_KBN CHAR(1)
  , SRKK_KBN CHAR(1)
  , NOHIN_FILE_NM VARCHAR2(160)
  , SHUTSURYOKU_KENSU NUMBER(10, 0)
  , FILE_SIZE NUMBER(20, 0)
  , GAIJI_UMU_FLG CHAR(1)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_TIRI_TKS_NHN_SRKK_RRK
create table MDBHSM01.TT_TIRI_TKS_NHN_SRKK_RRK (
  SEQ NUMBER(38, 0) not null
  , KEKKA_RRK_RENBAN NUMBER(38, 0)
  , EIGY_YMD CHAR(8)
  , NOHIN_CD CHAR(5)
  , FILE_SBT_CD CHAR(3)
  , ZENKEN_SABUN_KBN CHAR(2)
  , LAYOUT_SHIN_KYU_KBN CHAR(1)
  , SRKK_KBN CHAR(1)
  , NOHIN_FILE_NM VARCHAR2(160)
  , SHUTSURYOKU_KENSU NUMBER(10, 0)
  , FILE_SIZE NUMBER(20, 0)
  , GAIJI_UMU_FLG CHAR(1)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_VAN_NOHIN_SRKK
create table MDBHSM01.TT_VAN_NOHIN_SRKK (
  SEQ NUMBER(38, 0) not null
  , EIGY_YMD VARCHAR2(8)
  , FILE_SBT_CD CHAR(3)
  , VAN_ZENKEN_SABUN_KBN CHAR(1)
  , VAN_LAYOUT_SHIN_KYU_KBN CHAR(1)
  , VAN_MOJI_CD_KBN CHAR(2)
  , SRKK_KBN CHAR(1)
  , SHUTSURYOKU_KENSU NUMBER(8, 0)
  , FILE_SIZE NUMBER(12, 0)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.TT_VAN_NOHIN_SRKK_RRK
create table MDBHSM01.TT_VAN_NOHIN_SRKK_RRK (
  SEQ NUMBER(38, 0) not null
  , KEKKA_RRK_RENBAN NUMBER(38, 0)
  , EIGY_YMD VARCHAR2(8)
  , FILE_SBT_CD CHAR(3)
  , VAN_ZENKEN_SABUN_KBN CHAR(1)
  , VAN_LAYOUT_SHIN_KYU_KBN CHAR(1)
  , VAN_MOJI_CD_KBN CHAR(2)
  , SRKK_KBN CHAR(1)
  , SHUTSURYOKU_KENSU NUMBER(8, 0)
  , FILE_SIZE NUMBER(12, 0)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEQ)
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.WK_TM_USER
create table MDBHSM01.WK_TM_USER (
  USER_CD CHAR(3) not null
  , USER_NM VARCHAR2(80)
  , USER_NM_KANA VARCHAR2(60)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.WK_TT_FB_KKIGO_SHI_MEISAI
create table MDBHSM01.WK_TT_FB_KKIGO_SHI_MEISAI (
  FB_USER_CD CHAR(3) not null
  , FB_SHIKIBETSU_CD CHAR(1) not null
  , FB_LOT_NO CHAR(12) not null
  , EDABAN CHAR(4) not null
  , FB_KOMOKU_NO CHAR(4) not null
  , HENKO_MAE VARCHAR2(1000)
  , HENKO_GO VARCHAR2(1000)
  , TAIO_KBN CHAR(1)
  , COMMENTS VARCHAR2(2000)
  , JIZEN_CHKZUMI_FLG CHAR(1)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
);
/


--------------------------------------------------------------------------------
-- Table : MDBHSM01.WK_TT_FB_KKIMAE_SHI_MEISAI
create table MDBHSM01.WK_TT_FB_KKIMAE_SHI_MEISAI (
  FB_USER_CD CHAR(3) not null
  , FB_SHIKIBETSU_CD CHAR(1) not null
  , FB_LOT_NO CHAR(12) not null
  , EDABAN CHAR(4) not null
  , FB_KOMOKU_NO CHAR(4) not null
  , HENKO_MAE VARCHAR2(1000)
  , HENKO_GO VARCHAR2(1000)
  , TAIO_KBN CHAR(1)
  , COMMENTS VARCHAR2(2000)
  , JIZEN_CHKZUMI_FLG CHAR(1)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
);
/


--------------------------------------------------------------------------------
-- View : MDBHSM01.VT_TIRI_NOHIN_SRKK
SELECT
  SRKK.SEQ,    --SEQ
  SRKK.EIGY_YMD,   --処理営業年月日
  SRKK.NOHIN_CD,   --納品コード
  SRKK.FILE_SBT_CD,  --ファイル種別コード
  SRKK.ZENKEN_SABUN_KBN, --全件／差分区分
  SRKK.LAYOUT_SHIN_KYU_KBN,--レイアウト新旧区分
  SRKK.SRKK_KBN,   --処理結果区分
  SRKK.NOHIN_FILE_NM,      --納品ファイル名
  SRKK.SHUTSURYOKU_KENSU as REC_SU, --出力件数
  SRKK.GAIJI_UMU_FLG,   --外字有無
  SRKK.TRK_EIGY_YMD,  --登録処理営業年月日
  SRKK.UPD_EIGY_YMD,  --更新処理営業年月日
  SRKK.TRK_OPE_CD,   --登録オペレータコード
  SRKK.TRK_DATE,   --登録日時
  SRKK.TRK_PGM_ID,   --登録プログラムID
  SRKK.UPD_OPE_CD,   --更新オペレータコード
  SRKK.UPD_DATE,   --更新日時
  SRKK.UPD_PGM_ID   --更新プログラムID
FROM
  TT_TIRI_KHN_NHN_SRKK SRKK --定例基本納品処理結果テーブル
UNION
SELECT
  SRKK.SEQ,    --SEQ
  SRKK.EIGY_YMD,   --処理営業年月日
  SRKK.NOHIN_CD,   --納品コード
  SRKK.FILE_SBT_CD,  --ファイル種別コード
  SRKK.ZENKEN_SABUN_KBN, --全件／差分区分
  SRKK.LAYOUT_SHIN_KYU_KBN,--レイアウト新旧区分
  SRKK.SRKK_KBN,   --処理結果区分
  SRKK.NOHIN_FILE_NM,      --納品ファイル名
  SRKK.SHUTSURYOKU_KENSU as REC_SU, --出力件数
  SRKK.GAIJI_UMU_FLG,   --外字有無
  SRKK.TRK_EIGY_YMD,  --登録処理営業年月日
  SRKK.UPD_EIGY_YMD,  --更新処理営業年月日
  SRKK.TRK_OPE_CD,   --登録オペレータコード
  SRKK.TRK_DATE,   --登録日時
  SRKK.TRK_PGM_ID,   --登録プログラムID
  SRKK.UPD_OPE_CD,   --更新オペレータコード
  SRKK.UPD_DATE,   --更新日時
  SRKK.UPD_PGM_ID   --更新プログラムID
FROM
  TT_TIRI_TKS_NHN_SRKK SRKK --定例特殊納品処理結果テーブル
INNER JOIN
  TM_NOHIN_CD_SHIME_KBN SHIME --納品コード締め日区分マスタ
ON
  SHIME.NOHIN_CD = SRKK.NOHIN_CD
WHERE
  SHIME.SHIME_KBN <> '2' --VAN（週締め）の納品コードは抽出対象外
/


/**********************************************/
-- 生成されたソースは元のソースとは完全に一致しない場合があります。

--------------------------------------------------------------------------------
-- Table : MDBTSN01.TD_PM_DSF_SHI
create table MDBTSN01.TD_PM_DSF_SHI (
  DSF_CD_REC_ID VARCHAR2(2) not null
  , DSF_CD_DSF_CD VARCHAR2(7) not null
  , DSF_CD_YOBI VARCHAR2(2)
  , SEISHIKI_TNP_SHI_NM_KANA VARCHAR2(120)
  , RYKSK_TNP_SHI_NM_KANA VARCHAR2(120)
  , JUSHO_CD_KEN_CD VARCHAR2(2)
  , JUSHO_CD_SHIKU_CD VARCHAR2(3)
  , JUSHO_CD_OAZA_CD VARCHAR2(3)
  , JUSHO_CD_AZA_CD VARCHAR2(3)
  , ZIP VARCHAR2(8)
  , JUSHO_HYOJI_NO VARCHAR2(13)
  , YOBI_1 VARCHAR2(7)
  , JUSHO_KANA VARCHAR2(180)
  , JUSHO_COUNT_KANA_KEN VARCHAR2(2)
  , JUSHO_COUNT_KANA_SHIKU VARCHAR2(2)
  , JUSHO_COUNT_KANA_OAZA VARCHAR2(2)
  , JUSHO_COUNT_KANJI_KEN VARCHAR2(2)
  , JUSHO_COUNT_KANJI_SHIKU VARCHAR2(2)
  , JUSHO_COUNT_KANJI_OAZA VARCHAR2(2)
  , TEL VARCHAR2(15)
  , YOBI_2 VARCHAR2(4)
  , YOBI_3 VARCHAR2(3)
  , SHI_KBN VARCHAR2(2)
  , YOBI_4 VARCHAR2(13)
  , STATUS_JUSHOFUMEI VARCHAR2(1)
  , STATUS_KYUTEN_FLG VARCHAR2(1)
  , STATUS_DEL_YOTEI_RIYU VARCHAR2(1)
  , STATUS_KAIGYO_YOTEI_FLG VARCHAR2(1)
  , STATUS_YOBI_1 VARCHAR2(1)
  , STATUS_TEL_NASHI_FLG VARCHAR2(1)
  , STATUS_MIKAKUNIN_FLG VARCHAR2(1)
  , STATUS_YOBI_2 VARCHAR2(3)
  , KYTN_S_KGY_YOTEI_Y VARCHAR2(4)
  , KYTN_S_KGY_YOTEI_M VARCHAR2(2)
  , YOBI_5 VARCHAR2(10)
  , YAKUZAISHI_KANA VARCHAR2(60)
  , YAKUZAISHI_KANJI VARCHAR2(80)
  , YOBI_6 VARCHAR2(98)
  , SEISHIKI_TNP_SHI_NM_KANJI VARCHAR2(120)
  , RYKSK_TNP_SHI_NM_KANJI VARCHAR2(60)
  , JUSHO_KANJI VARCHAR2(200)
  , YOBI_7 VARCHAR2(10)
  , DAIHYO_KANA VARCHAR2(60)
  , DAIHYO_KANJI VARCHAR2(80)
  , YOBI_AREA VARCHAR2(47)
  , AITSK_CD_DSF_CD_REC_ID VARCHAR2(2)
  , AITSK_CD_DSF_CD_DSF_CD VARCHAR2(7)
  , AITSK_CD_DSF_CD_YOBI VARCHAR2(2)
  , MOD_SHORI_HIZUKE_Y VARCHAR2(4)
  , MOD_SHORI_HIZUKE_M VARCHAR2(2)
  , MOD_SHORI_HIZUKE_D VARCHAR2(2)
  , MOD_KBN VARCHAR2(1)
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (DSF_CD_REC_ID,DSF_CD_DSF_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBTSN01.TM_TIKY_BYOIN_SBT
create table MDBTSN01.TM_TIKY_BYOIN_SBT (
  BYOIN_SBT_CD CHAR(1) not null
  , BYOIN_SBT_NM VARCHAR2(80)
  , BYOIN_SBT_NM_KANA VARCHAR2(60)
  , BIKO VARCHAR2(400)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (BYOIN_SBT_CD)
);
/

create index TM_TIKY_BYOIN_SBT_IX01
  on MDBTSN01.TM_TIKY_BYOIN_SBT(UPD_EIGY_YMD)
/

create index TM_TIKY_BYOIN_SBT_IX02
  on MDBTSN01.TM_TIKY_BYOIN_SBT(BYOIN_SBT_CD,UPD_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBTSN01.TM_TIKY_CHIKRENKEIPATH
create table MDBTSN01.TM_TIKY_CHIKRENKEIPATH (
  CHIKRENKEIPATH_CD CHAR(2) not null
  , CHIKRENKEIPATH_NM VARCHAR2(200)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (CHIKRENKEIPATH_CD)
);
/

create index TM_TIKY_CHIKRENKEIPATH_IX01
  on MDBTSN01.TM_TIKY_CHIKRENKEIPATH(UPD_EIGY_YMD)
/

create index TM_TIKY_CHIKRENKEIPATH_IX02
  on MDBTSN01.TM_TIKY_CHIKRENKEIPATH(CHIKRENKEIPATH_CD,UPD_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBTSN01.TM_TIKY_FAX_ATESAKI
create table MDBTSN01.TM_TIKY_FAX_ATESAKI (
  FAX_ATESAKI_CD CHAR(2) not null
  , FAX_ATESAKI_NM VARCHAR2(60)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (FAX_ATESAKI_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBTSN01.TM_TIKY_GAKKAI
create table MDBTSN01.TM_TIKY_GAKKAI (
  GAKKAI_CD CHAR(3) not null
  , GAKKAI_NM VARCHAR2(80)
  , GAKKAI_RN VARCHAR2(80)
  , GAKKAI_NM_KANA VARCHAR2(60)
  , KAIIN_SU NUMBER(8, 0)
  , TORIKOMI_YM CHAR(6)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (GAKKAI_CD)
);
/

create index TM_TIKY_GAKKAI_IX01
  on MDBTSN01.TM_TIKY_GAKKAI(UPD_EIGY_YMD)
/

create index TM_TIKY_GAKKAI_IX02
  on MDBTSN01.TM_TIKY_GAKKAI(GAKKAI_CD,UPD_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBTSN01.TM_TIKY_HIFG_SSY_SZKBUKA
create table MDBTSN01.TM_TIKY_HIFG_SSY_SZKBUKA (
  SZKBUKA_CD CHAR(4) not null
  , SZKBUKA_NM VARCHAR2(100)
  , KENSAKU_SZKBUKA_NM VARCHAR2(100)
  , SZKBUKA_NM_KANA VARCHAR2(90)
  , DCF_FLG CHAR(1)
  , DNF_FLG CHAR(1)
  , PCF_FLG CHAR(1)
  , BNRIHOJO_SHI_BNRI_CD CHAR(1)
  , BNRIHOJO_SNRY_BNY_BNRI_CD CHAR(3)
  , BNRIHOJO_SORTKEY CHAR(3)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SZKBUKA_CD)
);
/

create index TM_TIKY_HIFG_SSY_SZKBUKA_IX01
  on MDBTSN01.TM_TIKY_HIFG_SSY_SZKBUKA(KENSAKU_SZKBUKA_NM)
/


--------------------------------------------------------------------------------
-- Table : MDBTSN01.TM_TIKY_IRYHYOKA
create table MDBTSN01.TM_TIKY_IRYHYOKA (
  IRYHYOKA_CD CHAR(2) not null
  , IRYHYOKA_NM VARCHAR2(200)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (IRYHYOKA_CD)
);
/

create index TM_TIKY_IRYHYOKA_IX01
  on MDBTSN01.TM_TIKY_IRYHYOKA(UPD_EIGY_YMD)
/

create index TM_TIKY_IRYHYOKA_IX02
  on MDBTSN01.TM_TIKY_IRYHYOKA(IRYHYOKA_CD,UPD_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBTSN01.TM_TIKY_KEIEITAI
create table MDBTSN01.TM_TIKY_KEIEITAI (
  KEIEITAI_CD CHAR(3) not null
  , KEIEITAI_NM VARCHAR2(80)
  , KEIEITAI_RN VARCHAR2(20)
  , DCF_FLG CHAR(1)
  , DSF_FLG CHAR(1)
  , DNF_FLG CHAR(1)
  , ECF_FLG CHAR(1)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (KEIEITAI_CD)
);
/

create index TM_TIKY_KEIEITAI_IX01
  on MDBTSN01.TM_TIKY_KEIEITAI(UPD_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBTSN01.TM_TIKY_KEN_NM
create table MDBTSN01.TM_TIKY_KEN_NM (
  RIDAI_CD CHAR(2) not null
  , KEN_CD CHAR(2)
  , KEN_NM VARCHAR2(20)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (RIDAI_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBTSN01.TM_TIKY_KNG_SBT
create table MDBTSN01.TM_TIKY_KNG_SBT (
  KNG_SBT_CD CHAR(4) not null
  , KNG_SBT_NM VARCHAR2(200)
  , KNG_SBT_RN VARCHAR2(40)
  , KNG_SBT_NM_LIST VARCHAR2(32)
  , IPPAN_FLG CHAR(1)
  , SEISHIN_FLG CHAR(1)
  , KEKKAKU_FLG CHAR(1)
  , RYOYO_IRY_FLG CHAR(1)
  , RYOYO_KIG_FLG CHAR(1)
  , ROJIN_IRY_FLG CHAR(1)
  , ROJIN_KIG_FLG CHAR(1)
  , SONOTA_FLG CHAR(1)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (KNG_SBT_CD)
);
/

create index TM_TIKY_KNG_SBT_IX01
  on MDBTSN01.TM_TIKY_KNG_SBT(UPD_EIGY_YMD)
/

create index TM_TIKY_KNG_SBT_IX02
  on MDBTSN01.TM_TIKY_KNG_SBT(KNG_SBT_CD,UPD_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBTSN01.TM_TIKY_SEISAKUIRY_BNY
create table MDBTSN01.TM_TIKY_SEISAKUIRY_BNY (
  SEISAKUIRY_BNY_CD CHAR(2) not null
  , SEISAKUIRY_BNY_NM VARCHAR2(200)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SEISAKUIRY_BNY_CD)
);
/

create index TM_TIKY_SEISAKUIRY_BNY_IX01
  on MDBTSN01.TM_TIKY_SEISAKUIRY_BNY(UPD_EIGY_YMD)
/

create index TM_TIKY_SEISAKUIRY_BNY_IX02
  on MDBTSN01.TM_TIKY_SEISAKUIRY_BNY(SEISAKUIRY_BNY_CD,UPD_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBTSN01.TM_TIKY_SENMONI
create table MDBTSN01.TM_TIKY_SENMONI (
  SENMONI_CD CHAR(4) not null
  , SENMONI_SHIKAKU_NM VARCHAR2(100)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SENMONI_CD)
);
/

create index TM_TIKY_SENMONI_IX01
  on MDBTSN01.TM_TIKY_SENMONI(UPD_EIGY_YMD)
/

create index TM_TIKY_SENMONI_IX02
  on MDBTSN01.TM_TIKY_SENMONI(SENMONI_CD,UPD_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBTSN01.TM_TIKY_SENSHIN
create table MDBTSN01.TM_TIKY_SENSHIN (
  SENSHIN_CD CHAR(3) not null
  , SENSHIN_JOGAI_KBN CHAR(1)
  , SENSHIN_NM VARCHAR2(200)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SENSHIN_CD)
);
/

create index TM_TIKY_SENSHIN_IX01
  on MDBTSN01.TM_TIKY_SENSHIN(UPD_EIGY_YMD)
/

create index TM_TIKY_SENSHIN_IX02
  on MDBTSN01.TM_TIKY_SENSHIN(SENSHIN_CD,SENSHIN_JOGAI_KBN,UPD_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBTSN01.TM_TIKY_SHIKKANBETSUREHA
create table MDBTSN01.TM_TIKY_SHIKKANBETSUREHA (
  SHIKKANBETSUREHA_CD CHAR(2) not null
  , SHIKKANBETSUREHA_NM VARCHAR2(200)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SHIKKANBETSUREHA_CD)
);
/

create index TM_TIKY_SHIKKANBETSUREHA_IX01
  on MDBTSN01.TM_TIKY_SHIKKANBETSUREHA(UPD_EIGY_YMD)
/

create index TM_TIKY_SHIKKANBETSUREHA_IX02
  on MDBTSN01.TM_TIKY_SHIKKANBETSUREHA(SHIKKANBETSUREHA_CD,UPD_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBTSN01.TM_TIKY_SHI_KBN
create table MDBTSN01.TM_TIKY_SHI_KBN (
  SHI_KBN_CD CHAR(2) not null
  , SHI_KBN_NM VARCHAR2(100)
  , DCF_FLG CHAR(1)
  , DSF_FLG CHAR(1)
  , DNF_FLG CHAR(1)
  , ECF_FLG CHAR(1)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SHI_KBN_CD)
);
/

create index TM_TIKY_SHI_KBN_IX01
  on MDBTSN01.TM_TIKY_SHI_KBN(UPD_EIGY_YMD)
/

create index TM_TIKY_SHI_KBN_IX02
  on MDBTSN01.TM_TIKY_SHI_KBN(SHI_KBN_CD,UPD_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBTSN01.TM_TIKY_SHUSSHINKO_GAKUBU
create table MDBTSN01.TM_TIKY_SHUSSHINKO_GAKUBU (
  SHUSSHINKO_CD CHAR(3) not null
  , GAKUBU_SHIKIBETSU_KBN CHAR(1) not null
  , SORITSUNEN_GENGO_CD CHAR(1)
  , SORITSUNEN_WY CHAR(2)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SHUSSHINKO_CD,GAKUBU_SHIKIBETSU_KBN)
);
/


--------------------------------------------------------------------------------
-- Table : MDBTSN01.TM_TIKY_SHUSSHINKO_NM
create table MDBTSN01.TM_TIKY_SHUSSHINKO_NM (
  SHUSSHINKO_CD CHAR(3) not null
  , SHUSSHINKO_NM VARCHAR2(80)
  , SHUSSHINKO_RN VARCHAR2(12)
  , KYU_SHUSSHINKO_NM VARCHAR2(80)
  , SHUSSHINKO_NM_KANA VARCHAR2(60)
  , JOSHIDAI_FLG CHAR(1)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SHUSSHINKO_CD)
);
/

create index TM_TIKY_SHUSSHINKO_NM_IX01
  on MDBTSN01.TM_TIKY_SHUSSHINKO_NM(UPD_EIGY_YMD)
/

create index TM_TIKY_SHUSSHINKO_NM_IX02
  on MDBTSN01.TM_TIKY_SHUSSHINKO_NM(SHUSSHINKO_CD,UPD_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBTSN01.TM_TIKY_SNRYKMK
create table MDBTSN01.TM_TIKY_SNRYKMK (
  SNRYKMK_CD CHAR(3) not null
  , SNRYKMK_NM VARCHAR2(80)
  , SNRYKMK_RN VARCHAR2(16)
  , SNRYKMK_NM_KANA VARCHAR2(60)
  , KIHON_SNRY_FLG CHAR(1)
  , DCF_FLG CHAR(1)
  , DNF_FLG CHAR(1)
  , PCF_FLG CHAR(1)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SNRYKMK_CD)
);
/

create index TM_TIKY_SNRYKMK_IX01
  on MDBTSN01.TM_TIKY_SNRYKMK(UPD_EIGY_YMD)
/

create index TM_TIKY_SNRYKMK_IX02
  on MDBTSN01.TM_TIKY_SNRYKMK(SNRYKMK_CD,UPD_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBTSN01.TM_TIKY_SNTNIRY
create table MDBTSN01.TM_TIKY_SNTNIRY (
  SNTNIRY_CD CHAR(2) not null
  , SNTNIRY_NM VARCHAR2(200)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SNTNIRY_CD)
);
/

create index TM_TIKY_SNTNIRY_IX01
  on MDBTSN01.TM_TIKY_SNTNIRY(UPD_EIGY_YMD)
/

create index TM_TIKY_SNTNIRY_IX02
  on MDBTSN01.TM_TIKY_SNTNIRY(SNTNIRY_CD,UPD_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBTSN01.TM_TIKY_SZKBUKA
create table MDBTSN01.TM_TIKY_SZKBUKA (
  SZKBUKA_CD CHAR(4) not null
  , SZKBUKA_NM VARCHAR2(100)
  , KENSAKU_SZKBUKA_NM VARCHAR2(100)
  , SZKBUKA_NM_KANA VARCHAR2(90)
  , DCF_FLG CHAR(1)
  , DNF_FLG CHAR(1)
  , PCF_FLG CHAR(1)
  , BNRIHOJO_SHI_BNRI_CD CHAR(1)
  , BNRIHOJO_SNRY_BNY_BNRI_CD CHAR(3)
  , BNRIHOJO_SORTKEY CHAR(3)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (SZKBUKA_CD)
);
/

create index TM_TIKY_SZKBUKA_IX01
  on MDBTSN01.TM_TIKY_SZKBUKA(UPD_EIGY_YMD)
/

create index TM_TIKY_SZKBUKA_IX02
  on MDBTSN01.TM_TIKY_SZKBUKA(SZKBUKA_CD,UPD_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBTSN01.TM_TIKY_YAKUSHOKU
create table MDBTSN01.TM_TIKY_YAKUSHOKU (
  YAKUSHOKU_CD CHAR(3) not null
  , YAKUSHOKU_NM VARCHAR2(80)
  , YAKUSHOKU_RN VARCHAR2(40)
  , YAKUSHOKU_NM_KANA VARCHAR2(60)
  , SHOKUI_FLG CHAR(1)
  , DCF_FLG CHAR(1)
  , PCF_FLG CHAR(1)
  , DNF_FLG CHAR(1)
  , TANDOKU_YAKUSHOKU_FLG CHAR(1)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (YAKUSHOKU_CD)
);
/

create index TM_TIKY_YAKUSHOKU_IX01
  on MDBTSN01.TM_TIKY_YAKUSHOKU(UPD_EIGY_YMD)
/

create index TM_TIKY_YAKUSHOKU_IX02
  on MDBTSN01.TM_TIKY_YAKUSHOKU(YAKUSHOKU_CD,UPD_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBTSN01.TT_TIKY_IKJ_KIHON
create table MDBTSN01.TT_TIKY_IKJ_KIHON (
  REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , DEL_FLG CHAR(1)
  , DEL_EIGY_YMD CHAR(8)
  , JOHO_YMD CHAR(8)
  , ANNAIYO_URL VARCHAR2(200)
  , ANNAIYO_URL_ORG VARCHAR2(200)
  , INNAI_SHOHO_FLG CHAR(1)
  , INGAI_SHOHO_FLG CHAR(1)
  , CHIKENJISSHI_FLG CHAR(1)
  , CHIKENJISSHI_S_YMD VARCHAR2(8)
  , CHIKENJISSHI_E_YMD VARCHAR2(8)
  , CHIKENJISSHI_KIYK_KENSU NUMBER(4, 0)
  , CHIKRENKEI_MADOGUCHI_FLG CHAR(1)
  , CHIKRENKEIPATH_FLG_IKJ CHAR(1)
  , NYUINSNRY_INNAI_RNKITISI_FLG CHAR(1)
  , ORDERINGSYSTEM_FLG CHAR(1)
  , ORDERINGSYSTEM_KENSA_FLG CHAR(1)
  , ORDERINGSYSTEM_SHOHO_FLG CHAR(1)
  , ORDERINGSYSTEM_YOYAKU_FLG CHAR(1)
  , ICD_CD_RIYO_FLG CHAR(1)
  , DENSHI_KARTE_FLG CHAR(1)
  , KARTEKANRI_SENNIN_FLG CHAR(1)
  , KARTEKANRI_SENNIN_SU NUMBER(3, 0)
  , COMMENTS VARCHAR2(2000)
  , KANJYASU_IPPAN_BED NUMBER(6, 1)
  , KANJYASU_RYOYO_BED NUMBER(6, 1)
  , KANJYASU_RYOYO_BED_IRY_HKN NUMBER(6, 1)
  , KANJYASU_RYOYO_BED_KIG_HKN NUMBER(6, 1)
  , KANJYASU_SEISHIN_BED NUMBER(6, 1)
  , KANJYASU_KEKKAKU_BED NUMBER(6, 1)
  , KANJYASU_KANSEN NUMBER(6, 1)
  , KANJYASU_ZENTAI_BED NUMBER(6, 1)
  , KANJYASU_BED_SBT_S_YMD VARCHAR2(8)
  , KANJYASU_BED_SBT_E_YMD VARCHAR2(8)
  , KANJYASU_GAIRAI NUMBER(6, 1)
  , KANJYASU_GAIRAI_S_YMD VARCHAR2(8)
  , KANJYASU_GAIRAI_E_YMD VARCHAR2(8)
  , KANJYASU_ZAITAKU NUMBER(6, 1)
  , KANJYASU_ZAITAKU_S_YMD VARCHAR2(8)
  , KANJYASU_ZAITAKU_E_YMD VARCHAR2(8)
  , KANJYANSU_IPPAN_BED NUMBER(6, 0)
  , KANJYANSU_RYOYO_BED NUMBER(6, 0)
  , KANJYANSU_RYOYO_BED_IRY_HKN NUMBER(6, 0)
  , KANJYANSU_RYOYO_BED_KIG_HKN NUMBER(6, 0)
  , KANJYANSU_SEISHIN_BED NUMBER(6, 0)
  , KANJYANSU_KEKKAKU_BED NUMBER(6, 0)
  , KANJYANSU_KANSEN NUMBER(6, 0)
  , KANJYANSU_ZENTAI_BED NUMBER(6, 0)
  , KANJYANSU_BED_SBT_S_YMD VARCHAR2(8)
  , KANJYANSU_BED_SBT_E_YMD VARCHAR2(8)
  , KANJYANSU_GAIRAI NUMBER(6, 0)
  , KANJYANSU_GAIRAI_S_YMD VARCHAR2(8)
  , KANJYANSU_GAIRAI_E_YMD VARCHAR2(8)
  , KANJYANSU_ZAITAKU NUMBER(6, 0)
  , KANJYANSU_ZAITAKU_S_YMD VARCHAR2(8)
  , KANJYANSU_ZAITAKU_E_YMD VARCHAR2(8)
  , AVGNISSU_IPPAN_BED NUMBER(6, 1)
  , AVGNISSU_RYOYO_BED NUMBER(6, 1)
  , AVGNISSU_RYOYO_BED_IRY_HKN NUMBER(6, 1)
  , AVGNISSU_RYOYO_BED_KIG_HKN NUMBER(6, 1)
  , AVGNISSU_SEISHIN_BED NUMBER(6, 1)
  , AVGNISSU_KEKKAKU_BED NUMBER(6, 1)
  , AVGNISSU_KANSEN NUMBER(6, 1)
  , AVGNISSU_ZENTAI_BED NUMBER(6, 1)
  , AVGNISSU_S_YMD VARCHAR2(8)
  , AVGNISSU_E_YMD VARCHAR2(8)
  , STB_FLG CHAR(1)
  , SHIKKAN_CHRY_FLG CHAR(1)
  , TNK_TIZI_SJT_FLG CHAR(1)
  , SMG_FLG CHAR(1)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (REC_ID,SHI_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBTSN01.TT_TIKY_IKJ_SHIKKAN_CHRY
create table MDBTSN01.TT_TIKY_IKJ_SHIKKAN_CHRY (
  REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , SHIKKAN_CHRY_DAI_CD CHAR(2) not null
  , SHIKKAN_CHRY_SHO_CD CHAR(2) not null
  , ZENNEN_KENSU NUMBER(6, 0)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_FKT_EIGY_YMD CHAR(8) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (REC_ID,SHI_CD,SHIKKAN_CHRY_DAI_CD,SHIKKAN_CHRY_SHO_CD)
);
/

create index TT_TIKY_IKJ_SHIKKAN_CHRY_IX01
  on MDBTSN01.TT_TIKY_IKJ_SHIKKAN_CHRY(SHIKKAN_CHRY_DAI_CD,SHIKKAN_CHRY_SHO_CD,REC_ID,SHI_CD,HAISHI_FLG)
/


--------------------------------------------------------------------------------
-- Table : MDBTSN01.TT_TIKY_IKJ_SMG_NM
create table MDBTSN01.TT_TIKY_IKJ_SMG_NM (
  REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , SMG_NM VARCHAR2(200) not null
  , SMG_SORTKEY NUMBER(4, 0)
  , SMG_SORTKEY_NOHIN NUMBER(4, 0)
  , BNRIHOJO_CD CHAR(3)
  , BNRIHOJO_CD_CHKZUMI_FLG CHAR(1)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_FKT_EIGY_YMD CHAR(8) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (REC_ID,SHI_CD,SMG_NM)
);
/

create index TT_TIKY_IKJ_SMG_NM_IX01
  on MDBTSN01.TT_TIKY_IKJ_SMG_NM(BNRIHOJO_CD,HAISHI_FLG,REC_ID,SHI_CD)
/

create index TT_TIKY_IKJ_SMG_NM_IX02
  on MDBTSN01.TT_TIKY_IKJ_SMG_NM(UPD_EIGY_YMD)
/

create index TT_TIKY_IKJ_SMG_NM_IX03
  on MDBTSN01.TT_TIKY_IKJ_SMG_NM(REC_ID,SHI_CD,SMG_NM,UPD_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBTSN01.TT_TIKY_IKJ_STB
create table MDBTSN01.TT_TIKY_IKJ_STB (
  REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , STB_CD CHAR(3) not null
  , STB_BED_SU NUMBER(5, 0)
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_FKT_EIGY_YMD CHAR(8) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (REC_ID,SHI_CD,STB_CD)
);
/

create index TT_TIKY_IKJ_STB_IX01
  on MDBTSN01.TT_TIKY_IKJ_STB(REC_ID,SHI_CD,STB_CD,HAISHI_FLG)
/


--------------------------------------------------------------------------------
-- Table : MDBTSN01.TT_TIKY_IKJ_TNK_TIZI_SJT
create table MDBTSN01.TT_TIKY_IKJ_TNK_TIZI_SJT (
  REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , TNK_TIZI_SJT_CD CHAR(3) not null
  , HAISHI_FLG CHAR(1)
  , HAISHI_EIGY_YMD CHAR(8)
  , TRK_FKT_EIGY_YMD CHAR(8) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (REC_ID,SHI_CD,TNK_TIZI_SJT_CD)
);
/

create index TT_TIKY_IKJ_TNK_TIZI_SJT_IX01
  on MDBTSN01.TT_TIKY_IKJ_TNK_TIZI_SJT(TNK_TIZI_SJT_CD,REC_ID,SHI_CD,HAISHI_FLG)
/


--------------------------------------------------------------------------------
-- Table : MDBTSN01.TT_TIKY_IRK_2JI_KANRI
create table MDBTSN01.TT_TIKY_IRK_2JI_KANRI (
  KEN_CD CHAR(2) not null
  , IRK_2JI_CD CHAR(4) not null
  , IRK_3JI_CD CHAR(1)
  , IRK_2JI_NM VARCHAR2(80)
  , SORTKEY NUMBER(4, 0)
  , IPPAN_KIJUN_BED_SU NUMBER(6, 0)
  , IPPAN_KIZON_BED_SU NUMBER(6, 0)
  , IPPAN_KAFUSOKU_BED_SU NUMBER(6, 0)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (KEN_CD,IRK_2JI_CD)
);
/

create index TT_TIKY_IRK_2JI_KANRI_IX01
  on MDBTSN01.TT_TIKY_IRK_2JI_KANRI(UPD_EIGY_YMD)
/

create index TT_TIKY_IRK_2JI_KANRI_IX02
  on MDBTSN01.TT_TIKY_IRK_2JI_KANRI(KEN_CD,IRK_2JI_CD,UPD_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBTSN01.TT_TIKY_IRK_3JI_KANRI
create table MDBTSN01.TT_TIKY_IRK_3JI_KANRI (
  KEN_CD CHAR(2) not null
  , IRK_3JI_CD CHAR(1) not null
  , IRK_3JI_NM VARCHAR2(80)
  , SORTKEY NUMBER(4, 0)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (KEN_CD,IRK_3JI_CD)
);
/

create index TT_TIKY_IRK_3JI_KANRI_IX01
  on MDBTSN01.TT_TIKY_IRK_3JI_KANRI(UPD_EIGY_YMD)
/

create index TT_TIKY_IRK_3JI_KANRI_IX02
  on MDBTSN01.TT_TIKY_IRK_3JI_KANRI(KEN_CD,IRK_3JI_CD,UPD_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBTSN01.TT_TIKY_IRK_KANKATSU
create table MDBTSN01.TT_TIKY_IRK_KANKATSU (
  KEN_CD CHAR(2) not null
  , IRK_2JI_CD CHAR(4) not null
  , SHIKU_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (KEN_CD,IRK_2JI_CD,SHIKU_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBTSN01.TT_TIKY_IRK_KANRI
create table MDBTSN01.TT_TIKY_IRK_KANRI (
  KEN_CD CHAR(2) not null
  , KOJI_YMD CHAR(8)
  , MOD_YMD CHAR(8)
  , COMMENTS VARCHAR2(2000)
  , IPPAN_KIJUN_BED_SU_GOKEI NUMBER(6, 0)
  , IPPAN_KIZON_BED_SU_GOKEI NUMBER(6, 0)
  , IPPAN_KIZON_YMD CHAR(8)
  , IPPAN_KAFUSOKU_BED_SU_GOKEI NUMBER(6, 0)
  , SEISHIN_KIJUN_BED_SU_GOKEI NUMBER(6, 0)
  , SEISHIN_KIZON_BED_SU_GOKEI NUMBER(6, 0)
  , SEISHIN_KIZON_YMD CHAR(8)
  , SEISHIN_KAFUSOKU_BED_SU_GOKEI NUMBER(6, 0)
  , KEKKAKU_KIJUN_BED_SU_GOKEI NUMBER(6, 0)
  , KEKKAKU_KIZON_BED_SU_GOKEI NUMBER(6, 0)
  , KEKKAKU_KIZON_YMD CHAR(8)
  , KEKKAKU_KAFUSOKU_BED_SU_GOKEI NUMBER(6, 0)
  , KANSEN_KIJUN_BED_SU_GOKEI NUMBER(6, 0)
  , KANSEN_KIZON_BED_SU_GOKEI NUMBER(6, 0)
  , KANSEN_KIZON_YMD CHAR(8)
  , KANSEN_KAFUSOKU_BED_SU_GOKEI NUMBER(6, 0)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (KEN_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBTSN01.TT_TIKY_KGF_KNG
create table MDBTSN01.TT_TIKY_KGF_KNG (
  KEN_CD CHAR(2) not null
  , REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , KGF_LOT_NO CHAR(2)
  , DEL_FLG CHAR(1)
  , DEL_EIGY_YMD CHAR(8)
  , COMMENTS VARCHAR2(2000)
  , IPPAN_1_KNG_SBT_CD CHAR(4)
  , IPPAN_1_BED_SU CHAR(4)
  , IPPAN_1_KIFKK_IPPAN_RYOYO_KBN CHAR(1)
  , IPPAN_1_SHONIN_YMD CHAR(8)
  , IPPAN_1_MOD_EIGY_YMD CHAR(8)
  , IPPAN_2_KNG_SBT_CD CHAR(4)
  , IPPAN_2_BED_SU CHAR(4)
  , IPPAN_2_KIFKK_IPPAN_RYOYO_KBN CHAR(1)
  , IPPAN_2_SHONIN_YMD CHAR(8)
  , IPPAN_2_MOD_EIGY_YMD CHAR(8)
  , IPPAN_3_KNG_SBT_CD CHAR(4)
  , IPPAN_3_BED_SU CHAR(4)
  , IPPAN_3_KIFKK_IPPAN_RYOYO_KBN CHAR(1)
  , IPPAN_3_SHONIN_YMD CHAR(8)
  , IPPAN_3_MOD_EIGY_YMD CHAR(8)
  , IPPAN_4_KNG_SBT_CD CHAR(4)
  , IPPAN_4_BED_SU CHAR(4)
  , IPPAN_4_KIFKK_IPPAN_RYOYO_KBN CHAR(1)
  , IPPAN_4_SHONIN_YMD CHAR(8)
  , IPPAN_4_MOD_EIGY_YMD CHAR(8)
  , IPPAN_5_KNG_SBT_CD CHAR(4)
  , IPPAN_5_BED_SU CHAR(4)
  , IPPAN_5_KIFKK_IPPAN_RYOYO_KBN CHAR(1)
  , IPPAN_5_SHONIN_YMD CHAR(8)
  , IPPAN_5_MOD_EIGY_YMD CHAR(8)
  , IPPAN_6_KNG_SBT_CD CHAR(4)
  , IPPAN_6_BED_SU CHAR(4)
  , IPPAN_6_KIFKK_IPPAN_RYOYO_KBN CHAR(1)
  , IPPAN_6_SHONIN_YMD CHAR(8)
  , IPPAN_6_MOD_EIGY_YMD CHAR(8)
  , IPPANKEI_KNG_SBT_SU CHAR(1)
  , IPPANKEI_BED_SU CHAR(4)
  , SEISHIN_1_KNG_SBT_CD CHAR(4)
  , SEISHIN_1_BED_SU CHAR(4)
  , SEISHIN_1_SHONIN_YMD CHAR(8)
  , SEISHIN_1_MOD_EIGY_YMD CHAR(8)
  , SEISHIN_2_KNG_SBT_CD CHAR(4)
  , SEISHIN_2_BED_SU CHAR(4)
  , SEISHIN_2_SHONIN_YMD CHAR(8)
  , SEISHIN_2_MOD_EIGY_YMD CHAR(8)
  , SEISHIN_3_KNG_SBT_CD CHAR(4)
  , SEISHIN_3_BED_SU CHAR(4)
  , SEISHIN_3_SHONIN_YMD CHAR(8)
  , SEISHIN_3_MOD_EIGY_YMD CHAR(8)
  , SEISHIN_4_KNG_SBT_CD CHAR(4)
  , SEISHIN_4_BED_SU CHAR(4)
  , SEISHIN_4_SHONIN_YMD CHAR(8)
  , SEISHIN_4_MOD_EIGY_YMD CHAR(8)
  , SEISHIN_5_KNG_SBT_CD CHAR(4)
  , SEISHIN_5_BED_SU CHAR(4)
  , SEISHIN_5_SHONIN_YMD CHAR(8)
  , SEISHIN_5_MOD_EIGY_YMD CHAR(8)
  , SEISHIN_6_KNG_SBT_CD CHAR(4)
  , SEISHIN_6_BED_SU CHAR(4)
  , SEISHIN_6_SHONIN_YMD CHAR(8)
  , SEISHIN_6_MOD_EIGY_YMD CHAR(8)
  , SEISHINKEI_KNG_SBT_SU CHAR(1)
  , SEISHINKEI_BED_SU CHAR(4)
  , KEKKAKU_1_KNG_SBT_CD CHAR(4)
  , KEKKAKU_1_BED_SU CHAR(4)
  , KEKKAKU_1_SHONIN_YMD CHAR(8)
  , KEKKAKU_1_MOD_EIGY_YMD CHAR(8)
  , KEKKAKU_2_KNG_SBT_CD CHAR(4)
  , KEKKAKU_2_BED_SU CHAR(4)
  , KEKKAKU_2_SHONIN_YMD CHAR(8)
  , KEKKAKU_2_MOD_EIGY_YMD CHAR(8)
  , KEKKAKU_3_KNG_SBT_CD CHAR(4)
  , KEKKAKU_3_BED_SU CHAR(4)
  , KEKKAKU_3_SHONIN_YMD CHAR(8)
  , KEKKAKU_3_MOD_EIGY_YMD CHAR(8)
  , KEKKAKU_4_KNG_SBT_CD CHAR(4)
  , KEKKAKU_4_BED_SU CHAR(4)
  , KEKKAKU_4_SHONIN_YMD CHAR(8)
  , KEKKAKU_4_MOD_EIGY_YMD CHAR(8)
  , KEKKAKUKEI_KNG_SBT_SU CHAR(1)
  , KEKKAKUKEI_BED_SU CHAR(4)
  , SONOTA_1_KNG_SBT_CD CHAR(4)
  , SONOTA_1_KBN_1 CHAR(1)
  , SONOTA_1_KBN_2 CHAR(1)
  , SONOTA_1_BED_SU CHAR(4)
  , SONOTA_1_KIFKK_IPPAN_RYOYO_KBN CHAR(1)
  , SONOTA_1_MOD_EIGY_YMD CHAR(8)
  , SONOTA_2_KNG_SBT_CD CHAR(4)
  , SONOTA_2_KBN_1 CHAR(1)
  , SONOTA_2_KBN_2 CHAR(1)
  , SONOTA_2_BED_SU CHAR(4)
  , SONOTA_2_KIFKK_IPPAN_RYOYO_KBN CHAR(1)
  , SONOTA_2_MOD_EIGY_YMD CHAR(8)
  , SONOTA_3_KNG_SBT_CD CHAR(4)
  , SONOTA_3_KBN_1 CHAR(1)
  , SONOTA_3_KBN_2 CHAR(1)
  , SONOTA_3_BED_SU CHAR(4)
  , SONOTA_3_KIFKK_IPPAN_RYOYO_KBN CHAR(1)
  , SONOTA_3_MOD_EIGY_YMD CHAR(8)
  , SONOTA_4_KNG_SBT_CD CHAR(4)
  , SONOTA_4_KBN_1 CHAR(1)
  , SONOTA_4_KBN_2 CHAR(1)
  , SONOTA_4_BED_SU CHAR(4)
  , SONOTA_4_KIFKK_IPPAN_RYOYO_KBN CHAR(1)
  , SONOTA_4_MOD_EIGY_YMD CHAR(8)
  , SONOTA_5_KNG_SBT_CD CHAR(4)
  , SONOTA_5_KBN_1 CHAR(1)
  , SONOTA_5_KBN_2 CHAR(1)
  , SONOTA_5_BED_SU CHAR(4)
  , SONOTA_5_KIFKK_IPPAN_RYOYO_KBN CHAR(1)
  , SONOTA_5_MOD_EIGY_YMD CHAR(8)
  , SONOTA_6_KNG_SBT_CD CHAR(4)
  , SONOTA_6_KBN_1 CHAR(1)
  , SONOTA_6_KBN_2 CHAR(1)
  , SONOTA_6_BED_SU CHAR(4)
  , SONOTA_6_KIFKK_IPPAN_RYOYO_KBN CHAR(1)
  , SONOTA_6_MOD_EIGY_YMD CHAR(8)
  , SONOTA_7_KNG_SBT_CD CHAR(4)
  , SONOTA_7_KBN_1 CHAR(1)
  , SONOTA_7_KBN_2 CHAR(1)
  , SONOTA_7_BED_SU CHAR(4)
  , SONOTA_7_KIFKK_IPPAN_RYOYO_KBN CHAR(1)
  , SONOTA_7_MOD_EIGY_YMD CHAR(8)
  , SONOTA_8_KNG_SBT_CD CHAR(4)
  , SONOTA_8_KBN_1 CHAR(1)
  , SONOTA_8_KBN_2 CHAR(1)
  , SONOTA_8_BED_SU CHAR(4)
  , SONOTA_8_KIFKK_IPPAN_RYOYO_KBN CHAR(1)
  , SONOTA_8_MOD_EIGY_YMD CHAR(8)
  , RYOYO_BED_SU CHAR(4)
  , RYOYO_MOD_EIGY_YMD CHAR(8)
  , KANSEN_BED_SU CHAR(4)
  , KANSEN_MOD_EIGY_YMD CHAR(8)
  , HANSEN_BED_SU CHAR(4)
  , HANSEN_MOD_EIGY_YMD CHAR(8)
  , NOHIN_JOKYO_KBN CHAR(1) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (KEN_CD,REC_ID,SHI_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBTSN01.TT_TIKY_KGF_LOT
create table MDBTSN01.TT_TIKY_KGF_LOT (
  KEN_CD CHAR(2) not null
  , KGF_LOT_NO CHAR(2) not null
  , LIST_CHAKU_YMD CHAR(8)
  , ZENKAI_JOHO_YMD CHAR(8)
  , ZENKAI_CHOSA_YMD CHAR(8)
  , JOHO_YMD CHAR(8)
  , CHOSA_YMD CHAR(8)
  , KANRYO_YMD CHAR(8)
  , CHK VARCHAR2(20)
  , COMMENTS VARCHAR2(2000)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (KEN_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBTSN01.TT_TIKY_KJN
create table MDBTSN01.TT_TIKY_KJN (
  REC_ID CHAR(2) not null
  , KJN_CD CHAR(6) not null
  , DEL_FLG CHAR(1)
  , DEL_EIGY_YMD CHAR(8)
  , SHOKI_TRKJI_NM VARCHAR2(80)
  , SHOKI_TRKJI_NM_KANA VARCHAR2(60)
  , DEL_YOTEI_RIYU_CD CHAR(1)
  , DEL_NYURYOKU_YM CHAR(6)
  , DEL_NYURYOKU_USER_CD CHAR(3)
  , DEL_NYURYOKU_OPE_CD VARCHAR2(10)
  , DEL_YM CHAR(6)
  , CHOFUKU_AITSK_REC_ID CHAR(2)
  , CHOFUKU_AITSK_KJN_CD CHAR(6)
  , KJN_NM VARCHAR2(80)
  , KENSAKU_KJN_NM VARCHAR2(80)
  , KENSAKU_KJN_SEI VARCHAR2(80)
  , KENSAKU_KJN_NAMAE VARCHAR2(80)
  , KJN_NM_KANA VARCHAR2(60)
  , KENSAKU_KJN_NM_KANA VARCHAR2(60)
  , KENSAKU_KJN_SEI_KANA VARCHAR2(60)
  , KENSAKU_KJN_NAMAE_KANA VARCHAR2(60)
  , KJN_NM_UPD_EIGY_YMD CHAR(8)
  , KJN_NM_KKNN_EIGY_YMD CHAR(8)
  , KJN_NM_KKNN_USER_CD CHAR(3)
  , KJN_NM_KKNN_OPE_CD VARCHAR2(10)
  , SEIBETSU_KBN CHAR(1)
  , SEIBETSU_KKNN_EIGY_YMD CHAR(8)
  , SEIBETSU_KKNN_USER_CD CHAR(3)
  , SEIBETSU_KKNN_OPE_CD VARCHAR2(10)
  , BIRTH_GENGO_CD CHAR(1)
  , BIRTH_WY CHAR(2)
  , BIRTH_SY CHAR(4)
  , BIRTH_M CHAR(2)
  , BIRTH_D CHAR(2)
  , SEINENREI NUMBER(3, 0)
  , KAIKIN_KBN CHAR(1)
  , KAIGYONEN_GENGO_CD CHAR(1)
  , KAIGYONEN_WY CHAR(2)
  , KAIGYONEN_SY CHAR(4)
  , SHUSSHINKO_CD CHAR(3)
  , KENSAKU_SHUSSHINKO_CD CHAR(3)
  , GAKUBU_SHIKIBETSU_KBN CHAR(1)
  , SHUSSHINKO_KKNN_EIGY_YMD CHAR(8)
  , SHUSSHINKO_KKNN_USER_CD CHAR(3)
  , SHUSSHINKO_KKNN_OPE_CD VARCHAR2(10)
  , STNEN_GENGO_CD CHAR(1)
  , STNEN_WY CHAR(2)
  , STNEN_SY CHAR(4)
  , STNEN_KKNN_EIGY_YMD CHAR(8)
  , STNEN_KKNN_USER_CD CHAR(3)
  , STNEN_KKNN_OPE_CD VARCHAR2(10)
  , STNENREI NUMBER(3, 0)
  , IKKATSU_TRK_FLG CHAR(1)
  , TRKNEN_GENGO_CD CHAR(1)
  , TRKNEN_WY CHAR(2)
  , TRKNEN_SY CHAR(4)
  , TRKNEN_KKNN_EIGY_YMD CHAR(8)
  , TRKNEN_KKNN_USER_CD CHAR(3)
  , TRKNEN_KKNN_OPE_CD VARCHAR2(10)
  , TONENREI NUMBER(3, 0)
  , KOROSHOSITE_SHOGO_KBN_CD CHAR(1)
  , KOROSHOSITE_SHOGO_YMD CHAR(8)
  , SNRYKMK_CD_1 CHAR(3)
  , SNRYKMK_CD_2 CHAR(3)
  , SNRYKMK_CD_3 CHAR(3)
  , SNRYKMK_CD_4 CHAR(3)
  , SNRYKMK_CD_5 CHAR(3)
  , KENSAKU_SNRYKMK_CD_RENKETSU VARCHAR2(20)
  , SHOKUSHU_BNRI_CD CHAR(1)
  , SHUSSHINCHI_RIDAI_CD CHAR(2)
  , KANYU_ISHIKAI_RIDAI_CD CHAR(2)
  , HKNI_TRK_RIDAI_CD CHAR(2)
  , KEN_CD CHAR(2)
  , SHIKU_CD CHAR(3)
  , OAZA_CD CHAR(3)
  , AZA_CD CHAR(3)
  , ZIP CHAR(7)
  , JUSHO_KANJI_KEN_NM VARCHAR2(40)
  , JUSHO_KANJI_SHIKU_NM VARCHAR2(60)
  , JUSHO_KANJI_OAZA_NM VARCHAR2(80)
  , JUSHO_KANJI_AZA_NM VARCHAR2(60)
  , JUSHO_KANJI_TENYURYOKU VARCHAR2(400)
  , JUSHO_KANJI_RENKETSU VARCHAR2(640)
  , KENSAKU_JUSHO_KANJI VARCHAR2(640)
  , JUSHO_KANA_KEN_NM VARCHAR2(30)
  , JUSHO_KANA_SHIKU_NM VARCHAR2(90)
  , JUSHO_KANA_OAZA_NM VARCHAR2(120)
  , JUSHO_KANA_AZA_NM VARCHAR2(90)
  , JUSHO_KANA_TENYURYOKU VARCHAR2(300)
  , JUSHO_KANA_RENKETSU VARCHAR2(630)
  , HYPHEN_NASHI_FLG CHAR(1)
  , TENYURYOKU_NASHI_FLG CHAR(1)
  , KEN_NM_KANJI_MOJI_SU NUMBER(2, 0)
  , SHIKU_NM_KANJI_MOJI_SU NUMBER(2, 0)
  , OAZA_NM_KANJI_MOJI_SU NUMBER(2, 0)
  , AZA_NM_KANJI_MOJI_SU NUMBER(2, 0)
  , KEN_NM_KANA_MOJI_SU NUMBER(2, 0)
  , SHIKU_NM_KANA_MOJI_SU NUMBER(2, 0)
  , OAZA_NM_KANA_MOJI_SU NUMBER(2, 0)
  , AZA_NM_KANA_MOJI_SU NUMBER(2, 0)
  , JUSHO_HYOJI_NO VARCHAR2(13)
  , JUSHOFUMEI_CD CHAR(1)
  , JUSHO_UPD_EIGY_YMD CHAR(8)
  , TEL VARCHAR2(15)
  , RIYOTEISHI_KBN_CD CHAR(2)
  , RIYOTEISHI_RIYU_CD CHAR(3)
  , RIYOTEISHI_TRK_YMD CHAR(8)
  , RIYOTEISHI_KAIJO_YMD CHAR(8)
  , DCFCHOFUKU_REC_ID CHAR(2)
  , DCFCHOFUKU_KJN_CD CHAR(6)
  , COMMENTS VARCHAR2(2000)
  , NENREI_UPD_BATCH_EIGY_YMD CHAR(8)
  , NENREI_UPD_BATCH_DATE DATE
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (REC_ID,KJN_CD)
);
/

create index TT_TIKY_KJN_IX01
  on MDBTSN01.TT_TIKY_KJN(CHOFUKU_AITSK_REC_ID,CHOFUKU_AITSK_KJN_CD)
/

create index TT_TIKY_KJN_IX02
  on MDBTSN01.TT_TIKY_KJN(DCFCHOFUKU_REC_ID,DCFCHOFUKU_KJN_CD)
/

create index TT_TIKY_KJN_IX03
  on MDBTSN01.TT_TIKY_KJN(TRKNEN_GENGO_CD,TRKNEN_WY)
/

create index TT_TIKY_KJN_IX04
  on MDBTSN01.TT_TIKY_KJN(KENSAKU_KJN_NM,KENSAKU_KJN_NM_KANA,BIRTH_GENGO_CD,BIRTH_WY,BIRTH_M,BIRTH_D,SHUSSHINKO_CD,GAKUBU_SHIKIBETSU_KBN,STNEN_GENGO_CD,STNEN_WY,TRKNEN_GENGO_CD,TRKNEN_WY,SNRYKMK_CD_1,SNRYKMK_CD_2,SNRYKMK_CD_3,SNRYKMK_CD_4,SNRYKMK_CD_5)
/

create index TT_TIKY_KJN_IX05
  on MDBTSN01.TT_TIKY_KJN(UPD_EIGY_YMD)
/

create index TT_TIKY_KJN_IX06
  on MDBTSN01.TT_TIKY_KJN(REC_ID,KJN_CD,DEL_FLG,DEL_YOTEI_RIYU_CD,KENSAKU_KJN_NM_KANA)
/

create index TT_TIKY_KJN_IX07
  on MDBTSN01.TT_TIKY_KJN(KEN_CD,SHIKU_CD,OAZA_CD,AZA_CD)
/

create index TT_TIKY_KJN_IX08
  on MDBTSN01.TT_TIKY_KJN(REC_ID,KJN_CD,UPD_EIGY_YMD)
/

create index TT_TIKY_KJN_IX09
  on MDBTSN01.TT_TIKY_KJN(KENSAKU_KJN_NAMAE)
/

create index TT_TIKY_KJN_IX10
  on MDBTSN01.TT_TIKY_KJN(KENSAKU_KJN_NAMAE_KANA)
/


--------------------------------------------------------------------------------
-- Table : MDBTSN01.TT_TIKY_KJN_GAKKAI
create table MDBTSN01.TT_TIKY_KJN_GAKKAI (
  REC_ID CHAR(2) not null
  , KJN_CD CHAR(6) not null
  , GAKKAI_CD CHAR(3) not null
  , GAKKAI_NENDO CHAR(4) not null
  , DEL_FLG CHAR(1)
  , DEL_EIGY_YMD CHAR(8)
  , TRK_YM CHAR(6)
  , TRK_FKT_EIGY_YMD CHAR(8) not null
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (REC_ID,KJN_CD,GAKKAI_CD,GAKKAI_NENDO)
);
/


--------------------------------------------------------------------------------
-- Table : MDBTSN01.TT_TIKY_KJN_KINMUSAKI
create table MDBTSN01.TT_TIKY_KJN_KINMUSAKI (
  REC_ID CHAR(2) not null
  , KJN_CD CHAR(6) not null
  , KINMUSAKI_REC_ID CHAR(2) not null
  , KINMUSAKI_SHI_CD CHAR(7) not null
  , TAISHOKU_FLG CHAR(1)
  , TAISHOKU_EIGY_YMD CHAR(8)
  , DAIHYO_FLG CHAR(1)
  , SZKBUKA_CD CHAR(4)
  , KENSAKU_SZKBUKA_BNRI_CD VARCHAR2(13)
  , NYURYOKU_SZKBUKA_NM VARCHAR2(60)
  , NYURYOKU_SZKBUKA_NM_KANA VARCHAR2(60)
  , YAKUSHOKU_CD CHAR(3)
  , SHOKUI_CD CHAR(3)
  , KINMUSAKI_DM_FUKA_FLG CHAR(1)
  , KINMUSAKI_KKNN_YMD CHAR(8)
  , KINMUSAKI_KKNN_USER_CD CHAR(3)
  , KINMUSAKI_KKNN_OPE_CD VARCHAR2(10)
  , JOHO_YMD CHAR(8)
  , TRK_FKT_EIGY_YMD CHAR(8) not null
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (REC_ID,KJN_CD,KINMUSAKI_REC_ID,KINMUSAKI_SHI_CD)
);
/

create index TT_TIKY_KJN_KINMUSAKI_IX01
  on MDBTSN01.TT_TIKY_KJN_KINMUSAKI(KINMUSAKI_REC_ID,KINMUSAKI_SHI_CD)
/

create index TT_TIKY_KJN_KINMUSAKI_IX02
  on MDBTSN01.TT_TIKY_KJN_KINMUSAKI(SZKBUKA_CD)
/

create index TT_TIKY_KJN_KINMUSAKI_IX03
  on MDBTSN01.TT_TIKY_KJN_KINMUSAKI(UPD_EIGY_YMD)
/

create index TT_TIKY_KJN_KINMUSAKI_IX04
  on MDBTSN01.TT_TIKY_KJN_KINMUSAKI(REC_ID,KJN_CD,TAISHOKU_FLG,KENSAKU_SZKBUKA_BNRI_CD)
/

create index TT_TIKY_KJN_KINMUSAKI_IX05
  on MDBTSN01.TT_TIKY_KJN_KINMUSAKI(REC_ID,KJN_CD,KINMUSAKI_REC_ID,KINMUSAKI_SHI_CD,UPD_EIGY_YMD)
/


--------------------------------------------------------------------------------
-- Table : MDBTSN01.TT_TIKY_KJN_SENMONI
create table MDBTSN01.TT_TIKY_KJN_SENMONI (
  REC_ID CHAR(2) not null
  , KJN_CD CHAR(6) not null
  , SENMONI_CD CHAR(4) not null
  , SENMONI_FLG CHAR(1)
  , SENMONI_KEISAI_YMD VARCHAR2(8)
  , NINTEII_FLG CHAR(1)
  , NINTEII_KEISAI_YMD VARCHAR2(8)
  , SHIDOI_FLG CHAR(1)
  , SHIDOI_KEISAI_YMD VARCHAR2(8)
  , SOSHITSU_FLG CHAR(1)
  , SOSHITSU_YMD VARCHAR2(8)
  , TRK_FKT_EIGY_YMD CHAR(8) not null
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (REC_ID,KJN_CD,SENMONI_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBTSN01.TT_TIKY_KJN_SNRYKMK_KAKO
create table MDBTSN01.TT_TIKY_KJN_SNRYKMK_KAKO (
  REC_ID CHAR(2) not null
  , KJN_CD CHAR(6) not null
  , SNRYKMK_RENBAN NUMBER(3, 0) not null
  , SNRYKMK_CD_DAIKBN CHAR(1)
  , SNRYKMK_CD CHAR(3)
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (REC_ID,KJN_CD,SNRYKMK_RENBAN)
);
/

create index TT_TIKY_KJN_SNRYKMK_KAKO_IX01
  on MDBTSN01.TT_TIKY_KJN_SNRYKMK_KAKO(REC_ID,KJN_CD,SNRYKMK_CD_DAIKBN)
/

create index TT_TIKY_KJN_SNRYKMK_KAKO_IX02
  on MDBTSN01.TT_TIKY_KJN_SNRYKMK_KAKO(REC_ID,KJN_CD,SNRYKMK_CD)
/


--------------------------------------------------------------------------------
-- Table : MDBTSN01.TT_TIKY_MDNET_SHI_OYAKO
create table MDBTSN01.TT_TIKY_MDNET_SHI_OYAKO (
  REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , OYA_REC_ID CHAR(2) not null
  , OYA_SHI_CD CHAR(7) not null
  , OYAKO_KAIJO_FLG CHAR(1)
  , KAIJO_EIGY_YMD CHAR(8)
  , KAIJO_OPE_CD VARCHAR2(10)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (REC_ID,SHI_CD,OYA_REC_ID,OYA_SHI_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBTSN01.TT_TIKY_SHI
create table MDBTSN01.TT_TIKY_SHI (
  REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , DEL_FLG CHAR(1)
  , DEL_EIGY_YMD CHAR(8)
  , DEL_YOTEI_RIYU_CD CHAR(1)
  , DEL_NYURYOKU_YM CHAR(6)
  , DEL_NYURYOKU_USER_CD CHAR(3)
  , DEL_NYURYOKU_OPE_CD VARCHAR2(10)
  , DEL_YM CHAR(6)
  , CHOFUKU_AITSK_REC_ID CHAR(2)
  , CHOFUKU_AITSK_SHI_CD CHAR(7)
  , DCFCHOFUKU_REC_ID CHAR(2)
  , DCFCHOFUKU_SHI_CD CHAR(7)
  , KYUIN_FLG CHAR(1)
  , KYUIN_S_YM CHAR(6)
  , KAIGYO_YOTEI_FLG CHAR(1)
  , KAIGYO_YOTEI_YM CHAR(6)
  , KANREN_DAIGAKU_OYA_REC_ID CHAR(2)
  , KANREN_DAIGAKU_OYA_SHI_CD CHAR(7)
  , SEISHIKI_SHI_NM VARCHAR2(200)
  , KENSAKU_SEISHIKI_SHI_NM VARCHAR2(200)
  , KENSAKU_SEISHIKI_SHI_NM_DISP VARCHAR2(200)
  , SEISHIKI_SHI_NM30 VARCHAR2(120)
  , SEISHIKI_SHI_NM_KANA VARCHAR2(240)
  , KENSAKU_SEISHIKI_SHI_NM_KANA VARCHAR2(240)
  , SEISHIKI_SHI_NM_KANA40 VARCHAR2(120)
  , SHI_RN VARCHAR2(60)
  , KENSAKU_SHI_RN VARCHAR2(60)
  , SHI_RN_KANA VARCHAR2(120)
  , KENSAKU_SHI_RN_KANA VARCHAR2(120)
  , SEISHIKI_SHI_NM_UPD_EIGY_YMD CHAR(8)
  , SEISHIKI_SHI_NM_KKNN_EIGY_YMD CHAR(8)
  , SEISHIKI_SHI_NM_KKNN_USER_CD CHAR(3)
  , SEISHIKI_SHI_NM_KKNN_OPE_CD VARCHAR2(10)
  , KEN_CD CHAR(2)
  , SHIKU_CD CHAR(3)
  , OAZA_CD CHAR(3)
  , AZA_CD CHAR(3)
  , KENSAKU_MACHIAZA_CD CHAR(11)
  , ZIP CHAR(7)
  , JUSHO_KANJI_KEN_NM VARCHAR2(40)
  , JUSHO_KANJI_SHIKU_NM VARCHAR2(60)
  , JUSHO_KANJI_OAZA_NM VARCHAR2(80)
  , JUSHO_KANJI_AZA_NM VARCHAR2(60)
  , JUSHO_KANJI_TENYURYOKU VARCHAR2(400)
  , JUSHO_KANJI_RENKETSU VARCHAR2(640)
  , KENSAKU_JUSHO_KANJI VARCHAR2(640)
  , JUSHO_KANA_KEN_NM VARCHAR2(30)
  , JUSHO_KANA_SHIKU_NM VARCHAR2(90)
  , JUSHO_KANA_OAZA_NM VARCHAR2(120)
  , JUSHO_KANA_AZA_NM VARCHAR2(90)
  , JUSHO_KANA_TENYURYOKU VARCHAR2(300)
  , JUSHO_KANA_RENKETSU VARCHAR2(630)
  , HYPHEN_NASHI_FLG CHAR(1)
  , TENYURYOKU_NASHI_FLG CHAR(1)
  , KEN_NM_KANJI_MOJI_SU NUMBER(2, 0)
  , SHIKU_NM_KANJI_MOJI_SU NUMBER(2, 0)
  , OAZA_NM_KANJI_MOJI_SU NUMBER(2, 0)
  , AZA_NM_KANJI_MOJI_SU NUMBER(2, 0)
  , KEN_NM_KANA_MOJI_SU NUMBER(2, 0)
  , SHIKU_NM_KANA_MOJI_SU NUMBER(2, 0)
  , OAZA_NM_KANA_MOJI_SU NUMBER(2, 0)
  , AZA_NM_KANA_MOJI_SU NUMBER(2, 0)
  , JUSHO_HYOJI_NO VARCHAR2(13)
  , JUSHOFUMEI_CD CHAR(1)
  , JUSHO_UPD_EIGY_YMD CHAR(8)
  , JUSHO_KKNN_EIGY_YMD CHAR(8)
  , JUSHO_KKNN_USER_CD CHAR(3)
  , JUSHO_KKNN_OPE_CD VARCHAR2(10)
  , TEL VARCHAR2(15)
  , KENSAKU_TEL VARCHAR2(15)
  , TEL_KKNN_EIGY_YMD CHAR(8)
  , TEL_KKNN_USER_CD CHAR(3)
  , TEL_KKNN_OPE_CD VARCHAR2(10)
  , KEIEITAI_CD CHAR(3)
  , SHI_KBN_CD CHAR(2)
  , OTC_FLG CHAR(1)
  , IMUSHITSU_REC_ID CHAR(2)
  , IMUSHITSU_SHI_CD CHAR(7)
  , DM_UKETORI_KYH_FLG CHAR(1)
  , SAISHINSA_KBN_CD CHAR(1)
  , BYOTO_HEISA_KBN CHAR(1)
  , TEL_NASHI_FLG CHAR(1)
  , MIKAKUNIN_FLG CHAR(1)
  , DAIHYO_REC_ID CHAR(2)
  , DAIHYO_KJN_CD CHAR(6)
  , DAIHYO_YAKUSHOKU_CD CHAR(3)
  , DAIHYO_SHOKUI_CD CHAR(3)
  , DAIHYO_NM VARCHAR2(80)
  , KENSAKU_DAIHYO_NM VARCHAR2(80)
  , DAIHYO_NM_KANA VARCHAR2(60)
  , YAKUZAISHI_NM VARCHAR2(80)
  , KENSAKU_YAKUZAISHI_NM VARCHAR2(80)
  , YAKUZAISHI_NM_KANA VARCHAR2(60)
  , SHI_BED_SU NUMBER(4, 0)
  , ZENKAI_BED_SU NUMBER(4, 0)
  , BYOIN_SBT_CD CHAR(1)
  , SHINSEI_YMD CHAR(8)
  , HKNIRYKKN_CD CHAR(7)
  , JOHOGEN_YMD CHAR(8)
  , KYOKA_BED_SU_SONOTA NUMBER(4, 0)
  , KYOKA_BED_SU_SEISHIN NUMBER(4, 0)
  , KYOKA_BED_SU_KEKKAKU NUMBER(4, 0)
  , KYOKA_BED_SU_KANSEN NUMBER(4, 0)
  , KYOKA_BED_SU_GOKEI NUMBER(4, 0)
  , KYOKA_BED_SU_IPPAN NUMBER(4, 0)
  , KYOKA_BED_SU_RYOYO NUMBER(4, 0)
  , BED_SU_KKNN_EIGY_YMD CHAR(8)
  , BED_SU_KKNN_USER_CD CHAR(3)
  , BED_SU_KKNN_OPE_CD VARCHAR2(10)
  , SNRYKMK_CD_01 CHAR(3)
  , SNRYKMK_CD_02 CHAR(3)
  , SNRYKMK_CD_03 CHAR(3)
  , SNRYKMK_CD_04 CHAR(3)
  , SNRYKMK_CD_05 CHAR(3)
  , SNRYKMK_CD_06 CHAR(3)
  , SNRYKMK_CD_07 CHAR(3)
  , SNRYKMK_CD_08 CHAR(3)
  , SNRYKMK_CD_09 CHAR(3)
  , SNRYKMK_CD_10 CHAR(3)
  , SNRYKMK_CD_11 CHAR(3)
  , SNRYKMK_CD_12 CHAR(3)
  , SNRYKMK_CD_13 CHAR(3)
  , SNRYKMK_CD_14 CHAR(3)
  , SNRYKMK_CD_15 CHAR(3)
  , SNRYKMK_CD_16 CHAR(3)
  , SNRYKMK_CD_17 CHAR(3)
  , SNRYKMK_CD_18 CHAR(3)
  , SNRYKMK_CD_19 CHAR(3)
  , SNRYKMK_CD_20 CHAR(3)
  , SNRYKMK_CD_21 CHAR(3)
  , SNRYKMK_CD_22 CHAR(3)
  , SNRYKMK_CD_23 CHAR(3)
  , SNRYKMK_CD_24 CHAR(3)
  , SNRYKMK_CD_25 CHAR(3)
  , SNRYKMK_CD_26 CHAR(3)
  , SNRYKMK_CD_27 CHAR(3)
  , SNRYKMK_CD_28 CHAR(3)
  , SNRYKMK_CD_29 CHAR(3)
  , SNRYKMK_CD_30 CHAR(3)
  , SNRYKMK_CD_31 CHAR(3)
  , SNRYKMK_CD_32 CHAR(3)
  , SNRYKMK_CD_33 CHAR(3)
  , SNRYKMK_CD_34 CHAR(3)
  , SNRYKMK_CD_35 CHAR(3)
  , SNRYKMK_CD_36 CHAR(3)
  , SNRYKMK_CD_37 CHAR(3)
  , SNRYKMK_CD_38 CHAR(3)
  , SNRYKMK_CD_39 CHAR(3)
  , SNRYKMK_CD_40 CHAR(3)
  , SNRYKMK_CD_41 CHAR(3)
  , SNRYKMK_CD_42 CHAR(3)
  , SNRYKMK_CD_43 CHAR(3)
  , SNRYKMK_CD_44 CHAR(3)
  , SNRYKMK_CD_45 CHAR(3)
  , SNRYKMK_CD_46 CHAR(3)
  , SNRYKMK_CD_47 CHAR(3)
  , SNRYKMK_CD_48 CHAR(3)
  , SNRYKMK_CD_49 CHAR(3)
  , SNRYKMK_CD_50 CHAR(3)
  , SNRYKMK_CD_51 CHAR(3)
  , SNRYKMK_CD_52 CHAR(3)
  , SNRYKMK_CD_53 CHAR(3)
  , SNRYKMK_CD_54 CHAR(3)
  , SNRYKMK_CD_55 CHAR(3)
  , SNRYKMK_CD_56 CHAR(3)
  , SNRYKMK_CD_57 CHAR(3)
  , SNRYKMK_CD_58 CHAR(3)
  , SNRYKMK_CD_59 CHAR(3)
  , SNRYKMK_CD_60 CHAR(3)
  , SNRYKMK_KKNN_EIGY_YMD CHAR(8)
  , SNRYKMK_KKNN_USER_CD CHAR(3)
  , SNRYKMK_KKNN_OPE_CD VARCHAR2(10)
  , KENSAKOMOKU_BISEIBUTSU_FLG CHAR(1)
  , KENSAKOMOKU_KESSEI_FLG CHAR(1)
  , KENSAKOMOKU_KETSUEKI_FLG CHAR(1)
  , KENSAKOMOKU_BYORI_FLG CHAR(1)
  , KENSAKOMOKU_KISEICHU_FLG CHAR(1)
  , KENSAKOMOKU_SEIKA_FLG CHAR(1)
  , KENSAKOMOKU_RI_FLG CHAR(1)
  , DAI2_TEL VARCHAR2(15)
  , DAI2_TEL_NM VARCHAR2(80)
  , KENSAKU_DAI2_TEL VARCHAR2(15)
  , KAISETSU_HOJIN_NM VARCHAR2(200)
  , KENSAKU_KAISETSU_HOJIN_NM VARCHAR2(200)
  , KAISETSU_HOJIN_NM_KANA VARCHAR2(240)
  , KAISETSU_KJN_YAKUSHOKU_NM VARCHAR2(80)
  , KAISETSU_KJN_NM VARCHAR2(80)
  , KAISETSU_KJN_NM_KANA VARCHAR2(60)
  , CHAIN_HONBU_REC_ID CHAR(2)
  , CHAIN_HONBU_SHI_CD CHAR(7)
  , CHAIN_HONBU_SBT_CD CHAR(1)
  , KAISETSU_KKNN_EIGY_YMD CHAR(8)
  , KAISETSU_KKNN_USER_CD CHAR(3)
  , KAISETSU_KKNN_OPE_CD VARCHAR2(10)
  , HKNJOTODOKE_KKNN_YMD CHAR(8)
  , HKNJOTODOKE_KKNN_USER_CD CHAR(3)
  , HKNJOTODOKE_KKNN_OPE_CD VARCHAR2(10)
  , HKNJOTODOKE_KBN CHAR(1)
  , HAIIN_HORYU_FLG CHAR(1)
  , HKNJOTODOKE_BIKO VARCHAR2(2000)
  , COMMENTS VARCHAR2(2000)
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (REC_ID,SHI_CD)
);
/

create index TT_TIKY_SHI_IX01
  on MDBTSN01.TT_TIKY_SHI(CHOFUKU_AITSK_REC_ID,CHOFUKU_AITSK_SHI_CD)
/

create index TT_TIKY_SHI_IX02
  on MDBTSN01.TT_TIKY_SHI(KENSAKU_SEISHIKI_SHI_NM,KENSAKU_SEISHIKI_SHI_NM_KANA,KENSAKU_TEL,KEN_CD,SHIKU_CD,OAZA_CD,AZA_CD,ZIP,KENSAKU_JUSHO_KANJI,KEIEITAI_CD,SHI_KBN_CD,KENSAKU_DAIHYO_NM,KENSAKU_YAKUZAISHI_NM,KENSAKU_KAISETSU_HOJIN_NM,HKNIRYKKN_CD)
/

create index TT_TIKY_SHI_IX03
  on MDBTSN01.TT_TIKY_SHI(KANREN_DAIGAKU_OYA_REC_ID,KANREN_DAIGAKU_OYA_SHI_CD)
/

create index TT_TIKY_SHI_IX04
  on MDBTSN01.TT_TIKY_SHI(IMUSHITSU_REC_ID,IMUSHITSU_SHI_CD)
/

create index TT_TIKY_SHI_IX05
  on MDBTSN01.TT_TIKY_SHI(CHAIN_HONBU_REC_ID,CHAIN_HONBU_SHI_CD)
/

create index TT_TIKY_SHI_IX06
  on MDBTSN01.TT_TIKY_SHI(TEL,REC_ID,SHI_CD)
/

create index TT_TIKY_SHI_IX07
  on MDBTSN01.TT_TIKY_SHI(REC_ID,TRK_EIGY_YMD)
/

create index TT_TIKY_SHI_IX08
  on MDBTSN01.TT_TIKY_SHI(DEL_FLG,SHI_KBN_CD,IMUSHITSU_REC_ID,IMUSHITSU_SHI_CD)
/

create index TT_TIKY_SHI_IX09
  on MDBTSN01.TT_TIKY_SHI(UPD_EIGY_YMD)
/

create index TT_TIKY_SHI_IX10
  on MDBTSN01.TT_TIKY_SHI(KENSAKU_TEL)
/

create index TT_TIKY_SHI_IX11
  on MDBTSN01.TT_TIKY_SHI(KEN_CD,SHIKU_CD,OAZA_CD,AZA_CD)
/

create index TT_TIKY_SHI_IX12
  on MDBTSN01.TT_TIKY_SHI(DEL_YOTEI_RIYU_CD,KENSAKU_TEL,KENSAKU_DAI2_TEL,KENSAKU_MACHIAZA_CD)
/

create index TT_TIKY_SHI_IX13
  on MDBTSN01.TT_TIKY_SHI(DAIHYO_REC_ID,DAIHYO_KJN_CD)
/

create index TT_TIKY_SHI_IX14
  on MDBTSN01.TT_TIKY_SHI(JUSHO_KANJI_RENKETSU)
/

create index TT_TIKY_SHI_IX15
  on MDBTSN01.TT_TIKY_SHI(REC_ID,SHI_CD,UPD_EIGY_YMD)
/

create index TT_TIKY_SHI_IX16
  on MDBTSN01.TT_TIKY_SHI(KEN_CD)
/

create index TT_TIKY_SHI_IX17
  on MDBTSN01.TT_TIKY_SHI(KENSAKU_SEISHIKI_SHI_NM_DISP)
/


--------------------------------------------------------------------------------
-- Table : MDBTSN01.TT_TIKY_SHI_FAX
create table MDBTSN01.TT_TIKY_SHI_FAX (
  REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , FAX VARCHAR2(15) not null
  , DEL_FLG CHAR(1)
  , DAIHYO_FAX_FLG CHAR(1)
  , UKETORI_KYH_KBN CHAR(1)
  , TEL_KENYO_FLG CHAR(1)
  , BIKO VARCHAR2(400)
  , KENSAKU_FAX VARCHAR2(15)
  , FAX_ATESAKI_CD CHAR(2)
  , TRK_FKT_EIGY_YMD CHAR(8) not null
  , TRK_USER_CD CHAR(3) not null
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_USER_CD CHAR(3) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (REC_ID,SHI_CD,FAX)
);
/


--------------------------------------------------------------------------------
-- Table : MDBTSN01.TT_TIKY_SHI_SNRYKMK_KAKO
create table MDBTSN01.TT_TIKY_SHI_SNRYKMK_KAKO (
  REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , SNRYKMK_RENBAN NUMBER(3, 0) not null
  , SNRYKMK_CD_DAIKBN CHAR(1)
  , SNRYKMK_CD CHAR(3)
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (REC_ID,SHI_CD,SNRYKMK_RENBAN)
);
/

create index TT_TIKY_SHI_SNRYKMK_KAKO_IX01
  on MDBTSN01.TT_TIKY_SHI_SNRYKMK_KAKO(REC_ID,SHI_CD,SNRYKMK_CD_DAIKBN)
/

create index TT_TIKY_SHI_SNRYKMK_KAKO_IX02
  on MDBTSN01.TT_TIKY_SHI_SNRYKMK_KAKO(REC_ID,SHI_CD,SNRYKMK_CD)
/


--------------------------------------------------------------------------------
-- Table : MDBTSN01.TT_TIKY_TSUIKAITEM
create table MDBTSN01.TT_TIKY_TSUIKAITEM (
  REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , DEL_FLG CHAR(1)
  , DEL_EIGY_YMD CHAR(8)
  , DPC_FLG CHAR(1)
  , DPC_SHITEI_YMD CHAR(8)
  , DPC_CANCEL_YMD CHAR(8)
  , DPC_CHOSEI_KEISU NUMBER(5, 4)
  , DPC_IHYO_KEISU NUMBER(5, 4)
  , DPC_MOD_EIGY_YMD CHAR(8)
  , DPCJUNBI_FLG CHAR(1)
  , DPCJUNBI_SHONIN_Y CHAR(4)
  , DPCJUNBI_CANCEL_YMD CHAR(8)
  , DPCJUNBI_MOD_EIGY_YMD CHAR(8)
  , GANKYOTEN_FLG CHAR(1)
  , GANKYOTEN_SHITEI_YMD CHAR(8)
  , GANKYOTEN_CANCEL_YMD CHAR(8)
  , GANKYOTEN_KBN CHAR(1)
  , GANKYOTEN_MOD_EIGY_YMD CHAR(8)
  , TOKUTEIKINO_FLG CHAR(1)
  , TOKUTEIKINO_SHONIN_YMD CHAR(8)
  , TOKUTEIKINO_CANCEL_YMD CHAR(8)
  , TOKUTEIKINO_MOD_EIGY_YMD CHAR(8)
  , CHIKIRY_FLG CHAR(1)
  , CHIKIRY_SHOKAIRITSU CHAR(4)
  , CHIKIRY_SHONIN_YMD CHAR(8)
  , CHIKIRY_CANCEL_YMD CHAR(8)
  , CHIKIRY_MOD_EIGY_YMD CHAR(8)
  , CHOKYUNOSOCCHU_FLG CHAR(1)
  , CHOKYUNOSOCCHU_SHONIN_YMD CHAR(8)
  , CHOKYUNOSOCCHU_CANCEL_YMD CHAR(8)
  , CHOKYUNOSOCCHU_MOD_EIGY_YMD CHAR(8)
  , SOGONYUIN_FLG CHAR(1)
  , SOGONYUIN_SHONIN_YMD CHAR(8)
  , SOGONYUIN_CANCEL_YMD CHAR(8)
  , SOGONYUIN_MOD_EIGY_YMD CHAR(8)
  , ISHIHOJO_FLG CHAR(1)
  , ISHIHOJO_SHONIN_YMD CHAR(8)
  , ISHIHOJO_CANCEL_YMD CHAR(8)
  , ISHIHOJO_MOD_EIGY_YMD CHAR(8)
  , KARTE_FLG CHAR(1)
  , KARTE_SHONIN_YMD CHAR(8)
  , KARTE_CANCEL_YMD CHAR(8)
  , KARTE_MOD_EIGY_YMD CHAR(8)
  , IRYANZEN_FLG CHAR(1)
  , IRYANZEN_SHONIN_YMD CHAR(8)
  , IRYANZEN_CANCEL_YMD CHAR(8)
  , IRYANZEN_MOD_EIGY_YMD CHAR(8)
  , JOKUSOCARE_FLG CHAR(1)
  , JOKUSOCARE_SHONIN_YMD CHAR(8)
  , JOKUSOCARE_CANCEL_YMD CHAR(8)
  , JOKUSOCARE_MOD_EIGY_YMD CHAR(8)
  , SHONIYAKAN_FLG CHAR(1)
  , SHONIYAKAN_SHONIN_YMD CHAR(8)
  , SHONIYAKAN_CANCEL_YMD CHAR(8)
  , SHONIYAKAN_MOD_EIGY_YMD CHAR(8)
  , KAIHOGATA_FLG CHAR(1)
  , KAIHOGATA_SHONIN_YMD CHAR(8)
  , KAIHOGATA_CANCEL_YMD CHAR(8)
  , KAIHOGATA_MOD_EIGY_YMD CHAR(8)
  , CHIKRENKEIPATH_FLG CHAR(1)
  , CHIKRENKEIPATH_CD_01 CHAR(2)
  , CHIKRENKEIPATH_CD_02 CHAR(2)
  , CHIKRENKEIPATH_CD_03 CHAR(2)
  , CHIKRENKEIPATH_CD_04 CHAR(2)
  , CHIKRENKEIPATH_CD_05 CHAR(2)
  , CHIKRENKEIPATH_CD_06 CHAR(2)
  , CHIKRENKEIPATH_CD_07 CHAR(2)
  , CHIKRENKEIPATH_CD_08 CHAR(2)
  , CHIKRENKEIPATH_CD_09 CHAR(2)
  , CHIKRENKEIPATH_CD_10 CHAR(2)
  , CHIKRENKEIPATH_CD_11 CHAR(2)
  , CHIKRENKEIPATH_CD_12 CHAR(2)
  , CHIKRENKEIPATH_CD_13 CHAR(2)
  , CHIKRENKEIPATH_CD_14 CHAR(2)
  , CHIKRENKEIPATH_CD_15 CHAR(2)
  , CHIKRENKEIPATH_CD_16 CHAR(2)
  , CHIKRENKEIPATH_CD_17 CHAR(2)
  , CHIKRENKEIPATH_CD_18 CHAR(2)
  , CHIKRENKEIPATH_CD_19 CHAR(2)
  , CHIKRENKEIPATH_CD_20 CHAR(2)
  , CHIKRENKEIPATH_MOD_EIGY_YMD CHAR(8)
  , YAKUZAIKANRI_FLG CHAR(1)
  , YAKUZAIKANRI_SHONIN_YMD CHAR(8)
  , YAKUZAIKANRI_CANCEL_YMD CHAR(8)
  , YAKUZAIKANRI_MOD_EIGY_YMD CHAR(8)
  , GAZOSHINDAN_FLG CHAR(1)
  , GAZOSHINDAN_SHONIN_YMD CHAR(8)
  , GAZOSHINDAN_CANCEL_YMD CHAR(8)
  , GAZOSHINDAN_MOD_EIGY_YMD CHAR(8)
  , GIRIKGK_FLG CHAR(1)
  , GIRIKGK_SHONIN_YMD CHAR(8)
  , GIRIKGK_CANCEL_YMD CHAR(8)
  , GIRIKGK_MOD_EIGY_YMD CHAR(8)
  , SHIKKANBETSUREHA_FLG CHAR(1)
  , SHIKKANBETSUREHA_CD_01 CHAR(2)
  , SHIKKANBETSUREHA_CD_02 CHAR(2)
  , SHIKKANBETSUREHA_CD_03 CHAR(2)
  , SHIKKANBETSUREHA_CD_04 CHAR(2)
  , SHIKKANBETSUREHA_CD_05 CHAR(2)
  , SHIKKANBETSUREHA_CD_06 CHAR(2)
  , SHIKKANBETSUREHA_CD_07 CHAR(2)
  , SHIKKANBETSUREHA_CD_08 CHAR(2)
  , SHIKKANBETSUREHA_CD_09 CHAR(2)
  , SHIKKANBETSUREHA_CD_10 CHAR(2)
  , SHIKKANBETSUREHA_MOD_EIGY_YMD CHAR(8)
  , MASUIKANRI_FLG CHAR(1)
  , MASUIKANRI_SHONIN_YMD CHAR(8)
  , MASUIKANRI_CANCEL_YMD CHAR(8)
  , MASUIKANRI_MOD_EIGY_YMD CHAR(8)
  , ZAITAKUSHIEN_FLG CHAR(1)
  , ZAITAKUSHIEN_SHONIN_YMD CHAR(8)
  , ZAITAKUSHIEN_CANCEL_YMD CHAR(8)
  , ZAITAKUSHIEN_MOD_EIGY_YMD CHAR(8)
  , ZAIISOKAN_FLG CHAR(1)
  , ZAIISOKAN_SHONIN_YMD CHAR(8)
  , ZAIISOKAN_CANCEL_YMD CHAR(8)
  , ZAIISOKAN_MOD_EIGY_YMD CHAR(8)
  , ZAITAKUMAKKI_FLG CHAR(1)
  , ZAITAKUMAKKI_SHONIN_YMD CHAR(8)
  , ZAITAKUMAKKI_CANCEL_YMD CHAR(8)
  , ZAITAKUMAKKI_MOD_EIGY_YMD CHAR(8)
  , CAREMIXTO_KBN_CD CHAR(1)
  , CAREMIXTO_MOD_EIGY_YMD CHAR(8)
  , RYOYO_KANI_KBN_CD CHAR(1)
  , RYOYO_KANI_KBN_CD_MOD_EIGY_YMD CHAR(8)
  , RYOYO_FLG CHAR(1)
  , RYOYO_IRY_KNG_SBT_CD CHAR(4)
  , RYOYO_IRY_BED_SU NUMBER(4, 0)
  , RYOYO_IRY_SHONIN_YMD CHAR(8)
  , RYOYO_IRY_CANCEL_YMD CHAR(8)
  , RYOYO_IRY_MOD_EIGY_YMD CHAR(8)
  , RYOYO_KIG_KNG_SBT_CD CHAR(4)
  , RYOYO_KIG_BED_SU NUMBER(4, 0)
  , RYOYO_KIG_SHONIN_YMD CHAR(8)
  , RYOYO_KIG_CANCEL_YMD CHAR(8)
  , RYOYO_KIG_MOD_EIGY_YMD CHAR(8)
  , RYOYO_GOKEI_BED_SU NUMBER(4, 0)
  , IPPAN_FLG CHAR(1)
  , IPPAN_KNG_SBT_CD CHAR(4)
  , IPPAN_BED_SU NUMBER(4, 0)
  , IPPAN_GOKEI_BED_SU NUMBER(4, 0)
  , IPPAN_MOD_EIGY_YMD CHAR(8)
  , SEISHIN_FLG CHAR(1)
  , SEISHIN_KNG_SBT_CD CHAR(4)
  , SEISHIN_BED_SU NUMBER(4, 0)
  , SEISHIN_GOKEI_BED_SU NUMBER(4, 0)
  , SEISHIN_MOD_EIGY_YMD CHAR(8)
  , KEKKAKU_FLG CHAR(1)
  , KEKKAKU_KNG_SBT_CD CHAR(4)
  , KEKKAKU_BED_SU NUMBER(4, 0)
  , KEKKAKU_MOD_EIGY_YMD CHAR(8)
  , KANSEN_TOKUTEI_FLG CHAR(1)
  , KANSEN_TOKUTEI_MOD_EIGY_YMD CHAR(8)
  , KANSEN_1SHU_FLG CHAR(1)
  , KANSEN_1SHU_MOD_EIGY_YMD CHAR(8)
  , KANSEN_2SHU_FLG CHAR(1)
  , KANSEN_2SHU_MOD_EIGY_YMD CHAR(8)
  , KANSEN_FLG CHAR(1)
  , KANSEN_BED_SU NUMBER(4, 0)
  , KANSEN_MOD_EIGY_YMD CHAR(8)
  , KANWACARE_FLG CHAR(1)
  , KANWACARE_BED_SU NUMBER(4, 0)
  , KANWACARE_SHONIN_YMD CHAR(8)
  , KANWACARE_CANCEL_YMD CHAR(8)
  , KANWACARE_MOD_EIGY_YMD CHAR(8)
  , IRYHYOKA_FLG CHAR(1)
  , IRYHYOKA_CD CHAR(2)
  , IRYHYOKA_SHONIN_YMD CHAR(8)
  , IRYHYOKA_CANCEL_YMD CHAR(8)
  , IRYHYOKA_MOD_EIGY_YMD CHAR(8)
  , RNSKNS_KKN1_FLG CHAR(1)
  , RNSKNS_KKN1_SHONIN_YMD CHAR(8)
  , RNSKNS_KKN1_CANCEL_YMD CHAR(8)
  , RNSKNS_KKN2_FLG CHAR(1)
  , RNSKNS_KKN2_SHONIN_YMD CHAR(8)
  , RNSKNS_KKN2_CANCEL_YMD CHAR(8)
  , RNSKNS_KYRYK_FLG CHAR(1)
  , RNSKNS_KYRYK_SHONIN_YMD CHAR(8)
  , RNSKNS_KYRYK_CANCEL_YMD CHAR(8)
  , RNSKNS_KYRYK_MOD_EIGY_YMD CHAR(8)
  , SAIGAIKYOTEN_FLG CHAR(1)
  , SAIGAIKYOTEN_KBN_CD CHAR(1)
  , SAIGAIKYOTEN_MOD_EIGY_YMD CHAR(8)
  , KYUKYU_IRY_KKJ_FLG CHAR(1)
  , KYUKYU_IRY_KKJ_MOD_EIGY_YMD CHAR(8)
  , KYUKYU_IRY_2JI_FLG CHAR(1)
  , KYUKYU_IRY_2JI_MOD_EIGY_YMD CHAR(8)
  , KYUKYU_IRY_3JI_FLG CHAR(1)
  , KYUKYU_IRY_3JI_MOD_EIGY_YMD CHAR(8)
  , KYUKYUKOKUJI_FLG CHAR(1)
  , KYUKYUKOKUJI_MOD_EIGY_YMD CHAR(8)
  , CHIKENCHUKAKU_FLG CHAR(1)
  , CHIKENCHUKAKU_SHONIN_YMD CHAR(8)
  , CHIKENCHUKAKU_CANCEL_YMD CHAR(8)
  , CHIKENCHUKAKU_KBN CHAR(1)
  , CHIKENCHUKAKU_MOD_EIGY_YMD CHAR(8)
  , NINCHISHOIRY_FLG CHAR(1)
  , NINCHISHOIRY_SHONIN_YMD CHAR(8)
  , NINCHISHOIRY_CANCEL_YMD CHAR(8)
  , NINCHISHOIRY_MOD_EIGY_YMD CHAR(8)
  , TOKUTEIKENSHIN_FLG CHAR(1)
  , TOKUTEIKENSHIN_MOD_EIGY_YMD CHAR(8)
  , TOKUTEISHIDO_FLG CHAR(1)
  , TOKUTEISHIDO_MOD_EIGY_YMD CHAR(8)
  , SENSHIN_1_40_FLG CHAR(1)
  , SENSHIN_1_20_FLG CHAR(1)
  , SENSHIN_21_40_FLG CHAR(1)
  , SENSHIN_CD_01 CHAR(4)
  , SENSHIN_CD_02 CHAR(4)
  , SENSHIN_CD_03 CHAR(4)
  , SENSHIN_CD_04 CHAR(4)
  , SENSHIN_CD_05 CHAR(4)
  , SENSHIN_CD_06 CHAR(4)
  , SENSHIN_CD_07 CHAR(4)
  , SENSHIN_CD_08 CHAR(4)
  , SENSHIN_CD_09 CHAR(4)
  , SENSHIN_CD_10 CHAR(4)
  , SENSHIN_CD_11 CHAR(4)
  , SENSHIN_CD_12 CHAR(4)
  , SENSHIN_CD_13 CHAR(4)
  , SENSHIN_CD_14 CHAR(4)
  , SENSHIN_CD_15 CHAR(4)
  , SENSHIN_CD_16 CHAR(4)
  , SENSHIN_CD_17 CHAR(4)
  , SENSHIN_CD_18 CHAR(4)
  , SENSHIN_CD_19 CHAR(4)
  , SENSHIN_CD_20 CHAR(4)
  , SENSHIN_CD_21 CHAR(4)
  , SENSHIN_CD_22 CHAR(4)
  , SENSHIN_CD_23 CHAR(4)
  , SENSHIN_CD_24 CHAR(4)
  , SENSHIN_CD_25 CHAR(4)
  , SENSHIN_CD_26 CHAR(4)
  , SENSHIN_CD_27 CHAR(4)
  , SENSHIN_CD_28 CHAR(4)
  , SENSHIN_CD_29 CHAR(4)
  , SENSHIN_CD_30 CHAR(4)
  , SENSHIN_CD_31 CHAR(4)
  , SENSHIN_CD_32 CHAR(4)
  , SENSHIN_CD_33 CHAR(4)
  , SENSHIN_CD_34 CHAR(4)
  , SENSHIN_CD_35 CHAR(4)
  , SENSHIN_CD_36 CHAR(4)
  , SENSHIN_CD_37 CHAR(4)
  , SENSHIN_CD_38 CHAR(4)
  , SENSHIN_CD_39 CHAR(4)
  , SENSHIN_CD_40 CHAR(4)
  , SENSHIN_MOD_EIGY_YMD CHAR(8)
  , SNTNIRY_FLG CHAR(1)
  , SNTNIRY_CD_01 CHAR(2)
  , SNTNIRY_CD_02 CHAR(2)
  , SNTNIRY_CD_03 CHAR(2)
  , SNTNIRY_CD_04 CHAR(2)
  , SNTNIRY_CD_05 CHAR(2)
  , SNTNIRY_CD_06 CHAR(2)
  , SNTNIRY_CD_07 CHAR(2)
  , SNTNIRY_CD_08 CHAR(2)
  , SNTNIRY_CD_09 CHAR(2)
  , SNTNIRY_CD_10 CHAR(2)
  , SNTNIRY_CD_11 CHAR(2)
  , SNTNIRY_CD_12 CHAR(2)
  , SNTNIRY_CD_13 CHAR(2)
  , SNTNIRY_CD_14 CHAR(2)
  , SNTNIRY_CD_15 CHAR(2)
  , SNTNIRY_CD_16 CHAR(2)
  , SNTNIRY_CD_17 CHAR(2)
  , SNTNIRY_CD_18 CHAR(2)
  , SNTNIRY_CD_19 CHAR(2)
  , SNTNIRY_CD_20 CHAR(2)
  , SNTNIRY_MOD_EIGY_YMD CHAR(8)
  , SEISAKUIRY_FLG CHAR(1)
  , SEISAKUIRY_BNY_CD_01 CHAR(2)
  , SEISAKUIRY_BNY_CD_02 CHAR(2)
  , SEISAKUIRY_BNY_CD_03 CHAR(2)
  , SEISAKUIRY_BNY_CD_04 CHAR(2)
  , SEISAKUIRY_BNY_CD_05 CHAR(2)
  , SEISAKUIRY_BNY_CD_06 CHAR(2)
  , SEISAKUIRY_BNY_CD_07 CHAR(2)
  , SEISAKUIRY_BNY_CD_08 CHAR(2)
  , SEISAKUIRY_BNY_CD_09 CHAR(2)
  , SEISAKUIRY_BNY_CD_10 CHAR(2)
  , SEISAKUIRY_BNY_CD_11 CHAR(2)
  , SEISAKUIRY_BNY_CD_12 CHAR(2)
  , SEISAKUIRY_BNY_CD_13 CHAR(2)
  , SEISAKUIRY_BNY_CD_14 CHAR(2)
  , SEISAKUIRY_BNY_CD_15 CHAR(2)
  , SEISAKUIRY_BNY_CD_16 CHAR(2)
  , SEISAKUIRY_BNY_CD_17 CHAR(2)
  , SEISAKUIRY_BNY_CD_18 CHAR(2)
  , SEISAKUIRY_BNY_CD_19 CHAR(2)
  , SEISAKUIRY_BNY_CD_20 CHAR(2)
  , SEISAKUIRY_KBN_CD_01 CHAR(1)
  , SEISAKUIRY_KBN_CD_02 CHAR(1)
  , SEISAKUIRY_KBN_CD_03 CHAR(1)
  , SEISAKUIRY_KBN_CD_04 CHAR(1)
  , SEISAKUIRY_KBN_CD_05 CHAR(1)
  , SEISAKUIRY_KBN_CD_06 CHAR(1)
  , SEISAKUIRY_KBN_CD_07 CHAR(1)
  , SEISAKUIRY_KBN_CD_08 CHAR(1)
  , SEISAKUIRY_KBN_CD_09 CHAR(1)
  , SEISAKUIRY_KBN_CD_10 CHAR(1)
  , SEISAKUIRY_KBN_CD_11 CHAR(1)
  , SEISAKUIRY_KBN_CD_12 CHAR(1)
  , SEISAKUIRY_KBN_CD_13 CHAR(1)
  , SEISAKUIRY_KBN_CD_14 CHAR(1)
  , SEISAKUIRY_KBN_CD_15 CHAR(1)
  , SEISAKUIRY_KBN_CD_16 CHAR(1)
  , SEISAKUIRY_KBN_CD_17 CHAR(1)
  , SEISAKUIRY_KBN_CD_18 CHAR(1)
  , SEISAKUIRY_KBN_CD_19 CHAR(1)
  , SEISAKUIRY_KBN_CD_20 CHAR(1)
  , SEISAKUIRY_MOD_EIGY_YMD CHAR(8)
  , HMNKNG_FLG CHAR(1)
  , HMNKNG_REC_ID CHAR(2)
  , HMNKNG_SHI_CD CHAR(7)
  , HMNKNG_MOD_EIGY_YMD CHAR(8)
  , ITEM_1_MOD_EIGY_YMD CHAR(8)
  , ITEM_2_MOD_EIGY_YMD CHAR(8)
  , ITEM_3_MOD_EIGY_YMD CHAR(8)
  , KAISETSU_FLG CHAR(1)
  , KAISETSU_YM VARCHAR2(6)
  , KAISETSU_MOD_EIGY_YMD CHAR(8)
  , COMMENTS VARCHAR2(2000)
  , SOGO_BYOIN_FLG CHAR(1)
  , SHOKAIGAIRAI_KBN_CD CHAR(1)
  , KYU_TOKUTEI_FLG CHAR(1)
  , KYU_TOKUTEI_SHONIN_YMD CHAR(8)
  , KYU_TOKUTEI_CANCEL_YMD CHAR(8)
  , KYU_TOKUTEI_MOD_EIGY_YMD CHAR(8)
  , KYU_NYUIN_FLG CHAR(1)
  , KYU_NYUIN_SHONIN_YMD CHAR(8)
  , KYU_NYUIN_CANCEL_YMD CHAR(8)
  , KYU_NYUIN_MOD_EIGY_YMD CHAR(8)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (REC_ID,SHI_CD)
);
/


--------------------------------------------------------------------------------
-- Table : MDBTSN01.TT_TIKY_TSUIKAITEM_RNSKNS
create table MDBTSN01.TT_TIKY_TSUIKAITEM_RNSKNS (
  REC_ID CHAR(2) not null
  , SHI_CD CHAR(7) not null
  , KYRYK_REC_ID CHAR(2) not null
  , KYRYK_SHI_CD CHAR(7) not null
  , S_NENDO CHAR(4) not null
  , SORTKEY NUMBER(4, 0)
  , SORTKEY_NOHIN NUMBER(3, 0)
  , TRK_EIGY_YMD CHAR(8) not null
  , UPD_EIGY_YMD CHAR(8) not null
  , TRK_OPE_CD VARCHAR2(10) not null
  , TRK_DATE DATE not null
  , TRK_PGM_ID VARCHAR2(12) not null
  , UPD_OPE_CD VARCHAR2(10) not null
  , UPD_DATE DATE not null
  , UPD_PGM_ID VARCHAR2(12) not null
  , primary key (REC_ID,SHI_CD,KYRYK_REC_ID,KYRYK_SHI_CD,S_NENDO)
);
/

/*********************************************/
CREATE SEQUENCE MDBHSM01.SEQ_INPUT_PK
  INCREMENT BY 1
  MINVALUE 1
  MAXVALUE 9999999999999999999999999999
  NOORDER
  CACHE 20
  
  CREATE SEQUENCE MDBHSM01.SEQ_RIREKI_PK
  INCREMENT BY 1
  MINVALUE 1
  MAXVALUE 9999999999999999999999999999
  NOORDER
  CACHE 20
  
  CREATE SEQUENCE MDBHSM01.SEQ_SRKK_PK
  INCREMENT BY 1
  MINVALUE 1
  MAXVALUE 9999999999999999999999999999
  NOORDER
  CACHE 20
  
  CREATE SEQUENCE MDBHSM01.SEQ_STORED_SHORI_PK
  INCREMENT BY 1
  MINVALUE 1
  MAXVALUE 9999999999999999999999999999
  NOORDER
  CACHE 20
  
  CREATE SEQUENCE MDBHSM01.SEQ_TEMPFILE
  INCREMENT BY 1
  MINVALUE 1
  MAXVALUE 999
  CYCLE
  NOORDER
  NOCACHE
  
  CREATE SEQUENCE MDBHSM01.SEQ_WORK_REPORT
  INCREMENT BY 1
  MINVALUE 1
  MAXVALUE 9999999999999999999999999999
  NOORDER
  CACHE 20
  
  CREATE OR REPLACE TYPE            "TYPE_ERR_INFO_RCD"                                          AS OBJECT
(
 PGM_ID       VARCHAR2(50)
,ERR_CD       VARCHAR2(10)
,ERR_MSG      VARCHAR2(2000)
,ERR_KEY_INF  VARCHAR2(2000)
)

CREATE OR REPLACE TYPE            "TYPE_ERR_INFO_TBL"                                           IS TABLE OF TYPE_ERR_INFO_RCD

