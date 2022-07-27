class Z09_MK_MABIV2_FEEDER_1 definition
  public
  final
  create public .

public section.

  interfaces IF_POWL_FEEDER .
protected section.
private section.
ENDCLASS.



CLASS Z09_MK_MABIV2_FEEDER_1 IMPLEMENTATION.


  method IF_POWL_FEEDER~GET_ACTIONS.
  endmethod.


  method IF_POWL_FEEDER~GET_ACTION_CONF.
  endmethod.


  method IF_POWL_FEEDER~GET_DETAIL_COMP.
  endmethod.


  method IF_POWL_FEEDER~GET_FIELD_CATALOG.
  endmethod.


  method IF_POWL_FEEDER~GET_OBJECTS.
    data: lt_carrid_range type RANGE OF spfli-carrid,
          lt_connid_range TYPE RANGE OF spfli-connid.
  endmethod.


  method IF_POWL_FEEDER~GET_OBJECT_DEFINITION.
    e_object_def ?= cl_abap_tabledescr=>describe_by_name( 'spfli_tab' ).
  endmethod.


  method IF_POWL_FEEDER~GET_SEL_CRITERIA.
    APPEND INITIAL LINE TO c_selcrit_defs ASSIGNING FIELD-SYMBOL(<ls_selcrit_defs>).
    <ls_selcrit_defs>-selname = 'CARRID'.
    <ls_selcrit_defs>-kind = 'S'.
    <ls_selcrit_defs>-param_type = 'I'.
    <ls_selcrit_defs>-selopt_type = 'A'.
    <ls_selcrit_defs>-datatype = 'S_CARR_ID'.
  endmethod.


  method IF_POWL_FEEDER~HANDLE_ACTION.
  endmethod.
ENDCLASS.
