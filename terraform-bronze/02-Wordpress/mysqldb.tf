resource "digitalocean_database_cluster" "mysql_wordpress" {
  name       = "mysql-cluster-wordpress"
  engine     = var.engine
  version    = "8"
  size       = var.size_mysql
  region     = var.region
  node_count = 1
}

resource "digitalocean_database_firewall" "database-firewall" {
  cluster_id = digitalocean_database_cluster.mysql_wordpress.id

  rule {
    type  = "droplet"
    value = digitalocean_droplet.vm_droplet.id
  }
}