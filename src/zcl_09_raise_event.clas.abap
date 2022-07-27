class ZCL_09_RAISE_EVENT definition
  public
  create public .

public section.

  events PEAK_SPEED_REACHED
    exporting
      value(E_SPEED) type INT4 .

  methods GET_SPEED_OF_BIKE
    importing
      !I_SPEED type INT4 .
protected section.
private section.
ENDCLASS.



CLASS ZCL_09_RAISE_EVENT IMPLEMENTATION.


  METHOD get_speed_of_bike.
    IF i_speed <= 80.
      WRITE: 'The Speed', i_speed, 'is under control and save'.
    ELSE.
      RAISE EVENT peak_speed_reached EXPORTING e_speed = i_speed.
    ENDIF.


    ENDMETHOD.
ENDCLASS.
