# The name of this view in Looker is "T Mobility Apple"
view: t_mobility_apple {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `thesis.t_mobility_apple`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Alternative Name" in Explore.

  dimension: alternative_name {
    type: string
    sql: ${TABLE}.alternative_name ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
  }

  dimension: geo_type {
    type: string
    sql: ${TABLE}.geo_type ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: sub_region {
    type: string
    sql: ${TABLE}.sub_region ;;
  }

  dimension: transportation_type {
    type: string
    sql: ${TABLE}.transportation_type ;;
  }

  dimension: values {
    type: string
    sql: ${TABLE}.values ;;
  }

  measure: count {
    type: count
    drill_fields: [alternative_name]
  }
}
