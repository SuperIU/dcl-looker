# The name of this view in Looker is "T Pm25 Us Counties Harvard"
view: t_pm25_us_counties_harvard {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `thesis.t_pm25_us_counties_harvard`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Fips" in Explore.

  dimension: fips {
    type: string
    sql: ${TABLE}.fips ;;
  }

  dimension: pm25 {
    type: string
    sql: ${TABLE}.pm25 ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
