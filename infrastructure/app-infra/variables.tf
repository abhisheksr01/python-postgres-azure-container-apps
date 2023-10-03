variable "resource_name_prefix" {
  type = string
}

variable "registry_username" {
  type      = string
  sensitive = true
}

variable "registry_password" {
  type      = string
  sensitive = true
}

variable "registry_url" {
  type    = string
  default = "registry.hub.docker.com"
}

variable "image" {
  type    = string
  default = "abhisheksr01/zero-2-hero-python-flask-microservice:95"
}


variable "subnet_config" {
  type = set(object({
    name    = string
    iprange = list(string)
  }))
  default = [{
    name    = "subnet1-public"
    iprange = ["10.0.0.0/25"]
    },
    {
      name    = "subnet1-private"
      iprange = ["10.0.0.128/25"]
    }
  ]
}

variable "app_container_config" {
  type = object({
    name          = string
    revision_mode = string
    memory        = string
    cpu           = number
    ingress = object({
      allow_insecure_connections = bool
      external_enabled           = bool
      target_port                = number
    })
    environment_variables = optional(set(object({
      name        = string
      secret_name = optional(string)
      value       = optional(string)
    })))
  })

  default = {
    name          = "python=postgres-azure-app"
    revision_mode = "Single"
    memory        = "0.5Gi"
    cpu           = 0.25
    ingress = {
      allow_insecure_connections = false
      external_enabled           = true
      target_port                = 5000
    }
    environment_variables = [
      {
        name  = "name"
        value = "postgres"
      },
      {
        name  = "user"
        value = "abhishek"
      },
      {
        name  = "host"
        value = "localhost"
      }
    ]
  }
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
