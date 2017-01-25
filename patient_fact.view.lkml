view: patient_fact {
  sql_table_name: CR_BCBST_DATAMODEL.patient_fact ;;

  dimension: axial_member_id {
    type: number
    sql: ${TABLE}.axial_member_id ;;
  }

  dimension: eligible_flag {
    type: string
    sql: ${TABLE}.eligible_flag ;;
  }

  dimension: is_highrisk {
   type: number
    sql: ${TABLE}.has_highrisk ;;
  }

dimension: has_medd_risk {
    type: number
    sql: ${TABLE}.has_meddrisk ;;
  }


  dimension: medd_grouping {
    type: string
    sql: ${TABLE}.medd_label ;;
  }




  dimension: medd_label_order{
  type: string
  sql:
  Case when medd between 0 and 49 then '1: MEDD < 50'
     when medd between 50 and 100 then '2: MEDD 50 - 100'
     when medd between 101 and 150 then '3: MEDD 101 - 150'
     when medd > 150 then '4: MEDD >150' else '0: No MEDD' end;;
    }





  dimension: medd {
    type: number
    sql: ${TABLE}.medd ;;
  }




  dimension: has_multi_prescriber_risk {
    type: number
    sql: ${TABLE}.has_multiprescriber ;;
  }



  dimension: prescriber {
    type: number
    sql: ${TABLE}.prescriber_measure ;;
  }


  dimension: has_polydrug_risk {
    type: number
    sql: ${TABLE}.has_poly ;;
  }

  dimension: has_sud_risk {
    type: number
    sql: ${TABLE}.has_sud ;;
  }

  dimension: in_pain {
    type: number
    sql: ${TABLE}.in_pain_dm ;;
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



  dimension: monthly_spend {
    type: number
    sql: ${TABLE}.monthly_spend ;;
  }

  dimension: has_multipharmacy_risk {
    type: number
    sql: ${TABLE}.has_multipharmacy ;;
  }

  dimension: multipharmacy_grouping {
    type: string
    sql: ${TABLE}.pharm_label ;;
  }

  dimension: multi_prescriber_grouping {
    type: number
    sql: ${TABLE}.prescriber_label ;;
  }


  dimension: unreported_visits {
    type: number
    sql: ${TABLE}.unreported_visits ;;
  }

  dimension: has_unreported_visits_risk {
    type: number
    sql: ${TABLE}.has_unreported_visits ;;
  }


  dimension: comorbid_diseases {
    type: number
    sql: ${TABLE}.comorbid ;;
  }


  dimension: duration {
    type: number
    sql: ${TABLE}.duration ;;
  }

  dimension: has_duration_risk {
    type: number
    sql: ${TABLE}.has_duration ;;
  }


  dimension: duration_label {
    type: string
    sql: ${TABLE}.duration_label ;;
  }


  dimension: primary_patient_flag {
    type: number
    sql: ${TABLE}.primary_patient_flag ;;
  }

  dimension: has_behavioral_risk {
    type: number
    sql: ${TABLE}.has_behavioral ;;
  }





  dimension: has_comorbid_risk {
    type: number
    sql: ${TABLE}.has_comorbid ;;
  }




  dimension: yrmo {
    type: string
    sql: ${TABLE}.yrmo ;;
  }

############################################################### measures########################
  measure: Total_members {
    type: count_distinct
    sql: ${axial_member_id} ;;
    drill_fields: [axial_member_id]
  }




  measure: distinct_patient_count {
    type: count_distinct
    sql: ${axial_member_id} ;;
    drill_fields: [axial_member_id]
  }
 measure: patients_in_pain {
    type: number
    sql: sum(${in_pain}) ;;
  value_format_name: decimal_0
  drill_fields: [axial_member_id]
  }



  measure: patients_with_high_risk {

    sql: sum(${is_highrisk}) ;;
    drill_fields: []
    value_format_name: decimal_0
    drill_fields: [axial_member_id]
  }







  measure: patients_with_sud_risk {
 type: number
    sql: sum(${has_sud_risk}) ;;
    drill_fields: []
    value_format_name: decimal_0
    drill_fields: [axial_member_id]
  }


  measure: patients_monthly_spend{
type: number
    sql: sum(${monthly_spend}) ;;
    drill_fields: []
    value_format_name: decimal_0
    drill_fields: [axial_member_id]
  }

  measure: patients_with_polydrug_risk {
    type: number
    sql: sum(${has_polydrug_risk}) ;;
    drill_fields: []
    value_format_name: decimal_0
    drill_fields: [axial_member_id]
  }


  measure: patients_multiprescriber_risk {
    type: number
    sql: sum(${has_multi_prescriber_risk}) ;;
    value_format_name: decimal_0
    drill_fields: [axial_member_id]
  }


  measure: patients_with_medd_risk {
    type: number

    sql: sum(${has_medd_risk} );;
    value_format_name: decimal_0
    drill_fields: [axial_member_id]
  }


  measure: Average_Medd {
    type: number

    sql: avg(${medd});;
    value_format_name: decimal_2
    drill_fields: [axial_member_id]
  }






measure: patients_multipharmacy_risk {
  type: number

  sql:sum (${has_multipharmacy_risk}) ;;
  value_format_name: decimal_0
  drill_fields: [axial_member_id]


}


  measure: patients_unreported_visits {
    type: number

    sql:sum (${has_unreported_visits_risk}) ;;
    value_format_name: decimal_0
    drill_fields: [axial_member_id]


  }


  measure: patients_comorbid_risk {
    type: number

    sql:sum (${has_comorbid_risk}) ;;
    value_format_name: decimal_0
    drill_fields: [axial_member_id]


  }


  measure: patients_behavioral_risk {
    type: number

    sql:sum (${has_behavioral_risk}) ;;
    value_format_name: decimal_0
    drill_fields: [axial_member_id]


  }

  measure: patients_opioid_risk {
    type: number

    sql:sum (${is_opioid}) ;;
    value_format_name: decimal_0
    drill_fields: [axial_member_id]


  }



  measure: patients_duration_risk {
    type: number

    sql:sum (${has_duration_risk}) ;;
    value_format_name: decimal_0
    drill_fields: [axial_member_id]


  }


}
