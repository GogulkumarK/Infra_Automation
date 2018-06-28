# Microsoft Azure Resource Manager Provider

#
# Uncomment this provider block if you have set the following environment variables:
# ARM_SUBSCRIPTION_ID, ARM_CLIENT_ID, ARM_CLIENT_SECRET and ARM_TENANT_ID
#
provider "azurerm" {}

#
# Uncomment this provider block if you are using variables (NOT environment variables)
# to provide the azurerm provider requirements.
#
provider "azurerm" {
  subscription_id  = "89add122-fb7f-4fbf-9648-d37081a49745"
   client_id       = "d05fdd2d-49e5-4d6b-a315-ccb6bd21d601"
   client_secret   = "c3738884-7dd2-4054-b423-b73fb1e5ea70"
   tenant_id       = "b3ec475f-ff4c-45c0-932d-59c57804a8c3"
}
