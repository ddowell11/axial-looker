view: patient_fact {
  sql_table_name: reporting.patient_fact ;;

  dimension: axial_member_id {
    type: string
    sql: ${TABLE}.axial_member_id ;;
  }

  dimension: comorbid {
    type: string
    sql: ${TABLE}.comorbid ;;
  }

  dimension: duration {
    type: string
    sql: ${TABLE}.duration ;;
  }

  dimension: duration_label {
    type: string
    sql: ${TABLE}.duration_label ;;
  }

  dimension: effective_date {
    type: string
    sql: ${TABLE}.effective_date ;;
  }

  dimension: eligible_flag {
    type: string
    sql: ${TABLE}.eligible_flag ;;
  }

  dimension: er_visits {
    type: string
    sql: ${TABLE}.er_visits ;;
  }

  dimension: has_behavioral {
    type: string
    sql: ${TABLE}.has_behavioral ;;
  }

  dimension: has_comorbid {
    type: string
    sql: ${TABLE}.has_comorbid ;;
  }

  dimension: has_duration {
    type: string
    sql: ${TABLE}.has_duration ;;
  }

  dimension: has_ervisit {
    type: string
    sql: ${TABLE}.has_ervisit ;;
  }

  dimension: has_highrisk {
    type: string
    sql: ${TABLE}.has_highrisk ;;
  }

  dimension: has_meddrisk {
    type: string
    sql: ${TABLE}.has_meddrisk ;;
  }

  dimension: has_multipharmacy {
    type: string
    sql: ${TABLE}.has_multipharmacy ;;
  }

  dimension: has_multiprescriber {
    type: string
    sql: ${TABLE}.has_multiprescriber ;;
  }

  dimension: has_poly {
    type: number
    sql: cast(${TABLE}.has_poly as integer) ;;
  }

  dimension: has_sud {
    type: string
    sql: ${TABLE}.has_sud ;;
  }

  dimension: has_unreported_visits {
    type: string
    sql: ${TABLE}.has_unreported_visits ;;
  }

  dimension: in_pain_dm {
    type: string
    sql: ${TABLE}.in_pain_dm ;;
  }

  dimension: in_rx_claims {
    type: string
    sql: ${TABLE}.in_rx_claims ;;
  }

  dimension: is_opioid {
    type: string
    sql: ${TABLE}.is_opioid ;;
  }

  dimension: medd {
    type: string
    sql: ${TABLE}.medd ;;
  }

  dimension: medd_label {
    type: string
    sql: ${TABLE}.medd_label ;;
  }

  dimension: monthly_spend {
    type: string
    sql: ${TABLE}.monthly_spend ;;
  }

  dimension: pharm_label {
    type: string
    sql: ${TABLE}.pharm_label ;;
  }

  dimension: pharm_measure {
    type: string
    sql: ${TABLE}.pharm_measure ;;
  }

  dimension: plan_code {
    type: string
    sql: ${TABLE}.plan_code ;;
  }

  dimension: prescriber_label {
    type: string
    sql: ${TABLE}.prescriber_label ;;
  }

  dimension: prescriber_measure {
    type: string
    sql: ${TABLE}.prescriber_measure ;;
  }

  dimension: primary_patient_flag {
    type: string
    sql: ${TABLE}.primary_patient_flag ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: relation {
    type: string
    sql: ${TABLE}.relation ;;
  }

  dimension: reporting_yyyymm {
    type: string
    sql: ${TABLE}.reporting_yyyymm ;;
  }

  dimension: termination_date {
    type: string
    sql: ${TABLE}.termination_date ;;
  }

  dimension: unreported_visits {
    type: string
    sql: ${TABLE}.unreported_visits ;;
  }

  dimension: unreported_visits_label {
    type: string
    sql: ${TABLE}.unreported_visits_label ;;
  }

  dimension: yrmo {
    type: string
    sql: ${TABLE}.yrmo ;;
  }



  measure: count_has_poly {
    type:number
    sql: sum(${has_poly}) ;;

  }





  measure: count {
    type: count
    drill_fields: []
  }
}
