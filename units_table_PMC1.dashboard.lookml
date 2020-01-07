- dashboard: buildings_dashboard PMC1
  title: PMC1 Dashboard
  layout: newspaper
  refresh: 1 hour
  elements:
  - name: Units Table Dashboard
    title: Untitled Visualization
    model: units_pmc1
    explore: building
    type: looker_grid
    fields: [building.property_code, apt_unit.info_unit_number, building.info_address_city,
    building.info_address_province]
    sorts: [building.property_code, apt_unit.info_unit_number, building.info_address_city]
    subtotals: [building.property_code, apt_unit.info_unit_number, building.info_address_city]
    limit: 500
    query_timezone: America/New_York
    series_types: {}
