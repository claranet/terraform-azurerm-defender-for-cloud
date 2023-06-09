###############################
# Defender for Cloud
###############################

variable "services" {
  description = "Defender for Cloud services list to activate. See [https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/security_center_subscription_pricing](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/security_center_subscription_pricing)"
  type = list(object({
    resource_type = string
    tier          = optional(string, "Standard")
    subplan       = optional(string, null)
  }))
  default = [
    { resource_type = "AppServices" },
    { resource_type = "Arm" },
    { resource_type = "CloudPosture" },
    { resource_type = "ContainerRegistry" },
    { resource_type = "Containers" },
    { resource_type = "CosmosDbs" },
    { resource_type = "Dns" },
    { resource_type = "KeyVaults" },
    { resource_type = "KubernetesService" },
    { resource_type = "OpenSourceRelationalDatabases" },
    { resource_type = "SqlServerVirtualMachines" },
    { resource_type = "SqlServers" },
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
