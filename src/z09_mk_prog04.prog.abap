*&---------------------------------------------------------------------*
*& Report Z09_MK_PROG4
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z09_mk_prog04.

DATA: gv_persid     TYPE z09_persid_de,
      gv_persname   TYPE z09_persname_de,
      gv_perssname  TYPE z09_perssname_de,
      gv_persgender TYPE z09_persgender_de,
      gs_pers_t     TYPE z09_pers_tab,
      gt_pers_t     TYPE TABLE OF z09_pers_tab.

*select * from z09_pers_tab
*  into table gt_pers_t
*  where pers_id eq 1.
*
*select single * from z09_pers_tab
*  into gs_pers_t.
*
*select single PERS_ID from z09_pers_tab
*  into gv_persid.

*UPDATE z09_pers_tab SET pers_name = 'HAKAN'
*  WHERE pers_id EQ 1.
*
*WRITE 'update'.

*gs_pers_t-pers_id = 3.
*gs_pers_t-pers_name = 'Ahmet'.
*gs_pers_t-pers_sname = 'Demir'.
*gs_pers_t-pers_gender = 'M'.
*
*
*insert z09_pers_tab from gs_pers_t.
*WRITE 'insert'.

*delete from z09_pers_tab where PERS_ID eq 3.
*WRITE 'delete'.


*gs_pers_t-pers_id = 4.
*gs_pers_t-pers_name = 'Mehmet'.
*gs_pers_t-pers_sname = 'Isik'.
*gs_pers_t-pers_gender = 'M'.
*modify z09_pers_tab from gs_pers_t.
*WRITE 'modify'.
