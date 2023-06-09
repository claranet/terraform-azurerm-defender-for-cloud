###############################
# Security alerts variables
###############################
variable "contact_email" {
  description = "The email to contact for security alerts."
  type        = string
  default     = null
}

variable "contact_phone" {
  description = "The phone number to contact for security alerts."
  type        = string
  default     = null
}

variable "alert_notifications_enabled" {
  description = "Whether to send security alerts notifications to the security contact or not."
  type        = bool
  default     = true
}

variable "alerts_to_admins_enabled" {
  description = "Whether to send security alerts notifications to Subscription admins (Owners) or not."
  type        = bool
  default     = true
}
