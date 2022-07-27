*&---------------------------------------------------------------------*
*& Report Z09_MK_PROG15
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z09_MK_PROG15.

START-OF-SELECTION.
  call SCREEN 0100.

*&---------------------------------------------------------------------*
*&      Module  STATUS_0100  OUTPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE status_0100 OUTPUT.
  SET PF-STATUS 'STATUS_0100'.
*  SET TITLEBAR 'xxx'.
ENDMODULE.
*&---------------------------------------------------------------------*
*&      Module  USER_COMMAND_0100  INPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE user_command_0100 INPUT.
  DATA: lv_text TYPE char200.

  CONCATENATE sy-ucomm
              'button is used.'
              INTO lv_text
              SEPARATED BY space.

  MESSAGE lv_text TYPE 'I'.

  CASE sy-ucomm.
    WHEN '&BACK'.
      LEAVE TO SCREEN 0.
  ENDCASE.
ENDMODULE.
