module "snapshot" {
  source = "./Snapshot"
  subscription_id="3354308b-6548-4749-aac2-6b4cfbf2e6ed"
  client_id="35d39492-2fe9-4ca9-aada-dbc3b879ab80"
  client_secret="0joJRCNWP=+B.e@nH4xsDE27=CSv+58M"
  tenant_id="154a555f-9dde-4aed-8873-eca8e68b38df"
  resource_group_name="kp_gp"
  location="$location"

  snapshot_name="snapshot_vm01"
  create_option="Copy"
  source_uri="subscriptions/3354308b-6548-4749-aac2-6b4cfbf2e6ed/resourceGroups/KP_GP/providers/Microsoft.Compute/disks/VM01_disk1_589d699c52ad4851ba177868ca5449c8"
  
}
# 2nd snashot
 module "snapshot01" {
  source = "./Snapshot"
  subscription_id="3354308b-6548-4749-aac2-6b4cfbf2e6ed"
  client_id="35d39492-2fe9-4ca9-aada-dbc3b879ab80"
  client_secret="0joJRCNWP=+B.e@nH4xsDE27=CSv+58M"
  tenant_id="154a555f-9dde-4aed-8873-eca8e68b38df"
  resource_group_name="kp_gp"
  location="eastus"

  snapshot_name="snapshot_vm02"
  create_option="Copy"
  source_uri="/subscriptions/3354308b-6548-4749-aac2-6b4cfbf2e6ed/resourceGroups/KP_GP/providers/Microsoft.Compute/disks/VM02_disk1_5fd3cd45216f4eed98bf64622dec6e47"
  
}
