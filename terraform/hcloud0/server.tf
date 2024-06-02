resource "hcloud_server" "k8s-0" {
  depends_on = [
    hcloud_network_subnet.k8s-0_network-subnet-1,
    hcloud_ssh_key.thcloud
  ]

  name                = format(var.node_name_format, count.index + 1)
  location            = var.location
  server_type         = var.node_type
  image               = var.image
  placement_group_id  = hcloud_placement_group.kube_resource_group.id
  user_data           = data.template_file.node_cloud_config[count.index].rendered
  network {
    network_id        = hcloud_network.k8s-0_network.id
    ip                = cidrhost(var.network_subnet-1, count.index + 11)
  }
  public_net {
    ipv4_enabled      = false
    ipv6_enabled      = true
  }
  ssh_keys = [
    hcloud_ssh_key.thcloud.id
  ]

  count               = var.nodes_count
}
