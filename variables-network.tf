# Network/firewall variables

variable "public_network_access_enabled" {
  description = "Whether the Microsoft Defender for Cloud is available from public network."
  type        = bool
  default     = false
}

variable "network_bypass" {
  description = "Specify whether traffic is bypassed for 'Logging', 'Metrics', 'AzureServices' or 'None'."
  type        = list(string)
  default     = ["Logging", "Metrics", "AzureServices"]
}

variable "allowed_cidrs" {
  description = "List of allowed CIDR ranges to access the Microsoft Defender for Cloud resource."
  type        = list(string)
  default     = []
}

variable "allowed_subnet_ids" {
  description = "List of allowed subnets IDs to access the Microsoft Defender for Cloud resource."
  type        = list(string)
  default     = []
}
