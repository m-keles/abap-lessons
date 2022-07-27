*&---------------------------------------------------------------------*
*& Report Z09_MK_PROG11
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z09_MK_PROG11 MESSAGE-ID zmk_message_01.

START-OF-SELECTION.

*MESSAGE 'Hello Abap Success' TYPE 'S'.  "Success
*MESSAGE 'Hello Abap Success' TYPE 'S' DISPLAY LIKE 'E'.  "Success Display Like E
*MESSAGE 'Hello Abap Info' TYPE 'I'.     "Info
*MESSAGE 'Hello Abap Warning' TYPE 'W'.  "Warning
*MESSAGE 'Hello Abap Error' TYPE 'E'.    "Error
*MESSAGE 'Hello Abap Abend' TYPE 'A'.    "Abend(Abnormal end of Task)
*MESSAGE 'Hello Abap Exit' TYPE 'X'.     "Exit



*MESSAGE 'Hello Abap Success' TYPE 'S' DISPLAY LIKE 'I'.  "Success
*MESSAGE 'Hello Abap Success' TYPE 'S' DISPLAY LIKE 'E'.  "Success Display Like E
*MESSAGE 'Hello Abap Info' TYPE 'I'.     "Info
*MESSAGE 'Hello Abap Warning' TYPE 'W'.  "Warning
*MESSAGE 'Hello Abap Error' TYPE 'E'.    "Error
*MESSAGE 'Hello Abap Abend' TYPE 'A'.    "Abend(Abnormal end of Task)
*MESSAGE 'Hello Abap Exit' TYPE 'X'.     "Exit


*MESSAGE text-000 TYPE 'I'.
*MESSAGE text-001 TYPE 'S'.


*MESSAGE i000(zmk_message_01).   "Mesaj Clasini se91 ile olusturyoruz.
*MESSAGE i000.

*MESSAGE i001 WITH 'Sunday'.   "   & isaretiyle mesajda dinamik tanimlanan yere

*MESSAGE i002 WITH 'Sunday' 'Wednesday'.


DATA: lv_day TYPE char20.
lv_day = 'Tuesday'.
MESSAGE i002 WITH 'Sunday' lv_day.

write: 'Hello World'.
