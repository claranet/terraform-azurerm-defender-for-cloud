output "resource_subscribed_plans" {
  description = "List of subscribed plans and services."
  value       = azurerm_security_center_subscription_pricing.main
}
