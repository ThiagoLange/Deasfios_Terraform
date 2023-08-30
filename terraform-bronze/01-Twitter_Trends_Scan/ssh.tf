resource "digitalocean_ssh_key" "ssh" {
  name       = "twitter-ssh"
  public_key = file("~/.ssh/aula.pub")
}