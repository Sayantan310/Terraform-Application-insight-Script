variable "azurerm_application_insights_name" {
  type    = string
  description = "Specifies the name of the Application Insights component. Changing this forces a new resource to be created."
  default = "tf-test-appinsights"
}
variable "azurerm_application_insights_location" {
  type    = string
  description = "Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  default = "East US"
}
variable "resource_group_name" {
  type    = string
  description = "The name of the resource group in which to create the Application Insights component. Changing this forces a new resource to be created."
  default = "1234-dev"
}
variable "azurerm_application_insights_workspace_id" {
  type    = string
  description = "Specifies the id of a log analytics workspace resource."
  default = "/subscriptions/d08202be-b5f1-4e6f-9a1d-880443055ed2/resourceGroups/1234-dev/providers/Microsoft.OperationalInsights/workspaces/workspace-test"
}
variable "azurerm_application_insights_application_type" {
  type    = string
  description = "Specifies the type of Application Insights to create. Valid values are ios for iOS, java for Java web, MobileCenter for App Center, Node.JS for Node.js, other for General, phone for Windows Phone, store for Windows Store and web for ASP.NET. Please note these values are case sensitive; unmatched values are treated as ASP.NET by Azure. Changing this forces a new resource to be created."
  default = "web"
}
variable "azurerm_application_insights_application_tag" {
  description = "A map of tags to assign to the resources."
  type        = map(string)
  default     = {
    Environment = "Development"
    Environment1 = "PROD"
  }
}
