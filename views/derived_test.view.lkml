view: derived_test {
  derived_table: {
    sql:
      SELECT
        date,
        open,
        close
      FROM
        bitcoin ;;
  }
  dimension: date {
    type: date
    sql: ${TABLE}.date ;;
  }
  dimension: open {
    type: string
    sql: ${TABLE}.open ;;
  }
  dimension: close {
    type: string
    sql:  ${TABLE}.close ;;
  }
}
