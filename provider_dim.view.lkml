view: provider_dim {
  sql_table_name: CR_BCBST_DATAMODEL.provider_dim ;;

  dimension: npi {
    type: string
    sql: ${TABLE}.npi ;;
  }

  dimension: primary_npi_flag {
    type: number
    sql: ${TABLE}.primary_npi_flag ;;
  }

  dimension: provider_city {
    type: string
    sql: ${TABLE}.provider_city ;;
  }

  dimension: provider_effective_date {
    type: string
    sql: ${TABLE}.provider_effective_date ;;
  }

  dimension: provider_first_name {
    type: string
    sql: ${TABLE}.provider_first_name ;;
  }

  dimension: provider_group_id {
    type: string
    sql: ${TABLE}.provider_group_id ;;
  }

  dimension: provider_group_name {
    type: string
    sql: ${TABLE}.provider_group_name ;;
  }

  dimension: provider_id {
    type: string
    sql: ${TABLE}.provider_id ;;
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

  dimension: provider_specialty {
    type: string
    sql: ${TABLE}.provider_specialty ;;
  }

  dimension: provider_state {
    type: string
    sql: ${TABLE}.provider_state ;;
  }

  dimension: provider_tax_id {
    type: string
    sql: ${TABLE}.provider_tax_id ;;
  }

  dimension: provider_termination_date {
    type: string
    sql: ${TABLE}.provider_termination_date ;;
  }

  dimension: provider_zip {
    type: string
    sql: ${TABLE}.provider_zip ;;
  }

  dimension: sourced {
    type: string
    sql: ${TABLE}.sourced ;;
  }

  dimension: yrmo {
    type: string
    sql: ${TABLE}.yrmo ;;
  }

  measure: count {
    type: count
    approximate_threshold: 100000
    drill_fields: [provider_last_name, provider_first_name, provider_group_name, provider_name]
  }
}
