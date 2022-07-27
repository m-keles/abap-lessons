*&---------------------------------------------------------------------*
*& Report Z09_MK_PROG2_COMPUTE
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z09_MK_PROG02_COMPUTE.
PARAMETERS: pa_zahl1 TYPE i,
            pa_zahl2 TYPE i,
            pa_op    TYPE c LENGTH 1.


DATA gv_result TYPE p LENGTH 16 DECIMALS 2.

IF ( pa_op = '+' OR
     pa_op = '-' OR
     pa_op = '*' OR
     pa_op = '/' AND pa_zahl2 <> 0
  ).
*  at SELECTION-SCREEN.
*    if pa_zahl2 > 1000 or pa_zahl1 > 1000.
*      MESSAGE 'Die Zahl miss kleiner 1000 sein' TYPE 'I'.
*      endif.
*      START-OF-SELECTION.

   CASE  pa_op.
    WHEN '+'.
      gv_result = pa_zahl1 + pa_zahl2.

    WHEN '-'.
      gv_result = pa_zahl1 - pa_zahl2.

    WHEN '*'.
      gv_result = pa_zahl1 * pa_zahl2.

    WHEN '/'.
      gv_result = pa_zahl1 / pa_zahl2.
   ENDCASE.

  WRITE :' Das Ergebniss : '(res), gv_result LEFT-JUSTIFIED.

ELSEIF pa_op = '/' AND pa_zahl2 = 0.
  WRITE : ' Zahl2 muss anders als 0'(nul).
MESSAGE s011(zbc400_09) WITH pa_zahl2.
RETURN.
ELSE.
MESSAGE i010(zbc400_09) WITH pa_op.
*MESSAGE 'Falscher Operator ausgewählt'(fop) TYPE 'I'.
* WRITE : ' The Operator ist Falsch'(fop).
RETURN.

ENDIF.









DATA: STR(50) VALUE 'How to get string length? '.

DATA: LEN TYPE I.

LEN = STRLEN( STR ).

WRITE: LEN.
