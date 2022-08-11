# The name of this view in Looker is "S Covid19 Us Jhu Backup"
view: s_covid19_us_jhu_backup {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `thesis.s_covid19_us_jhu_backup`
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

  dimension: hospitalization_rate {
    type: string
    sql: ${TABLE}.hospitalization_rate ;;
  }

  dimension: incident_rate {
    type: string
    sql: ${TABLE}.incident_rate ;;
  }

  dimension: iso3 {
    type: string
    sql: ${TABLE}.iso3 ;;
  }

  dimension: lat {
    type: string
    sql: ${TABLE}.lat ;;
  }

  dimension: long {
    type: string
    sql: ${TABLE}.long ;;
  }

  dimension: mortality_rate {
    type: string
    sql: ${TABLE}.mortality_rate ;;
  }

  dimension: people_hospitalized {
    type: string
    sql: ${TABLE}.people_hospitalized ;;
  }

  dimension: people_tested {
    type: string
    sql: ${TABLE}.people_tested ;;
  }

  dimension: province_state {
    type: string
    sql: ${TABLE}.province_state ;;
  }

  dimension: recovered {
    type: string
    sql: ${TABLE}.recovered ;;
  }

  dimension: testing_rate {
    type: string
    sql: ${TABLE}.testing_rate ;;
  }

  dimension: uid {
    type: string
    sql: ${TABLE}.uid ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
