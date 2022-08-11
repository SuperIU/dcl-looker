# Define the database connection to be used for this model.
connection: "alex-thesis"

# include all the views
include: "/views/**/*.view"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: balcazar-tests_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: balcazar-tests_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Balcazar-tests"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: bitcoin {}

explore: etl_table {}

explore: bitcoin2 {}

explore: s_air_quality_who_2016 {}

explore: s_covid19_global_jhu {}

explore: bug_repro {}

explore: etl_log {}

explore: s_covid19_global {}

explore: s_covid19_us_jhu {}

explore: s_covid19_us_prediction_county_rearc {}

explore: s_covid19_us_jhu_backup {}

explore: s_covid19_us_prediction_severity_rearc {}

explore: s_covid19_usa_jhu {}

explore: s_us_aqi_epa_2019 {}

explore: s_us_aqi_epa_2016 {}

explore: s_us_aqi_epa_2020 {}

explore: static_apple_region {}

explore: static_countries_info {}

explore: static_country_apple_to_google {}

explore: static_apple_to_google {}

explore: static_country_code {}

explore: static_us_county_population {}

explore: t_aqi_us_county_2019 {}

explore: t_covid19_global_recovered_jhu {}

explore: t_covid19_us_confirmed_jhu {}

explore: t_covid19_owid {}

explore: t_covid19_us_deaths_jhu {}

explore: t_covid19_us_tests_rearc {}

explore: t_covid19_owid_backup {}

explore: t_covid19_us_states_tests_rearc {}

explore: t_covid19_world_daily_ecdc {}

explore: t_mobility {}

explore: t_pm25_world_series {}

explore: t_mobility_google {}

explore: t_mobility_apple {}

explore: t_pm25_us_counties_harvard {}

explore: t_pm25_world_databank {}

explore: t_us_aqi_epa_2015 {}

explore: t_us_aqi_epa_2016 {}

explore: t_us_aqi_epa_2018 {}

explore: t_us_aqi_epa_2017 {}

explore: t_world_aqi_2018 {}

explore: t_us_aqi_epa_2020 {}

explore: t_world_aqi_2015 {}

explore: t_world_aqi_2016 {}

explore: t_world_aqi_2019_q2 {}

explore: t_world_aqi_2017 {}

explore: t_world_aqi_2019_q1 {}

explore: t_world_aqi_2020 {}

explore: t_world_aqi_2019_q3 {}

explore: test {}

explore: test2 {}

explore: t_world_aqi_2019_q4 {}

explore: thesis_presentation {}
