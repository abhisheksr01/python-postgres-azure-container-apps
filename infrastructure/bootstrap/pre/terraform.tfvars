resource_name_prefix                         = "pre-python-postgres-azure"
infrabackend_storage_account_name            = "prepythonpostgresaz"
infrabackend_storage_account_container_names = ["bootstrap", "application"]
storage_account_account_tier                 = "Standard"
storage_account_replication_type             = "LRS"
location                                     = "UK South"
role_assigned                                = "Contributor"
githubactions_oidc = {
  description = "This Federated credentials are used for authenticating the Github Actions pipeline for Python Postgres Azure in https://github.com/abhisheksr01/python-postgres-azure repository"
  audiences   = ["api://AzureADTokenExchange"]
  issuer      = "https://token.actions.githubusercontent.com"
  subject     = "repo:abhisheksr01/python-postgres-azure:ref:refs/heads/main"
}
