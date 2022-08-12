# The name of this view in Looker is "Bitcoin2"
view: bitcoin2 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `thesis.bitcoin2`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Close" in Explore.

  dimension: close {
    type: string
    sql: ${TABLE}.Close ;;
  }

  dimension: date {
    type: date
    datatype: date
    sql: CAST(${TABLE}.Date AS date) ;;
  }

  dimension: high {
    type: string
    sql: ${TABLE}.High ;;
  }

  dimension: low {
    type: string
    sql: ${TABLE}.Low ;;
  }

  dimension: open {
    type: string
    sql: ${TABLE}.Open ;;
  }

  dimension: symbol {
    type: string
    sql: ${TABLE}.Symbol ;;
  }

  dimension: volume_btc {
    type: string
    sql: ${TABLE}.Volume_BTC ;;
  }

  dimension: volume_usd {
    type: string
    sql: ${TABLE}.Volume_USD ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
