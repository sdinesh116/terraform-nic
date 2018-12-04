# Configure the Microsoft Azure Provider
provider "azurerm" {
    subscription_id = "${var.subscription_id}"
}

# Create a resource group if it doesn’t exist
resource "azurerm_resource_group" "resource_group" {
    name     = "${var.resource_group}"
    location = "${var.location}"

    tags {
        environment = "Azure Terraform Demo"
    }
}



# Create network interface
resource "azurerm_network_interface" "net_interface" {
  name                = "${var.network_interface_name}"
  location            = "${var.location}"
  resource_group_name = "${var.resource_group}"
  network_security_group_id = "/subscriptions/${var.subscription_id}/resourceGroups/${var.resource_group}/providers/Microsoft.Network/networkSecurityGroups/${var.security_group}"

  ip_configuration {
    name                          = "${var.network_interface_name}-conf"
    subnet_id                     = "/subscriptions/${var.subscription_id}/resourceGroups/${var.resource_group}/providers/Microsoft.Network/virtualNetworks/${var.virtaul_network}/subnets/${var.subnet}"
    private_ip_address_allocation = "dynamic"
  }

  tags {
    environment = "Azure Terraform Demo"
  }
}