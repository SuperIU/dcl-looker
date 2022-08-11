# The name of this view in Looker is "T Us Aqi Epa 2020"
view: t_us_aqi_epa_2020 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `thesis.t_us_aqi_epa_2020`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "County Code" in Explore.

  dimension: county_code {
    type: string
    sql: ${TABLE}.county_code ;;
  }

  dimension: county_with_state {
    type: string
    sql: ${TABLE}.county_with_state ;;
  }

  dimension: days_co {
    type: string
    sql: ${TABLE}.days_co ;;
  }

  dimension: days_no2 {
    type: string
    sql: ${TABLE}.days_no2 ;;
  }

  dimension: days_ozone {
    type: string
    sql: ${TABLE}.days_ozone ;;
  }

  dimension: days_pm10 {
    type: string
    sql: ${TABLE}.days_pm10 ;;
  }

  dimension: days_pm25 {
    type: string
    sql: ${TABLE}.days_pm25 ;;
  }

  dimension: days_so2 {
    type: string
    sql: ${TABLE}.days_SO2 ;;
  }

  dimension: days_with_aqi {
    type: string
    sql: ${TABLE}.days_with_AQI ;;
  }

  dimension: good_days {
    type: string
    sql: ${TABLE}.good_days ;;
  }

  dimension: max_aqi {
    type: string
    sql: ${TABLE}.max_aqi ;;
  }

  dimension: median_aqi {
    type: string
    sql: ${TABLE}.median_aqi ;;
  }

  dimension: moderate_days {
    type: string
    sql: ${TABLE}.moderate_days ;;
  }

  dimension: percentile_aqi_90th {
    type: string
    sql: ${TABLE}.percentile_aqi_90th ;;
  }

  dimension: unhealthy_days {
    type: string
    sql: ${TABLE}.unhealthy_days ;;
  }

  dimension: unhealthy_for_sensitive_groups_days {
    type: string
    sql: ${TABLE}.unhealthy_for_sensitive_groups_days ;;
  }

  dimension: very_unhealthy_days {
    type: string
    sql: ${TABLE}.very_unhealthy_days ;;
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
