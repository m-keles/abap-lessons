*&---------------------------------------------------------------------*
*& Report Z09_MK_PROG1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z09_mk_prog01.

DATA gv_var1 TYPE p DECIMALS 2.
DATA gv_var2 TYPE int4.
DATA gv_var3 TYPE n LENGTH 2.
DATA gv_var4 TYPE c LENGTH 3.
DATA gv_var5 TYPE string.
DATA gv_var6 TYPE int4 VALUE 250.
gv_var1 = '12.54'.
gv_var2 = 123.
gv_var3 = 456.
gv_var4 = 'a+5f'.
gv_var5 = 'Herhangi bir cumle'.

write gv_var4.
write gv_var3.
write gv_var2.
write gv_var1.
write gv_var6.


PARAMETERS  pa_name TYPE string LOWER CASE VISIBLE LENGTH 25 .
PARAMETERS  pa_name2 TYPE string LOWER CASE VISIBLE LENGTH 25 DEFAULT 10.
WRITE 'Hello World'.
 NEW-LINE.
 uline.
 WRITE: 'Hello',
        pa_name,
        pa_name2.
