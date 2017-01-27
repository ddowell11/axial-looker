view: test {
  sql_table_name: reporting.test ;;

  dimension: t {
    type: number
    sql: ${TABLE}.t ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
