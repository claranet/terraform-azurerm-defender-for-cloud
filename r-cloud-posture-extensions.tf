resource "azurerm_security_center_subscription_pricing" "cloud_posture" {

  resource_type = "CloudPosture"
  tier          = "Standard"

  dynamic "extension" {
    for_each = var.enable_agentless_vm_scanning ? [1] : []
    content {
      name = "AgentlessVmScanning"
      additional_extension_properties = {
        ExclusionTags = jsonencode(var.exclusion_tags)
      }
    }
  }
  dynamic "extension" {
    for_each = var.enable_agentless_discovery_for_kubernetes ? [1] : []
    content {
      name = "AgentlessDiscoveryForKubernetes"
    }
  }
  dynamic "extension" {
    for_each = var.enable_container_registries_vulnerability_assessments ? [1] : []
    content {
      name = "ContainerRegistriesVulnerabilityAssessments"
    }
  }

}