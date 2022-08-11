# The name of this view in Looker is "Thesis Presentation"
view: thesis_presentation {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `thesis.thesis_presentation`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Admin2" in Explore.

  dimension: admin2 {
    type: string
    sql: ${TABLE}.Admin2 ;;
  }

  dimension: code3 {
    type: string
    sql: ${TABLE}.code3 ;;
  }

  dimension: combined_key {
    type: string
    sql: ${TABLE}.Combined_Key ;;
  }

  dimension: country_region {
    type: string
    sql: ${TABLE}.Country_Region ;;
  }

  dimension: fips {
    type: string
    sql: ${TABLE}.FIPS ;;
  }

  dimension: iso2 {
    type: string
    sql: ${TABLE}.iso2 ;;
  }

  dimension: iso3 {
    type: string
    sql: ${TABLE}.iso3 ;;
  }

  dimension: lat {
    type: string
    sql: ${TABLE}.Lat ;;
  }

  dimension: long_ {
    type: string
    sql: ${TABLE}.Long_ ;;
  }

  dimension: population {
    type: string
    sql: ${TABLE}.Population ;;
  }

  dimension: province_state {
    type: string
    sql: ${TABLE}.Province_State ;;
  }

  dimension: uid {
    type: string
    sql: ${TABLE}.UID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
