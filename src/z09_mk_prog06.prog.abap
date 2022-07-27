*&---------------------------------------------------------------------*
*& Report Z09_MK_PROG6
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z09_mk_prog06.

*PARAMETERS: p_num TYPE int4.
*
*INITIALIZATION.
*  p_num = 12.
*
*AT SELECTION-SCREEN.
*  p_num = p_num + 1.
*
*START-OF-SELECTION.
*  WRITE 'start of selection'.
*
*
*END-OF-SELECTION.
*  WRITE 'end of selection'.






*DATA gv_num1 TYPE int4.
*DATA gv_num2 TYPE int4.
*DATA gv_num3 TYPE int4.
*INITIALIZATION.
*
*
*AT SELECTION-SCREEN.
*
*
*START-OF-SELECTION.
*  PERFORM sayiya_bir_ekle.
*  PERFORM sayiya_bir_ekle.
*  PERFORM sayiya_bir_ekle.
*  PERFORM sayiya_bir_ekle.
*  PERFORM sayiya_bir_ekle.
*  PERFORM sayiya_bir_ekle.
*  WRITE gv_num1.
*
*  PERFORM iki_sayinin_carpimi USING 10 5.
*  gv_num2 = 15.
*  gv_num3 = 6.
*
*
*  PERFORM iki_sayinin_farki USING gv_num2
*                                  gv_num3.
*
*
*END-OF-SELECTION.
*FORM sayiya_bir_ekle.
*  gv_num1 = gv_num1 + 1.
*ENDFORM.
*
*FORM iki_sayinin_carpimi USING p_num1
*                               p_num2.
*  DATA: lv_sonuc TYPE int4.
*  lv_sonuc = p_num1 * p_num2.
*  WRITE: 'Sonuc: ', lv_sonuc.
*ENDFORM.
**&---------------------------------------------------------------------*
**&      Form  IKI_SAYININ_FARKI
**&---------------------------------------------------------------------*
**       text
**----------------------------------------------------------------------*
**      -->P_GV_NUM2  text
**      -->P_GV_NUM3  text
**----------------------------------------------------------------------*
*FORM iki_sayinin_farki  USING    p_num2
*                                 p_num3.
*  DATA: lv_sonuc TYPE int4.
*  lv_sonuc = p_num2 - p_num3.
*  WRITE: 'Farki: ', lv_sonuc.
*ENDFORM.


INCLUDE z09_mk_prog06_top.
INCLUDE z09_mk_prog06_frm.

START-OF-SELECTION.
PERFORM form1.
PERFORM form2.
