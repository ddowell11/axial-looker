view: report_rim_scores {
  sql_table_name: CR_BCBST_REPORTS.report_rim_scores ;;

  dimension: group_id {
    type: string
    sql: ${TABLE}.Group_ID ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}.Group_Name ;;
  }

  dimension: group_rim {
    type: number
    sql: ${TABLE}.Group_RIM ;;
  }

  dimension: npi {
    type: string
    sql: ${TABLE}.npi ;;
  }

  dimension: opioid_members {
    type: number
    sql: ${TABLE}.Opioid_Members ;;
  }

  dimension: opioid_prescriptions {
    type: number
    sql: ${TABLE}.Opioid_Prescriptions ;;
  }

  dimension: rim_report_par_nonpar {
    type: string
    sql: ${TABLE}.par_nonpar ;;
  }

  dimension: rim_score {
    type: number
    sql: ${TABLE}.RIM_SCORE ;;
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
    drill_fields: [group_name]


  }



  measure: rim_report_npi_count {
    type: count_distinct
    sql: ${TABLE}.npi ;;
    drill_fields: []
  }
}
