*&---------------------------------------------------------------------*
*& Report Z09_MK_MABIV2_03_2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z09_mk_mabiv2_03_2.

TYPES: BEGIN OF gty_table,
         tcno       TYPE n LENGTH 11,
         ad(30), "type c length 30 ile ayni anlamda
         soyad(30),
         sirket(30),
         banka(30),
         secim, "type c length anlaminda olur
       END OF gty_table.

DATA: gs_table TYPE gty_table,    "Structure
      gt_table TYPE TABLE OF gty_table.  "Internal Table

TYPES: BEGIN OF gty_tc,
         tc_no TYPE n LENGTH 11,
       END OF gty_tc.

DATA: gs_tc TYPE gty_tc,
      gt_tc TYPE TABLE OF gty_tc.

data: gs_fcat TYPE lvc_s_fcat,
      gt_fcat type lvc_t_fcat.



gs_table-tcno   = 74837465831.
gs_table-ad     = 'UMUT'.
gs_table-soyad  = 'ER'.
gs_table-sirket = 'STARSOFT'.
gs_table-banka  = 'AKBANK'.
APPEND gs_table TO gt_table.
CLEAR: gs_table.
gs_table-tcno   = 74837465831.
gs_table-ad     = 'UMUT'.
gs_table-soyad  = 'ER'.
gs_table-sirket = 'STARSOFT'.
gs_table-banka  = 'XYZ_BANK'.
APPEND gs_table TO gt_table.
CLEAR: gs_table.
gs_table-tcno   = 74837465832.
gs_table-ad     = 'AYDIN'.
gs_table-soyad  = 'BAŞLI'.
gs_table-sirket = 'TURKISH_AIRLINES'.
gs_table-banka  = 'GARANTI_BANK'.
APPEND gs_table TO gt_table.
CLEAR: gs_table.
gs_table-tcno   = 74837465833.
gs_table-ad     = 'ECEM'.
gs_table-soyad  = 'KOÇER'.
gs_table-sirket = 'PEGASUS_AIRLINES'.
gs_table-banka  = 'YAPI-KREDI_BANK'.
APPEND gs_table TO gt_table.
CLEAR: gs_table.
gs_table-tcno   = 74837465834.
gs_table-ad     = 'SADİYE'.
gs_table-soyad  = 'ÜLKER'.
gs_table-sirket = 'YILDIZ_HOLDING'.
gs_table-banka  = 'VAKIFBANK'.
APPEND gs_table TO gt_table.
CLEAR: gs_table.
gs_table-tcno   = 74837465835.
gs_table-ad     = 'ERKAN'.
gs_table-soyad  = 'SATILMIŞ'.
gs_table-sirket = 'DOGUS_HOLDING'.
gs_table-banka  = 'ZIRAAT_BANK'.
APPEND gs_table TO gt_table.
CLEAR: gs_table.
gs_table-tcno   = 74837465831.
gs_table-ad     = 'UMUT'.
gs_table-soyad  = 'ER'.
gs_table-sirket = 'STARSOFT'.
gs_table-banka  = 'GARANTI_BANK'.
APPEND gs_table TO gt_table.
CLEAR: gs_table.
gs_table-tcno   = 74837465832.
gs_table-ad     = 'AYDIN'.
gs_table-soyad  = 'BAŞLI'.
gs_table-sirket = 'TURKISH_AIRLINES'.
gs_table-banka  = 'YAPI-KREDI_BANK'.
APPEND gs_table TO gt_table.
CLEAR: gs_table.
gs_table-tcno   = 74837465833.
gs_table-ad     = 'ECEM'.
gs_table-soyad  = 'KOÇER'.
gs_table-sirket = 'PEGASUS_AIRLINES'.
gs_table-banka  = 'VAKIFBANK'.
APPEND gs_table TO gt_table.
CLEAR: gs_table.
gs_table-tcno   = 74837465834.
gs_table-ad     = 'SADİYE'.
gs_table-soyad  = 'ÜLKER'.
gs_table-sirket = 'YILDIZ_HOLDING'.
gs_table-banka  = 'ZIRAAT_BANK'.
APPEND gs_table TO gt_table.
CLEAR: gs_table.
gs_table-tcno   = 74837465835.
gs_table-ad     = 'ERKAN'.
gs_table-soyad  = 'SATILMIŞ'.
gs_table-sirket = 'DOGUS_HOLDING'.
gs_table-banka  = 'AKBANK'.
APPEND gs_table TO gt_table.
CLEAR: gs_table.
gs_table-tcno   = 74837465841.
gs_table-ad     = 'AHMET'.
gs_table-soyad  = 'ÇELİK'.
gs_table-sirket = 'STARSOFT'.
gs_table-banka  = 'YAPI-KREDI_BANK'.
APPEND gs_table TO gt_table.
CLEAR: gs_table.
gs_table-tcno   = 74837465842.
gs_table-ad     = 'KEMAL'.
gs_table-soyad  = 'ZORLU'.
gs_table-sirket = 'TURKISH_AIRLINES'.
gs_table-banka  = 'VAKIFBANK'.
APPEND gs_table TO gt_table.
CLEAR: gs_table.
gs_table-tcno   = 748374658343.
gs_table-ad     = 'MERVE'.
gs_table-soyad  = 'BAHAR'.
gs_table-sirket = 'PEGASUS_AIRLINES'.
gs_table-banka  = 'ZIRAAT_BANK'.
APPEND gs_table TO gt_table.
CLEAR: gs_table.
gs_table-tcno   = 748374658344.
gs_table-ad     = 'MERAL'.
gs_table-soyad  = 'TOPRAK'.
gs_table-sirket = 'YILDIZ_HOLDING'.
gs_table-banka  = 'AKBANK'.
APPEND gs_table TO gt_table.
CLEAR: gs_table.
gs_table-tcno   = 74837465845.
gs_table-ad     = 'HİKMET'.
gs_table-soyad  = 'KAYA'.
gs_table-sirket = 'DOGUS_HOLDING'.
gs_table-banka  = 'GARANTI_BANK'.
APPEND gs_table TO gt_table.
gs_table-tcno   = 32393066912.
gs_table-ad     = 'KEMAL'.
gs_table-soyad  = 'HALIS'.
gs_table-sirket = 'ANADOLU_JET'.
gs_table-banka  = 'HALKBANK'.
APPEND gs_table TO gt_table.
gs_table-tcno   = 73837678889.
gs_table-ad     = 'ZEHRA'.
gs_table-soyad  = 'KARA'.
gs_table-sirket = 'CONWAY'.
gs_table-banka  = 'MNG_BANK'.
APPEND gs_table TO gt_table.
gs_table-tcno   = 73837678950.
gs_table-ad     = 'MURAT'.
gs_table-soyad  = 'KOYUN'.
gs_table-sirket = 'CONWAY'.
gs_table-banka  = 'STARSOFT_BANK'.
APPEND gs_table TO gt_table.
CLEAR: gs_table.

LOOP AT gt_table INTO gs_table.

  gs_tc-tc_no = gs_table-tcno.
  APPEND gs_tc TO gt_tc.
  CLEAR: gs_tc.

ENDLOOP.

SORT gt_tc ASCENDING BY tc_no.

DELETE ADJACENT DUPLICATES FROM gt_tc.

gs_fcat-fieldname = 'TC_NO'.
gs_fcat-scrtext_s = 'TC Kimlik No'.
gs_fcat-coltext   = 'TC Kimlik No'.
gs_fcat-outputlen = 12.
APPEND gs_fcat to gt_fcat.
clear: gs_fcat.

gs_fcat-fieldname = 'AD'.
gs_fcat-scrtext_s = 'Ad'.
gs_fcat-coltext   = 'Ad'.
gs_fcat-outputlen = 30.
APPEND gs_fcat to gt_fcat.
clear: gs_fcat.

gs_fcat-fieldname = 'SOYAD'.
gs_fcat-scrtext_s = 'Soyad'.
gs_fcat-coltext   = 'Soyad'.
gs_fcat-outputlen = 30.
APPEND gs_fcat to gt_fcat.
clear: gs_fcat.
