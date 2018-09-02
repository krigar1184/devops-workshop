variable "do_token" {}

provider "digitalocean" {
  token = "${var.do_token}"
}

resource "digitalocean_droplet" "app" {
  image = "ubuntu-18-04-x64"
  name = "app-1"
  region = "fra1"
  size = "512mb"
  ssh_keys = [
    "a9:15:e3:3b:e2:cc:8a:6f:35:78:f2:af:19:b9:ba:54",
  ]
}

resource "digitalocean_ssh_key" "default" {
  name = "default key"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}
