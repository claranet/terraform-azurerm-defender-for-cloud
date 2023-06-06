output "defender_for_cloud" {
  description = "Microsoft Defender for Cloud output object"
  value       = azurerm_security_center_subscription_pricing.defender_for_cloud
}

output "id" {
  description = "Microsoft Defender for Cloud ID"
  value       = azurerm_security_center_subscription_pricing.defender_for_cloud.id
}

output "name" {
  description = "Microsoft Defender for Cloud name"
  value       = azurerm_security_center_subscription_pricing.defender_for_cloud.name
}

output "identity_principal_id" {
  description = "Microsoft Defender for Cloud system identity principal ID"
  value       = try(azurerm_security_center_subscription_pricing.defender_for_cloud.identity[0].principal_id, null)
}
