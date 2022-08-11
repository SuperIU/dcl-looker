# The name of this view in Looker is "T World Aqi 2017"
view: t_world_aqi_2017 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `thesis.t_world_aqi_2017`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "City" in Explore.

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: count_t_world_aqi_2017 {
    type: string
    sql: ${TABLE}.count ;;
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

  dimension: max {
    type: string
    sql: ${TABLE}.max ;;
  }

  dimension: median {
    type: string
    sql: ${TABLE}.median ;;
  }

  dimension: min {
    type: string
    sql: ${TABLE}.min ;;
  }

  dimension: specie {
    type: string
    sql: ${TABLE}.specie ;;
  }

  dimension: variance {
    type: string
    sql: ${TABLE}.variance ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
