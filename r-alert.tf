resource "azurerm_security_center_contact" "main" {
  count = var.alert_notifications_enabled || var.alerts_to_admins_enabled ? 1 : 0

  name = var.contact.name

  email               = var.contact.email
  phone               = var.contact.phone
  alert_notifications = var.alert_notifications_enabled
  alerts_to_admins    = var.alerts_to_admins_enabled

  lifecycle {
    precondition {
      condition = (
        !var.alert_notifications_enabled ||
        (var.alert_notifications_enabled && var.contact.email != null && var.contact.phone != null)
      )
      error_message = "`var.contact.email` and `var.contact.phone` must be set if `alert_notifications_enabled` is enabled."
    }
  }
}

moved {
  from = azurerm_security_center_contact.alert_contact
  to   = azurerm_security_center_contact.main
}
