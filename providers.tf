#include details about the provider
terraform {
  required_providers {
    azure_rm = {
      source = "hashicorp/azurerm"
      version = ">= 3.1.0"
    }
  }
  required_version = ">=0.13"
}
