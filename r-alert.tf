resource "azurerm_security_center_contact" "alert_contact" {
  count = var.alert_notifications_enabled || var.alerts_to_admins_enabled ? 1 : 0

  email               = var.contact_email
  phone               = var.contact_phone
  alert_notifications = var.alert_notifications_enabled
  alerts_to_admins    = var.alerts_to_admins_enabled

  lifecycle {
    precondition {
      condition = (
        !var.alert_notifications_enabled ||
        (var.alert_notifications_enabled && var.contact_email != null && var.contact_phone != null)
      )
      error_message = "`contact_email` and `contact_phone` must be set if `alert_notifications_enabled` is enabled."
    }
  }
}
