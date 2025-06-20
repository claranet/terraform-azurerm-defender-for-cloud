resource "azurerm_security_center_subscription_pricing" "sqlservers" {
  count = var.enable_sqlservers_pricing ? 1 : 0

  resource_type = "SqlServers"
  tier          = "Standard"
}

resource "azurerm_security_center_subscription_pricing" "sqlservers_vms" {
  count = var.enable_sqlservers_vms_pricing ? 1 : 0

  resource_type = "SqlServerVirtualMachines"
  tier          = "Standard"
}

resource "azurerm_security_center_subscription_pricing" "opensourcerelationaldatabases" {
  count = var.enable_opensourcerelationaldatabases_pricing ? 1 : 0

  resource_type = "OpenSourceRelationalDatabases"
  tier          = "Standard"
}

resource "azurerm_security_center_subscription_pricing" "cosmosdbs" {
  count = var.enable_cosmosdbs_pricing ? 1 : 0

  resource_type = "CosmosDbs"
  tier          = "Standard"
}