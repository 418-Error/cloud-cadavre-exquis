provider "ovh" {
  endpoint           = var.ovh_endpoint
  application_key    = var.ovh_conf[terraform.workspace].application_key
  application_secret = var.ovh_conf[terraform.workspace].application_secret
  consumer_key       = var.ovh_conf[terraform.workspace].consumer_key
}

provider "kubernetes" {
  client_certificate     = base64decode(module.ovh_cluster.kubeconfig["client_certificate"])
  client_key             = base64decode(module.ovh_cluster.kubeconfig["client_key"])
  cluster_ca_certificate = base64decode(module.ovh_cluster.kubeconfig["cluster_ca_certificate"])
  host                   = module.ovh_cluster.kubeconfig["host"]
}
