view: npi_provider_xref {
  sql_table_name: CR_BCBST_DATAMODEL.npi_provider_xref ;;

  dimension: npi {
    type: string
    sql: ${TABLE}.npi ;;
  }

  dimension: provider_id {
    type: string
    sql: ${TABLE}.provider_id ;;
  }

  dimension: yrmo {
    type: string
    sql: ${TABLE}.yrmo ;;
  }

  measure: count {
    type: count
    approximate_threshold: 100000
    drill_fields: []
  }
}
