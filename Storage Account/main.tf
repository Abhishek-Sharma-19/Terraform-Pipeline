resource "azurerm_storage_account" "AbhiStorageAccount" {
  for_each                 = var.sa
  name                     = each.value.name
  resource_group_name      = each.value.rgname
  location                 = each.value.location
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type

}
resource "azurerm_storage_container" "AbhiContainerSA" {
  for_each              = var.sa
  name                  = each.value.name
  storage_account_name  = azurerm_storage_account.AbhiStorageAccount[each.key].name
  container_access_type = "private"
}
