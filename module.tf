module "snapshot" {
  source = "./Snapshot"
  subscription_id=""
  client_id=""
  client_secret=""
  tenant_id=""
  resource_group_name="kp_gp"
  location=$location

  snapshot_name="snapshot_vm01"
  create_option="Copy"
  source_uri=""
  
}
# 2nd snashot

}
