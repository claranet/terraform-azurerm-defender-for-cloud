resource "azapi_resource" "container_pricing" {
  count     = var.enable_container_pricing ? 1 : 0
  type      = "Microsoft.Security/pricings@2024-01-01"
  name      = "Containers"
  parent_id = "/subscriptions/${data.azurerm_client_config.current.subscription_id}"
  body = {
    properties = {
      enforce = "True"
      extensions = [
        {
          isEnabled = var.enable_agentless_discovery_for_kubernetes ? "True" : "False"
          name      = "AgentlessDiscoveryForKubernetes"
        },
        {
          isEnabled = var.enable_agentless_vm_scanning ? "True" : "False"
          name      = "AgentlessVmScanning"
        },
        {
          isEnabled = var.enable_container_sensor ? "True" : "False"
          name      = "ContainerSensor"
        },
        {
          isEnabled = var.enable_container_registries_vulnerability_assessments ? "True" : "False"
          name      = "ContainerRegistriesVulnerabilityAssessments"
        },
        {
          isEnabled = var.enable_container_integrity_contribution ? "True" : "False"
          name      = "ContainerIntegrityContribution"
        },
      ]
      pricingTier = "Standard"
    }
  }
}
