# The name of this view in Looker is "S Covid19 Us Prediction County Rearc"
view: s_covid19_us_prediction_county_rearc {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `thesis.s_covid19_us_prediction_county_rearc`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "County Fips" in Explore.

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

  dimension: predicted_date {
    type: string
    sql: ${TABLE}.predicted_date ;;
  }

  dimension: predicted_deaths {
    type: string
    sql: ${TABLE}.predicted_deaths ;;
  }

  dimension: severity_county_5day {
    type: string
    sql: ${TABLE}.severity_county_5day ;;
  }

  dimension: state_name {
    type: string
    sql: ${TABLE}.state_name ;;
  }

  measure: count {
    type: count
    drill_fields: [state_name, county_name]
  }
}
