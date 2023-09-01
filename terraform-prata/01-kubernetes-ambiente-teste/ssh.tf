resource "digitalocean_ssh_key" "ssh" {
  name       = "k8s-ssh"
  public_key = file("~/.ssh/aula.pub")
}