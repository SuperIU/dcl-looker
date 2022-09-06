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
    datatype: date
    sql: CAST(${TABLE}.Date AS date) ;;
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
