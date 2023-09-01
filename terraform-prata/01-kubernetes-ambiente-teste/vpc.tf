resource "digitalocean_vpc" "vpc-k8s" {
  name     = "vpc-k8s"
  region   = var.region
  ip_range = "10.0.0.0/24"
}