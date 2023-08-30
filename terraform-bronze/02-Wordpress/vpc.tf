resource "digitalocean_vpc" "vpc_wordpress" {
  name     = "vpc-wordpress"
  region   = var.region
  ip_range = "10.0.0.0/24"
}