resource "azurerm_security_center_subscription_pricing" "defender_for_cloud" {
  name = local.defender_for_cloud_name

  location            = var.location
  resource_group_name = var.resource_group_name

  tags = merge(local.default_tags, var.extra_tags)
}
