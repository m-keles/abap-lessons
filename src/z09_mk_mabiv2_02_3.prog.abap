*&---------------------------------------------------------------------*
*& Report Z09_MK_MABIV2_02_3
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z09_mk_mabiv2_02_3.


CLASS lcl_shape DEFINITION.
  PUBLIC SECTION.
    METHODS: constructor,
             show_shape.
ENDCLASS.

CLASS lcl_shape IMPLEMENTATION.
  METHOD constructor.
    WRITE: 'Super class shape constructor is called'.
  ENDMETHOD.

  method show_shape.
    write: / 'Showing shape'.
  ENDMETHOD.

ENDCLASS.

CLASS lcl_circle DEFINITION INHERITING FROM lcl_shape.
  PUBLIC SECTION.
  METHODS: constructor,
           show_shape REDEFINITION.
ENDCLASS.

CLASS lcl_circle IMPLEMENTATION.
  method constructor.
    super->constructor( ).
    write: / 'Subclass circle constructor is called'.
  ENDMETHOD.

  METHOD show_shape.
    super->show_shape( ).
    write: / 'Showing circle'.
  ENDMETHOD.

ENDCLASS.


START-OF-SELECTION.
data: go_class TYPE REF TO lcl_circle.
CREATE OBJECT go_class.
go_class->show_shape( ).
