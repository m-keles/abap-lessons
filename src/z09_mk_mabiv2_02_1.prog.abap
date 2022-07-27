*&---------------------------------------------------------------------*
*& Report Z09_MK_MABIV2_02
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z09_mk_mabiv2_02_1.

CLASS lcl_service DEFINITION.

  PUBLIC SECTION. "Herkes tarafindan kullanilabilir ve inherit edilebilir.

    DATA: number_global TYPE i VALUE 100.

    METHODS: get_number IMPORTING iv_number TYPE i
                        EXPORTING ev_number TYPE i.

    METHODS: write_number IMPORTING iv_number TYPE i.

    METHODS: write_attribute.

  PROTECTED SECTION. "Sadece tanimlandigi class icinde kullanilabilir ve baska classlar tarafindan inherit edilebilir.
  PRIVATE SECTION. " Sadece tanimlandigi class icerisinde kullanilabilir ancak inherit edilemez.

ENDCLASS.

class lcl_service IMPLEMENTATION.
  method get_number.
    ev_number = iv_number * 2.
  ENDMETHOD.

  method write_number.
    write: iv_number.
  ENDMETHOD.

  method write_attribute.
    data: number_global type i value 200.
    write: / me->number_global.
    write: / number_global.
  ENDMETHOD.

ENDCLASS.

START-OF-SELECTION. "Kullanici f8 tusuna basti

data: go_class TYPE REF TO lcl_service,
      gv_number type i.

create OBJECT go_class.

go_class->get_number( EXPORTING iv_number = 10
                      IMPORTING ev_number = gv_number ).

go_class->write_number( EXPORTING iv_number = gv_number ).

go_class->write_attribute( ).


data: go_class2 type REF TO ZCL_MK_MABIV2_02,
      gv_number9 type i.

create object go_class2.

go_class2->get_number( EXPORTING iv_number = 10
                      IMPORTING ev_number = gv_number ).

go_class2->write_number( EXPORTING iv_number = gv_number ).

go_class->write_attribute( ).
