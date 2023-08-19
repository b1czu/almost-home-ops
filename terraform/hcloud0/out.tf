output "node_public_ipv6" {
  value = hcloud_server.k8s-0.*.ipv6_address
}
