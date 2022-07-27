FUNCTION Z09_FG_1_BAUSTEIN.
*"--------------------------------------------------------------------
*"*"Lokale Schnittstelle:
*"  IMPORTING
*"     VALUE(IV_NUM1) TYPE  INT4 DEFAULT 1
*"     VALUE(IV_NUM2) TYPE  INT4 DEFAULT 0
*"  EXPORTING
*"     REFERENCE(EV_RESULT) TYPE  INT4
*"  CHANGING
*"     REFERENCE(CV_MES) TYPE  CHAR20 OPTIONAL
*"  EXCEPTIONS
*"      DIVIDED_BY_ZERO
*"--------------------------------------------------------------------

*if iv_num2 = 0.

IF iv_num2 IS INITIAL.
  RAISE DIVIDED_BY_ZERO.
ENDIF.

ev_result = iv_num1 / iv_num2.

cv_mes = 'Changed Message'.

ENDFUNCTION.
