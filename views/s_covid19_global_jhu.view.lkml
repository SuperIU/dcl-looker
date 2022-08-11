# The name of this view in Looker is "S Covid19 Global Jhu"
view: s_covid19_global_jhu {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `thesis.s_covid19_global_jhu`
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

  dimension: admin2 {
    type: string
    sql: ${TABLE}.admin2 ;;
  }

  dimension: combined_key {
    type: string
    sql: ${TABLE}.combined_key ;;
  }

  dimension: confirmed {
    type: string
    sql: ${TABLE}.confirmed ;;
  }

  dimension: country_region {
    type: string
    sql: ${TABLE}.country_region ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
  }

  dimension: deaths {
    type: string
    sql: ${TABLE}.deaths ;;
  }

  dimension: fips {
    type: string
    sql: ${TABLE}.FIPS ;;
  }

  dimension: lat {
    type: string
    sql: ${TABLE}.lat ;;
  }

  dimension: long {
    type: string
    sql: ${TABLE}.long ;;
  }

  dimension: province_state {
    type: string
    sql: ${TABLE}.province_state ;;
  }

  dimension: recovered {
    type: string
    sql: ${TABLE}.recovered ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
