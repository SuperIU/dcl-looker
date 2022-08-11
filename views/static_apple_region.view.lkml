# The name of this view in Looker is "Static Apple Region"
view: static_apple_region {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `thesis.static_apple_region`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Country" in Explore.

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: sub_and_city {
    type: string
    sql: ${TABLE}.sub_and_city ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
