resource "scaleway_vpc" "vpc" {
  name = "vpc"
  region = var.region
  tags = [
    "env=${terraform.workspace}"
  ]
}

resource "scaleway_vpc_private_network" "private_network" {
  name = "vpc_subnet"
  vpc_id = scaleway_vpc.vpc.id
  region = var.region

  ipv4_subnet {
    subnet = "192.168.0.0/24"
  }

  tags = [
    "env=${terraform.workspace}"
  ]
}