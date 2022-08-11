# The name of this view in Looker is "T Mobility Google"
view: t_mobility_google {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `thesis.t_mobility_google`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Alpha2" in Explore.

  dimension: alpha2 {
    type: string
    sql: ${TABLE}.alpha2 ;;
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

  dimension: grocery_and_pharmacy_percent_change_from_baseline {
    type: string
    sql: ${TABLE}.grocery_and_pharmacy_percent_change_from_baseline ;;
  }

  dimension: parks_percent_change_from_baseline {
    type: string
    sql: ${TABLE}.parks_percent_change_from_baseline ;;
  }

  dimension: residential_percent_change_from_baseline {
    type: string
    sql: ${TABLE}.residential_percent_change_from_baseline ;;
  }

  dimension: retail_and_recreation_percent_change_from_baseline {
    type: string
    sql: ${TABLE}.retail_and_recreation_percent_change_from_baseline ;;
  }

  dimension: sub_region_1 {
    type: string
    sql: ${TABLE}.sub_region_1 ;;
  }

  dimension: sub_region_2 {
    type: string
    sql: ${TABLE}.sub_region_2 ;;
  }

  dimension: transit_stations_percent_change_from_baseline {
    type: string
    sql: ${TABLE}.transit_stations_percent_change_from_baseline ;;
  }

  dimension: workplaces_percent_change_from_baseline {
    type: string
    sql: ${TABLE}.workplaces_percent_change_from_baseline ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
