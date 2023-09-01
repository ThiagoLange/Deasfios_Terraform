resource "digitalocean_loadbalancer" "public" {
  name     = "loadbalancer-frontend"
  region   = var.region
  vpc_uuid = digitalocean_vpc.vpc_crm.id

  forwarding_rule {
    entry_port     = 80
    entry_protocol = "http"

    target_port     = 80
    target_protocol = "http"
  }

  healthcheck {
    port     = 22
    protocol = "tcp"
  }

  firewall {
    allow = ["cidr:0.0.0.0/0", "::/0"]
  }

  droplet_ids = [digitalocean_droplet.vm_frontend1.id, digitalocean_droplet.vm_frontend2.id]
}