resource "azurerm_resource_group" "rgconnect" {
  name     = "terrarg1"
  location = "West Europe"
}

output "rgn" {
  value = azurerm_resource_group.rgconnect.name 
}


output "rgl" {
  value = azurerm_resource_group.rgconnect.location
}