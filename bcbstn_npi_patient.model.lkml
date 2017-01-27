connection: "bcbst_postgres"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

 explore: npi_member_xref {

 join: npi_fact {
   type: left_outer
  sql_on: ${npi_fact.npi} = ${npi_member_xref.npi} and ${npi_fact.yrmo} = ${npi_member_xref.yrmo} ;;
  relationship: many_to_one

  }

  join: patient_fact {
    type: left_outer
   sql_on: ${npi_member_xref.axial_member_id} = ${patient_fact.axial_member_id}  and  ${npi_member_xref.yrmo} = ${patient_fact.yrmo}      ;;
  relationship: many_to_one
  }


  join: patient_phi_dim {
    type:  left_outer
    sql_on: ${npi_member_xref.axial_member_id} = ${patient_phi_dim.axial_member_id} ;;
    relationship: many_to_one
  }


}
