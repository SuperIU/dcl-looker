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
    type: number
    value_format:"$#,###.00"
    sql: ${TABLE}.Close ;;
  }

  dimension: date {
    type: date
    datatype: date
    sql: CAST(${TABLE}.Date AS date) ;;
  }

  dimension: high {
    type: number
    value_format:"$#,###.00"
    sql: ${TABLE}.High ;;
  }

  dimension: low {
    type: number
    value_format:"$#,###.00"
    sql: ${TABLE}.Low ;;
  }

  dimension: open {
    type: number
    value_format:"$#,###.00"
    sql: ${TABLE}.Open ;;
  }

  dimension: symbol {
    type: string
    sql: ${TABLE}.Symbol ;;
  }

  dimension: volume_btc {
    type: number
    sql: ${TABLE}.Volume_BTC ;;
  }

  dimension: volume_usd {
    type: number
    sql: ${TABLE}.Volume_USD ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: test {
    type: number
    sql:  ${TABLE}.High ;;
    value_format_name: decimal_0
    html: {{rendered_value}}
      <ul>
      <li> {{rendered_value}} </li>
      </ul>;;
  }

  measure: test2 {
    type: number
    sql:  ${TABLE}.Low ;;
    value_format_name: decimal_0
    html:
      <ul>
      <li> {{rendered_value}} </li>
      </ul>;;
  }

  measure: BeHigh{
    type: number
    sql:  ${high} ;;
  }
}
