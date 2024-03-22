output "apiserver_url" {
  value = scaleway_k8s_cluster.cluster.apiserver_url
}

output "config_file" {
  value = scaleway_k8s_cluster.cluster.kubeconfig[0]["config_file"]
}

output "host" {
  value = scaleway_k8s_cluster.cluster.kubeconfig[0]["host"]
}

output "cluster_ca_certificate" {
  value = scaleway_k8s_cluster.cluster.kubeconfig[0]["cluster_ca_certificate"]
}

output "token" {
    value = scaleway_k8s_cluster.cluster.kubeconfig[0]["token"]
} 