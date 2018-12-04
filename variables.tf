variable "subscription_id" {
  description = "Azure subscription ID"
  default     = ""
}
variable "location" {
  description = "Azure Region"
  default     = "East US"
}
variable "resource_group" {
  description = "Azure Resource Group Name"
  default     = "myResourceGroup"
}
variable "virtaul_network" {
  description = "Azure VNET name"
  default     = "myVnet"
}
variable "subnet" {
  description = "Azure Subnet ID"
  default     = "mySubnet"
}
variable "security_group" {
  description = "Azure security group ID"
  default     = "myNetworkSecurityGroup"
}
variable "network_interface_name" {
  description = "Azure network Interface name"
  default     = "nic123"
}
