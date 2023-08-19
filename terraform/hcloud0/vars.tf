variable "nodes_count" {
  default = "3"
}
variable "location" {
  default = "fsn1"
}

variable "image" {
  default = "debian-12"
}

variable "placement_group_name" {
  default = "k8s-0_pg-0"
}

variable "node_name_format" {
  default= "k8s-0-%d"
}

variable "node_type" {
  default = "cax11"
}

variable "network_range" {
  default = "10.10.0.0/16"
}

variable "network_subnet-1" {
  default = "10.10.1.0/24"
}
