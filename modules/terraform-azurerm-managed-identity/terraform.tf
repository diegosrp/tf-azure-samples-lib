terraform {
  # Terraform version
  required_version = ">= 1.5.0"

  # Provider version
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.70.0" # minimum version
    }
  }
}
