view: npi_fact {
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
