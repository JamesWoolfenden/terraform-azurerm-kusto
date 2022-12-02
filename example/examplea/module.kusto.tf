module "kusto" {
  source = "../../"
  kusto = {
    name         = "kustocluster"
    location     = "uksouth"
    rg_name      = "pike"
    sku          = "Standard_D13_v2"
    sku_capacity = 2
  }
  key = {
    key_vault_id = "/subscriptions/037ce662-dfc1-4b8b-a8a7-6c414b540ed6/resourceGroups/pike/providers/Microsoft.KeyVault/vaults/pike"
    key_name     = "pike"
    key_version  = 1
  }
  tags = {
    pike = "permissions"
  }
}
