view: npi_par_dim {
  sql_table_name: CR_BCBST_DATAMODEL.npi_par_dim ;;

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
