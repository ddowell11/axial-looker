view: npi_fact {
<<<<<<< HEAD
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
=======
  sql_table_name: CR_BCBST_DATAMODEL.npi_fact ;;

  dimension: app_percentile {
    type: number
    sql: ${TABLE}.app_percentile ;;
  }

  dimension: app_qtr_score {
    type: number
    sql: ${TABLE}.app_qtr_score ;;
  }

  dimension: app_report_flag {
    type: string
    sql: ${TABLE}.app_report_flag ;;
  }

  dimension: app_score_raw {
    type: number
    sql: ${TABLE}.app_score_raw ;;
  }

  dimension: ndc_count {
    type: number
    sql: ${TABLE}.ndccnt ;;
  }

  dimension: ndcperpt {
    type: number
    sql: ${TABLE}.ndcperpt ;;
  }

  dimension: npi {
    type: string
    sql: ${TABLE}.npi ;;
  }

  dimension: opioidptcnt {
    type: number
    sql: ${TABLE}.opioidptcnt ;;
  }

  dimension: percentile_category {
    type: string
    sql: ${TABLE}.percentile_category ;;
  }

  dimension: rim_report_flag {
    type: string
    sql: ${TABLE}.rim_report_flag ;;
  }

  dimension: rim_practitioner_score {
    type: number
    sql: ${TABLE}.rim_score ;;
  }

  dimension: sourced {
    type: string
#     hidden: yes
    sql: ${TABLE}.sourced ;;
  }

  dimension: totalptcnt {
    type: number
    sql: ${TABLE}.totalptcnt ;;
  }

  dimension: yrmo {
    type: string
    sql: ${TABLE}.yrmo ;;
  }

  dimension: peer_group {
    type: string
    sql: ${TABLE}.peer_group  ;;
  }

#####################################################

  measure: distinct_npi_count {
    type: count_distinct
    sql: ${npi} ;;
    value_format_name: decimal_0
    drill_fields: []
  }

  measure: total_members {
    type: count_distinct
    sql: ${npi} ;;
    value_format_name: decimal_0
    drill_fields: []
  }



  measure: total_patients {
    type: number
    sql: sum(${totalptcnt}) ;;
    value_format_name: decimal_0

  }
  measure: opioid_patients {
    type: number
    sql: sum(${opioidptcnt} );;
    value_format_name: decimal_0

  }


  measure: opioid_prescriptions {
    type: number
    sql: sum(${ndc_count});;
    value_format_name: decimal_0

  }



  measure: opioid_prescriber_npi_cnt {
    type: number
    sql: count(distinct case when ${opioidptcnt} >=1 THEN ${npi} end);;
    value_format_name: decimal_0

  }



  measure: rim_practitioners {
    type: number
    sql: count(distinct case when ${rim_report_flag} = 'Y' THEN ${npi} end);;
    value_format_name: decimal_0

  }








  measure: max_qtr_app {
     type: number
    sql: max(${app_qtr_score});;
    drill_fields: []
  }


measure: perscriptions_per_patient {
  type: number
  sql: ${opioid_prescriptions}/${opioid_patients}

;;
value_format_name: percent_1
}


  #measure: par_practitioner_count {
    #sql: count(distinct case when ${peer_group} >='par' THEN ${npi} end);;
   # drill_fields: []
  #}




  }
>>>>>>> branch 'dev-daryle-dowell-96hv' of git@lkrgit_github_f7c7c96b1579f92cd87d1f3c0fc5f78a70711104:sclancy70/axial-looker.git
