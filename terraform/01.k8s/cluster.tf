module "ovh_cluster" {
    source = "../modules/ovh_k8s"
    service_name = ""
    cluster-name = "418Cluster"
    version = "1.28"
    pool-name = "418Pool"
    flavor_name = "b2-7"
    nodes = "1"
}