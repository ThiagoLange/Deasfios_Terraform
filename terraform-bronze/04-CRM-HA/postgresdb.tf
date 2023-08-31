resource "digitalocean_database_cluster" "postgres-crm" {
  name                 = "postgres-cluster-crm"
  engine               = var.engine
  version              = "15"
  size                 = var.size_db
  region               = var.region
  node_count           = 1
  private_network_uuid = digitalocean_vpc.vpc_crm.id
}

resource "digitalocean_database_firewall" "database-firewall" {
  cluster_id = digitalocean_database_cluster.postgres-crm.id

  rule {
    type  = "droplet"
    value = digitalocean_droplet.vm_cn1.id
  }

  rule {
    type  = "droplet"
    value = digitalocean_droplet.vm_cn2.id
  }
}