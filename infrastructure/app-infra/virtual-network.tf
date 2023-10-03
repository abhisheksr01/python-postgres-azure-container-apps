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

locals {
  subnet_map = { for s in var.subnet_config : s.name => s }
}
