module "flux_cd" {
  source                     = "../modules/flux_cd"
  git_url                    = "https://github.com/418-Error/cloud-cadavre-exquis"
  cluster_host               = module.ovh_cluster.kubeconfig["host"]
  cluster_ca_certificate     = base64decode(module.ovh_cluster.kubeconfig["cluster_ca_certificate"])
  cluster_client_certificate = base64decode(module.ovh_cluster.kubeconfig["client_certificate"])
  cluster_client_key         = base64decode(module.ovh_cluster.kubeconfig["client_key"])
  github_org                 = var.github_org
  github_repo                = var.github_repo
  github_token               = var.github_access_token
}
