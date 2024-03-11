terraform {
  required_version = ">=1.0.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.75.0"
    }
    azapi = {
      source  = "Azure/azapi"
      version = ">=1.12.1"
    }
    time = {
      source  = "hashicorp/time"
      version = "~> 0.7.2"
    }
  }
}
