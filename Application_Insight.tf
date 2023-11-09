# resource "azurerm_log_analytics_workspace" "example" {
#   name                = "workspace-test"
#   location            = "East US"
#   resource_group_name = var.resource_group_name
#   sku                 = "PerGB2018"
#   retention_in_days   = 30
# }

resource "azurerm_application_insights" "application_insights" {
  name                = var.azurerm_application_insights_name
  location            = var.azurerm_application_insights_location
  resource_group_name = var.resource_group_name
  workspace_id        = var.azurerm_application_insights_workspace_id
  application_type    = var.azurerm_application_insights_application_type
  tags = var.azurerm_application_insights_application_tag
  }

