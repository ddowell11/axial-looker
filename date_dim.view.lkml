view: date_dim {
  sql_table_name: CR_BCBST_DATAMODEL.date_dim ;;

  dimension: date_key {
    type: number
    sql: ${TABLE}.date_key ;;
  }

  dimension: day_abbrev {
    type: string
    sql: ${TABLE}.day_abbrev ;;
  }

  dimension: day_name {
    type: string
    sql: ${TABLE}.day_name ;;
  }

  dimension: day_num_in_month {
    type: number
    sql: ${TABLE}.day_num_in_month ;;
  }

  dimension: day_num_overall {
    type: number
    sql: ${TABLE}.day_num_overall ;;
  }

  dimension: day_of_week {
    type: number
    sql: ${TABLE}.day_of_week ;;
  }

  dimension: fiscal_month {
    type: number
    sql: ${TABLE}.fiscal_month ;;
  }

  dimension: fiscal_quarter {
    type: number
    sql: ${TABLE}.fiscal_quarter ;;
  }

  dimension: fiscal_year {
    type: number
    sql: ${TABLE}.fiscal_year ;;
  }

  dimension: full_date {
    type: string
    sql: ${TABLE}.full_date ;;
  }

  dimension: last_day_in_month_flag {
    type: string
    sql: ${TABLE}.last_day_in_month_flag ;;
  }

  dimension: month {
    type: number
    sql: ${TABLE}.month ;;
  }

  dimension: month_abbrev {
    type: string
    sql: ${TABLE}.month_abbrev ;;
  }

  dimension: month_name {
    type: string
    sql: ${TABLE}.month_name ;;
  }

  dimension: month_num_overall {
    type: number
    sql: ${TABLE}.month_num_overall ;;
  }

  dimension: quarter {
    type: number
    sql: ${TABLE}.quarter ;;
  }

  dimension: same_day_year_ago_date {
    type: string
    sql: ${TABLE}.same_day_year_ago_date ;;
  }

  dimension: week_begin_date {
    type: string
    sql: ${TABLE}.week_begin_date ;;
  }

  dimension: week_begin_date_key {
    type: string
    sql: ${TABLE}.week_begin_date_key ;;
  }

  dimension: week_num_in_year {
    type: number
    sql: ${TABLE}.week_num_in_year ;;
  }

  dimension: week_num_overall {
    type: number
    sql: ${TABLE}.week_num_overall ;;
  }

  dimension: weekday_flag {
    type: string
    sql: ${TABLE}.weekday_flag ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  dimension: yrmo {
    type: string
    sql: ${TABLE}.yrmo ;;
  }

  measure: count {
    type: count
    drill_fields: [month_name, day_name]
  }
}