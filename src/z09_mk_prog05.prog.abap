*&---------------------------------------------------------------------*
*& Report Z09_MK_PROG5
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z09_mk_prog05.
TABLES z09_pers_tab.
DATA: gv_psname TYPE z09_perssname_de.

PARAMETERS: p_num1 TYPE int4,
            p_pname TYPE z09_persname_de.

SELECT-OPTIONS: s_psname FOR gv_psname,
                s_pgend FOR z09_pers_tab-pers_gender.

PARAMETERS p_cbox1 AS CHECKBOX.

SELECTION-SCREEN begin of BLOCK block1 with frame TITLE text-001.
PARAMETERS: p_rad1 RADIOBUTTON GROUP gr1,
            p_rad2 RADIOBUTTON GROUP gr1,
            p_rad3 RADIOBUTTON GROUP gr1.
SELECTION-SCREEN end of BLOCK block1.

SELECTION-SCREEN begin of BLOCK block2 with frame TITLE text-002.
PARAMETERS: p_rad4 RADIOBUTTON GROUP gr2,
            p_rad5 RADIOBUTTON GROUP gr2.
SELECTION-SCREEN end of BLOCK block2.
