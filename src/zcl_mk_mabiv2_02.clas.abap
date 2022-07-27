class ZCL_MK_MABIV2_02 definition
  public
  create public .

public section.

  data NUMBER type INT4 value 100 ##NO_TEXT.

  methods GET_NUMBER
    importing
      !IV_NUMBER type INT4
    exporting
      !EV_NUMBER type INT4 .
  methods WRITE_NUMBER
    importing
      !IV_NUMBER type INT4 .
  methods WRITE_ATTRIBUTE .
  methods CONSTRUCTOR .
protected section.
private section.
ENDCLASS.



CLASS ZCL_MK_MABIV2_02 IMPLEMENTATION.


  method CONSTRUCTOR.
    me->number = 300.
  endmethod.


  method GET_NUMBER.
    ev_number = iv_number * 2.
  endmethod.


  method WRITE_ATTRIBUTE.
    data: number type i value 200.
    write: / me->number.
    write: / number.

  endmethod.


  method WRITE_NUMBER.
    write: iv_number.
  endmethod.
ENDCLASS.
