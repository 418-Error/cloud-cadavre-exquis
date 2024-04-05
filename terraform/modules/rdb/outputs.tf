output "endpoint" {
  value = scaleway_rdb_instance.instance.private_network.0.ip
}