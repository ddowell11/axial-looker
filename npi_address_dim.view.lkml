view: npi_address_dim {
<<<<<<< HEAD
  sql_table_name: reporting.npi_address_dim ;;

  dimension: npi {
    type: string
    sql: ${TABLE}.npi ;;
  }

  dimension: provider_city {
    type: string
    sql: ${TABLE}.provider_city ;;
  }

  dimension: provider_first_name {
    type: string
    sql: ${TABLE}.provider_first_name ;;
  }

  dimension: provider_last_name {
    type: string
    sql: ${TABLE}.provider_last_name ;;
  }

  dimension: provider_middle_initial {
    type: string
    sql: ${TABLE}.provider_middle_initial ;;
  }

  dimension: provider_name {
    type: string
    sql: ${TABLE}.provider_name ;;
  }

  dimension: provider_state {
    type: string
    sql: ${TABLE}.provider_state ;;
  }

  dimension: provider_zip {
    type: string
    sql: ${TABLE}.provider_zip ;;
  }

  dimension: yrmo {
    type: string
    sql: ${TABLE}.yrmo ;;
  }

  measure: count {
    type: count
    drill_fields: [provider_first_name, provider_name, provider_last_name]
=======
  sql_table_name: CR_BCBST_DATAMODEL.npi_address_dim ;;

  dimension: npi {
    type: string
    sql: ${TABLE}.npi ;;
  }

  dimension: provider_city {
    type: string
    sql: ${TABLE}.provider_city ;;
  }

  dimension: provider_first_name {
    type: string
    sql: ${TABLE}.provider_first_name ;;
  }

  dimension: provider_last_name {
    type: string
    sql: ${TABLE}.provider_last_name ;;
  }

  dimension: provider_middle_initial {
    type: string
    sql: ${TABLE}.provider_middle_initial ;;
  }

  dimension: provider_name {
    type: string
    sql: ${TABLE}.provider_name ;;
  }

  dimension: provider_state {
    type: string
    sql: ${TABLE}.provider_state ;;
  }

  dimension: provider_zip {
    type: string
    sql: ${TABLE}.provider_zip ;;
  }

  dimension: yrmo {
    type: string
    sql: ${TABLE}.yrmo ;;
  }

  measure: count {
    type: count

    drill_fields: [provider_first_name, provider_last_name, provider_name]
>>>>>>> branch 'dev-daryle-dowell-96hv' of git@lkrgit_github_f7c7c96b1579f92cd87d1f3c0fc5f78a70711104:sclancy70/axial-looker.git
  }
}
