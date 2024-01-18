resource "ovh_cloud_project_kube" "my_kube_cluster" {
   service_name = var.service_name
   name         = var.cluster-name
   region       = var.ovh_cluster_region
   version      = var.cluster_version
}

resource "ovh_cloud_project_kube_nodepool" "node_pool" {
   service_name  = var.service_name
   kube_id       = ovh_cloud_project_kube.my_kube_cluster.id
   name          = var.pool-name
   flavor_name   = var.flavor_name
   desired_nodes = var.nodes
   max_nodes     = var.nodes
   min_nodes     = var.nodes
}