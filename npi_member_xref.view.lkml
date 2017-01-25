view: npi_member_xref {
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
}
