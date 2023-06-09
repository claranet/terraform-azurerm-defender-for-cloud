output "contact_id" {
  description = "The alert contact object ID."
  value       = one(azurerm_security_center_contact.alert_contact[*].id)
}
