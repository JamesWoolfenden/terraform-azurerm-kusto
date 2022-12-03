resource "azurerm_kusto_cluster" "pike" {
  # checkov:skip=CKV_AZURE_74: faulty
  name                = var.kusto.name
  location            = var.kusto.location
  resource_group_name = var.kusto.rg_name

  sku {
    name     = var.kusto.sku
    capacity = var.kusto.sku_capacity
  }

  tags                      = var.tags
  double_encryption_enabled = true
  disk_encryption_enabled   = true
}


variable "tags" {
  type = map(any)
}

variable "kusto" {
  type = object({
    name         = string
    location     = string
    rg_name      = string
    sku          = string
    sku_capacity = number
  })
}
