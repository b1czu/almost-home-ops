terraform {
  required_providers {
    hcloud = {
      source = "hetznercloud/hcloud"
      version = "~> 1.42.1"
    }
  }
}

module "hcloud0" {
  source = "./hcloud0/"
}

output "hcloud0" {
  value = module.hcloud0
}
