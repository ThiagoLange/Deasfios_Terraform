# vm-frontend
output "vm-01_droplet_public_ip" {
  value = digitalocean_droplet.vm_frontend1.ipv4_address
}

output "vm-02_droplet_public_ip" {
  value = digitalocean_droplet.vm_frontend2.ipv4_address
}

# vm-crm
output "vm-01_droplet_private_ip" {
  value = digitalocean_droplet.vm_cn1.ipv4_address_private
}

output "vm-02_droplet_private_ip" {
  value = digitalocean_droplet.vm_cn2.ipv4_address_private
}

# LoadBalancer
output "loadbalancer_ip_frontend" {
  value = digitalocean_loadbalancer.public.ip
}

# DB
output "db_name" {
  value = digitalocean_database_cluster.postgres-crm.name
}