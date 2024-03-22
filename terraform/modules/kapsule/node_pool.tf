resource "scaleway_k8s_pool" "node_pool" {
    cluster_id = scaleway_k8s_cluster.cluster.id
    name = var.node_pool.name
    node_type = var.node_pool.node_type
    size = var.node_pool.size
    min_size = var.node_pool.min_size
    max_size = var.node_pool.max_size
    tags = var.node_pool.tags
}