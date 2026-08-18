terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 5.0"
    }
    azapi = {
      source  = "azure/azapi"
      version = "~> 2.3"
    }
  }
}
