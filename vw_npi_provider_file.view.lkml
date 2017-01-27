view: vw_npi_provider_file {
  sql_table_name: CR_BCBST_DATAMODEL.vw_npi_provider_file ;;

  dimension: app_score {
    type: number
    sql: ${TABLE}.app_score ;;
  }

  dimension: ndccnt {
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

  dimension: peer_group {
    type: string
    sql: ${TABLE}.peer_group ;;
  }

  dimension: rim_score {
    type: number
    sql: ${TABLE}.rim_score ;;
  }

  dimension: sourced {
    type: string
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

  measure: count {
    type: count
    approximate_threshold: 100000
    drill_fields: []
  }
}
