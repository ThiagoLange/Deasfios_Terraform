resource "digitalocean_droplet" "vm_droplet" {
  image    = var.image
  name     = "vm-twitter"
  region   = var.region
  size     = var.size
  ssh_keys = [data.digitalocean_ssh_key.ssh_key.id]
  vpc_uuid = digitalocean_vpc.vpc_twitter.id
}