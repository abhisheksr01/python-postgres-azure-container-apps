resource "azurerm_virtual_network" "vnet" {
  address_space       = ["10.0.0.0/22"]
  location            = data.azurerm_resource_group.app_rg.location
  name                = "${var.resource_name_prefix}-vnet"
  resource_group_name = data.azurerm_resource_group.app_rg.name
  tags                = var.default_tags
}

resource "azurerm_subnet" "subnet" {
  for_each                                      = local.subnet_map
  address_prefixes                              = each.value.iprange
  name                                          = each.value.name
  resource_group_name                           = data.azurerm_resource_group.app_rg.name
  virtual_network_name                          = azurerm_virtual_network.vnet.name
  private_endpoint_network_policies_enabled     = false
  private_link_service_network_policies_enabled = false
  service_endpoints                             = ["Microsoft.ContainerRegistry"]
}

resource "azurerm_network_security_group" "app_nsg" {
  name                = "${var.resource_name_prefix}-sg"
  location            = data.azurerm_resource_group.app_rg.location
  resource_group_name = data.azurerm_resource_group.app_rg.name

  security_rule = [
    {
      access                                     = "Allow"
      description                                = ""
      destination_address_prefix                 = "*"
      destination_address_prefixes               = []
      destination_application_security_group_ids = []
      destination_port_range                     = "22"
      destination_port_ranges                    = []
      direction                                  = "Inbound"
      name                                       = "SSH"
      priority                                   = 1001
      protocol                                   = "Tcp"
      source_address_prefix                      = "*"
      source_address_prefixes                    = []
      source_application_security_group_ids      = []
      source_port_range                          = "*"
      source_port_ranges                         = []
    },
    {
      access                                     = "Allow"
      description                                = ""
      destination_address_prefix                 = "*"
      destination_address_prefixes               = []
      destination_application_security_group_ids = []
      destination_port_range                     = "5000"
      destination_port_ranges                    = []
      direction                                  = "Inbound"
      name                                       = "AllowAnyCustom5000Inbound"
      priority                                   = 1011
      protocol                                   = "*"
      source_address_prefix                      = "*"
      source_address_prefixes                    = []
      source_application_security_group_ids      = []
      source_port_range                          = "*"
      source_port_ranges                         = []
  }]
  tags = var.default_tags
}

locals {
  subnet_map = { for s in var.subnet_config : s.name => s }
}
