# The name of this view in Looker is "T Covid19 Owid Backup"
view: t_covid19_owid_backup {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `thesis.t_covid19_owid_backup`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Aged 65 Older" in Explore.

  dimension: aged_65_older {
    type: string
    sql: ${TABLE}.aged_65_older ;;
  }

  dimension: aged_70_older {
    type: string
    sql: ${TABLE}.aged_70_older ;;
  }

  dimension: continent {
    type: string
    sql: ${TABLE}.continent ;;
  }

  dimension: cvd_death_rate {
    type: string
    sql: ${TABLE}.cvd_death_rate ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
  }

  dimension: diabetes_prevalence {
    type: string
    sql: ${TABLE}.diabetes_prevalence ;;
  }

  dimension: extreme_poverty {
    type: string
    sql: ${TABLE}.extreme_poverty ;;
  }

  dimension: female_smokers {
    type: string
    sql: ${TABLE}.female_smokers ;;
  }

  dimension: gdp_per_capita {
    type: string
    sql: ${TABLE}.gdp_per_capita ;;
  }

  dimension: handwashing_facilities {
    type: string
    sql: ${TABLE}.handwashing_facilities ;;
  }

  dimension: hospital_beds_per_thousand {
    type: string
    sql: ${TABLE}.hospital_beds_per_thousand ;;
  }

  dimension: iso_code {
    type: string
    sql: ${TABLE}.iso_code ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }

  dimension: male_smokers {
    type: string
    sql: ${TABLE}.male_smokers ;;
  }

  dimension: median_age {
    type: string
    sql: ${TABLE}.median_age ;;
  }

  dimension: new_cases {
    type: string
    sql: ${TABLE}.new_cases ;;
  }

  dimension: new_cases_per_million {
    type: string
    sql: ${TABLE}.new_cases_per_million ;;
  }

  dimension: new_deaths {
    type: string
    sql: ${TABLE}.new_deaths ;;
  }

  dimension: new_deaths_per_million {
    type: string
    sql: ${TABLE}.new_deaths_per_million ;;
  }

  dimension: new_tests {
    type: string
    sql: ${TABLE}.new_tests ;;
  }

  dimension: new_tests_per_thousand {
    type: string
    sql: ${TABLE}.new_tests_per_thousand ;;
  }

  dimension: new_tests_smoothed {
    type: string
    sql: ${TABLE}.new_tests_smoothed ;;
  }

  dimension: new_tests_smoothed_per_thousand {
    type: string
    sql: ${TABLE}.new_tests_smoothed_per_thousand ;;
  }

  dimension: population {
    type: string
    sql: ${TABLE}.population ;;
  }

  dimension: population_density {
    type: string
    sql: ${TABLE}.population_density ;;
  }

  dimension: stringency_index {
    type: string
    sql: ${TABLE}.stringency_index ;;
  }

  dimension: tests_units {
    type: string
    sql: ${TABLE}.tests_units ;;
  }

  dimension: total_cases {
    type: string
    sql: ${TABLE}.total_cases ;;
  }

  dimension: total_cases_per_million {
    type: string
    sql: ${TABLE}.total_cases_per_million ;;
  }

  dimension: total_deaths {
    type: string
    sql: ${TABLE}.total_deaths ;;
  }

  dimension: total_deaths_per_million {
    type: string
    sql: ${TABLE}.total_deaths_per_million ;;
  }

  dimension: total_tests {
    type: string
    sql: ${TABLE}.total_tests ;;
  }

  dimension: total_tests_per_thousand {
    type: string
    sql: ${TABLE}.total_tests_per_thousand ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
