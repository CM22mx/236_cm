- dashboard: dashboard39_columns_fromLookML
  title: Dashboard39_columns_fromLookML
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: NqkjXRuIo6lpMlI0Nl76kv
  elements:
  - title: Dashboard39_columns_fromLookML
    name: Dashboard39_columns
    model: test236_cm
    explore: order_items
    type: looker_grid
    fields: [orders.id, orders.created_date, orders.created_year, orders.created_month,
      orders.status, orders.user_id, products.brand, products.category, products.department,
      products.item_name, products.rank, products.retail_price, products.sku, users.age,
      users.city, users.country, users.email, users.first_name, users.gender, users.last_name,
      users.state, users.zip, order_items.inventory_item_id, order_items.phone, order_items.sale_price,
      order_items.returned_quarter, inventory_items.cost, inventory_items.created_date,
      inventory_items.created_quarter, inventory_items.id, inventory_items.product_id,
      inventory_items.sold_date, inventory_items.sold_month, inventory_items.sold_quarter,
      orders.count, products.count, users.count, order_items.count, inventory_items.count]
    filters: {}
    sorts: [orders.id]
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields: [{category: table_calculation, expression: "${orders.count}+${users.count}",
        label: Orders_Users, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: orders_users, _type_hint: number}]
    show_view_names: false
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
    pinned_columns:
      "$$$_row_numbers_$$$": left
    column_order: [orders.id, orders.created_date, orders.created_year, orders.created_month,
      orders.status, orders.count, orders.user_id, products.brand, products.category,
      products.department, products.item_name, products.rank, products.retail_price,
      products.sku, users.age, users.city, users.country, users.email, users.first_name,
      users.gender, users.last_name, users.state, users.zip, users.count, orders_users,
      order_items.inventory_item_id, order_items.phone, inventory_items.count, order_items.sale_price,
      order_items.returned_quarter, inventory_items.cost, inventory_items.created_date,
      inventory_items.created_quarter, inventory_items.id, inventory_items.product_id,
      inventory_items.sold_date, inventory_items.sold_month, inventory_items.sold_quarter,
      products.count, order_items.count]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      orders.count: Count of Orders
      users.count: Count of Users
    series_cell_visualizations:
      orders.count:
        is_active: false
    series_text_format:
      orders_users:
        bg_color: "#A8A116"
    defaults_version: 1
    listen:
      Count: users.count
      State: users.state
    row: 0
    col: 0
    width: 24
    height: 12
  filters:
  - name: Count
    title: Count
    type: field_filter
    default_value: ">0"
    allow_multiple_values: true
    required: false
    ui_config:
      type: range_slider
      display: inline
    model: test236_cm
    explore: order_items
    listens_to_filters: []
    field: users.count
  - name: State
    title: State
    type: field_filter
    default_value: Michigan,Missouri,Colorado
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: test236_cm
    explore: order_items
    listens_to_filters: []
    field: users.state
