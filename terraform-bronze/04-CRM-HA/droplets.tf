resource "digitalocean_droplet" "vm_frontend" {
  image    = var.image
  name     = "vm-frontend"
  region   = var.region
  size     = var.size_droplet
  ssh_keys = [digitalocean_ssh_key.ssh.fingerprint]
  vpc_uuid = digitalocean_vpc.vpc_crm.id
}

resource "digitalocean_droplet" "vm_cn" {
  image    = var.image
  name     = "vm-cn"
  region   = var.region
  size     = var.size_droplet
  ssh_keys = [digitalocean_ssh_key.ssh.fingerprint]
  vpc_uuid = digitalocean_vpc.vpc_crm.id
}