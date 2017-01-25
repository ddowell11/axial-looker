view: date_month_dim {
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
  }
}
