variable "image" {
  type        = string
  default     = "ubuntu-22-04-x64"
  description = "Imagem da VM Droplet na Digital Ocean"
}

variable "size" {
  type        = string
  default     = "s-1vcpu-2gb"
  description = "Modelo Size da VM Droplet na Digital Ocean"
}

variable "region" {
  type        = string
  default     = "nyc1"
  description = "Regiao de uso na Digital Ocean"
}

variable "droplet_name" {
  default     = "worker-node"
  type        = string
  description = "Nome inicial do droplet"
}

variable "do_token" {
}

variable "node_count" {
  default     = 3
  type        = number
  description = "Quantidade de máquinas"
}

