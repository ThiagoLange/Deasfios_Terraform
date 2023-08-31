resource "digitalocean_droplet" "vm_frontend1" {
  image    = var.image
  name     = "vm-frontend1"
  region   = var.region
  size     = var.size_droplet
  ssh_keys = [digitalocean_ssh_key.ssh.fingerprint]
  vpc_uuid = digitalocean_vpc.vpc_crm.id
}

resource "digitalocean_droplet" "vm_frontend2" {
  image    = var.image
  name     = "vm-frontend2"
  region   = var.region
  size     = var.size_droplet
  ssh_keys = [digitalocean_ssh_key.ssh.fingerprint]
  vpc_uuid = digitalocean_vpc.vpc_crm.id
}

resource "digitalocean_droplet" "vm_cn1" {
  image    = var.image
  name     = "vm-cn1"
  region   = var.region
  size     = var.size_droplet
  ssh_keys = [digitalocean_ssh_key.ssh.fingerprint]
  vpc_uuid = digitalocean_vpc.vpc_crm.id
}

resource "digitalocean_droplet" "vm_cn2" {
  image    = var.image
  name     = "vm-cn2"
  region   = var.region
  size     = var.size_droplet
  ssh_keys = [digitalocean_ssh_key.ssh.fingerprint]
  vpc_uuid = digitalocean_vpc.vpc_crm.id
}