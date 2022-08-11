# The name of this view in Looker is "T Mobility"
view: t_mobility {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `thesis.t_mobility`
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

  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
  }

  dimension: driving {
    type: string
    sql: ${TABLE}.driving ;;
  }

  dimension: grocery_and_pharmacy {
    type: string
    sql: ${TABLE}.grocery_and_pharmacy ;;
  }

  dimension: parks {
    type: string
    sql: ${TABLE}.parks ;;
  }

  dimension: residential {
    type: string
    sql: ${TABLE}.residential ;;
  }

  dimension: retail {
    type: string
    sql: ${TABLE}.retail ;;
  }

  dimension: sub_region_1 {
    type: string
    sql: ${TABLE}.sub_region_1 ;;
  }

  dimension: sub_region_2 {
    type: string
    sql: ${TABLE}.sub_region_2 ;;
  }

  dimension: transit {
    type: string
    sql: ${TABLE}.transit ;;
  }

  dimension: transit_stations {
    type: string
    sql: ${TABLE}.transit_stations ;;
  }

  dimension: walking {
    type: string
    sql: ${TABLE}.walking ;;
  }

  dimension: workplaces {
    type: string
    sql: ${TABLE}.workplaces ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
