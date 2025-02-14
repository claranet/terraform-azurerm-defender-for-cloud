output "alert_contact_id" {
  description = "The alert contact object ID."
  value       = one(azurerm_security_center_contact.main[*].id)
}

output "resource_alert_contact" {
  description = "The alert contact object."
  value       = one(azurerm_security_center_contact.main[*])
}
