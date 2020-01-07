- dashboard: buildings_dashboard PMC2
  title: PMC2 Dashboard
  layout: newspaper
  refresh: 1 hour
  elements:
  - name: Units Table Dashboard
    title: Units Table PMC2
    model: units_pmc2
    explore: building
    type: looker_grid
    fields: [building.property_code, apt_unit.info_unit_number, building.info_address_city,
    building.info_address_province]
    sorts: [building.property_code, apt_unit.info_unit_number, building.info_address_city]
    subtotals: [building.property_code, apt_unit.info_unit_number, building.info_address_city]
    limit: 500
    query_timezone: America/New_York
    series_types: {}
