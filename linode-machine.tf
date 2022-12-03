terraform {
  required_providers {
    linode = {
      source = "linode/linode"
      version = "1.27.1"
    }
  }
}

provider "linode" {
  token = "var.LINODE_TOKEN"
}

resource "linode_instance" "docker_machine" {
        image = "linode/ubuntu22.04"
        label = "Linode Machine"
        group = "Terraform"
        region = "ap-west"
        type = "g6-standard-2"
        authorized_keys = [ "var.LINODE_SSH" ]
        root_pass = "var.LINODE_ROOT_PASSWORD"
}
