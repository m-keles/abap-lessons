*&---------------------------------------------------------------------*
*& Report Z09_MK_PROG16
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z09_mk_prog16_22.

DATA: gv_name    TYPE char20,
      gv_surname TYPE char30.

DATA: gv_rad1 TYPE char1,
      gv_rad2 TYPE xfeld.

DATA: gv_cbox TYPE xfeld.

DATA: gv_age TYPE i.

DATA: gv_id     TYPE vrm_id,
      gt_values TYPE vrm_values,
      gs_value  TYPE vrm_value.

DATA: gv_index TYPE i.

DATA: gv_date TYPE datum.

DATA: gt_log TYPE TABLE OF zmk_table_02,
      gs_log TYPE zmk_table_02.

DATA: ok_code TYPE sy-ucomm.

CONTROLS tab_id TYPE TABSTRIP.

START-OF-SELECTION.

  gv_index = 18.
  DO 60 TIMES.
    gs_value-key = gv_index.
    gs_value-text = gv_index.
    APPEND gs_value TO gt_values.
    gv_index = gv_index + 1.
  ENDDO.


  gv_cbox = abap_true.
  CALL SCREEN 0100.
*&---------------------------------------------------------------------*
*&      Module  STATUS_0100  OUTPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE status_0100 OUTPUT.
  SET PF-STATUS 'STATUS_0100'.
*  SET TITLEBAR 'xxx'.

  gv_id = 'GV_AGE'.

*gs_value-key = '1'.
*gs_value-text = '18 years old'.
*APPEND gs_value to gt_values.
*
*gs_value-key = '2'.
*gs_value-text = '19 years old'.
*APPEND gs_value to gt_values.



  CALL FUNCTION 'VRM_SET_VALUES'
    EXPORTING
      id     = gv_id
      values = gt_values.
  .


ENDMODULE.
*&---------------------------------------------------------------------*
*&      Module  USER_COMMAND_0100  INPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE user_command_0100 INPUT.
*  CASE sy-ucomm.
  CASE ok_code.
    WHEN '&BACK'.
*      MESSAGE gv_name TYPE 'I'.
*      IF rad1 eq 'X'.

*      IF gv_rad1 EQ abap_true.
*        MESSAGE 'Female' TYPE 'I'.
*      ELSE.
*        MESSAGE 'Male' TYPE 'I'.
*      ENDIF.

*      IF gv_cbox eq abap_true.
*        MESSAGE 'Checkbox' TYPE 'I'.
*      ELSE.
*        MESSAGE 'No Checkbox' TYPE 'I'.
*      ENDIF.


      DATA: lv_age_c TYPE char10.
      lv_age_c = gv_age.
      MESSAGE lv_age_c TYPE 'I'.

      LEAVE TO SCREEN 0.
    WHEN '&CLEAR'.
      PERFORM clear_data.
    WHEN '&SAVE'.
      PERFORM save_data.
    WHEN '&TAB1'.
      tab_id-activetab = '&TAB1'.
    WHEN '&TAB2'.
      tab_id-activetab = '&TAB2'.


  ENDCASE.
ENDMODULE.
*&---------------------------------------------------------------------*
*&      Form  CLEAR_DATA
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
FORM clear_data .
      CLEAR: gv_name,
             gv_surname,
             gv_age,
             gv_cbox,
             gv_date,
             gv_rad2.
      gv_rad1 = abap_true.
ENDFORM.
*&---------------------------------------------------------------------*
*&      Form  SAVE_DATA
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
FORM save_data .

    gs_log-name = gv_name.
      gs_log-surname = gv_surname.
      gs_log-cbox = gv_cbox.
      gs_log-age = gv_age.
      gs_log-bdate = gv_date.
      IF gv_rad1 EQ abap_true.
        gs_log-gender = 'F'.
      ELSE.
        gs_log-gender = 'M'.
      ENDIF.

      INSERT zmk_table_02 FROM gs_log.
      COMMIT WORK AND WAIT.

      MESSAGE 'The data has been successfully saved.' TYPE 'I' DISPLAY LIKE 'S'.

ENDFORM.
