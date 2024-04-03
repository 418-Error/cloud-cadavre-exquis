module "kapsule_cluster" {
    source = "../modules/kapsule"
    cluster_name = "kapsule-${terraform.workspace}"
    node_pool =  {
      max_size = 3
      min_size = 1
      size = 2
      name = "main-pool"
      node_type = "DEV1-M"
      tags = ["env=${terraform.workspace}", "team=418erreur"]
    }
    private_network_id = local.vpc_state.vpc_private_network_id
}