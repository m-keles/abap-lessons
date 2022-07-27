*&---------------------------------------------------------------------*
*& Report Z09_MK_MABIV2_05_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z09_mk_mabiv2_05_1.
*
*DATA: gv_text TYPE string.
*gv_text = 'Ornek Text'.
*
*DATA(gv_text2) = 'Ornek Text'.  "In line declaration
*
*gv_text2 = 'ahhhfjkkkdkkldlllllllllll'.   "Sadece ilk 10 bolumu c olaraka alir gerisini yazdirmaz
*
*WRITE: gv_text2.

*DATA: gt_spfli TYPE TABLE OF spfli.
*SELECT * FROM spfli INTO TABLE gt_spfli.







*SELECT * FROM spfli INTO TABLE @DATA(gt_spfli).
*
*SELECT SINGLE * FROM spfli INTO @DATA(gs_spfli) WHERE carrid = 'DL' AND connid = '0106'.
*
*SELECT SINGLE deptime, arrtime FROM spfli INTO (@DATA(gv_deptime), @DATA(gv_arrtime)) WHERE carrid = 'DL' AND connid = '0106'.
*
*LOOP AT gt_spfli into data(gs_structure).
*  gs_structure-distance = gs_structure-distance + 100.
*  modify gt_spfli from gs_structure index sy-tabix.
*  clear: gs_structure.
*ENDLOOP.
*
*LOOP AT gt_spfli ASSIGNING FIELD-SYMBOL(<fs_spfli>).
*  <fs_spfli>-distance = <fs_spfli>-distance + 100.
*ENDLOOP.
*
*
*data: gv_test_no type i.
*assign gv_test_no to FIELD-SYMBOL(<fs_test_no>).
*
*<fs_test_no> = 10.
*write:gv_test_no.
*<fs_test_no> = 20.
*write:gv_test_no.
