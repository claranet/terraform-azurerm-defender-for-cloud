###############################
# Defender for Cloud
###############################

variable "services" {
  description = "Defender for Cloud services list to activate. See [https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/security_center_subscription_pricing](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/security_center_subscription_pricing)."
  type = list(object({
    resource_type = string
    tier          = optional(string, "Standard")
    subplan       = optional(string, null)
  }))
  default = [
    { resource_type = "AppServices" },
    {
      resource_type = "Arm"
      subplan       = "PerSubscription"
    },
    {
      resource_type = "KeyVaults"
      subplan       = "PerKeyVault"
    },
    {
      resource_type = "StorageAccounts"
      subplan       = "DefenderForStorageV2"
    },
    {
      resource_type = "VirtualMachines"
      subplan       = "P1"
    }
  ]
  nullable = false
}

variable "exclusion_tags" {
  description = "List of VM tags to exclude from Agentless scanning Defender for Cloud."
  type = list(object({
    key   = string
    value = string
  }))
  default  = []
  nullable = true
}

variable "enable_container_pricing" {
  description = "Enable container pricing in Defender for Cloud."
  type        = bool
  default     = true
}

variable "enable_agentless_vm_scanning" {
  description = "Enable agentless VM scanning extension in Defender for Cloud."
  type        = bool
  default     = true
}

variable "enable_agentless_discovery_for_kubernetes" {
  description = "Enable agentless discovery for Kubernetes extension in Defender for Cloud."
  type        = bool
  default     = true
}

variable "enable_container_registries_vulnerability_assessments" {
  description = "Enable container registries vulnerability assessments extension in Defender for Cloud."
  type        = bool
  default     = true
}

variable "enable_container_sensor" {
  description = "Enable container sensor extension in Defender for Cloud."
  type        = bool
  default     = true
}

variable "enable_container_integrity_contribution" {
  description = "Enable container integrity contribution extension in Defender for Cloud."
  type        = bool
  default     = true
}

variable "enable_sqlservers_pricing" {
  description = "Enable SQL servers pricing in Defender for Cloud."
  type        = bool
  default     = true
}

variable "enable_sqlservers_vms_pricing" {
  description = "Enable SQL servers VMs pricing in Defender for Cloud."
  type        = bool
  default     = true
}

variable "enable_opensourcerelationaldatabases_pricing" {
  description = "Enable open source relational databases pricing in Defender for Cloud."
  type        = bool
  default     = true
}

variable "enable_cosmosdbs_pricing" {
  description = "Enable Cosmos DBs pricing in Defender for Cloud."
  type        = bool
  default     = true
}
