resource "digitalocean_droplet" "vm_droplet" {
  image    = var.image
  name     = "vm-twitter"
  region   = var.region
  size     = var.size
  ssh_keys = [digitalocean_ssh_key.ssh.fingerprint]
  vpc_uuid = digitalocean_vpc.vpc_twitter.id
}