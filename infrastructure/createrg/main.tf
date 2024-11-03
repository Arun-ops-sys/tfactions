# terraform {
#   required_providers {
#     azurerm = {
#       source = "hashicorp/azurerm"
#       version = "3.8.0"
#     }
#   }
# }

provider "azurerm" {
  #resource_provider_registrations = "none" # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  features {}
  skip_provider_registration = true
}



resource "azurerm_resource_group" "appgrp" {
  name     = "app-grp"
  location = "North Europe"
}