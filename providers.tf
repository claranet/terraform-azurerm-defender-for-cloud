terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.31"
    }
    azapi = {
      source  = "azure/azapi"
      version = "~> 2.3"
    }
  }
}
