# The name of this view in Looker is "S Covid19 Us Prediction Severity Rearc"
view: s_covid19_us_prediction_severity_rearc {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `thesis.s_covid19_us_prediction_severity_rearc`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Cms Certification Number" in Explore.

  dimension: cms_certification_number {
    type: string
    sql: ${TABLE}.cms_certification_number ;;
  }

  dimension: county_fips {
    type: string
    sql: ${TABLE}.county_fips ;;
  }

  dimension: county_name {
    type: string
    sql: ${TABLE}.county_name ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
  }

  dimension: hospital_name {
    type: string
    sql: ${TABLE}.hospital_name ;;
  }

  dimension: latitude {
    type: string
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: string
    sql: ${TABLE}.longitude ;;
  }

  dimension: severity_1day {
    type: string
    sql: ${TABLE}.severity_1day ;;
  }

  dimension: severity_2day {
    type: string
    sql: ${TABLE}.severity_2day ;;
  }

  dimension: severity_3day {
    type: string
    sql: ${TABLE}.severity_3day ;;
  }

  dimension: severity_4day {
    type: string
    sql: ${TABLE}.severity_4day ;;
  }

  dimension: severity_5day {
    type: string
    sql: ${TABLE}.severity_5day ;;
  }

  dimension: severity_6day {
    type: string
    sql: ${TABLE}.severity_6day ;;
  }

  dimension: severity_7day {
    type: string
    sql: ${TABLE}.severity_7day ;;
  }

  dimension: state_name {
    type: string
    sql: ${TABLE}.state_name ;;
  }

  dimension: system_affiliation {
    type: string
    sql: ${TABLE}.system_affiliation ;;
  }

  dimension: total_deaths_hospital {
    type: string
    sql: ${TABLE}.total_deaths_hospital ;;
  }

  measure: count {
    type: count
    drill_fields: [county_name, state_name, hospital_name]
  }
}
