view: date_month_dim {
<<<<<<< HEAD
  sql_table_name: reporting.date_month_dim ;;

  dimension: fiscal_month {
    type: string
    sql: ${TABLE}.fiscal_month ;;
  }

  dimension: fiscal_quarter {
    type: string
    sql: ${TABLE}.fiscal_quarter ;;
  }

  dimension: month {
    type: string
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

  dimension: month_year {
    type: string
    sql: ${TABLE}.month_year ;;
  }

  dimension: quarter {
    type: string
    sql: ${TABLE}.quarter ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.year ;;
  }

  dimension: year_string {
    type: string
    sql: ${TABLE}.year_string ;;
  }

  dimension: yrmo {
    type: string
    sql: ${TABLE}.yrmo ;;
  }

  measure: count {
    type: count
    drill_fields: [month_name]
=======
  derived_table: {
    sql: select    yrmo,month,month_name,month_abbrev,quarter,year,fiscal_month,fiscal_quarter,year_string,
      month_year from
        CR_BCBST_DATAMODEL.date_month_dim
        order by year
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: yrmo {
    type: string
    sql: ${TABLE}.yrmo ;;
  }

  dimension: month {
    type: number
    sql: ${TABLE}.month ;;
  }

  dimension: month_name {
    type: string
    sql: ${TABLE}.month_name ;;
  }

  dimension: month_abbrev {
    type: string
    sql: ${TABLE}.month_abbrev ;;
  }

  dimension: quarter {
    type: number
    sql: ${TABLE}.quarter ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  dimension: fiscal_month {
    type: number
    sql: ${TABLE}.fiscal_month ;;
  }

  dimension: fiscal_quarter {
    type: number
    sql: ${TABLE}.fiscal_quarter ;;
  }

  dimension: year_string {
    type: string
    sql: ${TABLE}.year_string ;;
  }

  dimension: month_year {
    type: string
    sql: ${TABLE}.month_year ;;
  }

  set: detail {
    fields: [
      yrmo,
      month,
      month_name,
      month_abbrev,
      quarter,
      year,
      fiscal_month,
      fiscal_quarter,
      year_string,
      month_year
    ]
>>>>>>> branch 'dev-daryle-dowell-96hv' of git@lkrgit_github_f7c7c96b1579f92cd87d1f3c0fc5f78a70711104:sclancy70/axial-looker.git
  }
}
