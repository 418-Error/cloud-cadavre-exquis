output "ipv4_subnet" {
  value = scaleway_vpc_private_network.private_network.ipv4_subnet
}
output "vpc_id" {
  value = scaleway_vpc_private_network.private_network.vpc_id
}

output "vpc_private_network_id" {
  value = scaleway_vpc_private_network.private_network.id
}