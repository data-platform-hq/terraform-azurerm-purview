resource "azurerm_purview_account" "this" {
  name                        = var.name
  location                    = var.location
  resource_group_name         = var.resource_group
  managed_resource_group_name = coalesce(var.managed_resource_group_name, "${var.resource_group}-pvw")

  tags = var.tags

  identity {
    type = "SystemAssigned"
  }
}

resource "time_sleep" "this" {
  create_duration = "30s"

  depends_on = [azurerm_purview_account.this]
}

resource "azapi_resource_action" "this" {
  for_each = var.admins_object_ids

  type        = "Microsoft.Purview/accounts@2023-05-01-preview"
  resource_id = azurerm_purview_account.this.id
  action      = "addRootCollectionAdmin"
  method      = "POST"
  body = jsonencode({
    "objectId" : each.value
  })

  depends_on = [time_sleep.this]
}
