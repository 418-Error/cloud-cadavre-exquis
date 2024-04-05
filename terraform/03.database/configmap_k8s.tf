resource "kubernetes_config_map" "configmap" {
  metadata {
    name      = "database-configmap"
    namespace = "cloud-cadavre-exquis"
  }

  data = {
    "username" = var.user_name
    "host"     = module.scaleway_rdb_instance.endpoint
  }
}

resource "kubernetes_secret" "secret" { //could be replaced by a service account
  metadata {
    name      = "scwsm-secret"
    namespace = "cloud-cadavre-exquis"
  }

  data = {
    "access-key" = var.access_key
    "secret-key" = var.secret_key
  }
}
