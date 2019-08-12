provider "azurerm" {
  subscription_id = "${var.subscription_id}"
  tenant_id       = "${var.tenant_id}"
  client_id       = "${var.client_id}"
  client_secret   = "${var.client_secret}"
}

resource "azurerm_resource_group" "rg" {
 name     = "${var.resource_group_name}"
 location = "${var.location}"
}

resource "azurerm_snapshot" "kp_gp" {
  name                = "snapshot_VM01"
  location            = "${azurerm_resource_group.kp_gp.location}"
  resource_group_name = "${azurerm_resource_group.kp_gp.name}"
  create_option       = "Copy"
  source_uri          = "subscriptions/3354308b-6548-4749-aac2-6b4cfbf2e6ed/resourceGroups/KP_GP/providers/Microsoft.Compute/disks/VM01_disk1_589d699c52ad4851ba177868ca5449c8"
}

resource "azurerm_managed_disk" "kp_gp" {
  name = "snapshot-VM02"
  location = "eastus"
  resource_group_name = "${azurerm_resource_group.kp_gp.name}"
  storage_account_type = "Standard_LRS"
  create_option = "Copy"
  source_resource_id = "subscriptions/3354308b-6548-4749-aac2-6b4cfbf2e6ed/resourceGroups/KP_GP/providers/Microsoft.Compute/disks/VM01_disk1_589d699c52ad4851ba177868ca5449c8"
  disk_size_gb = "30"
}
