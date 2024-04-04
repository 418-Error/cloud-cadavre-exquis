resource "kubernetes_config_map" "configmap" {
  metadata {
    name = "database-configmap"
    namespace = "cloud-cadavre-exquis"
  }

  data = {
    "username" = var.user_name
    "host" = module.scaleway_rdb_instance.endpoint
  }
}