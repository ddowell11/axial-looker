view: report_app_scores {
  sql_table_name: CR_BCBST_REPORTS.report_app_scores ;;

  dimension: app_percentile {
    type: number
    sql: ${TABLE}.app_percentile ;;
  }

  dimension: app_score {
    type: number
    sql: ${TABLE}.app_score ;;
  }

  dimension: group_app {
    type: number
    sql: ${TABLE}.group_app ;;
  }

  dimension: group_app_percentile {
    type: number
    sql: ${TABLE}.group_app_percentile ;;
  }

  dimension: group_id {
    type: string
    sql: ${TABLE}.group_id ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}.group_name ;;
  }

  dimension: npi {
    type: string
    sql: ${TABLE}.npi ;;
  }

  dimension: opioid_members {
    type: number
    sql: ${TABLE}.opioid_members ;;
  }

  dimension: opioid_prescriptions {
    type: number
    sql: ${TABLE}.opioid_prescriptions ;;
  }

  dimension: par_nonpar {
    type: string
    sql: ${TABLE}.par_nonpar ;;
  }

  dimension: provider_first_name {
    type: string
    sql: ${TABLE}.provider_first_name ;;
  }

  dimension: provider_id {
    type: string
    sql: ${TABLE}.provider_id ;;
  }

  dimension: provider_last_name {
    type: string
    sql: ${TABLE}.provider_last_name ;;
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
    drill_fields: [group_name, provider_last_name, provider_first_name]
  }
}
