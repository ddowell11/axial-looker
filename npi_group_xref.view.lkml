view: npi_group_xref {
<<<<<<< HEAD
  sql_table_name: reporting.npi_group_xref ;;

  dimension: group_id {
    type: string
    sql: ${TABLE}.group_id ;;
  }

  dimension: npi {
    type: string
    sql: ${TABLE}.npi ;;
  }

  dimension: yrmo {
    type: string
    sql: ${TABLE}.yrmo ;;
  }

  measure: count {
    type: count
=======
  sql_table_name: CR_BCBST_DATAMODEL.npi_group_xref ;;

  dimension: group_id {
    type: string
    sql: ${TABLE}.group_id ;;
  }

  dimension: npi {
    type: string
    sql: ${TABLE}.npi ;;
  }

  dimension: yrmo {
    type: string
    sql: ${TABLE}.yrmo ;;
  }

  measure: count {
    type: count

>>>>>>> branch 'dev-daryle-dowell-96hv' of git@lkrgit_github_f7c7c96b1579f92cd87d1f3c0fc5f78a70711104:sclancy70/axial-looker.git
    drill_fields: []
  }
}
