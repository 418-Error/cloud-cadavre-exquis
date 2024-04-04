output "apiserver_url" {
  value     = module.kapsule_cluster.apiserver_url
  sensitive = true
}

output "config_file" {
  value     = module.kapsule_cluster.config_file
  sensitive = true
}

output "host" {
  value     = module.kapsule_cluster.host
  sensitive = true
}

output "k8s_id" {
  value     = module.kapsule_cluster.k8s_id
  sensitive = false
}

output "cluster_ca_certificate" {
  value     = module.kapsule_cluster.cluster_ca_certificate
  sensitive = true
}

output "token" {
  value     = module.kapsule_cluster.token
  sensitive = true
} 
