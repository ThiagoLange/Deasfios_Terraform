resource "digitalocean_droplet" "control_plane" {
  image    = var.image
  name     = "control-plane"
  region   = var.region
  size     = var.size
  ssh_keys = [digitalocean_ssh_key.ssh.fingerprint]
  vpc_uuid = digitalocean_vpc.vpc-k8s.id
}

resource "digitalocean_droplet" "worker-node" {
  image    = var.image
  name     = "${var.droplet_name}-${count.index + 1}"
  region   = var.region
  size     = var.size
  ssh_keys = [digitalocean_ssh_key.ssh.fingerprint]
  vpc_uuid = digitalocean_vpc.vpc-k8s.id
  count    = var.node_count
}