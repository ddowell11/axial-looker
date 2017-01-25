view: group_provider_xref {
  sql_table_name: CR_BCBST_DATAMODEL.group_provider_xref ;;

  dimension: group_id {
    type: string
    sql: ${TABLE}.group_id ;;
  }

  dimension: provider_group_name {
    type: string
    sql: ${TABLE}.provider_group_name ;;
  }

  dimension: provider_id {
    type: string
    sql: ${TABLE}.provider_id ;;
  }

  dimension: yrmo {
    type: string
    sql: ${TABLE}.yrmo ;;
  }

  measure: count {
    type: count
    approximate_threshold: 100000
    drill_fields: [provider_group_name]
  }
}
