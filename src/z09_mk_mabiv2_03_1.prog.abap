*&---------------------------------------------------------------------*
*& Report Z09_MK_MABIV2_03
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z09_mk_mabiv2_03_1.

DATA: go_raise  TYPE REF TO zcl_09_raise_event,
      go_handle TYPE REF TO zcl_09_raise_event_handle.

PARAMETERS: p_speed TYPE i.

START-OF-SELECTION.

  CREATE OBJECT go_raise.
  CREATE OBJECT go_handle.

  SET HANDLER go_handle->handle_peak_speed FOR go_raise.

  call method go_raise->get_speed_of_bike
      EXPORTING
        i_speed = p_speed.
