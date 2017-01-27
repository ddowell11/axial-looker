view: npi_fact {
  sql_table_name: reporting.npi_fact ;;

  dimension: app_percentile {
    type: string
    sql: ${TABLE}.app_percentile ;;
  }

  dimension: app_qtr_score {
    type: string
    sql: ${TABLE}.app_qtr_score ;;
  }

  dimension: app_report_flag {
    type: string
    sql: ${TABLE}.app_report_flag ;;
  }

  dimension: app_score_raw {
    type: string
    sql: ${TABLE}.app_score_raw ;;
  }

  dimension: asshort_long_acting {
    type: string
    sql: ${TABLE}.asshort_long_acting ;;
  }

  dimension: diagnosis {
    type: string
    sql: ${TABLE}.diagnosis ;;
  }

  dimension: does {
    type: string
    sql: ${TABLE}.does ;;
  }

  dimension: duration {
    type: string
    sql: ${TABLE}.duration ;;
  }

  dimension: early_refill {
    type: string
    sql: ${TABLE}.early_refill ;;
  }

  dimension: er_visits {
    type: string
    sql: ${TABLE}.er_visits ;;
  }

  dimension: full_tappered {
    type: string
    sql: ${TABLE}.full_tappered ;;
  }

  dimension: methadone_ekg {
    type: string
    sql: ${TABLE}.methadone_ekg ;;
  }

  dimension: multi_pharmacy {
    type: string
    sql: ${TABLE}.multi_pharmacy ;;
  }

  dimension: multiprescriber {
    type: string
    sql: ${TABLE}.multiprescriber ;;
  }

  dimension: ndccnt {
    type: string
    sql: ${TABLE}.ndccnt ;;
  }

  dimension: ndcperpt {
    type: string
    sql: ${TABLE}.ndcperpt ;;
  }

  dimension: noncontinuity {
    type: string
    sql: ${TABLE}.noncontinuity ;;
  }

  dimension: npi {
    type: string
    sql: ${TABLE}.npi ;;
  }

  dimension: opioid_panel_size {
    type: string
    sql: ${TABLE}.opioid_panel_size ;;
  }

  dimension: opioidptcnt {
    type: string
    sql: ${TABLE}.opioidptcnt ;;
  }

  dimension: peer_group {
    type: string
    sql: ${TABLE}.peer_group ;;
  }

  dimension: percentile_category {
    type: string
    sql: ${TABLE}.percentile_category ;;
  }

  dimension: poly_critical {
    type: string
    sql: ${TABLE}.poly_critical ;;
  }

  dimension: polydrug {
    type: string
    sql: ${TABLE}.polydrug ;;
  }

  dimension: pregnacy {
    type: string
    sql: ${TABLE}.pregnacy ;;
  }

  dimension: rim_report_flag {
    type: string
    sql: ${TABLE}.rim_report_flag ;;
  }

  dimension: rim_score {
    type: string
    sql: ${TABLE}.rim_score ;;
  }

  dimension: script_length {
    type: string
    sql: ${TABLE}.script_length ;;
  }

  dimension: sourced {
    type: string
    sql: ${TABLE}.sourced ;;
  }

  dimension: substance_abuse_disorder {
    type: string
    sql: ${TABLE}.substance_abuse_disorder ;;
  }

  dimension: totalptcnt {
    type: string
    sql: ${TABLE}.totalptcnt ;;
  }

  dimension: unreported_visits {
    type: string
    sql: ${TABLE}.unreported_visits ;;
  }

  dimension: urinary_drug_screen {
    type: string
    sql: ${TABLE}.urinary_drug_screen ;;
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
