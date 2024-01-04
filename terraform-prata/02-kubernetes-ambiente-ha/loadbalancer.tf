resource "digitalocean_loadbalancer" "control-plane" {
  name     = "loadbalancer-control"
  region   = var.region
  vpc_uuid = digitalocean_vpc.vpc-k8s.id


  forwarding_rule {
    entry_port     = 80
    entry_protocol = "http"

    target_port     = 80
    target_protocol = "http"
  }

  healthcheck {
    port     = 80
    protocol = "http"
    path = "/"
  }

  firewall {

    allow = ["cidr:0.0.0.0/0", "::/0"]

  }

  droplet_ids = digitalocean_droplet.control-plane[*].id
}