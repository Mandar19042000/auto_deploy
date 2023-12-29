- dashboard: test1
  title: test1
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: XoBbT3D06gvlmlRw44e6er
  elements:
  - name: add_a_unique_name_1702279781
    title: profit vs category
    model: auto_deploy
    explore: retail_orders
    type: looker_bar
    fields: [retail_orders.category, retail_orders.average_profit]
    sorts: [retail_orders.average_profit desc 0]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Total Categories
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots: {}
    defaults_version: 1
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
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: '#808080'
    ordering: none
    show_null_labels: false