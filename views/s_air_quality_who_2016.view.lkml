# The name of this view in Looker is "S Air Quality Who 2016"
view: s_air_quality_who_2016 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `thesis.s_air_quality_who_2016`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Alpha3" in Explore.

  dimension: alpha3 {
    type: string
    sql: ${TABLE}.alpha3 ;;
  }

  dimension: lat {
    type: string
    sql: ${TABLE}.lat ;;
  }

  dimension: long {
    type: string
    sql: ${TABLE}.long ;;
  }

  dimension: pm25 {
    type: string
    sql: ${TABLE}.pm25 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
