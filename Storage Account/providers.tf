terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }

backend "azurerm" {
    resource_group_name  = "RGAbhishek1"
    storage_account_name = "abhisheksa2"
    container_name       = "abhisac"
    key                  = "SA/SA.tfstate"
  }
}
provider "azurerm" {
  features {

  }
}