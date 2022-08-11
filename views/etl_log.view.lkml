# The name of this view in Looker is "ETL Log"
view: etl_log {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `thesis.etl_log`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Active" in Explore.

  dimension: active {
    type: string
    sql: ${TABLE}.active ;;
  }

  dimension: columns {
    type: string
    sql: ${TABLE}.columns ;;
  }

  dimension: columns_label {
    type: string
    sql: ${TABLE}.columns_label ;;
  }

  dimension: columns_name {
    type: string
    sql: ${TABLE}.columns_name ;;
  }

  dimension: hash {
    type: string
    sql: ${TABLE}.`hash` ;;
  }

  dimension: last_check {
    type: string
    sql: ${TABLE}.last_check ;;
  }

  dimension: last_update {
    type: string
    sql: ${TABLE}.last_update ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.notes ;;
  }

  dimension: process_time {
    type: string
    sql: ${TABLE}.process_time ;;
  }

  dimension: rows {
    type: string
    sql: ${TABLE}.`rows` ;;
  }

  dimension: rows_security_ratio {
    type: string
    sql: ${TABLE}.rows_security_ratio ;;
  }

  dimension: skiprows {
    type: string
    sql: ${TABLE}.skiprows ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: table {
    type: string
    sql: ${TABLE}.table ;;
  }

  dimension: time_period_check {
    type: string
    sql: ${TABLE}.time_period_check ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  measure: count {
    type: count
    drill_fields: [columns_name]
  }
}
