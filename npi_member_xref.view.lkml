view: npi_member_xref {
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



}
