
#20th_dec_2023
#20th_dec_2023_1
#20th_dec_2023_2



connection: "inhouse_bi"


include: "/views/**/*.view.lkml"
include: "/dashboard/**/*.dashboard.lookml"


datagroup: auto_deploy_default_datagroup {

  max_cache_age: "1 hour"
}

persist_with: auto_deploy_default_datagroup



explore: retail_orders {}
