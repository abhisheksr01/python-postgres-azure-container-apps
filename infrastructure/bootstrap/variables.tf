variable "resource_name_prefix" {
  type = string
}

variable "infrabackend_storage_account_name" {
  type = string
}

variable "infrabackend_storage_account_container_names" {
  type = set(string)
}

variable "storage_account_account_tier" {
  type = string
}

variable "storage_account_replication_type" {
  type = string
}

variable "location" {
  type = string
}

# Tags
variable "default_tags" {
  type = object({
    Owner       = string
    Team        = string
    Description = string
    Environment = string
    Provisioner = string
    CostCode    = string
  })
  default = {
    Owner       = "Abhishek"
    Team        = "Azure Terraform - abhisheksr01"
    Description = "Resources for Python Azure Terraform"
    Environment = "Dev"
    Provisioner = "Terraform"
    CostCode    = "100-101" # Random value very useful for billing purposes.
  }
}

variable "default_set_tags" {
  type = set(string)
  default = [
    "Owner=Abhishek"
  ]
}

variable "githubactions_oidc" {
  description = "Github OIDC Config for the service principal connection"
  type = object({
    description = string
    audiences   = list(string)
    issuer      = string
    subject     = string
  })
}

variable "role_assigned" {
  description = "role assinged to the github oidc connection"
  type        = string
}
