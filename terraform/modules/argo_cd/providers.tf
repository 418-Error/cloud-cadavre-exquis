terraform {
  required_providers {
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.27.0"
    }
  }
}

provider "kubernetes" {
  # Configuration options
  client_certificate = var.cluster_client_certificate
  client_key = var.cluster_client_key
  cluster_ca_certificate = var.cluster_ca_certificate
  host = var.cluster_host
}

provider "helm" {
  kubernetes {
    client_certificate = var.cluster_ca_certificate
    client_key = var.cluster_client_key
    cluster_ca_certificate = var.cluster_ca_certificate
    host = var.cluster_host
  }
}