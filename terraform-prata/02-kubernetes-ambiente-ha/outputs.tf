output "droplet_ip-control" {
  value = digitalocean_droplet.control-plane[*].ipv4_address
}

output "droplet_ip_private-control" {
  value = digitalocean_droplet.control-plane[*].ipv4_address_private
}

output "droplet_ip-node" {
  value = digitalocean_droplet.worker-node[*].ipv4_address
}

output "droplet_ip_private-node" {
  value = digitalocean_droplet.worker-node[*].ipv4_address_private
}

output "droplet_name-control" {
  value = digitalocean_droplet.control-plane[*].name
}

output "droplet_name-node" {
  value = digitalocean_droplet.worker-node[*].name
}