module "container-apps" {
  source                                             = "Azure/container-apps/azure"
  version                                            = "0.2.0"
  resource_group_name                                = data.azurerm_resource_group.app_rg.name
  location                                           = data.azurerm_resource_group.app_rg.location
  log_analytics_workspace_name                       = "${var.resource_name_prefix}-loganalytics"
  container_app_environment_name                     = "${var.resource_name_prefix}-app-env"
  container_app_environment_infrastructure_subnet_id = azurerm_subnet.subnet["subnet1-public"].id
  container_app_environment_tags                     = var.default_tags

  container_apps = {
    pythonapp = {
      name          = var.app_container_config["name"]
      revision_mode = var.app_container_config["revision_mode"]

      template = {
        containers = [
          {
            name   = var.app_container_config["name"]
            memory = var.app_container_config["memory"]
            cpu    = var.app_container_config["cpu"]
            image  = "${var.registry_url}/${var.app_container_config["image"]}"
            env    = var.app_container_config["environment_variables"],

          }

        ]
      }
      ingress = {
        allow_insecure_connections = var.app_container_config["ingress"]["allow_insecure_connections"]
        external_enabled           = var.app_container_config["ingress"]["external_enabled"]
        target_port                = var.app_container_config["ingress"]["target_port"]
        traffic_weight = {
          latest_revision = true
          percentage      = 100
        }
      }
      registry = [
        {
          server               = var.registry_url
          username             = var.registry_username
          password_secret_name = "secname"
        }
      ]
    }
  }

  container_app_secrets = {
    pythonapp = [
      {
        name  = "secname"
        value = var.registry_password
      }
    ]
  }
}

data "azurerm_resource_group" "app_rg" {
  name = "${var.resource_name_prefix}-app-rg"
}

