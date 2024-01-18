module "flux_cd" {
    source = "../modules/flux_cd"
    git_url = "https://github.com/418-Error/cloud-cadavre-exquis"
    cluster_host = module.ovh_cluster.kubeconfig["host"]
    cluster_ca_certificate = module.ovh_cluster.kubeconfig["cluster_ca_certificate"]
    cluster_client_certificate = module.ovh_cluster.kubeconfig["client_certificate"]
    cluster_client_key = module.ovh_cluster.kubeconfig["client_key"]
}