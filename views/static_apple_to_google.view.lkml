# The name of this view in Looker is "Static Apple to Google"
view: static_apple_to_google {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `thesis.static_apple_to_google`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Subregion Apple" in Explore.

  dimension: subregion_apple {
    type: string
    sql: ${TABLE}.subregion_Apple ;;
  }

  dimension: subregion_google {
    type: string
    sql: ${TABLE}.subregion_Google ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
