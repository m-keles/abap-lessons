class Z_CL_EGITIM_CLASS definition
  public
  final
  create public .

public section.

  interfaces Z_CL_EGITIM_INTERFACE .

  aliases MULT_NUMS
    for Z_CL_EGITIM_INTERFACE~MULT_NUMBERS .

  types NUMBER_TYP type INT4 .

  constants CV_NUMBER type NUMBER_TYP value 100 ##NO_TEXT.

  class-events DIVIDE_NUMBERS
    exporting
      value(IV_NUM1) type INT4 optional
      value(IV_NUM2) type INT4 optional
      value(EV_RESULT) type INT4 optional .

  methods SUM_NUMBERS
    importing
      value(IV_NUM1) type INT4 optional
      value(IV_NUM2) type INT4 optional
    exporting
      value(EV_RESULT) type NUMBER_TYP .
  class-methods SUM_NUMBERS_V2 .
  class-methods DIFF_NUMBERS
    importing
      value(IV_NUM1) type INT4 optional
      value(IV_NUM2) type NUMBER_TYP optional
    exporting
      value(EV_RESULT) type NUMBER_TYP .
  class-methods DIVIDE_NUMS
    for event DIVIDE_NUMBERS of Z_CL_EGITIM_CLASS
    importing
      !IV_NUM1
      !IV_NUM2
      !EV_RESULT .
protected section.
private section.

  methods SUM_NUMBERS_PRIVATE .
ENDCLASS.



CLASS Z_CL_EGITIM_CLASS IMPLEMENTATION.


  method DIFF_NUMBERS.
    Z_CL_EGITIM_CLASS_V2=>diff_numbers(
      EXPORTING
        iv_num1   =  iv_num1   " Natürliche Zahl
        iv_num2   =  iv_num2  " Natürliche Zahl
      IMPORTING
        ev_result =  ev_result   " Natürliche Zahl
    ).
  endmethod.


  method DIVIDE_NUMS.
  endmethod.


  method SUM_NUMBERS.
    ev_result = iv_num1 + iv_num2 + cv_number.
  endmethod.


  method SUM_NUMBERS_PRIVATE.
  endmethod.


  method SUM_NUMBERS_V2.
  endmethod.


  method Z_CL_EGITIM_INTERFACE~MULT_NUMBERS.
  endmethod.
ENDCLASS.
