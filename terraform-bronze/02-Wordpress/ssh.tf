resource "digitalocean_ssh_key" "ssh" {
  name       = "crm-ssh"
  public_key = file("~/.ssh/aula.pub")
}