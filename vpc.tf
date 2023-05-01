resource "digitalocean_vpc" "personal_project" {
  name     = "personal-project-network"
  region   = "blr1"
  ip_range = "10.15.0.0/16"
}