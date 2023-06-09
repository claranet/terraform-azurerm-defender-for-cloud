resource "azurerm_security_center_subscription_pricing" "mdc" {
  for_each = { for s in var.services : s.resource_type => s }

  resource_type = each.key
  tier          = each.value.tier
  subplan       = each.value.subplan
}
