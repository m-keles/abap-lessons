*&---------------------------------------------------------------------*
*& Report Z09_MK_PROG12
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z09_MK_PROG12.

*DATA: gv_num1 TYPE i,
*      gv_num2 TYPE i.
*
*START-OF-SELECTION.
*
*gv_num1 = 10.
*gv_num1 = gv_num1 + 1.
*gv_num1 = gv_num1 + 1.
*gv_num1 = gv_num1 + 1.
*
*
*gv_num2 = 20.
*gv_num2 = gv_num1 + gv_num2.
*
*write: gv_num1, gv_num2.



DATA: gv_index TYPE i,
      gv_mod2 TYPE i,
      gv_mod3 TYPE i.

START-OF-SELECTION.





PERFORM form1.

WRITE: / 'Mod2= ', gv_mod2.
WRITE: / 'Mod3= ', gv_mod3.

*&---------------------------------------------------------------------*
*&      Form  FORM1
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
FORM form1 .
  gv_index = 0.
  DO 10 TIMES.
    IF gv_index mod 2 eq 0.
      gv_mod2 = gv_mod2 + 1.
    ENDIF.
    IF gv_index mod 3 eq 0.
      gv_mod3 = gv_mod3 + 1.
    ENDIF.
    gv_index = gv_index + 1.
  ENDDO.
ENDFORM.
