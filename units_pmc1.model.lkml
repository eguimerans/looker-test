connection: "vista-dev-sandbox"

include: "views/*"                       # include all views in this project

# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

include: "*.dashboard.lookml"

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }


explore: building {

# one restriction here ... (ie: PMC1)

  join: apt_unit {
    relationship: one_to_many
    sql_on: ${apt_unit.building} = ${building.id} ;;
  }

}
