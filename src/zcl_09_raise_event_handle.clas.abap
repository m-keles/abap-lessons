class ZCL_09_RAISE_EVENT_HANDLE definition
  public
  create public .

public section.

  methods HANDLE_PEAK_SPEED
    for event PEAK_SPEED_REACHED of ZCL_09_RAISE_EVENT
    importing
      !E_SPEED .
protected section.
private section.
ENDCLASS.



CLASS ZCL_09_RAISE_EVENT_HANDLE IMPLEMENTATION.


  method HANDLE_PEAK_SPEED.
    write: / 'Event Handler Method is triggered for the event PEAK_SPEED_REACH'.
    write: / 'Slow down the speed', e_speed.
  endmethod.
ENDCLASS.
