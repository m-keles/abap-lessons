*&---------------------------------------------------------------------*
*& Report Z09_MK_MABI_06
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z09_mk_mabi_06.

*PARAMETERS: p_num1   TYPE i OBLIGATORY,
*            p_num2   TYPE i OBLIGATORY,
*            p_topla  RADIOBUTTON GROUP gr1,
*            p_cikar  RADIOBUTTON GROUP gr1,
*            p_carpma RADIOBUTTON GROUP gr1,
*            p_bolme  RADIOBUTTON GROUP gr1,
*            p_mesg   AS CHECKBOX.
*
*DATA: gv_sonuc TYPE p DECIMALS 2.
*
*IF p_num1 IS INITIAL OR p_num2 IS INITIAL.
*  MESSAGE 'Lutfen her iki sayi hucresinide doldurunuz' TYPE 'S' DISPLAY LIKE 'E'.
*  EXIT.
*ENDIF.
*
*IF p_topla IS NOT INITIAL. "Eger kullanici p_topla butonunu secmisse
*
*  gv_sonuc = p_num1 + p_num2.
*
*  WRITE: 'Yapilan islem: Toplama, Sonuc: ', gv_sonuc.
*
*ELSEIF p_cikar IS NOT INITIAL.
*
*  gv_sonuc = p_num1 - p_num2.
*  WRITE: 'Yapilan islem: Cikarma, Sonuc: ', gv_sonuc.
*
*ELSEIF p_carpma IS NOT INITIAL.
*  gv_sonuc = p_num1 * p_num2.
*  WRITE: 'Yapilan islem: Carpma, Sonuc: ', gv_sonuc.
*
*ELSEIF p_bolme IS NOT INITIAL.
*  gv_sonuc = p_num1 / p_num2.
*  WRITE: 'Yapilan islem: Bolme, Sonuc: ', gv_sonuc.
*ENDIF.
*
*IF p_mesg is NOT INITIAL.
*    MESSAGE 'Isleminiz basarili bir sekilde tamamlandi' TYPE 'S'.
*ENDIF.







PARAMETERS: p_num1 type i OBLIGATORY,
            p_num2 type i OBLIGATORY,
            p_symbol type c LENGTH 1.

data: gv_sonuc type p DECIMALS 2.

CASE p_symbol.
  WHEN '+'.
    gv_sonuc = p_num1 + p_num2.
    write: gv_sonuc.
  WHEN '-'.
    gv_sonuc = p_num1 - p_num2.
    write: gv_sonuc.
  WHEN '*'.
    gv_sonuc = p_num1 * p_num2.
    write: gv_sonuc.
  WHEN '/'.
    gv_sonuc = p_num1 / p_num2.
    write: gv_sonuc.
  when OTHERS.
    MESSAGE 'Yanlis bir islem kodu girdiniz' type 'S' DISPLAY LIKE 'E'.
ENDCASE.
