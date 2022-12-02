resource "azurerm_kusto_cluster_customer_managed_key" "pike" {
  cluster_id   = azurerm_kusto_cluster.pike.id
  key_vault_id = var.key.key_vault_id
  key_name     = var.key.key_name
  key_version  = var.key.key_version
}

variable "key" {
  type = object({
    key_vault_id = string
    key_name     = string
    key_version  = number
  })
}
