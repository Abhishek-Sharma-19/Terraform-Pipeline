resource "azurerm_resource_group" "RGAbhishek" {
  for_each = var.rgname
  name     = each.value.name
  location = each.value.location
}
