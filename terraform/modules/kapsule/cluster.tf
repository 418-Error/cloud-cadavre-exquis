resource "scaleway_k8s_cluster" "cluster" {
    name = var.cluster_name == null ? var.cluster_name : resource.random_pet.cluster_name.id
    version = var.kubernetes_version
    cni = "cilium" //tbh I don't know what this is
    private_network_id = var.private_network_id
    delete_additional_resources = false

}