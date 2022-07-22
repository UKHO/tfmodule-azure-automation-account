resource "azurerm_resource_group" "rg" {
  name     = "${var.desired_name}-rg"
  location = var.location
  provider = azurerm.auto
}
