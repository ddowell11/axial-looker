view: npi_member_xref {
<<<<<<< HEAD
  sql_table_name: reporting.npi_member_xref ;;

  dimension: axial_member_id {
    type: string
    sql: ${TABLE}.axial_member_id ;;
  }

  dimension: in_claims {
    type: string
    sql: ${TABLE}.in_claims ;;
  }

  dimension: in_medical_claims {
    type: string
    sql: ${TABLE}.in_medical_claims ;;
  }

  dimension: in_rx_claims {
    type: string
    sql: ${TABLE}.in_rx_claims ;;
  }

  dimension: is_opioid {
    type: string
    sql: ${TABLE}.is_opioid ;;
  }

  dimension: npi {
    type: string
    sql: ${TABLE}.npi ;;
  }

  dimension: yrmo {
    type: string
    sql: ${TABLE}.yrmo ;;
  }



=======
  sql_table_name: CR_BCBST_DATAMODEL.npi_member_xref ;;

  dimension: axial_member_id {
    type: number
    sql: ${TABLE}.axial_member_id ;;
  }

  dimension: in_claims {
    type: number
    sql: ${TABLE}.in_claims ;;
  }

  dimension: in_medical_claims {
    type: number
    sql: ${TABLE}.in_medical_claims ;;
  }

  dimension: in_rx_claims {
    type: number
    sql: ${TABLE}.in_rx_claims ;;
  }

  dimension: is_opioid {
    type: number
    value_format_name: id
    sql: ${TABLE}.is_opioid ;;
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

    drill_fields: []
  }
>>>>>>> branch 'dev-daryle-dowell-96hv' of git@lkrgit_github_f7c7c96b1579f92cd87d1f3c0fc5f78a70711104:sclancy70/axial-looker.git
}
