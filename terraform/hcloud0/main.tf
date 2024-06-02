terraform {
  required_providers {
    hcloud = {
      source = "hetznercloud/hcloud"
      version = "~> 1.42.1"
    }
  }
}

provider "hcloud" {
  # Configuration options
  token = data.external.hcloud_token.result.token
}

resource "hcloud_ssh_key" "thcloud" {
  name       = "thcloud"
  public_key = file("~/.ssh/thcloud.pub")
}

resource "hcloud_placement_group" "kube_resource_group" {
  name = var.placement_group_name
  type = "spread"
}
