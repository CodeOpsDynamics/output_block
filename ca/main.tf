
resource "azurerm_storage_container" "caconnect" {
  name                  = "vhds"
  storage_account_name  = var.sa
  container_access_type = "private"
}

variable "sa" {
  sensitive = true
}
