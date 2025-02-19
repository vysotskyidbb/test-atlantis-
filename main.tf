resource "random_uuid" "uuid" {}

terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.5.1"
    }
  }
}

provider "random" {}

output "uuid" {
  value       = random_uuid.uuid.result
  sensitive   = false
}
