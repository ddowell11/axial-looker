connection: "gbq"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

# NOTE: please see https://www.looker.com/docs/r/dialects/bigquery
# NOTE: for BigQuery specific considerations

##explore: axial_admin_fact {}

explore: npi_fact {



  join: date_month_dim  {
    type:  left_outer
    sql_on: ${date_month_dim.yrmo}= ${npi_fact.yrmo}
    ;;    relationship: one_to_one
  }


  join: npi_address_dim  {
    type:  left_outer
    sql_on: ${npi_fact.npi} = ${npi_address_dim.npi}  and ${npi_fact.yrmo} =${npi_fact.yrmo}
   ;;relationship: one_to_one

    }

  join: npi_group_xref  {
    type:  left_outer
    sql_on: ${npi_fact.yrmo} = ${npi_group_xref.yrmo}  and ${npi_fact.npi} =${npi_group_xref.npi}
   ;;relationship: one_to_many
  }


join: npi_member_xref {
      type:  left_outer
      sql_on:  ${npi_fact.npi} = ${npi_member_xref.npi}  and ${npi_fact.yrmo} = ${npi_member_xref.yrmo};;
      relationship: one_to_many

      }


  join: patient_fact {
    type:  inner
    sql_on:  ${patient_fact.axial_member_id} = ${npi_member_xref.axial_member_id}  and ${patient_fact.yrmo} = ${npi_member_xref.yrmo};;
    relationship: one_to_many

    }


  join: npi_par_dim {
    type:  left_outer
    sql_on: ${npi_fact.npi} = ${npi_par_dim.npi}  and ${npi_fact.yrmo} =${npi_par_dim.yrmo};;
    relationship: one_to_one
  }




  }







##explore: group_provider_xref {}

##explore: npi_address_dim {}



##explore: npi_group_xref {}

##explore: npi_member_xref {}

##explore: npi_provider_xref {}

##explore: patient_fact {}

##explore: patient_membership_dim {}

##explore: provider_dim {}

##explore: vw_npi_member_xref {}

##explore: vw_npi_provider_file {}

##explore: vw_provider {}
