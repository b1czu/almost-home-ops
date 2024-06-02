output "node_public_ipv6" {
  value = {
    for server in hcloud_server.k8s-0 : server.name => server.ipv6_address
  }
}
