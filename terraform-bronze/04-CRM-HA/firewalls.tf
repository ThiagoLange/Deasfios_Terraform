# Criação do Firewall para a VM Front End
resource "digitalocean_firewall" "firewall_frontend" {
  name        = "firewall-role-frontend"
  droplet_ids = [digitalocean_droplet.vm_frontend1.id, digitalocean_droplet.vm_frontend2.id]

  inbound_rule {
    protocol         = "tcp"
    port_range       = "22"
    source_addresses = ["239.13.117.114/32"]
  }

  inbound_rule {
    protocol         = "tcp"
    port_range       = "53"
    source_addresses = ["239.13.117.114/32"]
  }

  inbound_rule {
    protocol         = "tcp"
    port_range       = "443"
    source_addresses = ["239.13.117.114/32"]
  }

  inbound_rule {
    protocol         = "tcp"
    port_range       = "80"
    source_addresses = ["239.13.117.114/32"]
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "22"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "53"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "80"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "443"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }
}

# Criação do Firewall para a VM Camada de Negocio
resource "digitalocean_firewall" "firewall_cn" {
  name        = "firewall-role-cn"
  droplet_ids = [digitalocean_droplet.vm_cn1.id, digitalocean_droplet.vm_frontend2.id]

  inbound_rule {
    protocol   = "tcp"
    port_range = "443"
    #Acesso somente pela VM do FrontEnd
    source_addresses = [digitalocean_droplet.vm_frontend1.ipv4_address_private, digitalocean_droplet.vm_frontend2.ipv4_address_private]
  }

  inbound_rule {
    protocol   = "tcp"
    port_range = "80"
    #Acesso somente pela VM do FrontEnd
    source_addresses = [digitalocean_droplet.vm_frontend1.ipv4_address_private, digitalocean_droplet.vm_frontend2.ipv4_address_private]
  }

  inbound_rule {
    protocol         = "tcp"
    port_range       = "53"
    source_addresses = ["239.13.117.114/32"]
  }

  inbound_rule {
    protocol         = "tcp"
    port_range       = "22"
    source_addresses = ["239.13.117.114/32"]
  }

  outbound_rule {
    protocol   = "tcp"
    port_range = "80"
    #Acesso somente pela VM do FrontEnd
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol   = "tcp"
    port_range = "443"
    #Acesso somente pela VM do FrontEnd
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "53"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "22"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }
}