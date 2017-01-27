view: vw_app_all_npis {
  sql_table_name: CR_BCBST_REPORTS.vw_app_all_npis ;;

  dimension: abp_score {
    type: number
    sql: ${TABLE}.abp_score ;;
  }

  dimension: abp_score_11 {
    type: number
    sql: ${TABLE}.abp_score_11 ;;
  }

  dimension: abp_score_8 {
    type: number
    sql: ${TABLE}.abp_score_8 ;;
  }

  dimension: abp_score_9 {
    type: number
    sql: ${TABLE}.abp_score_9 ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: assessment_yyyy_mm {
    type: string
    sql: ${TABLE}.assessment_yyyy_mm ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension: has_opioid_patients {
    type: yesno
    sql: ${TABLE}.has_opioid_patients ;;
  }

  dimension: ndc_cnt {
    type: number
    sql: ${TABLE}.NdcCnt ;;
  }

  dimension: ndc_per_pt {
    type: number
    sql: ${TABLE}.NdcPerPt ;;
  }

  dimension: npi {
    type: string
    sql: ${TABLE}.npi ;;
  }

  dimension: op_pt_cnt {
    type: number
    sql: ${TABLE}.OpPtCnt ;;
  }

  dimension: p_addiction {
    type: number
    sql: ${TABLE}.p_addiction ;;
  }

  dimension: p_dose {
    type: number
    sql: ${TABLE}.p_dose ;;
  }

  dimension: p_duration {
    type: number
    sql: ${TABLE}.p_duration ;;
  }

  dimension: p_early_refill {
    type: number
    sql: ${TABLE}.p_early_refill ;;
  }

  dimension: p_er {
    type: number
    sql: ${TABLE}.p_er ;;
  }

  dimension: p_fully_tapered {
    type: number
    sql: ${TABLE}.p_fully_tapered ;;
  }

  dimension: p_multi_prescriber {
    type: number
    sql: ${TABLE}.p_multi_prescriber ;;
  }

  dimension: p_opioid_panel_size {
    type: number
    sql: ${TABLE}.p_opioid_panel_size ;;
  }

  dimension: p_pregnancy {
    type: number
    sql: ${TABLE}.p_pregnancy ;;
  }

  dimension: p_script_length {
    type: number
    sql: ${TABLE}.p_script_length ;;
  }

  dimension: p_short_long_acting {
    type: number
    sql: ${TABLE}.p_short_long_acting ;;
  }

  dimension: p_unreported_visits {
    type: number
    sql: ${TABLE}.p_unreported_visits ;;
  }

  dimension: provider_name {
    type: string
    sql: ${TABLE}.provider_name ;;
  }

  dimension: provider_org {
    type: string
    sql: ${TABLE}.provider_org ;;
  }

  dimension: quad {
    type: string
    sql: ${TABLE}.quad ;;
  }

  dimension: quad_num {
    type: number
    sql: ${TABLE}.quad_num ;;
  }

  dimension: quality {
    type: number
    sql: ${TABLE}.quality ;;
  }

  dimension: sourced {
    type: string
    sql: ${TABLE}.sourced ;;
  }

  dimension: specialty {
    type: string
    sql: ${TABLE}.specialty ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: total_pt_cnt {
    type: number
    sql: ${TABLE}.TotalPtCnt ;;
  }

  dimension: valid_abp_percentile {
    type: number
    sql: ${TABLE}.valid_abp_percentile ;;
  }

  dimension: yrmo {
    type: string
    sql: ${TABLE}.YRMO ;;
  }

  dimension: zip {
    type: string
    sql: ${TABLE}.zip ;;
  }

  measure: count {
    type: count
    drill_fields: [provider_name]
  }
}
