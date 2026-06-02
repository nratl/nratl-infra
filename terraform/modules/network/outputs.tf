output "vnet_id" {
  description = "ID of the virtual network"
  value       = azurerm_virtual_network.main.id
}

output "subnet_aks_id" {
  description = "ID of the AKS subnet"
  value       = azurerm_subnet.aks.id
}

output "subnet_vm_id" {
  description = "ID of the VM subnet"
  value       = azurerm_subnet.vm.id
}

output "subnet_database_id" {
  description = "ID of the database subnet"
  value       = azurerm_subnet.database.id
}

output "nsg_id" {
  description = "ID of the network security group"
  value       = azurerm_network_security_group.main.id
}