resource "scaleway_vpc" "vpc" {
  name = "vpc_${terraform.workspace}"
  region = var.region
  tags = [
    "env=${terraform.workspace}",
    "team=418erreur"
  ]
}

resource "scaleway_vpc_private_network" "private_network" {
  name = "vpc_subnet_${terraform.workspace}"
  vpc_id = scaleway_vpc.vpc.id
  region = var.region

  ipv4_subnet {
    subnet = "192.168.0.0/22"
  }

  tags = [
    "env=${terraform.workspace}",
    "team=418erreur"
  ]
}