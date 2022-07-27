*&---------------------------------------------------------------------*
*& Report Z09_MK_MABIV2_02_2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z09_MK_MABIV2_02_2.

data: go_class2 type REF TO ZCL_MK_MABIV2_02,
      gv_number type i.

create object go_class2.

go_class2->get_number( EXPORTING iv_number = 10
                      IMPORTING ev_number = gv_number ).

go_class2->write_number( EXPORTING iv_number = gv_number ).

go_class2->write_attribute( ).
