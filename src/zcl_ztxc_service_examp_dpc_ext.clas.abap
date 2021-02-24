CLASS zcl_ztxc_service_examp_dpc_ext DEFINITION
  PUBLIC
  INHERITING FROM zcl_ztxc_service_examp_dpc
  CREATE PUBLIC .

  PUBLIC SECTION.
  PROTECTED SECTION.

    METHODS customerset_get_entity
        REDEFINITION .
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_ZTXC_SERVICE_EXAMP_DPC_EXT IMPLEMENTATION.


  METHOD customerset_get_entity.
    DATA: t_vbak TYPE HASHED TABLE OF vbak WITH UNIQUE KEY vbeln.

* Dummy select to highlight issue #242
    SELECT vbeln
      INTO TABLE t_vbak
      FROM vbak
      UP TO 3 ROWS.


  ENDMETHOD.
ENDCLASS.
