resource "azuread_application" "python_postgres_azure_app" {
  display_name = "${var.resource_name_prefix}-github-oidc"
  owners       = [data.azuread_client_config.current.object_id]
  tags         = var.default_set_tags
    lifecycle {
    ignore_changes = [owners]
  }
}

resource "azuread_service_principal" "python_postgres_azure_app" {
  application_id               = azuread_application.python_postgres_azure_app.application_id
  app_role_assignment_required = false
  owners                       = [data.azuread_client_config.current.object_id]
  tags                         = var.default_set_tags
  lifecycle {
    ignore_changes = [owners]
  }
}

resource "azurerm_role_assignment" "python_postgres_azure_app" {
  scope                = data.azurerm_subscription.primary.id
  role_definition_name = var.role_assigned
  principal_id         = azuread_service_principal.python_postgres_azure_app.object_id
}

resource "azuread_application_federated_identity_credential" "python_postgres_azure_app_oidc" {
  application_object_id = azuread_application.python_postgres_azure_app.object_id
  display_name          = "${var.resource_name_prefix}-githubactions-oidc"
  description           = var.githubactions_oidc.description
  audiences             = var.githubactions_oidc.audiences
  issuer                = var.githubactions_oidc.issuer
  subject               = var.githubactions_oidc.subject
}

data "azuread_client_config" "current" {}

data "azurerm_subscription" "primary" {}
