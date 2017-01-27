view: npi_par_dim {
<<<<<<< HEAD
  sql_table_name: reporting.npi_par_dim ;;
=======
  sql_table_name: CR_BCBST_DATAMODEL.npi_par_dim ;;
>>>>>>> branch 'dev-daryle-dowell-96hv' of git@lkrgit_github_f7c7c96b1579f92cd87d1f3c0fc5f78a70711104:sclancy70/axial-looker.git

  dimension: npi {
    type: string
    sql: ${TABLE}.npi ;;
  }

  dimension: par_nonpar {
    type: string
    sql: ${TABLE}.par_nonpar ;;
  }

  dimension: yrmo {
    type: string
    sql: ${TABLE}.yrmo ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
