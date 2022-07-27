*&---------------------------------------------------------------------*
*& Report Z09_MK_MABIV2_01
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z09_mk_mabiv2_01_1.

DATA: gr_alvgrid             TYPE REF TO cl_gui_alv_grid,
      gc_custom_control_name TYPE scrfname VALUE 'CC_ALV',
      gr_container           TYPE REF TO cl_gui_custom_container,
      gt_fieldcat            TYPE lvc_t_fcat,
      gs_layout              TYPE lvc_s_layo.
data: ok_code type sy-ucomm.

TYPES: BEGIN OF gty_table.
         INCLUDE STRUCTURE sflight.
*types: calculation type i.
TYPES: END OF gty_table.

DATA: gt_table TYPE TABLE OF gty_table.

*DATA: gt_table_02 TYPE TABLE OF sflight.

call screen 0200.
*&---------------------------------------------------------------------*
*&      Module  STATUS_0200  OUTPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE status_0200 OUTPUT.
  SET PF-STATUS 'status_01'.
  SET TITLEBAR 'xxx'.
ENDMODULE.
*&---------------------------------------------------------------------*
*&      Module  USER_COMMAND_0200  INPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE user_command_0200 INPUT.

  CASE ok_code.
    WHEN 'BACK'.
      leave to screen 0.
*    WHEN .
    WHEN OTHERS.
  ENDCASE.

ENDMODULE.
