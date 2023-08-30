resource "digitalocean_vpc" "vpc_twitter" {
  name     = "vpc-twitter"
  region   = var.region
  ip_range = "10.0.0.0/24"
}