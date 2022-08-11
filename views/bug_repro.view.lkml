# The name of this view in Looker is "Bug Repro"
view: bug_repro {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `thesis.bug_repro`
    ;;
  drill_fields: [id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ID ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Duration" in Explore.

  dimension: duration {
    type: string
    sql: ${TABLE}.duration ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
