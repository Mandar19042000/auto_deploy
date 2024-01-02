---
- dashboard: auto_deploy
  title: Auto_Deploy
  layout: newspaper
  preferred_viewer: dashboards-next
  preferred_slug: JzjSTdqG4eNzod1SrlcQpO
  elements:
  - title: Auto_Deploy
    name: Auto_Deploy
    model: auto_deploy
    explore: retail_orders
    type: looker_column
    fields: [retail_orders.category, retail_orders.average_profit]
    sorts: [retail_orders.average_profit desc 0]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 0
    col: 0
    width: 24
    height: 12
