resource "azurerm_security_center_subscription_pricing" "main" {
  for_each = { for s in var.services : s.resource_type => s }

  resource_type = each.key
  tier          = each.value.tier
  subplan       = each.value.subplan
}

moved {
  from = azurerm_security_center_subscription_pricing.mdc
  to   = azurerm_security_center_subscription_pricing.main
}