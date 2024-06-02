resource "hcloud_network" "k8s-0_network" {
  name     = "k8s-0"
  ip_range = var.network_range
  expose_routes_to_vswitch = false
}

resource "hcloud_network_subnet" "k8s-0_network-subnet-1" {
  type         = "cloud"
  network_id   = hcloud_network.k8s-0_network.id
  network_zone = "eu-central"
  ip_range     = var.network_subnet-1
}
