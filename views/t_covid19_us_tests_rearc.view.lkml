# The name of this view in Looker is "T Covid19 Us Tests Rearc"
view: t_covid19_us_tests_rearc {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `thesis.t_covid19_us_tests_rearc`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Date" in Explore.

  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
  }

  dimension: date_checked {
    type: string
    sql: ${TABLE}.dateChecked ;;
  }

  dimension: death {
    type: string
    sql: ${TABLE}.death ;;
  }

  dimension: death_increase {
    type: string
    sql: ${TABLE}.deathIncrease ;;
  }

  dimension: fips {
    type: string
    sql: ${TABLE}.fips ;;
  }

  dimension: hash {
    type: string
    sql: ${TABLE}.`hash` ;;
  }

  dimension: hospitalized {
    type: string
    sql: ${TABLE}.hospitalized ;;
  }

  dimension: hospitalized_cumulative {
    type: string
    sql: ${TABLE}.hospitalizedCumulative ;;
  }

  dimension: hospitalized_currently {
    type: string
    sql: ${TABLE}.hospitalizedCurrently ;;
  }

  dimension: hospitalized_increase {
    type: string
    sql: ${TABLE}.hospitalizedIncrease ;;
  }

  dimension: in_icu_cumulative {
    type: string
    sql: ${TABLE}.inIcuCumulative ;;
  }

  dimension: in_icu_currently {
    type: string
    sql: ${TABLE}.inIcuCurrently ;;
  }

  dimension: negative {
    type: string
    sql: ${TABLE}.negative ;;
  }

  dimension: negative_increase {
    type: string
    sql: ${TABLE}.negativeIncrease ;;
  }

  dimension: on_ventilator_cumulative {
    type: string
    sql: ${TABLE}.onVentilatorCumulative ;;
  }

  dimension: on_ventilator_currently {
    type: string
    sql: ${TABLE}.onVentilatorCurrently ;;
  }

  dimension: pending {
    type: string
    sql: ${TABLE}.pending ;;
  }

  dimension: pos_neg {
    type: string
    sql: ${TABLE}.posNeg ;;
  }

  dimension: positive {
    type: string
    sql: ${TABLE}.positive ;;
  }

  dimension: positive_increase {
    type: string
    sql: ${TABLE}.positiveIncrease ;;
  }

  dimension: recovered {
    type: string
    sql: ${TABLE}.recovered ;;
  }

  dimension: states {
    type: string
    sql: ${TABLE}.states ;;
  }

  dimension: total {
    type: string
    sql: ${TABLE}.total ;;
  }

  dimension: total_test_results {
    type: string
    sql: ${TABLE}.totalTestResults ;;
  }

  dimension: total_test_results_increase {
    type: string
    sql: ${TABLE}.totalTestResultsIncrease ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
