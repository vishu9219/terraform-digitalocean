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
  default= "dop_v1_62bae041627e0cd0f5f6ad1fc1a2c5f722c3643a435094223fabc9c4878715a6"
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
