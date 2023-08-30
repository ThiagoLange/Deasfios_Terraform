output "droplet_ip" {
  value = digitalocean_droplet.vm_droplet.ipv4_address
}

output "droplet_ip_private" {
  value = digitalocean_droplet.vm_droplet.ipv4_address_private
}

output "droplet_name" {
  value = digitalocean_droplet.vm_droplet.name
}