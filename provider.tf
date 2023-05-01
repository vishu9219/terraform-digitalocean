terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "2.28.0"
    }
  }
}

variable "do_token" {
  type = string
  default= "dop_v1_a63860ce904a35ee7aff0390fc40d13b9b1d0aed7c43177224a3a22152773b1b"
}
variable "pvt_key" {
  type = string
  default = "~/.ssh/id_rsa"
}

provider "digitalocean" {
  token = var.do_token
}

data "digitalocean_ssh_key" "terraform" {
  name = "mac_public_key"
} 
