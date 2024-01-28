resource "azurerm_storage_account" "saconnect" {
  name                     = "gdwhjhkahd83"
  resource_group_name      = var.n
  location                 = var.l
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}


variable "n" {}
variable "l" {}


output "san" {
  value = azurerm_storage_account.saconnect.name
}