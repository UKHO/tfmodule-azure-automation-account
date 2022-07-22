resource "azurerm_automation_account" "automation" {
  name                = var.desired_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  sku_name            = "Basic"
  provider            = azurerm.auto
}
