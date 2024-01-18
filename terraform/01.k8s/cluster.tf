module "ovh_cluster" {
    source = "../modules/ovh_k8s"
    service_name = var.ovh_conf[terraform.workspace].project_id
    cluster-name = "418-cluster"
    pool-name = "418-pool"
    flavor_name = "b2-7"
    cluster_version = "1.28"
    nodes = 1
    ovh_conf = var.ovh_conf
    ovh_endpoint = var.ovh_endpoint
}