view: axial_admin_fact {
  sql_table_name: CR_BCBST_DATAMODEL.axial_admin_fact ;;

  dimension: completion_date {
    type: string
    sql: ${TABLE}.completion_date ;;
  }

  dimension: completion_yrmo {
    type: string
    sql: ${TABLE}.completion_yrmo ;;
  }

  dimension: disposition {
    type: string
    sql: ${TABLE}.disposition ;;
  }

  dimension: group_id {
    type: string
    sql: ${TABLE}.group_id ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}.group_name ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: npi {
    type: string
    sql: ${TABLE}.npi ;;
  }

  dimension: rim_score {
    type: string
    sql: ${TABLE}.rim_score ;;
  }

  dimension: rim_yrmo {
    type: string
    sql: ${TABLE}.rim_yrmo ;;
  }

  dimension: schedule_date {
    type: string
    sql: ${TABLE}.schedule_date ;;
  }

  dimension: schedule_yrmo {
    type: string
    sql: ${TABLE}.schedule_yrmo ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    approximate_threshold: 100000
    drill_fields: [group_name, name]
  }
}
