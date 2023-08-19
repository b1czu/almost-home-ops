data "external" "hcloud_token" {
  program = ["sh", "-c", <<EOT
echo {\"token\":\"$HCLOUD_TOKEN\"}
EOT
]
}

data "template_file" "node_cloud_config" {
  template  = file("${path.module}/files/node_cloud_config.yml")
  vars      = {
    key     = hcloud_ssh_key.thcloud.public_key,
    count   = count.index,
  }

  count     = var.nodes_count
}
