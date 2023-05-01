terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "2.28.0"
    }
  }
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
