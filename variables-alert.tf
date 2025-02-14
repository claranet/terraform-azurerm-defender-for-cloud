###############################
# Security alerts variables
###############################
variable "contact" {
  description = "The name, email and phone number to contact for security alerts."
  type = object({
    name  = optional(string)
    email = optional(string)
    phone = optional(string)
  })
  default  = {}
  nullable = false
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
