- dashboard: ordercols_dash
  title: OrderCols dash LookML
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 8ohHqnJmvysvLRF7ujyEzj
  elements:
  - title: OrderCols dash
    name: OrderCols dash
    model: test236_cm
    explore: users
    type: looker_grid
    fields: [users.zip, users.age, users.count]
    filters: {}
    sorts: [users.zip]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${users.age} + ${users.count}",
        label: Age_Count, value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        table_calculation: age_count, _type_hint: number}, {category: table_calculation,
        expression: "${users.age} + to_number(${users.zip})", label: Age_Zipcode,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        table_calculation: age_zipcode, _type_hint: number}, {category: table_calculation,
        expression: 'to_number(${users.zip}) + ${age_count}', label: Zipcode_Count,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        table_calculation: zipcode_count, _type_hint: number}]
    show_view_names: true
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", users.zip, users.age, users.count, age_count,
      age_zipcode, zipcode_count]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels: {}
    series_cell_visualizations:
      users.count:
        is_active: false
    hidden_fields: []
    hidden_points_if_no: []
    defaults_version: 1
    series_types: {}
    listen:
      Zip: users.zip
    row: 0
    col: 0
    width: 24
    height: 12
  filters:
  - name: Zip
    title: Zip
    type: field_filter
    default_value: 70%
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: test236_cm
    explore: users
    listens_to_filters: []
    field: users.zip
