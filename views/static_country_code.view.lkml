# The name of this view in Looker is "Static Country Code"
view: static_country_code {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `thesis.static_country_code`
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

  dimension: alpha3 {
    type: string
    sql: ${TABLE}.alpha3 ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: lat {
    type: string
    sql: ${TABLE}.lat ;;
  }

  dimension: long {
    type: string
    sql: ${TABLE}.long ;;
  }

  dimension: numeric_code {
    type: string
    sql: ${TABLE}.numeric_code ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
