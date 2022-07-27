*&---------------------------------------------------------------------*
*& Report Z09_MK_MABI_02
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z09_MK_MABI_02.

data: gv_number_01 type n length 6. "sayi veya text verebiliyoruz. fakat text ile sayisal islem yapmaya izin vermiyor.
data: gv_number_02 type n length 6. "n tipinin en karakteristik ozelligi bos haneleri 0 ile doldurur
data: gv_number_03 type n length 6.
data: gv_number_04 type n length 6.
data: gv_integer_01 type i.
data: gv_integer_02 type i.
data: gv_integer_03 type i.
data: gv_decimal_01 type p DECIMALS 13.
data: gv_integer_04 type i.
data: gv_integer_05 type i.
data: gv_string_01 type string.
data: gv_date_01 type datum.
data: gv_time_01 type uzeit.

gv_number_01 = 'aa'.
gv_number_02 = 20. "Tercihen bu sekilde yazilir
gv_number_03 = gv_number_01 + gv_number_02.
gv_integer_01 = '100'.
gv_integer_02 = 200.  "Tercihen bu sekilde kullanilir
gv_integer_03 = gv_integer_01 - gv_integer_02.
gv_integer_04 = 200.
gv_integer_05 = 6.
gv_decimal_01 = gv_integer_04 / gv_integer_05.
gv_string_01 = 'Hello world'.
gv_date_01 = '20220212'.
gv_time_01 = '205200'.

write gv_number_03.
write gv_number_01.
write gv_integer_01.
write gv_integer_02.
write gv_integer_03.
write: / gv_decimal_01.
write: / gv_string_01.
write: / gv_date_01.
write: / gv_time_01.
write: / sy-datum.
write: / sy-uzeit.
