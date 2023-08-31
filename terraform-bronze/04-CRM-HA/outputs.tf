# vm-frontend
output "vm-01_droplet_public_ip" {
  value = digitalocean_droplet.vm_frontend.ipv4_address
}
output "vm-01_droplet_private_ip" {
  value = digitalocean_droplet.vm_cn.ipv4_address_private
}

# vm-crm
output "vm-02_droplet_public_ip" {
  value = digitalocean_droplet.vm_frontend.ipv4_address
}
output "vm-02_droplet_private_ip" {
  value = digitalocean_droplet.vm_cn.ipv4_address_private
}

output "db_name" {
  value = digitalocean_database_cluster.postgres-crm.name
}